from pathlib import Path
import os
root=Path(os.environ.get('LIQUID_WORK','/data/workspace/liquid'))/'decoded6'

# 开发者面板永久解锁 + 禁用统计联网。
p=root/'smali/v4/t.smali'; s=p.read_text()
needle='''.method public final i(Ljava/lang/String;Z)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lv4/t;->b:Landroid/content/SharedPreferences;'''
insert='''.method public final i(Ljava/lang/String;Z)Z
    .locals 3

    const-string v0, "dev_unlocked"
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :cond_not_dev
    const/4 v0, 0x1
    return v0

    :cond_not_dev
    const-string v0, "analytics_enabled"
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :cond_other
    const/4 v0, 0x0
    return v0

    :cond_other
    .line 1
    iget-object v0, p0, Lv4/t;->b:Landroid/content/SharedPreferences;'''
assert needle in s
p.write_text(s.replace(needle,insert,1))

# 任意输入均通过开发者密钥分支。
p=root/'smali/f5/sa.smali'; s=p.read_text(); a=s.index('.method public static final s1('); b=s.index('.end method',a)
blk=s[a:b]; assert '    if-eqz v0, :cond_1' in blk
p.write_text(s[:a]+blk.replace('    if-eqz v0, :cond_1','    goto :cond_1',1)+s[b:])

# Beta 在线校验直接通过，离线环境不再请求/撤销。
p=root/'smali/h5/t1.smali'; s=p.read_text(); m=s.index('"/api/verify"'); a=s.rfind(':pswitch_',0,m); b=s.find(':pswitch_',m)
new=''':pswitch_0
    invoke-static {p1}, Le3/s;->g0(Ljava/lang/Object;)V
    const/4 v0, 0x1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    move-result-object v0
    return-object v0
'''
p.write_text(s[:a]+new+s[b:])

# 激活请求直接成功并写入状态，保持完全离线。
p=root/'smali/e5/h.smali'; s=p.read_text(); m=s.index('"/api/activate"'); a=s.rfind(':pswitch_',0,m); b=s.find(':pswitch_',m)
new=''':pswitch_5
    iget-object v2, v1, Le5/h;->e:Ljava/lang/Object;
    check-cast v2, Lt4/d;
    invoke-virtual {v2}, Lt4/d;->b()Landroid/content/SharedPreferences;
    move-result-object v2
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
    move-result-object v2
    const-string v3, "beta_is_activated"
    const/4 v4, 0x1
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    move-result-object v2
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    const-string v0, "OK"
    new-instance v1, Lt4/b;
    invoke-direct {v1, v0}, Lt4/b;-><init>(Ljava/lang/String;)V
    return-object v1
'''
p.write_text(s[:a]+new+s[b:])

# 截图修复：对话框一律清除 FLAG_SECURE。
p=root/'smali/u2/r.smali'; s=p.read_text()
s=s.replace('    invoke-virtual {p1, v0, v3}, Landroid/view/Window;->setFlags(II)V',
            '    const/16 v0, -0x2001\n    invoke-virtual {p1, v0, v3}, Landroid/view/Window;->setFlags(II)V',1)
p.write_text(s)

# 移除全部联网相关权限。
p=root/'AndroidManifest.xml'; lines=p.read_text().splitlines()
blocked={'android.permission.INTERNET','android.permission.ACCESS_NETWORK_STATE','android.permission.ACCESS_WIFI_STATE','android.permission.CHANGE_NETWORK_STATE','android.permission.CHANGE_WIFI_STATE'}
out=[l for l in lines if not any(('android:name="'+x+'"') in l for x in blocked)]
p.write_text('\n'.join(out)+'\n')
print('offline + screenshot + dev unlock patches applied')

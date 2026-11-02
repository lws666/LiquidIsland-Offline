from pathlib import Path
import os
root=Path(os.environ.get('LIQUID_WORK','/data/workspace/liquid'))/'decoded6/smali'

# 开发者面板读取 dev_unlocked 时始终视为已解锁。
p=root/'v4/t.smali'; s=p.read_text()
needle='''.method public final i(Ljava/lang/String;Z)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lv4/t;->b:Landroid/content/SharedPreferences;'''
insert='''.method public final i(Ljava/lang/String;Z)Z
    .locals 3

    const-string v0, "dev_unlocked"
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :cond_dev_unlocked
    const/4 v0, 0x1
    return v0

    :cond_dev_unlocked
    .line 1
    iget-object v0, p0, Lv4/t;->b:Landroid/content/SharedPreferences;'''
assert needle in s
p.write_text(s.replace(needle,insert,1))

# 任意输入都走开发者解锁成功分支（原判断 LIQUID-DEV-2025）。
p=root/'f5/sa.smali'; s=p.read_text()
start=s.index('.method public static final s1(')
end=s.index('.end method',start)
block=s[start:end]
old='    if-eqz v0, :cond_1'
assert old in block
block=block.replace(old,'    goto :cond_1',1)
p.write_text(s[:start]+block+s[end:])
print('developer panel unlocked')

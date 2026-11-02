from pathlib import Path
root=Path('/data/workspace/liquid/decoded6/smali/x4')

BODY=r'''    .locals 8

    const-string v0, "onComputeInternalInsets"
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;
    move-result-object v1
    invoke-static {v1, v0}, Lkotlin/jvm/internal/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
    move-result v0
    const/4 v1, 0x0
    if-eqz v0, :cond_done
    const/4 v0, 0x0
    aget-object p3, p3, v0
    if-eqz p3, :cond_done
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v0
    const-string v2, "touchableRegion"
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    move-result-object v0
    const/4 v2, 0x1
    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    invoke-virtual {v0, p3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/graphics/Region;
    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v2
    invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;
    move-result-object v2
    array-length v3, v2
    const/4 v4, 0x0
    :goto_find
    if-ge v4, v3, :cond_done
    aget-object v5, v2, v4
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;
    move-result-object v6
    const-string v7, "setTouchableInsets"
    invoke-static {v6, v7}, Lkotlin/jvm/internal/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
    move-result v6
    if-eqz v6, :cond_next
    const/4 v2, 0x3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    filled-new-array {v2}, [Ljava/lang/Object;
    move-result-object v2
    invoke-virtual {v5, p3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    goto :cond_done
    :cond_next
    add-int/lit8 v4, v4, 0x1
    goto :goto_find
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_done
    const/4 v0, 0x0
    return-object v0

    :catch_0
    const/4 v0, 0x0
    return-object v0
.end method
'''

def replace_method(path, rect_setup):
    p=root/path; s=p.read_text()
    a=s.index('.method public final invoke(')
    b=s.index('.end method',a)+len('.end method')
    header='.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;\n'
    body=BODY.replace('    :try_end_0\n',rect_setup+'    :try_end_0\n')
    p.write_text(s[:a]+header+body+s[b:])

# 可访问性服务：复用已有 Rect，只保留顶部 96dp 触控区。
rect_setup='''    iget-object v1, p0, Lx4/x0;->a:Lcom/example/liquidisland/services/DynamicIslandAccessibilityService;
    invoke-virtual {v1}, Lcom/example/liquidisland/services/DynamicIslandAccessibilityService;->getResources()Landroid/content/res/Resources;
    move-result-object v1
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
    move-result-object v1
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F
    const/high16 v3, 0x42c00000    # 96.0f
    mul-float/2addr v1, v3
    float-to-int v1, v1
    iget-object v3, p0, Lx4/x0;->c:Landroid/graphics/Rect;
    const/4 v4, 0x0
    invoke-virtual {v3, v4, v4, v2, v1}, Landroid/graphics/Rect;->set(IIII)V
    invoke-virtual {v0, v3}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z
'''
replace_method('x0.smali',rect_setup)

# DynamicIslandService：新建同样的顶部 96dp 触控区。
rect_setup2='''    iget-object v1, p0, Lx4/p;->a:Lcom/example/liquidisland/services/DynamicIslandService;
    invoke-virtual {v1}, Lcom/example/liquidisland/services/DynamicIslandService;->getResources()Landroid/content/res/Resources;
    move-result-object v1
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
    move-result-object v1
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F
    const/high16 v3, 0x42c00000    # 96.0f
    mul-float/2addr v1, v3
    float-to-int v1, v1
    new-instance v3, Landroid/graphics/Rect;
    const/4 v4, 0x0
    invoke-direct {v3, v4, v4, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V
    invoke-virtual {v0, v3}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z
'''
replace_method('p.smali',rect_setup2)
print('touch area limited to top 96dp')

from pathlib import Path
root=Path('/data/workspace/liquid/decoded6/smali')

p=root/'com/example/liquidisland/services/DynamicIslandService.smali'
s=p.read_text(); a=s.index('.method public final p()V'); b=s.index('.end method',a)+len('.end method')
new='''.method public final p()V
    .locals 3

    iget-object v0, p0, Lcom/example/liquidisland/services/DynamicIslandService;->g1:Landroid/view/WindowManager$LayoutParams;
    if-nez v0, :cond_return
    iget-object v1, p0, Lcom/example/liquidisland/services/DynamicIslandService;->e:Lv1/f1;
    if-nez v1, :cond_return
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object v2
    if-nez v2, :cond_return

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I
    and-int/lit8 v2, v2, -0x11
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v2, p0, Lcom/example/liquidisland/services/DynamicIslandService;->d:Landroid/view/WindowManager;
    if-eqz v2, :cond_return
    invoke-interface {v2, v1, v0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_return
    return-void
.end method'''
p.write_text(s[:a]+new+s[b:])

p=root/'t2/b.smali'; s=p.read_text(); a=s.index('.method public static final l0('); b=s.index('.end method',a)+len('.end method')
new='''.method public static final l0(Lcom/example/liquidisland/services/DynamicIslandAccessibilityService;)V
    .locals 3

    iget-object v0, p0, Lcom/example/liquidisland/services/DynamicIslandAccessibilityService;->q6:Landroid/view/WindowManager$LayoutParams;
    if-nez v0, :cond_return
    iget-object v1, p0, Lcom/example/liquidisland/services/DynamicIslandAccessibilityService;->h:Lv1/f1;
    if-nez v1, :cond_return
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object v2
    if-nez v2, :cond_return

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I
    and-int/lit8 v2, v2, -0x11
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p0}, Lcom/example/liquidisland/services/DynamicIslandAccessibilityService;->e2()Landroid/view/WindowManager;
    move-result-object p0
    invoke-interface {p0, v1, v0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_return
    return-void
.end method'''
p.write_text(s[:a]+new+s[b:])
print('overlay made touchable; region remains limited')

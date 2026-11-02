.class public final Lu2/r;
.super Lb/q;
.source "SourceFile"


# instance fields
.field public h:Ls7/a;

.field public i:Lu2/q;

.field public final j:Landroid/view/View;

.field public final k:Lu2/p;

.field public l:Z


# direct methods
.method public constructor <init>(Ls7/a;Lu2/q;Landroid/view/View;Lr2/m;Lr2/c;Ljava/util/UUID;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    .line 3
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    iget-boolean v2, p2, Lu2/q;->e:Z

    .line 9
    if-eqz v2, :cond_0

    .line 11
    const/high16 v2, 0x7f0d0000

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const v2, 0x7f0d0003

    .line 17
    :goto_0
    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 20
    invoke-direct {p0, v0}, Lb/q;-><init>(Landroid/view/ContextThemeWrapper;)V

    .line 23
    iput-object p1, p0, Lu2/r;->h:Ls7/a;

    .line 25
    iput-object p2, p0, Lu2/r;->i:Lu2/q;

    .line 27
    iput-object p3, p0, Lu2/r;->j:Landroid/view/View;

    .line 29
    const/16 p1, 0x8

    .line 31
    int-to-float p1, p1

    .line 32
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 35
    move-result-object p2

    .line 36
    if-eqz p2, :cond_6

    .line 38
    const/4 v0, 0x1

    .line 39
    invoke-virtual {p2, v0}, Landroid/view/Window;->requestFeature(I)Z

    .line 42
    const v0, 0x106000d

    .line 45
    invoke-virtual {p2, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 48
    iget-object v0, p0, Lu2/r;->i:Lu2/q;

    .line 50
    iget-boolean v0, v0, Lu2/q;->e:Z

    .line 52
    invoke-static {p2, v0}, Le3/s;->c0(Landroid/view/Window;Z)V

    .line 55
    const/16 v0, 0x11

    .line 57
    invoke-virtual {p2, v0}, Landroid/view/Window;->setGravity(I)V

    .line 60
    iget-object v0, p0, Lu2/r;->i:Lu2/q;

    .line 62
    iget-boolean v0, v0, Lu2/q;->e:Z

    .line 64
    const/4 v1, 0x0

    .line 65
    if-nez v0, :cond_3

    .line 67
    const v0, 0x10100

    .line 70
    invoke-virtual {p2, v0}, Landroid/view/Window;->addFlags(I)V

    .line 73
    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 76
    move-result-object v0

    .line 77
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 79
    const/16 v3, 0x1c

    .line 81
    if-lt v2, v3, :cond_1

    .line 83
    sget-object v3, Lu2/j;->a:Lu2/j;

    .line 85
    invoke-virtual {v3, v0}, Lu2/j;->a(Landroid/view/WindowManager$LayoutParams;)V

    .line 88
    :cond_1
    const/16 v3, 0x1e

    .line 90
    if-lt v2, v3, :cond_2

    .line 92
    sget-object v2, Lu2/k;->a:Lu2/k;

    .line 94
    invoke-virtual {v2, v0, v1}, Lu2/k;->a(Landroid/view/WindowManager$LayoutParams;I)V

    .line 97
    invoke-virtual {v2, v0, v1}, Lu2/k;->b(Landroid/view/WindowManager$LayoutParams;I)V

    .line 100
    :cond_2
    invoke-virtual {p2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 103
    :cond_3
    new-instance v0, Lu2/p;

    .line 105
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 108
    move-result-object v2

    .line 109
    invoke-direct {v0, v2, p2}, Lu2/p;-><init>(Landroid/content/Context;Landroid/view/Window;)V

    .line 112
    iget-object v2, p0, Lu2/r;->i:Lu2/q;

    .line 114
    iget-object v2, v2, Lu2/q;->f:Ljava/lang/String;

    .line 116
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    .line 121
    const-string v3, "Dialog:"

    .line 123
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    move-result-object p6

    .line 133
    const v2, 0x7f06002a

    .line 136
    invoke-virtual {v0, v2, p6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 139
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 142
    invoke-interface {p5, p1}, Lr2/c;->W(F)F

    .line 145
    move-result p1

    .line 146
    invoke-virtual {v0, p1}, Landroid/view/View;->setElevation(F)V

    .line 149
    new-instance p1, Lf1/l;

    .line 151
    const/4 p5, 0x2

    .line 152
    invoke-direct {p1, p5}, Lf1/l;-><init>(I)V

    .line 155
    invoke-virtual {v0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 158
    iput-object v0, p0, Lu2/r;->k:Lu2/p;

    .line 160
    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 163
    move-result-object p1

    .line 164
    instance-of p2, p1, Landroid/view/ViewGroup;

    .line 166
    if-eqz p2, :cond_4

    .line 168
    check-cast p1, Landroid/view/ViewGroup;

    .line 170
    goto :goto_1

    .line 171
    :cond_4
    const/4 p1, 0x0

    .line 172
    :goto_1
    if-eqz p1, :cond_5

    .line 174
    invoke-static {p1}, Lu2/r;->e(Landroid/view/ViewGroup;)V

    .line 177
    :cond_5
    invoke-virtual {p0, v0}, Lb/q;->setContentView(Landroid/view/View;)V

    .line 180
    invoke-static {p3}, Landroidx/lifecycle/o0;->e(Landroid/view/View;)Landroidx/lifecycle/v;

    .line 183
    move-result-object p1

    .line 184
    invoke-static {v0, p1}, Landroidx/lifecycle/o0;->i(Landroid/view/View;Landroidx/lifecycle/v;)V

    .line 187
    invoke-static {p3}, Landroidx/lifecycle/o0;->f(Landroid/view/View;)Landroidx/lifecycle/b1;

    .line 190
    move-result-object p1

    .line 191
    const p2, 0x7f06005b

    .line 194
    invoke-virtual {v0, p2, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 197
    invoke-static {p3}, Le3/r0;->A(Landroid/view/View;)Li4/g;

    .line 200
    move-result-object p1

    .line 201
    const p2, 0x7f06005a

    .line 204
    invoke-virtual {v0, p2, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 207
    iget-object p1, p0, Lu2/r;->h:Ls7/a;

    .line 209
    iget-object p2, p0, Lu2/r;->i:Lu2/q;

    .line 211
    invoke-virtual {p0, p1, p2, p4}, Lu2/r;->f(Ls7/a;Lu2/q;Lr2/m;)V

    .line 214
    invoke-virtual {p0}, Lb/q;->a()Lb/f0;

    .line 217
    move-result-object p1

    .line 218
    new-instance p2, Lu2/a;

    .line 220
    const/4 p3, 0x1

    .line 221
    invoke-direct {p2, p0, p3}, Lu2/a;-><init>(Lu2/r;I)V

    .line 224
    invoke-static {p1, p0, p2}, Lb8/m;->d(Lb/f0;Lb/q;Ls7/d;)V

    .line 227
    return-void

    .line 228
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 230
    const-string p2, "Dialog has no window"

    .line 232
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 235
    throw p1
.end method

.method public static final e(Landroid/view/ViewGroup;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 5
    instance-of v1, p0, Lu2/p;

    .line 7
    if-eqz v1, :cond_0

    .line 9
    goto :goto_2

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 13
    move-result v1

    .line 14
    :goto_0
    if-ge v0, v1, :cond_3

    .line 16
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 19
    move-result-object v2

    .line 20
    instance-of v3, v2, Landroid/view/ViewGroup;

    .line 22
    if-eqz v3, :cond_1

    .line 24
    check-cast v2, Landroid/view/ViewGroup;

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    const/4 v2, 0x0

    .line 28
    :goto_1
    if-eqz v2, :cond_2

    .line 30
    invoke-static {v2}, Lu2/r;->e(Landroid/view/ViewGroup;)V

    .line 33
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 0

    .line 1
    return-void
.end method

.method public final f(Ls7/a;Lu2/q;Lr2/m;)V
    .locals 6

    .line 1
    iput-object p1, p0, Lu2/r;->h:Ls7/a;

    .line 3
    iput-object p2, p0, Lu2/r;->i:Lu2/q;

    .line 5
    iget-object p1, p2, Lu2/q;->c:Lu2/z;

    .line 7
    iget-object v0, p0, Lu2/r;->j:Landroid/view/View;

    .line 9
    invoke-static {v0}, Lu2/i;->b(Landroid/view/View;)Z

    .line 12
    move-result v0

    .line 13
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 16
    move-result p1

    .line 17
    const/4 v1, 0x0

    .line 18
    const/4 v2, 0x1

    .line 19
    if-eqz p1, :cond_2

    .line 21
    if-eq p1, v2, :cond_1

    .line 23
    const/4 v0, 0x2

    .line 24
    if-ne p1, v0, :cond_0

    .line 26
    move v0, v1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance p1, La2/e;

    .line 30
    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    .line 33
    throw p1

    .line 34
    :cond_1
    move v0, v2

    .line 35
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 38
    move-result-object p1

    .line 39
    invoke-static {p1}, Lkotlin/jvm/internal/l;->c(Ljava/lang/Object;)V

    .line 42
    const/16 v3, 0x2000

    .line 44
    if-eqz v0, :cond_3

    .line 46
    move v0, v3

    .line 47
    goto :goto_1

    .line 48
    :cond_3
    const/16 v0, -0x2001

    .line 50
    :goto_1
    const/16 v0, -0x2001
    invoke-virtual {p1, v0, v3}, Landroid/view/Window;->setFlags(II)V

    .line 53
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_5

    .line 59
    if-ne p1, v2, :cond_4

    .line 61
    move p1, v2

    .line 62
    goto :goto_2

    .line 63
    :cond_4
    new-instance p1, La2/e;

    .line 65
    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    .line 68
    throw p1

    .line 69
    :cond_5
    move p1, v1

    .line 70
    :goto_2
    iget-object p3, p0, Lu2/r;->k:Lu2/p;

    .line 72
    invoke-virtual {p3, p1}, Landroid/view/View;->setLayoutDirection(I)V

    .line 75
    iget-boolean p1, p2, Lu2/q;->e:Z

    .line 77
    iget-boolean v0, p2, Lu2/q;->d:Z

    .line 79
    iget-object v3, p3, Lu2/p;->l:Landroid/view/Window;

    .line 81
    iget-boolean v4, p3, Lu2/p;->p:Z

    .line 83
    if-eqz v4, :cond_7

    .line 85
    iget-boolean v4, p3, Lu2/p;->n:Z

    .line 87
    if-ne v0, v4, :cond_7

    .line 89
    iget-boolean v4, p3, Lu2/p;->o:Z

    .line 91
    if-eq p1, v4, :cond_6

    .line 93
    goto :goto_3

    .line 94
    :cond_6
    move v4, v1

    .line 95
    goto :goto_4

    .line 96
    :cond_7
    :goto_3
    move v4, v2

    .line 97
    :goto_4
    iput-boolean v0, p3, Lu2/p;->n:Z

    .line 99
    iput-boolean p1, p3, Lu2/p;->o:Z

    .line 101
    if-eqz v4, :cond_a

    .line 103
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 106
    move-result-object v4

    .line 107
    const/4 v5, -0x2

    .line 108
    if-eqz v0, :cond_8

    .line 110
    move v0, v5

    .line 111
    goto :goto_5

    .line 112
    :cond_8
    const/4 v0, -0x1

    .line 113
    :goto_5
    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 115
    if-ne v0, v4, :cond_9

    .line 117
    iget-boolean v4, p3, Lu2/p;->p:Z

    .line 119
    if-nez v4, :cond_a

    .line 121
    :cond_9
    invoke-virtual {v3, v0, v5}, Landroid/view/Window;->setLayout(II)V

    .line 124
    iput-boolean v2, p3, Lu2/p;->p:Z

    .line 126
    :cond_a
    iget-boolean p2, p2, Lu2/q;->b:Z

    .line 128
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 131
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 134
    move-result-object p2

    .line 135
    if-eqz p2, :cond_d

    .line 137
    if-eqz p1, :cond_b

    .line 139
    goto :goto_6

    .line 140
    :cond_b
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 142
    const/16 p3, 0x1f

    .line 144
    if-ge p1, p3, :cond_c

    .line 146
    const/16 v1, 0x10

    .line 148
    goto :goto_6

    .line 149
    :cond_c
    const/16 v1, 0x30

    .line 151
    :goto_6
    invoke-virtual {p2, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 154
    :cond_d
    return-void
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lu2/r;->i:Lu2/q;

    .line 3
    iget-boolean v0, v0, Lu2/q;->a:Z

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 19
    const/16 v0, 0x6f

    .line 21
    if-ne p1, v0, :cond_0

    .line 23
    iget-object p1, p0, Lu2/r;->h:Ls7/a;

    .line 25
    invoke-interface {p1}, Ls7/a;->invoke()Ljava/lang/Object;

    .line 28
    const/4 p1, 0x1

    .line 29
    return p1

    .line 30
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 33
    move-result p1

    .line 34
    return p1
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lu2/r;->i:Lu2/q;

    .line 7
    iget-boolean v1, v1, Lu2/q;->b:Z

    .line 9
    const/4 v2, 0x3

    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x1

    .line 12
    if-eqz v1, :cond_5

    .line 14
    iget-object v1, p0, Lu2/r;->k:Lu2/p;

    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 22
    move-result v5

    .line 23
    invoke-static {v5}, Ljava/lang/Float;->isInfinite(F)Z

    .line 26
    move-result v6

    .line 27
    if-nez v6, :cond_1

    .line 29
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    .line 32
    move-result v5

    .line 33
    if-nez v5, :cond_1

    .line 35
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 38
    move-result v5

    .line 39
    invoke-static {v5}, Ljava/lang/Float;->isInfinite(F)Z

    .line 42
    move-result v6

    .line 43
    if-nez v6, :cond_1

    .line 45
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    .line 48
    move-result v5

    .line 49
    if-nez v5, :cond_1

    .line 51
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 54
    move-result-object v5

    .line 55
    if-nez v5, :cond_0

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 61
    move-result v6

    .line 62
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    .line 65
    move-result v7

    .line 66
    add-int/2addr v7, v6

    .line 67
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    .line 70
    move-result v6

    .line 71
    add-int/2addr v6, v7

    .line 72
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 75
    move-result v1

    .line 76
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    .line 79
    move-result v8

    .line 80
    add-int/2addr v8, v1

    .line 81
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    .line 84
    move-result v1

    .line 85
    add-int/2addr v1, v8

    .line 86
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 89
    move-result v5

    .line 90
    invoke-static {v5}, Lu7/a;->z(F)I

    .line 93
    move-result v5

    .line 94
    if-gt v7, v5, :cond_1

    .line 96
    if-gt v5, v6, :cond_1

    .line 98
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 101
    move-result v5

    .line 102
    invoke-static {v5}, Lu7/a;->z(F)I

    .line 105
    move-result v5

    .line 106
    if-gt v8, v5, :cond_1

    .line 108
    if-gt v5, v1, :cond_1

    .line 110
    goto :goto_1

    .line 111
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 114
    move-result p1

    .line 115
    if-eqz p1, :cond_4

    .line 117
    if-eq p1, v4, :cond_3

    .line 119
    if-eq p1, v2, :cond_2

    .line 121
    goto :goto_2

    .line 122
    :cond_2
    iput-boolean v3, p0, Lu2/r;->l:Z

    .line 124
    return v0

    .line 125
    :cond_3
    iget-boolean p1, p0, Lu2/r;->l:Z

    .line 127
    if-eqz p1, :cond_6

    .line 129
    iget-object p1, p0, Lu2/r;->h:Ls7/a;

    .line 131
    invoke-interface {p1}, Ls7/a;->invoke()Ljava/lang/Object;

    .line 134
    iput-boolean v3, p0, Lu2/r;->l:Z

    .line 136
    return v4

    .line 137
    :cond_4
    iput-boolean v4, p0, Lu2/r;->l:Z

    .line 139
    return v4

    .line 140
    :cond_5
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 143
    move-result p1

    .line 144
    if-eqz p1, :cond_7

    .line 146
    if-eq p1, v4, :cond_7

    .line 148
    if-eq p1, v2, :cond_7

    .line 150
    :cond_6
    :goto_2
    return v0

    .line 151
    :cond_7
    iput-boolean v3, p0, Lu2/r;->l:Z

    .line 153
    return v0
.end method

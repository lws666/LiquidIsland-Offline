.class public final Le5/h;
.super Ll7/j;
.source "SourceFile"

# interfaces
.implements Ls7/f;


# instance fields
.field public final synthetic d:I

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Lj7/d;I)V
    .locals 0

    .line 1
    iput p3, p0, Le5/h;->d:I

    iput-object p1, p0, Le5/h;->f:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ll7/j;-><init>(ILj7/d;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lj7/d;I)V
    .locals 0

    .line 2
    iput p4, p0, Le5/h;->d:I

    iput-object p1, p0, Le5/h;->e:Ljava/lang/Object;

    iput-object p2, p0, Le5/h;->f:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ll7/j;-><init>(ILj7/d;)V

    return-void
.end method

.method private final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-static {p1}, Le3/s;->g0(Ljava/lang/Object;)V

    .line 4
    sget-object p1, Lw4/d;->a:Lg8/s0;

    .line 6
    iget-object p1, p0, Le5/h;->e:Ljava/lang/Object;

    .line 8
    check-cast p1, Landroid/net/Uri;

    .line 10
    sget-object v0, Lw4/d;->g:Lg8/s0;

    .line 12
    invoke-virtual {v0, p1}, Lg8/s0;->h(Ljava/lang/Object;)V

    .line 15
    sget-object v0, Lw4/c;->d:Lw4/c;

    .line 17
    invoke-static {v0}, Lw4/d;->f(Lw4/c;)V

    .line 20
    const-wide/16 v0, 0x0

    .line 22
    invoke-static {v0, v1}, Lw4/d;->e(J)V

    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-static {v2}, Lr4/a;->l(Z)V

    .line 29
    invoke-static {v0, v1}, Lr4/a;->n(J)V

    .line 32
    iget-object v0, p0, Le5/h;->f:Ljava/lang/Object;

    .line 34
    check-cast v0, Lcom/example/liquidisland/recorder/LiquidScreenRecorderService;

    .line 36
    iput-boolean v2, v0, Lcom/example/liquidisland/recorder/LiquidScreenRecorderService;->p:Z

    .line 38
    iput-boolean v2, v0, Lcom/example/liquidisland/recorder/LiquidScreenRecorderService;->q:Z

    .line 40
    const-class v1, Landroid/app/NotificationManager;

    .line 42
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Landroid/app/NotificationManager;

    .line 48
    const/4 v3, 0x1

    .line 49
    if-nez v1, :cond_0

    .line 51
    goto/16 :goto_0

    .line 53
    :cond_0
    new-instance v4, Lw2/e;

    .line 55
    const-string v5, "liquid_screen_recorder_channel"

    .line 57
    invoke-direct {v4, v0, v5}, Lw2/e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 60
    const v5, 0x7f0c01e2

    .line 63
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 66
    move-result-object v5

    .line 67
    invoke-static {v5}, Lw2/e;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 70
    move-result-object v5

    .line 71
    iput-object v5, v4, Lw2/e;->e:Ljava/lang/CharSequence;

    .line 73
    const v5, 0x7f0c01e1

    .line 76
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 79
    move-result-object v5

    .line 80
    invoke-static {v5}, Lw2/e;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 83
    move-result-object v5

    .line 84
    iput-object v5, v4, Lw2/e;->f:Ljava/lang/CharSequence;

    .line 86
    const/high16 v5, 0x7f090000

    .line 88
    iget-object v6, v4, Lw2/e;->p:Landroid/app/Notification;

    .line 90
    iput v5, v6, Landroid/app/Notification;->icon:I

    .line 92
    const/16 v5, 0x10

    .line 94
    invoke-virtual {v4, v5, v3}, Lw2/e;->d(IZ)V

    .line 97
    if-eqz p1, :cond_1

    .line 99
    new-instance v5, Landroid/content/Intent;

    .line 101
    const-string v6, "android.intent.action.VIEW"

    .line 103
    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 106
    const-string v6, "video/mp4"

    .line 108
    invoke-virtual {v5, p1, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    const v7, 0x10000001

    .line 114
    invoke-virtual {v5, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 117
    const/16 v7, 0x65

    .line 119
    const/high16 v8, 0xc000000

    .line 121
    invoke-static {v0, v7, v5, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 124
    move-result-object v5

    .line 125
    iput-object v5, v4, Lw2/e;->g:Landroid/app/PendingIntent;

    .line 127
    const v7, 0x7f0c01cf

    .line 130
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 133
    move-result-object v7

    .line 134
    invoke-virtual {v4, v2, v7, v5}, Lw2/e;->a(ILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 137
    new-instance v5, Landroid/content/Intent;

    .line 139
    const-string v7, "android.intent.action.SEND"

    .line 141
    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    const-string v6, "android.intent.extra.STREAM"

    .line 149
    invoke-virtual {v5, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 152
    invoke-virtual {v5, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 155
    const p1, 0x7f0c01d2

    .line 158
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 161
    move-result-object v6

    .line 162
    invoke-static {v5, v6}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 165
    move-result-object v5

    .line 166
    const/high16 v6, 0x10000000

    .line 168
    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 171
    const/16 v6, 0x66

    .line 173
    invoke-static {v0, v6, v5, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 176
    move-result-object v5

    .line 177
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 180
    move-result-object p1

    .line 181
    invoke-virtual {v4, v2, p1, v5}, Lw2/e;->a(ILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 184
    :cond_1
    const/16 p1, 0x7d3

    .line 186
    invoke-virtual {v4}, Lw2/e;->b()Landroid/app/Notification;

    .line 189
    move-result-object v4

    .line 190
    invoke-virtual {v1, p1, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 193
    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 196
    move-result-object p1

    .line 197
    const v1, 0x7f0c01e3

    .line 200
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 203
    move-result-object v1

    .line 204
    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 207
    move-result-object p1

    .line 208
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 211
    invoke-virtual {v0, v3}, Landroid/app/Service;->stopForeground(I)V

    .line 214
    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    .line 217
    sget-object p1, Le7/p;->a:Le7/p;

    .line 219
    return-object p1
.end method

.method private final e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Le5/h;->f:Ljava/lang/Object;

    .line 3
    check-cast v0, Lcom/example/liquidisland/services/DynamicIslandAccessibilityService;

    .line 5
    invoke-static {p1}, Le3/s;->g0(Ljava/lang/Object;)V

    .line 8
    iget-object p1, p0, Le5/h;->e:Ljava/lang/Object;

    .line 10
    check-cast p1, Lw4/c;

    .line 12
    sget-object v1, Lw4/c;->d:Lw4/c;

    .line 14
    const/4 v2, 0x0

    .line 15
    if-eq p1, v1, :cond_0

    .line 17
    const/4 p1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move p1, v2

    .line 20
    :goto_0
    iget-object v1, v0, Lcom/example/liquidisland/services/DynamicIslandAccessibilityService;->p0:Lj0/l1;

    .line 22
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v1, v3}, Lj0/l1;->setValue(Ljava/lang/Object;)V

    .line 29
    invoke-static {p1}, Lr4/a;->l(Z)V

    .line 32
    if-eqz p1, :cond_1

    .line 34
    iput-boolean v2, v0, Lcom/example/liquidisland/services/DynamicIslandAccessibilityService;->T6:Z

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    invoke-virtual {v0, v2}, Lcom/example/liquidisland/services/DynamicIslandAccessibilityService;->g3(Z)V

    .line 40
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 43
    move-result-wide v1

    .line 44
    iget-wide v3, v0, Lcom/example/liquidisland/services/DynamicIslandAccessibilityService;->i0:J

    .line 46
    sub-long/2addr v1, v3

    .line 47
    iget-wide v3, v0, Lcom/example/liquidisland/services/DynamicIslandAccessibilityService;->j0:J

    .line 49
    cmp-long p1, v1, v3

    .line 51
    if-lez p1, :cond_2

    .line 53
    invoke-static {v0}, Lt/h0;->B(Lcom/example/liquidisland/services/DynamicIslandAccessibilityService;)V

    .line 56
    invoke-static {v0}, Lt2/b;->m0(Lcom/example/liquidisland/services/DynamicIslandAccessibilityService;)V

    .line 59
    :cond_2
    sget-object p1, Le7/p;->a:Le7/p;

    .line 61
    return-object p1
.end method

.method private final f(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {p1}, Le3/s;->g0(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le5/h;->e:Ljava/lang/Object;

    .line 6
    check-cast p1, Ld8/x;

    .line 8
    iget-object p1, p0, Le5/h;->f:Ljava/lang/Object;

    .line 10
    check-cast p1, Lx4/f1;

    .line 12
    const/4 v0, 0x0

    .line 13
    :try_start_0
    iget-object p1, p1, Lx4/f1;->d:Lcom/example/liquidisland/services/DynamicIslandAccessibilityService;

    .line 15
    const-string v1, "usagestats"

    .line 17
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    move-result-object p1

    .line 21
    const-string v1, "null cannot be cast to non-null type android.app.usage.UsageStatsManager"

    .line 23
    invoke-static {p1, v1}, Lkotlin/jvm/internal/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    check-cast p1, Landroid/app/usage/UsageStatsManager;

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 31
    move-result-wide v1

    .line 32
    const-wide/32 v3, 0xea60

    .line 35
    sub-long v3, v1, v3

    .line 37
    invoke-virtual {p1, v3, v4, v1, v2}, Landroid/app/usage/UsageStatsManager;->queryEvents(JJ)Landroid/app/usage/UsageEvents;

    .line 40
    move-result-object p1

    .line 41
    new-instance v1, Landroid/app/usage/UsageEvents$Event;

    .line 43
    invoke-direct {v1}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    .line 46
    move-object v2, v0

    .line 47
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/app/usage/UsageEvents;->hasNextEvent()Z

    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_1

    .line 53
    invoke-virtual {p1, v1}, Landroid/app/usage/UsageEvents;->getNextEvent(Landroid/app/usage/UsageEvents$Event;)Z

    .line 56
    invoke-virtual {v1}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    .line 59
    move-result v3

    .line 60
    const/4 v4, 0x1

    .line 61
    if-ne v3, v4, :cond_0

    .line 63
    invoke-virtual {v1}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    .line 66
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    goto :goto_0

    .line 68
    :catchall_0
    move-exception p1

    .line 69
    invoke-static {p1}, Le3/s;->H(Ljava/lang/Throwable;)Le7/j;

    .line 72
    move-result-object v2

    .line 73
    :cond_1
    instance-of p1, v2, Le7/j;

    .line 75
    if-eqz p1, :cond_2

    .line 77
    goto :goto_1

    .line 78
    :cond_2
    move-object v0, v2

    .line 79
    :goto_1
    return-object v0
.end method

.method private final g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Le5/h;->f:Ljava/lang/Object;

    .line 3
    check-cast v0, Landroid/content/Context;

    .line 5
    invoke-static {p1}, Le3/s;->g0(Ljava/lang/Object;)V

    .line 8
    iget-object p1, p0, Le5/h;->e:Ljava/lang/Object;

    .line 10
    check-cast p1, Lv4/t;

    .line 12
    invoke-virtual {p1}, Lv4/t;->g()Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    const-string v2, "coversheet_bg_type"

    .line 18
    const-string v3, "default_glass"

    .line 20
    invoke-virtual {p1, v2, v3}, Lv4/t;->z0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object v2

    .line 24
    const-string v3, "dark_only"

    .line 26
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_0

    .line 32
    const-string v3, "wallpaper"

    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_1

    .line 40
    :cond_0
    sget-object v3, Lu4/h;->a:Landroid/os/Handler;

    .line 42
    invoke-static {v0}, Lkotlin/jvm/internal/l;->c(Ljava/lang/Object;)V

    .line 45
    invoke-static {v0}, Lu4/h;->d(Landroid/content/Context;)Landroid/graphics/Bitmap;

    .line 48
    :cond_1
    const-string v3, "custom_image"

    .line 50
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 53
    move-result v1

    .line 54
    const-string v4, ""

    .line 56
    if-eqz v1, :cond_2

    .line 58
    sget-object v1, Lu4/h;->a:Landroid/os/Handler;

    .line 60
    invoke-static {v0}, Lkotlin/jvm/internal/l;->c(Ljava/lang/Object;)V

    .line 63
    const-string v1, "custom_backdrop_path"

    .line 65
    invoke-virtual {p1, v1, v4}, Lv4/t;->z0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    move-result-object v1

    .line 69
    invoke-static {v0, v1}, Lu4/h;->e(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 72
    :cond_2
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_3

    .line 78
    sget-object v1, Lu4/h;->a:Landroid/os/Handler;

    .line 80
    invoke-static {v0}, Lkotlin/jvm/internal/l;->c(Ljava/lang/Object;)V

    .line 83
    const-string v1, "coversheet_bg_custom_uri"

    .line 85
    invoke-virtual {p1, v1, v4}, Lv4/t;->z0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    move-result-object p1

    .line 89
    invoke-static {v0, p1}, Lu4/h;->e(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 92
    :cond_3
    sget-object p1, Le7/p;->a:Le7/p;

    .line 94
    return-object p1
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lj7/d;)Lj7/d;
    .locals 3

    .line 1
    iget v0, p0, Le5/h;->d:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    new-instance v0, Le5/h;

    .line 8
    iget-object v1, p0, Le5/h;->f:Ljava/lang/Object;

    .line 10
    check-cast v1, Lz/i;

    .line 12
    const/16 v2, 0x18

    .line 14
    invoke-direct {v0, v1, p2, v2}, Le5/h;-><init>(Ljava/lang/Object;Lj7/d;I)V

    .line 17
    iput-object p1, v0, Le5/h;->e:Ljava/lang/Object;

    .line 19
    return-object v0

    .line 20
    :pswitch_0
    new-instance p1, Le5/h;

    .line 22
    iget-object v0, p0, Le5/h;->e:Ljava/lang/Object;

    .line 24
    check-cast v0, Lv4/t;

    .line 26
    iget-object v1, p0, Le5/h;->f:Ljava/lang/Object;

    .line 28
    check-cast v1, Landroid/content/Context;

    .line 30
    const/16 v2, 0x17

    .line 32
    invoke-direct {p1, v0, v1, p2, v2}, Le5/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lj7/d;I)V

    .line 35
    return-object p1

    .line 36
    :pswitch_1
    new-instance v0, Le5/h;

    .line 38
    iget-object v1, p0, Le5/h;->f:Ljava/lang/Object;

    .line 40
    check-cast v1, Lx4/f1;

    .line 42
    const/16 v2, 0x16

    .line 44
    invoke-direct {v0, v1, p2, v2}, Le5/h;-><init>(Ljava/lang/Object;Lj7/d;I)V

    .line 47
    iput-object p1, v0, Le5/h;->e:Ljava/lang/Object;

    .line 49
    return-object v0

    .line 50
    :pswitch_2
    new-instance p1, Le5/h;

    .line 52
    iget-object v0, p0, Le5/h;->e:Ljava/lang/Object;

    .line 54
    check-cast v0, Lw4/c;

    .line 56
    iget-object v1, p0, Le5/h;->f:Ljava/lang/Object;

    .line 58
    check-cast v1, Lcom/example/liquidisland/services/DynamicIslandAccessibilityService;

    .line 60
    const/16 v2, 0x15

    .line 62
    invoke-direct {p1, v0, v1, p2, v2}, Le5/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lj7/d;I)V

    .line 65
    return-object p1

    .line 66
    :pswitch_3
    new-instance p1, Le5/h;

    .line 68
    iget-object v0, p0, Le5/h;->e:Ljava/lang/Object;

    .line 70
    check-cast v0, Landroid/net/Uri;

    .line 72
    iget-object v1, p0, Le5/h;->f:Ljava/lang/Object;

    .line 74
    check-cast v1, Lcom/example/liquidisland/recorder/LiquidScreenRecorderService;

    .line 76
    const/16 v2, 0x14

    .line 78
    invoke-direct {p1, v0, v1, p2, v2}, Le5/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lj7/d;I)V

    .line 81
    return-object p1

    .line 82
    :pswitch_4
    new-instance p1, Le5/h;

    .line 84
    iget-object v0, p0, Le5/h;->e:Ljava/lang/Object;

    .line 86
    check-cast v0, Landroidx/fragment/app/t;

    .line 88
    iget-object v1, p0, Le5/h;->f:Ljava/lang/Object;

    .line 90
    check-cast v1, Landroid/net/Uri;

    .line 92
    const/16 v2, 0x13

    .line 94
    invoke-direct {p1, v0, v1, p2, v2}, Le5/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lj7/d;I)V

    .line 97
    return-object p1

    .line 98
    :pswitch_5
    new-instance p1, Le5/h;

    .line 100
    iget-object v0, p0, Le5/h;->e:Ljava/lang/Object;

    .line 102
    check-cast v0, Ljava/lang/String;

    .line 104
    iget-object v1, p0, Le5/h;->f:Ljava/lang/Object;

    .line 106
    check-cast v1, Lt4/d;

    .line 108
    const/16 v2, 0x12

    .line 110
    invoke-direct {p1, v0, v1, p2, v2}, Le5/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lj7/d;I)V

    .line 113
    return-object p1

    .line 114
    :pswitch_6
    new-instance p1, Le5/h;

    .line 116
    iget-object v0, p0, Le5/h;->e:Ljava/lang/Object;

    .line 118
    check-cast v0, Lf0/v;

    .line 120
    iget-object v1, p0, Le5/h;->f:Ljava/lang/Object;

    .line 122
    check-cast v1, Ljava/lang/String;

    .line 124
    const/16 v2, 0x11

    .line 126
    invoke-direct {p1, v0, v1, p2, v2}, Le5/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lj7/d;I)V

    .line 129
    return-object p1

    .line 130
    :pswitch_7
    new-instance p1, Le5/h;

    .line 132
    iget-object v0, p0, Le5/h;->e:Ljava/lang/Object;

    .line 134
    check-cast v0, Ljava/lang/String;

    .line 136
    iget-object v1, p0, Le5/h;->f:Ljava/lang/Object;

    .line 138
    check-cast v1, Ljava/lang/String;

    .line 140
    const/16 v2, 0x10

    .line 142
    invoke-direct {p1, v0, v1, p2, v2}, Le5/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lj7/d;I)V

    .line 145
    return-object p1

    .line 146
    :pswitch_8
    new-instance p1, Le5/h;

    .line 148
    iget-object v0, p0, Le5/h;->e:Ljava/lang/Object;

    .line 150
    check-cast v0, La5/j;

    .line 152
    iget-object v1, p0, Le5/h;->f:Ljava/lang/Object;

    .line 154
    check-cast v1, Ljava/lang/Exception;

    .line 156
    const/16 v2, 0xf

    .line 158
    invoke-direct {p1, v0, v1, p2, v2}, Le5/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lj7/d;I)V

    .line 161
    return-object p1

    .line 162
    :pswitch_9
    new-instance p1, Le5/h;

    .line 164
    iget-object v0, p0, Le5/h;->e:Ljava/lang/Object;

    .line 166
    check-cast v0, Landroid/content/Context;

    .line 168
    iget-object v1, p0, Le5/h;->f:Ljava/lang/Object;

    .line 170
    check-cast v1, Lj0/c1;

    .line 172
    const/16 v2, 0xe

    .line 174
    invoke-direct {p1, v0, v1, p2, v2}, Le5/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lj7/d;I)V

    .line 177
    return-object p1

    .line 178
    :pswitch_a
    new-instance v0, Le5/h;

    .line 180
    iget-object v1, p0, Le5/h;->f:Ljava/lang/Object;

    .line 182
    check-cast v1, Lj0/h1;

    .line 184
    const/16 v2, 0xd

    .line 186
    invoke-direct {v0, v1, p2, v2}, Le5/h;-><init>(Ljava/lang/Object;Lj7/d;I)V

    .line 189
    iput-object p1, v0, Le5/h;->e:Ljava/lang/Object;

    .line 191
    return-object v0

    .line 192
    :pswitch_b
    new-instance p1, Le5/h;

    .line 194
    iget-object v0, p0, Le5/h;->e:Ljava/lang/Object;

    .line 196
    check-cast v0, Ls/u;

    .line 198
    iget-object v1, p0, Le5/h;->f:Ljava/lang/Object;

    .line 200
    check-cast v1, Lj0/h1;

    .line 202
    const/16 v2, 0xc

    .line 204
    invoke-direct {p1, v0, v1, p2, v2}, Le5/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lj7/d;I)V

    .line 207
    return-object p1

    .line 208
    :pswitch_c
    new-instance v0, Le5/h;

    .line 210
    iget-object v1, p0, Le5/h;->f:Ljava/lang/Object;

    .line 212
    check-cast v1, Lk3/y;

    .line 214
    const/16 v2, 0xb

    .line 216
    invoke-direct {v0, v1, p2, v2}, Le5/h;-><init>(Ljava/lang/Object;Lj7/d;I)V

    .line 219
    iput-object p1, v0, Le5/h;->e:Ljava/lang/Object;

    .line 221
    return-object v0

    .line 222
    :pswitch_d
    new-instance p1, Le5/h;

    .line 224
    iget-object v0, p0, Le5/h;->e:Ljava/lang/Object;

    .line 226
    check-cast v0, Landroid/content/Context;

    .line 228
    iget-object v1, p0, Le5/h;->f:Ljava/lang/Object;

    .line 230
    check-cast v1, Ljava/lang/String;

    .line 232
    const/16 v2, 0xa

    .line 234
    invoke-direct {p1, v0, v1, p2, v2}, Le5/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lj7/d;I)V

    .line 237
    return-object p1

    .line 238
    :pswitch_e
    new-instance p1, Le5/h;

    .line 240
    iget-object v0, p0, Le5/h;->e:Ljava/lang/Object;

    .line 242
    check-cast v0, Ls7/d;

    .line 244
    iget-object v1, p0, Le5/h;->f:Ljava/lang/Object;

    .line 246
    check-cast v1, Lj0/c1;

    .line 248
    const/16 v2, 0x9

    .line 250
    invoke-direct {p1, v0, v1, p2, v2}, Le5/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lj7/d;I)V

    .line 253
    return-object p1

    .line 254
    :pswitch_f
    new-instance p1, Le5/h;

    .line 256
    iget-object v0, p0, Le5/h;->e:Ljava/lang/Object;

    .line 258
    check-cast v0, La5/f;

    .line 260
    iget-object v1, p0, Le5/h;->f:Ljava/lang/Object;

    .line 262
    check-cast v1, La5/f;

    .line 264
    const/16 v2, 0x8

    .line 266
    invoke-direct {p1, v0, v1, p2, v2}, Le5/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lj7/d;I)V

    .line 269
    return-object p1

    .line 270
    :pswitch_10
    new-instance p1, Le5/h;

    .line 272
    iget-object v0, p0, Le5/h;->e:Ljava/lang/Object;

    .line 274
    check-cast v0, Ljava/util/List;

    .line 276
    iget-object v1, p0, Le5/h;->f:Ljava/lang/Object;

    .line 278
    check-cast v1, Lj0/c1;

    .line 280
    const/4 v2, 0x7

    .line 281
    invoke-direct {p1, v0, v1, p2, v2}, Le5/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lj7/d;I)V

    .line 284
    return-object p1

    .line 285
    :pswitch_11
    new-instance p1, Le5/h;

    .line 287
    iget-object v0, p0, Le5/h;->e:Ljava/lang/Object;

    .line 289
    check-cast v0, Lc1/g;

    .line 291
    iget-object v1, p0, Le5/h;->f:Ljava/lang/Object;

    .line 293
    check-cast v1, Ls7/a;

    .line 295
    const/4 v2, 0x6

    .line 296
    invoke-direct {p1, v0, v1, p2, v2}, Le5/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lj7/d;I)V

    .line 299
    return-object p1

    .line 300
    :pswitch_12
    new-instance v0, Le5/h;

    .line 302
    iget-object v1, p0, Le5/h;->f:Ljava/lang/Object;

    .line 304
    check-cast v1, Landroid/content/Context;

    .line 306
    const/4 v2, 0x5

    .line 307
    invoke-direct {v0, v1, p2, v2}, Le5/h;-><init>(Ljava/lang/Object;Lj7/d;I)V

    .line 310
    iput-object p1, v0, Le5/h;->e:Ljava/lang/Object;

    .line 312
    return-object v0

    .line 313
    :pswitch_13
    new-instance p1, Le5/h;

    .line 315
    iget-object v0, p0, Le5/h;->e:Ljava/lang/Object;

    .line 317
    check-cast v0, Ljava/util/List;

    .line 319
    iget-object v1, p0, Le5/h;->f:Ljava/lang/Object;

    .line 321
    check-cast v1, Lh5/o0;

    .line 323
    const/4 v2, 0x4

    .line 324
    invoke-direct {p1, v0, v1, p2, v2}, Le5/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lj7/d;I)V

    .line 327
    return-object p1

    .line 328
    :pswitch_14
    new-instance p1, Le5/h;

    .line 330
    iget-object v0, p0, Le5/h;->e:Ljava/lang/Object;

    .line 332
    check-cast v0, Ljava/lang/Boolean;

    .line 334
    iget-object v1, p0, Le5/h;->f:Ljava/lang/Object;

    .line 336
    check-cast v1, Lj0/c1;

    .line 338
    const/4 v2, 0x3

    .line 339
    invoke-direct {p1, v0, v1, p2, v2}, Le5/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lj7/d;I)V

    .line 342
    return-object p1

    .line 343
    :pswitch_15
    new-instance p1, Le5/h;

    .line 345
    iget-object v0, p0, Le5/h;->e:Ljava/lang/Object;

    .line 347
    check-cast v0, Ls7/d;

    .line 349
    iget-object v1, p0, Le5/h;->f:Ljava/lang/Object;

    .line 351
    check-cast v1, Lj0/t2;

    .line 353
    const/4 v2, 0x2

    .line 354
    invoke-direct {p1, v0, v1, p2, v2}, Le5/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lj7/d;I)V

    .line 357
    return-object p1

    .line 358
    :pswitch_16
    new-instance p1, Le5/h;

    .line 360
    iget-object v0, p0, Le5/h;->e:Ljava/lang/Object;

    .line 362
    check-cast v0, Landroid/graphics/Bitmap;

    .line 364
    iget-object v1, p0, Le5/h;->f:Ljava/lang/Object;

    .line 366
    check-cast v1, Lj0/c1;

    .line 368
    const/4 v2, 0x1

    .line 369
    invoke-direct {p1, v0, v1, p2, v2}, Le5/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lj7/d;I)V

    .line 372
    return-object p1

    .line 373
    :pswitch_17
    new-instance v0, Le5/h;

    .line 375
    iget-object v1, p0, Le5/h;->f:Ljava/lang/Object;

    .line 377
    check-cast v1, Le5/l;

    .line 379
    const/4 v2, 0x0

    .line 380
    invoke-direct {v0, v1, p2, v2}, Le5/h;-><init>(Ljava/lang/Object;Lj7/d;I)V

    .line 383
    iput-object p1, v0, Le5/h;->e:Ljava/lang/Object;

    .line 385
    return-object v0

    nop

    .line 387
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Le5/h;->d:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    check-cast p1, Ld8/x;

    .line 8
    check-cast p2, Lj7/d;

    .line 10
    invoke-virtual {p0, p1, p2}, Le5/h;->create(Ljava/lang/Object;Lj7/d;)Lj7/d;

    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Le5/h;

    .line 16
    sget-object p2, Le7/p;->a:Le7/p;

    .line 18
    invoke-virtual {p1, p2}, Le5/h;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :pswitch_0
    check-cast p1, Ld8/x;

    .line 25
    check-cast p2, Lj7/d;

    .line 27
    invoke-virtual {p0, p1, p2}, Le5/h;->create(Ljava/lang/Object;Lj7/d;)Lj7/d;

    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Le5/h;

    .line 33
    sget-object p2, Le7/p;->a:Le7/p;

    .line 35
    invoke-virtual {p1, p2}, Le5/h;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    return-object p2

    .line 39
    :pswitch_1
    check-cast p1, Ld8/x;

    .line 41
    check-cast p2, Lj7/d;

    .line 43
    invoke-virtual {p0, p1, p2}, Le5/h;->create(Ljava/lang/Object;Lj7/d;)Lj7/d;

    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Le5/h;

    .line 49
    sget-object p2, Le7/p;->a:Le7/p;

    .line 51
    invoke-virtual {p1, p2}, Le5/h;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    move-result-object p1

    .line 55
    return-object p1

    .line 56
    :pswitch_2
    check-cast p1, Ld8/x;

    .line 58
    check-cast p2, Lj7/d;

    .line 60
    invoke-virtual {p0, p1, p2}, Le5/h;->create(Ljava/lang/Object;Lj7/d;)Lj7/d;

    .line 63
    move-result-object p1

    .line 64
    check-cast p1, Le5/h;

    .line 66
    sget-object p2, Le7/p;->a:Le7/p;

    .line 68
    invoke-virtual {p1, p2}, Le5/h;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    return-object p2

    .line 72
    :pswitch_3
    check-cast p1, Ld8/x;

    .line 74
    check-cast p2, Lj7/d;

    .line 76
    invoke-virtual {p0, p1, p2}, Le5/h;->create(Ljava/lang/Object;Lj7/d;)Lj7/d;

    .line 79
    move-result-object p1

    .line 80
    check-cast p1, Le5/h;

    .line 82
    sget-object p2, Le7/p;->a:Le7/p;

    .line 84
    invoke-virtual {p1, p2}, Le5/h;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    return-object p2

    .line 88
    :pswitch_4
    check-cast p1, Ld8/x;

    .line 90
    check-cast p2, Lj7/d;

    .line 92
    invoke-virtual {p0, p1, p2}, Le5/h;->create(Ljava/lang/Object;Lj7/d;)Lj7/d;

    .line 95
    move-result-object p1

    .line 96
    check-cast p1, Le5/h;

    .line 98
    sget-object p2, Le7/p;->a:Le7/p;

    .line 100
    invoke-virtual {p1, p2}, Le5/h;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    move-result-object p1

    .line 104
    return-object p1

    .line 105
    :pswitch_5
    check-cast p1, Ld8/x;

    .line 107
    check-cast p2, Lj7/d;

    .line 109
    invoke-virtual {p0, p1, p2}, Le5/h;->create(Ljava/lang/Object;Lj7/d;)Lj7/d;

    .line 112
    move-result-object p1

    .line 113
    check-cast p1, Le5/h;

    .line 115
    sget-object p2, Le7/p;->a:Le7/p;

    .line 117
    invoke-virtual {p1, p2}, Le5/h;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    move-result-object p1

    .line 121
    return-object p1

    .line 122
    :pswitch_6
    check-cast p1, Ld8/x;

    .line 124
    check-cast p2, Lj7/d;

    .line 126
    invoke-virtual {p0, p1, p2}, Le5/h;->create(Ljava/lang/Object;Lj7/d;)Lj7/d;

    .line 129
    move-result-object p1

    .line 130
    check-cast p1, Le5/h;

    .line 132
    sget-object p2, Le7/p;->a:Le7/p;

    .line 134
    invoke-virtual {p1, p2}, Le5/h;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    return-object p2

    .line 138
    :pswitch_7
    check-cast p1, Ld8/x;

    .line 140
    check-cast p2, Lj7/d;

    .line 142
    invoke-virtual {p0, p1, p2}, Le5/h;->create(Ljava/lang/Object;Lj7/d;)Lj7/d;

    .line 145
    move-result-object p1

    .line 146
    check-cast p1, Le5/h;

    .line 148
    sget-object p2, Le7/p;->a:Le7/p;

    .line 150
    invoke-virtual {p1, p2}, Le5/h;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    move-result-object p1

    .line 154
    return-object p1

    .line 155
    :pswitch_8
    check-cast p1, Ld8/x;

    .line 157
    check-cast p2, Lj7/d;

    .line 159
    invoke-virtual {p0, p1, p2}, Le5/h;->create(Ljava/lang/Object;Lj7/d;)Lj7/d;

    .line 162
    move-result-object p1

    .line 163
    check-cast p1, Le5/h;

    .line 165
    sget-object p2, Le7/p;->a:Le7/p;

    .line 167
    invoke-virtual {p1, p2}, Le5/h;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    return-object p2

    .line 171
    :pswitch_9
    check-cast p1, Ld8/x;

    .line 173
    check-cast p2, Lj7/d;

    .line 175
    invoke-virtual {p0, p1, p2}, Le5/h;->create(Ljava/lang/Object;Lj7/d;)Lj7/d;

    .line 178
    move-result-object p1

    .line 179
    check-cast p1, Le5/h;

    .line 181
    sget-object p2, Le7/p;->a:Le7/p;

    .line 183
    invoke-virtual {p1, p2}, Le5/h;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    return-object p2

    .line 187
    :pswitch_a
    check-cast p1, Ld8/x;

    .line 189
    check-cast p2, Lj7/d;

    .line 191
    invoke-virtual {p0, p1, p2}, Le5/h;->create(Ljava/lang/Object;Lj7/d;)Lj7/d;

    .line 194
    move-result-object p1

    .line 195
    check-cast p1, Le5/h;

    .line 197
    sget-object p2, Le7/p;->a:Le7/p;

    .line 199
    invoke-virtual {p1, p2}, Le5/h;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    return-object p2

    .line 203
    :pswitch_b
    check-cast p1, Ld8/x;

    .line 205
    check-cast p2, Lj7/d;

    .line 207
    invoke-virtual {p0, p1, p2}, Le5/h;->create(Ljava/lang/Object;Lj7/d;)Lj7/d;

    .line 210
    move-result-object p1

    .line 211
    check-cast p1, Le5/h;

    .line 213
    sget-object p2, Le7/p;->a:Le7/p;

    .line 215
    invoke-virtual {p1, p2}, Le5/h;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    return-object p2

    .line 219
    :pswitch_c
    check-cast p1, Lk3/y;

    .line 221
    check-cast p2, Lj7/d;

    .line 223
    invoke-virtual {p0, p1, p2}, Le5/h;->create(Ljava/lang/Object;Lj7/d;)Lj7/d;

    .line 226
    move-result-object p1

    .line 227
    check-cast p1, Le5/h;

    .line 229
    sget-object p2, Le7/p;->a:Le7/p;

    .line 231
    invoke-virtual {p1, p2}, Le5/h;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    move-result-object p1

    .line 235
    return-object p1

    .line 236
    :pswitch_d
    check-cast p1, Ld8/x;

    .line 238
    check-cast p2, Lj7/d;

    .line 240
    invoke-virtual {p0, p1, p2}, Le5/h;->create(Ljava/lang/Object;Lj7/d;)Lj7/d;

    .line 243
    move-result-object p1

    .line 244
    check-cast p1, Le5/h;

    .line 246
    sget-object p2, Le7/p;->a:Le7/p;

    .line 248
    invoke-virtual {p1, p2}, Le5/h;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    move-result-object p1

    .line 252
    return-object p1

    .line 253
    :pswitch_e
    check-cast p1, Ld8/x;

    .line 255
    check-cast p2, Lj7/d;

    .line 257
    invoke-virtual {p0, p1, p2}, Le5/h;->create(Ljava/lang/Object;Lj7/d;)Lj7/d;

    .line 260
    move-result-object p1

    .line 261
    check-cast p1, Le5/h;

    .line 263
    sget-object p2, Le7/p;->a:Le7/p;

    .line 265
    invoke-virtual {p1, p2}, Le5/h;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    return-object p2

    .line 269
    :pswitch_f
    check-cast p1, Ld8/x;

    .line 271
    check-cast p2, Lj7/d;

    .line 273
    invoke-virtual {p0, p1, p2}, Le5/h;->create(Ljava/lang/Object;Lj7/d;)Lj7/d;

    .line 276
    move-result-object p1

    .line 277
    check-cast p1, Le5/h;

    .line 279
    sget-object p2, Le7/p;->a:Le7/p;

    .line 281
    invoke-virtual {p1, p2}, Le5/h;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    return-object p2

    .line 285
    :pswitch_10
    check-cast p1, Ld8/x;

    .line 287
    check-cast p2, Lj7/d;

    .line 289
    invoke-virtual {p0, p1, p2}, Le5/h;->create(Ljava/lang/Object;Lj7/d;)Lj7/d;

    .line 292
    move-result-object p1

    .line 293
    check-cast p1, Le5/h;

    .line 295
    sget-object p2, Le7/p;->a:Le7/p;

    .line 297
    invoke-virtual {p1, p2}, Le5/h;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    return-object p2

    .line 301
    :pswitch_11
    check-cast p1, Ld8/x;

    .line 303
    check-cast p2, Lj7/d;

    .line 305
    invoke-virtual {p0, p1, p2}, Le5/h;->create(Ljava/lang/Object;Lj7/d;)Lj7/d;

    .line 308
    move-result-object p1

    .line 309
    check-cast p1, Le5/h;

    .line 311
    sget-object p2, Le7/p;->a:Le7/p;

    .line 313
    invoke-virtual {p1, p2}, Le5/h;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    return-object p2

    .line 317
    :pswitch_12
    check-cast p1, Ld8/x;

    .line 319
    check-cast p2, Lj7/d;

    .line 321
    invoke-virtual {p0, p1, p2}, Le5/h;->create(Ljava/lang/Object;Lj7/d;)Lj7/d;

    .line 324
    move-result-object p1

    .line 325
    check-cast p1, Le5/h;

    .line 327
    sget-object p2, Le7/p;->a:Le7/p;

    .line 329
    invoke-virtual {p1, p2}, Le5/h;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    move-result-object p1

    .line 333
    return-object p1

    .line 334
    :pswitch_13
    check-cast p1, Ld8/x;

    .line 336
    check-cast p2, Lj7/d;

    .line 338
    invoke-virtual {p0, p1, p2}, Le5/h;->create(Ljava/lang/Object;Lj7/d;)Lj7/d;

    .line 341
    move-result-object p1

    .line 342
    check-cast p1, Le5/h;

    .line 344
    sget-object p2, Le7/p;->a:Le7/p;

    .line 346
    invoke-virtual {p1, p2}, Le5/h;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    return-object p2

    .line 350
    :pswitch_14
    check-cast p1, Ld8/x;

    .line 352
    check-cast p2, Lj7/d;

    .line 354
    invoke-virtual {p0, p1, p2}, Le5/h;->create(Ljava/lang/Object;Lj7/d;)Lj7/d;

    .line 357
    move-result-object p1

    .line 358
    check-cast p1, Le5/h;

    .line 360
    sget-object p2, Le7/p;->a:Le7/p;

    .line 362
    invoke-virtual {p1, p2}, Le5/h;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    return-object p2

    .line 366
    :pswitch_15
    check-cast p1, Ld8/x;

    .line 368
    check-cast p2, Lj7/d;

    .line 370
    invoke-virtual {p0, p1, p2}, Le5/h;->create(Ljava/lang/Object;Lj7/d;)Lj7/d;

    .line 373
    move-result-object p1

    .line 374
    check-cast p1, Le5/h;

    .line 376
    sget-object p2, Le7/p;->a:Le7/p;

    .line 378
    invoke-virtual {p1, p2}, Le5/h;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    return-object p2

    .line 382
    :pswitch_16
    check-cast p1, Ld8/x;

    .line 384
    check-cast p2, Lj7/d;

    .line 386
    invoke-virtual {p0, p1, p2}, Le5/h;->create(Ljava/lang/Object;Lj7/d;)Lj7/d;

    .line 389
    move-result-object p1

    .line 390
    check-cast p1, Le5/h;

    .line 392
    sget-object p2, Le7/p;->a:Le7/p;

    .line 394
    invoke-virtual {p1, p2}, Le5/h;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    return-object p2

    .line 398
    :pswitch_17
    check-cast p1, Ld8/x;

    .line 400
    check-cast p2, Lj7/d;

    .line 402
    invoke-virtual {p0, p1, p2}, Le5/h;->create(Ljava/lang/Object;Lj7/d;)Lj7/d;

    .line 405
    move-result-object p1

    .line 406
    check-cast p1, Le5/h;

    .line 408
    sget-object p2, Le7/p;->a:Le7/p;

    .line 410
    invoke-virtual {p1, p2}, Le5/h;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    return-object p2

    nop

    .line 415
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    .line 1
    move-object/from16 v1, p0

    .line 3
    iget v0, v1, Le5/h;->d:I

    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "app_version"

    .line 8
    const-string v4, ""

    .line 10
    const/4 v5, 0x3

    .line 11
    const/4 v6, 0x2

    .line 12
    const/4 v7, 0x0

    .line 13
    const/4 v9, 0x1

    .line 14
    sget-object v10, Le7/p;->a:Le7/p;

    .line 16
    iget-object v11, v1, Le5/h;->f:Ljava/lang/Object;

    .line 18
    packed-switch v0, :pswitch_data_0

    .line 21
    invoke-static/range {p1 .. p1}, Le3/s;->g0(Ljava/lang/Object;)V

    .line 24
    iget-object v0, v1, Le5/h;->e:Ljava/lang/Object;

    .line 26
    check-cast v0, Ld8/x;

    .line 28
    check-cast v11, Lz/i;

    .line 30
    iget-object v2, v11, Lz/i;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 32
    invoke-virtual {v2, v7}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Ld8/z0;

    .line 38
    iget-object v3, v11, Lz/i;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 40
    new-instance v4, Lx4/j0;

    .line 42
    invoke-direct {v4, v2, v11, v7, v5}, Lx4/j0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lj7/d;I)V

    .line 45
    invoke-static {v0, v7, v4, v5}, Ld8/a0;->t(Ld8/x;Lj7/i;Ls7/f;I)Ld8/d0;

    .line 48
    move-result-object v0

    .line 49
    :cond_0
    invoke-virtual {v3, v7, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_1

    .line 55
    move v8, v9

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 60
    move-result-object v2

    .line 61
    if-eqz v2, :cond_0

    .line 63
    const/4 v8, 0x0

    .line 64
    :goto_0
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 67
    move-result-object v0

    .line 68
    return-object v0

    .line 69
    :pswitch_0
    invoke-direct/range {p0 .. p1}, Le5/h;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    move-result-object v0

    .line 73
    return-object v0

    .line 74
    :pswitch_1
    invoke-direct/range {p0 .. p1}, Le5/h;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    move-result-object v0

    .line 78
    return-object v0

    .line 79
    :pswitch_2
    invoke-direct/range {p0 .. p1}, Le5/h;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    move-result-object v0

    .line 83
    return-object v0

    .line 84
    :pswitch_3
    invoke-direct/range {p0 .. p1}, Le5/h;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    move-result-object v0

    .line 88
    return-object v0

    .line 89
    :pswitch_4
    invoke-static/range {p1 .. p1}, Le3/s;->g0(Ljava/lang/Object;)V

    .line 92
    iget-object v0, v1, Le5/h;->e:Ljava/lang/Object;

    .line 94
    check-cast v0, Landroidx/fragment/app/t;

    .line 96
    check-cast v11, Landroid/net/Uri;

    .line 98
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    :try_start_0
    iget-object v0, v0, Landroidx/fragment/app/t;->e:Ljava/lang/Object;

    .line 103
    check-cast v0, Landroid/content/Context;

    .line 105
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {v0, v11}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 112
    move-result-object v0

    .line 113
    if-eqz v0, :cond_2

    .line 115
    sget-object v2, Lb8/a;->a:Ljava/nio/charset/Charset;

    .line 117
    new-instance v5, Ljava/io/InputStreamReader;

    .line 119
    invoke-direct {v5, v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 122
    new-instance v2, Ljava/io/BufferedReader;

    .line 124
    const/16 v0, 0x2000

    .line 126
    invoke-direct {v2, v5, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :try_start_1
    invoke-static {v2}, Le0/a;->S(Ljava/io/Reader;)Ljava/lang/String;

    .line 132
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    :try_start_2
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 136
    goto :goto_1

    .line 137
    :catchall_0
    move-exception v0

    .line 138
    move-object v5, v0

    .line 139
    :try_start_3
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 140
    :catchall_1
    move-exception v0

    .line 141
    :try_start_4
    invoke-static {v2, v5}, Le3/z0;->H(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 144
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 145
    :catch_0
    :cond_2
    move-object v0, v7

    .line 146
    :goto_1
    if-nez v0, :cond_3

    .line 148
    new-instance v0, Lv4/m;

    .line 150
    sget-object v2, Lv4/h;->d:Lv4/h;

    .line 152
    invoke-direct {v0, v2}, Lv4/m;-><init>(Lv4/h;)V

    .line 155
    goto/16 :goto_5

    .line 157
    :cond_3
    const-string v2, "?"

    .line 159
    const-string v5, "optString(...)"

    .line 161
    :try_start_5
    new-instance v10, Lorg/json/JSONObject;

    .line 163
    invoke-direct {v10, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 166
    const-string v11, "settings"

    .line 168
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 171
    move-result-object v11

    .line 172
    if-nez v11, :cond_4

    .line 174
    goto :goto_3

    .line 175
    :cond_4
    const-string v12, "format_version"

    .line 177
    const/4 v13, -0x1

    .line 178
    invoke-virtual {v10, v12, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 181
    move-result v12

    .line 182
    if-lt v12, v9, :cond_7

    .line 184
    invoke-virtual {v11}, Lorg/json/JSONObject;->length()I

    .line 187
    move-result v13

    .line 188
    if-nez v13, :cond_5

    .line 190
    goto :goto_3

    .line 191
    :cond_5
    new-instance v14, Lv4/p;

    .line 193
    const-string v13, "profile_name"

    .line 195
    invoke-virtual {v10, v13, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 198
    move-result-object v15

    .line 199
    invoke-static {v15, v5}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    const-string v4, "device"

    .line 204
    invoke-virtual {v10, v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 207
    move-result-object v4

    .line 208
    invoke-static {v4, v5}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    invoke-virtual {v10, v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 214
    move-result-object v2

    .line 215
    invoke-static {v2, v5}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    const-string v3, "timestamp"

    .line 220
    const/16 v16, 0x0

    .line 222
    const-wide/16 v7, 0x0

    .line 224
    invoke-virtual {v10, v3, v7, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 227
    move-result-wide v18

    .line 228
    invoke-virtual {v11}, Lorg/json/JSONObject;->length()I

    .line 231
    move-result v21

    .line 232
    if-le v12, v6, :cond_6

    .line 234
    move/from16 v22, v9

    .line 236
    move-object/from16 v17, v2

    .line 238
    move-object/from16 v16, v4

    .line 240
    move/from16 v20, v12

    .line 242
    goto :goto_2

    .line 243
    :cond_6
    move/from16 v22, v16

    .line 245
    move-object/from16 v17, v2

    .line 247
    move/from16 v20, v12

    .line 249
    move-object/from16 v16, v4

    .line 251
    :goto_2
    invoke-direct/range {v14 .. v22}, Lv4/p;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIIZ)V

    .line 254
    iput-object v0, v14, Lv4/p;->h:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 256
    move-object v7, v14

    .line 257
    goto :goto_4

    .line 258
    :catch_1
    :cond_7
    :goto_3
    const/4 v7, 0x0

    .line 259
    :goto_4
    if-eqz v7, :cond_8

    .line 261
    new-instance v0, Lv4/n;

    .line 263
    invoke-direct {v0, v7}, Lv4/n;-><init>(Lv4/p;)V

    .line 266
    goto :goto_5

    .line 267
    :cond_8
    new-instance v0, Lv4/m;

    .line 269
    sget-object v2, Lv4/h;->e:Lv4/h;

    .line 271
    invoke-direct {v0, v2}, Lv4/m;-><init>(Lv4/h;)V

    .line 274
    :goto_5
    return-object v0

    .line 275
    :pswitch_5
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
:pswitch_6
    const-string v2, "GestureAction"

    .line 575
    iget-object v0, v1, Le5/h;->e:Ljava/lang/Object;

    .line 577
    check-cast v0, Lf0/v;

    .line 579
    const-string v3, "Flashlight "

    .line 581
    invoke-static/range {p1 .. p1}, Le3/s;->g0(Ljava/lang/Object;)V

    .line 584
    :try_start_a
    iget-object v4, v0, Lf0/v;->d:Ljava/lang/Object;

    .line 586
    check-cast v4, Landroid/hardware/camera2/CameraManager;

    .line 588
    if-eqz v4, :cond_c

    .line 590
    check-cast v11, Ljava/lang/String;

    .line 592
    iget-boolean v5, v0, Lf0/v;->a:Z

    .line 594
    invoke-virtual {v4, v11, v5}, Landroid/hardware/camera2/CameraManager;->setTorchMode(Ljava/lang/String;Z)V

    .line 597
    goto :goto_a

    .line 598
    :catch_4
    move-exception v0

    .line 599
    goto :goto_c

    .line 600
    :cond_c
    :goto_a
    iget-boolean v0, v0, Lf0/v;->a:Z

    .line 602
    if-eqz v0, :cond_d

    .line 604
    const-string v0, "ON"

    .line 606
    goto :goto_b

    .line 607
    :cond_d
    const-string v0, "OFF"

    .line 609
    :goto_b
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 612
    move-result-object v0

    .line 613
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    .line 616
    goto :goto_d

    .line 617
    :goto_c
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 620
    move-result-object v3

    .line 621
    new-instance v4, Ljava/lang/StringBuilder;

    .line 623
    const-string v5, "Flashlight toggle failed: "

    .line 625
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 628
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 634
    move-result-object v3

    .line 635
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    .line 641
    move-result-object v2

    .line 642
    invoke-virtual {v2, v0}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->recordException(Ljava/lang/Throwable;)V

    .line 645
    :goto_d
    return-object v10

    .line 646
    :pswitch_7
    const-string v0, "ru"

    .line 648
    const-string v2, "EdgeTtsClient"

    .line 650
    const-string v3, "Google TTS HTTP error: "

    .line 652
    const-string v4, "Google TTS synthesized "

    .line 654
    const-string v5, "https://translate.google.com/translate_tts?ie=UTF-8&q="

    .line 656
    invoke-static/range {p1 .. p1}, Le3/s;->g0(Ljava/lang/Object;)V

    .line 659
    :try_start_b
    iget-object v6, v1, Le5/h;->e:Ljava/lang/Object;

    .line 661
    check-cast v6, Ljava/lang/String;

    .line 663
    const/4 v8, 0x0

    .line 664
    invoke-static {v6, v0, v8}, Lb8/s;->S(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 667
    move-result v6

    .line 668
    if-eqz v6, :cond_e

    .line 670
    goto :goto_e

    .line 671
    :cond_e
    const-string v0, "en"

    .line 673
    :goto_e
    check-cast v11, Ljava/lang/String;

    .line 675
    const/16 v6, 0xc8

    .line 677
    invoke-static {v6, v11}, Lb8/l;->x0(ILjava/lang/String;)Ljava/lang/String;

    .line 680
    move-result-object v7

    .line 681
    const-string v8, "UTF-8"

    .line 683
    invoke-static {v7, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 686
    move-result-object v7

    .line 687
    new-instance v8, Ljava/net/URL;

    .line 689
    new-instance v10, Ljava/lang/StringBuilder;

    .line 691
    invoke-direct {v10, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 694
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    const-string v5, "&tl="

    .line 699
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    const-string v0, "&client=tw-ob"

    .line 707
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 713
    move-result-object v0

    .line 714
    invoke-direct {v8, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 717
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 720
    move-result-object v0

    .line 721
    const-string v5, "null cannot be cast to non-null type java.net.HttpURLConnection"

    .line 723
    invoke-static {v0, v5}, Lkotlin/jvm/internal/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 726
    check-cast v0, Ljava/net/HttpURLConnection;

    .line 728
    const-string v5, "User-Agent"

    .line 730
    const-string v7, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36"

    .line 732
    invoke-virtual {v0, v5, v7}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    const-string v5, "Referer"

    .line 737
    const-string v7, "https://translate.google.com/"

    .line 739
    invoke-virtual {v0, v5, v7}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    const/16 v5, 0xfa0

    .line 744
    invoke-virtual {v0, v5}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 747
    const/16 v5, 0x1770

    .line 749
    invoke-virtual {v0, v5}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 752
    invoke-virtual {v0, v9}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 755
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 758
    move-result v5

    .line 759
    if-ne v5, v6, :cond_f

    .line 761
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 764
    move-result-object v3
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    .line 765
    :try_start_c
    invoke-static {v3}, Lkotlin/jvm/internal/l;->c(Ljava/lang/Object;)V

    .line 768
    invoke-static {v3}, Le3/r0;->R(Ljava/io/InputStream;)[B

    .line 771
    move-result-object v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 772
    :try_start_d
    invoke-interface {v3}, Ljava/io/Closeable;->close()V

    .line 775
    array-length v3, v0

    .line 776
    new-instance v5, Ljava/lang/StringBuilder;

    .line 778
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 781
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 784
    const-string v3, " bytes"

    .line 786
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 792
    move-result-object v3

    .line 793
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    .line 796
    move-object v7, v0

    .line 797
    goto :goto_11

    .line 798
    :catch_5
    move-exception v0

    .line 799
    goto :goto_10

    .line 800
    :catchall_2
    move-exception v0

    .line 801
    move-object v4, v0

    .line 802
    :try_start_e
    throw v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 803
    :catchall_3
    move-exception v0

    .line 804
    :try_start_f
    invoke-static {v3, v4}, Le3/z0;->H(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 807
    throw v0

    .line 808
    :cond_f
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 811
    move-result v0

    .line 812
    new-instance v4, Ljava/lang/StringBuilder;

    .line 814
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 817
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 820
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 823
    move-result-object v0

    .line 824
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5

    .line 827
    :goto_f
    const/4 v7, 0x0

    .line 828
    goto :goto_11

    .line 829
    :goto_10
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 832
    move-result-object v0

    .line 833
    const-string v3, "Google TTS fallback error: "

    .line 835
    invoke-static {v3, v0, v2}, Lm1/a;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    goto :goto_f

    .line 839
    :goto_11
    return-object v7

    .line 840
    :pswitch_8
    invoke-static/range {p1 .. p1}, Le3/s;->g0(Ljava/lang/Object;)V

    .line 843
    iget-object v0, v1, Le5/h;->e:Ljava/lang/Object;

    .line 845
    check-cast v0, La5/j;

    .line 847
    check-cast v11, Ljava/lang/Exception;

    .line 849
    invoke-virtual {v0, v11}, La5/j;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 852
    return-object v10

    .line 853
    :pswitch_9
    check-cast v11, Lj0/c1;

    .line 855
    invoke-static/range {p1 .. p1}, Le3/s;->g0(Ljava/lang/Object;)V

    .line 858
    iget-object v0, v1, Le5/h;->e:Ljava/lang/Object;

    .line 860
    check-cast v0, Landroid/content/Context;

    .line 862
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 865
    move-result-object v2

    .line 866
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 869
    move-result-object v2

    .line 870
    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    .line 873
    move-result-object v3

    .line 874
    invoke-virtual {v3}, Landroid/os/LocaleList;->isEmpty()Z

    .line 877
    move-result v3

    .line 878
    if-nez v3, :cond_10

    .line 880
    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    .line 883
    move-result-object v3

    .line 884
    const/4 v8, 0x0

    .line 885
    invoke-virtual {v3, v8}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    .line 888
    move-result-object v3

    .line 889
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 892
    move-result-object v4

    .line 893
    :cond_10
    invoke-interface {v11}, Lj0/t2;->getValue()Ljava/lang/Object;

    .line 896
    move-result-object v3

    .line 897
    check-cast v3, Ljava/lang/String;

    .line 899
    const-string v5, "default"

    .line 901
    invoke-static {v3, v5}, Lkotlin/jvm/internal/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 904
    move-result v3

    .line 905
    if-nez v3, :cond_11

    .line 907
    invoke-interface {v11}, Lj0/t2;->getValue()Ljava/lang/Object;

    .line 910
    move-result-object v3

    .line 911
    check-cast v3, Ljava/lang/String;

    .line 913
    goto :goto_12

    .line 914
    :cond_11
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 917
    move-result-object v3

    .line 918
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 921
    move-result-object v3

    .line 922
    :goto_12
    invoke-static {v4}, Lkotlin/jvm/internal/l;->c(Ljava/lang/Object;)V

    .line 925
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 928
    move-result v5

    .line 929
    if-lez v5, :cond_13

    .line 931
    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 934
    move-result v4

    .line 935
    if-nez v4, :cond_13

    .line 937
    new-instance v4, Ljava/util/Locale;

    .line 939
    invoke-direct {v4, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 942
    invoke-static {v4}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 945
    new-instance v3, Landroid/content/res/Configuration;

    .line 947
    invoke-direct {v3, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 950
    invoke-virtual {v3, v4}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 953
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 956
    move-result-object v2

    .line 957
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 960
    move-result-object v4

    .line 961
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 964
    move-result-object v4

    .line 965
    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 968
    instance-of v2, v0, Landroid/app/Activity;

    .line 970
    if-eqz v2, :cond_12

    .line 972
    move-object v7, v0

    .line 973
    check-cast v7, Landroid/app/Activity;

    .line 975
    goto :goto_13

    .line 976
    :cond_12
    const/4 v7, 0x0

    .line 977
    :goto_13
    if-eqz v7, :cond_13

    .line 979
    invoke-virtual {v7}, Landroid/app/Activity;->recreate()V

    .line 982
    :cond_13
    return-object v10

    .line 983
    :pswitch_a
    check-cast v11, Lj0/h1;

    .line 985
    invoke-static/range {p1 .. p1}, Le3/s;->g0(Ljava/lang/Object;)V

    .line 988
    iget-object v0, v1, Le5/h;->e:Ljava/lang/Object;

    .line 990
    check-cast v0, Ld8/x;

    .line 992
    const v3, 0xac44

    .line 995
    const/16 v4, 0x10

    .line 997
    const/4 v5, 0x2

    .line 998
    invoke-static {v3, v4, v5}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    .line 1001
    move-result v7

    .line 1002
    const/16 v8, 0x800

    .line 1004
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    .line 1007
    move-result v22

    .line 1008
    :try_start_10
    new-instance v17, Landroid/media/AudioRecord;

    .line 1010
    const/16 v18, 0x1

    .line 1012
    move/from16 v19, v3

    .line 1014
    move/from16 v20, v4

    .line 1016
    move/from16 v21, v5

    .line 1018
    invoke-direct/range {v17 .. v22}, Landroid/media/AudioRecord;-><init>(IIIII)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_6
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    .line 1021
    move-object/from16 v7, v17

    .line 1023
    :try_start_11
    invoke-virtual {v7}, Landroid/media/AudioRecord;->getState()I

    .line 1026
    move-result v3

    .line 1027
    if-ne v3, v9, :cond_18

    .line 1029
    invoke-virtual {v7}, Landroid/media/AudioRecord;->startRecording()V

    .line 1032
    div-int/lit8 v3, v22, 0x2

    .line 1034
    new-array v4, v3, [S

    .line 1036
    move v5, v2

    .line 1037
    :cond_14
    :goto_14
    invoke-static {v0}, Ld8/a0;->q(Ld8/x;)Z

    .line 1040
    move-result v6

    .line 1041
    if-eqz v6, :cond_18

    .line 1043
    const/4 v8, 0x0

    .line 1044
    invoke-virtual {v7, v4, v8, v3}, Landroid/media/AudioRecord;->read([SII)I

    .line 1047
    move-result v6

    .line 1048
    if-lez v6, :cond_14

    .line 1050
    const-wide/16 v12, 0x0

    .line 1052
    move v9, v8

    .line 1053
    :goto_15
    if-ge v9, v6, :cond_15

    .line 1055
    aget-short v14, v4, v9

    .line 1057
    int-to-double v14, v14

    .line 1058
    mul-double/2addr v14, v14

    .line 1059
    add-double/2addr v12, v14

    .line 1060
    add-int/lit8 v9, v9, 0x1

    .line 1062
    goto :goto_15

    .line 1063
    :catchall_4
    move-exception v0

    .line 1064
    goto :goto_1a

    .line 1065
    :cond_15
    int-to-double v14, v6

    .line 1066
    div-double/2addr v12, v14

    .line 1067
    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    .line 1070
    move-result-wide v12

    .line 1071
    const-wide v14, 0x40b9640000000000L    # 6500.0

    .line 1076
    div-double/2addr v12, v14

    .line 1077
    double-to-float v6, v12

    .line 1078
    const/high16 v9, 0x3f800000    # 1.0f

    .line 1080
    invoke-static {v6, v2, v9}, Lt2/b;->o(FFF)F

    .line 1083
    move-result v6

    .line 1084
    float-to-double v12, v6

    .line 1085
    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    .line 1088
    move-result-wide v12

    .line 1089
    double-to-float v6, v12

    .line 1090
    const v12, 0x3d0f5c29    # 0.035f

    .line 1093
    cmpg-float v13, v6, v12

    .line 1095
    if-gez v13, :cond_16

    .line 1097
    move v6, v2

    .line 1098
    goto :goto_16

    .line 1099
    :cond_16
    sub-float/2addr v6, v12

    .line 1100
    const v12, 0x3f770a3d    # 0.965f

    .line 1103
    div-float/2addr v6, v12

    .line 1104
    :goto_16
    cmpl-float v12, v6, v5

    .line 1106
    if-lez v12, :cond_17

    .line 1108
    const v12, 0x3f266666    # 0.65f

    .line 1111
    goto :goto_17

    .line 1112
    :cond_17
    const v12, 0x3df5c28f    # 0.12f

    .line 1115
    :goto_17
    mul-float/2addr v6, v12

    .line 1116
    invoke-static {v9, v12, v5, v6}, Lf5/n6;->a(FFFF)F

    .line 1119
    move-result v5

    .line 1120
    invoke-virtual {v11, v5}, Lj0/h1;->h(F)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_7
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 1123
    goto :goto_14

    .line 1124
    :cond_18
    :try_start_12
    invoke-virtual {v7}, Landroid/media/AudioRecord;->stop()V

    .line 1127
    :goto_18
    invoke-virtual {v7}, Landroid/media/AudioRecord;->release()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_8

    .line 1130
    goto :goto_19

    .line 1131
    :catchall_5
    move-exception v0

    .line 1132
    const/4 v7, 0x0

    .line 1133
    goto :goto_1a

    .line 1134
    :catch_6
    const/4 v7, 0x0

    .line 1135
    :catch_7
    :try_start_13
    invoke-virtual {v11, v2}, Lj0/h1;->h(F)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    .line 1138
    if-eqz v7, :cond_19

    .line 1140
    :try_start_14
    invoke-virtual {v7}, Landroid/media/AudioRecord;->stop()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_8

    .line 1143
    :cond_19
    if-eqz v7, :cond_1a

    .line 1145
    goto :goto_18

    .line 1146
    :catch_8
    :cond_1a
    :goto_19
    return-object v10

    .line 1147
    :goto_1a
    if-eqz v7, :cond_1b

    .line 1149
    :try_start_15
    invoke-virtual {v7}, Landroid/media/AudioRecord;->stop()V

    .line 1152
    :cond_1b
    if-eqz v7, :cond_1c

    .line 1154
    invoke-virtual {v7}, Landroid/media/AudioRecord;->release()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_9

    .line 1157
    :catch_9
    :cond_1c
    throw v0

    .line 1158
    :pswitch_b
    invoke-static/range {p1 .. p1}, Le3/s;->g0(Ljava/lang/Object;)V

    .line 1161
    iget-object v0, v1, Le5/h;->e:Ljava/lang/Object;

    .line 1163
    check-cast v0, Ls/u;

    .line 1165
    iget-object v0, v0, Ls/u;->d:Lf0/v;

    .line 1167
    iget-object v3, v0, Lf0/v;->b:Ljava/lang/Object;

    .line 1169
    check-cast v3, Lj0/i1;

    .line 1171
    invoke-virtual {v3}, Lj0/i1;->d()I

    .line 1174
    move-result v3

    .line 1175
    if-nez v3, :cond_1d

    .line 1177
    iget-object v0, v0, Lf0/v;->c:Ljava/lang/Object;

    .line 1179
    check-cast v0, Lj0/i1;

    .line 1181
    invoke-virtual {v0}, Lj0/i1;->d()I

    .line 1184
    move-result v0

    .line 1185
    const/4 v3, 0x5

    .line 1186
    if-gt v0, v3, :cond_1d

    .line 1188
    check-cast v11, Lj0/h1;

    .line 1190
    invoke-virtual {v11, v2}, Lj0/h1;->h(F)V

    .line 1193
    :cond_1d
    return-object v10

    .line 1194
    :pswitch_c
    const/4 v8, 0x0

    .line 1195
    invoke-static/range {p1 .. p1}, Le3/s;->g0(Ljava/lang/Object;)V

    .line 1198
    iget-object v0, v1, Le5/h;->e:Ljava/lang/Object;

    .line 1200
    check-cast v0, Lk3/y;

    .line 1202
    check-cast v11, Lk3/y;

    .line 1204
    instance-of v2, v11, Lk3/b;

    .line 1206
    if-nez v2, :cond_1f

    .line 1208
    instance-of v2, v11, Lk3/f;

    .line 1210
    if-eqz v2, :cond_1e

    .line 1212
    goto :goto_1b

    .line 1213
    :cond_1e
    if-ne v0, v11, :cond_1f

    .line 1215
    move v8, v9

    .line 1216
    :cond_1f
    :goto_1b
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1219
    move-result-object v0

    .line 1220
    return-object v0

    .line 1221
    :pswitch_d
    invoke-static/range {p1 .. p1}, Le3/s;->g0(Ljava/lang/Object;)V

    .line 1224
    sget-object v0, Lu4/h;->a:Landroid/os/Handler;

    .line 1226
    iget-object v0, v1, Le5/h;->e:Ljava/lang/Object;

    .line 1228
    check-cast v0, Landroid/content/Context;

    .line 1230
    check-cast v11, Ljava/lang/String;

    .line 1232
    invoke-static {v0, v11}, Lu4/h;->e(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 1235
    move-result-object v0

    .line 1236
    return-object v0

    .line 1237
    :pswitch_e
    invoke-static/range {p1 .. p1}, Le3/s;->g0(Ljava/lang/Object;)V

    .line 1240
    iget-object v0, v1, Le5/h;->e:Ljava/lang/Object;

    .line 1242
    check-cast v0, Ls7/d;

    .line 1244
    check-cast v11, Lj0/c1;

    .line 1246
    invoke-static {v11}, Le3/d;->l(Lj0/c1;)Z

    .line 1249
    move-result v2

    .line 1250
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1253
    move-result-object v2

    .line 1254
    invoke-interface {v0, v2}, Ls7/d;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1257
    return-object v10

    .line 1258
    :pswitch_f
    invoke-static/range {p1 .. p1}, Le3/s;->g0(Ljava/lang/Object;)V

    .line 1261
    iget-object v0, v1, Le5/h;->e:Ljava/lang/Object;

    .line 1263
    check-cast v0, La5/f;

    .line 1265
    invoke-virtual {v0}, La5/f;->c()V

    .line 1268
    check-cast v11, La5/f;

    .line 1270
    invoke-virtual {v11}, La5/f;->c()V

    .line 1273
    return-object v10

    .line 1274
    :pswitch_10
    const/4 v8, 0x0

    .line 1275
    check-cast v11, Lj0/c1;

    .line 1277
    invoke-static/range {p1 .. p1}, Le3/s;->g0(Ljava/lang/Object;)V

    .line 1280
    iget-object v0, v1, Le5/h;->e:Ljava/lang/Object;

    .line 1282
    check-cast v0, Ljava/util/List;

    .line 1284
    check-cast v0, Ljava/lang/Iterable;

    .line 1286
    new-instance v2, Ljava/util/ArrayList;

    .line 1288
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1291
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1294
    move-result-object v0

    .line 1295
    :cond_20
    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1298
    move-result v3

    .line 1299
    if-eqz v3, :cond_21

    .line 1301
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1304
    move-result-object v3

    .line 1305
    move-object v4, v3

    .line 1306
    check-cast v4, Li5/b4;

    .line 1308
    iget-object v4, v4, Li5/b4;->e:Ljava/util/List;

    .line 1310
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 1313
    move-result v4

    .line 1314
    if-lt v4, v6, :cond_20

    .line 1316
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1319
    goto :goto_1c

    .line 1320
    :cond_21
    new-instance v0, Ljava/util/ArrayList;

    .line 1322
    const/16 v3, 0xa

    .line 1324
    invoke-static {v2, v3}, Lf7/n;->g0(Ljava/lang/Iterable;I)I

    .line 1327
    move-result v3

    .line 1328
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1331
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1334
    move-result v3

    .line 1335
    :goto_1d
    if-ge v8, v3, :cond_22

    .line 1337
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1340
    move-result-object v4

    .line 1341
    add-int/lit8 v8, v8, 0x1

    .line 1343
    check-cast v4, Li5/b4;

    .line 1345
    iget-object v4, v4, Li5/b4;->a:Ljava/lang/String;

    .line 1347
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1350
    goto :goto_1d

    .line 1351
    :cond_22
    invoke-static {v0}, Lf7/l;->O0(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 1354
    move-result-object v0

    .line 1355
    invoke-interface {v11}, Lj0/t2;->getValue()Ljava/lang/Object;

    .line 1358
    move-result-object v2

    .line 1359
    check-cast v2, Ljava/util/Set;

    .line 1361
    check-cast v2, Ljava/lang/Iterable;

    .line 1363
    instance-of v3, v2, Ljava/util/Collection;

    .line 1365
    if-eqz v3, :cond_23

    .line 1367
    move-object v3, v2

    .line 1368
    check-cast v3, Ljava/util/Collection;

    .line 1370
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 1373
    move-result v3

    .line 1374
    if-eqz v3, :cond_23

    .line 1376
    goto :goto_1e

    .line 1377
    :cond_23
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1380
    move-result-object v2

    .line 1381
    :cond_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1384
    move-result v3

    .line 1385
    if-eqz v3, :cond_25

    .line 1387
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1390
    move-result-object v3

    .line 1391
    check-cast v3, Ljava/lang/String;

    .line 1393
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 1396
    move-result v3

    .line 1397
    if-nez v3, :cond_24

    .line 1399
    invoke-interface {v11}, Lj0/t2;->getValue()Ljava/lang/Object;

    .line 1402
    move-result-object v2

    .line 1403
    check-cast v2, Ljava/util/Set;

    .line 1405
    check-cast v2, Ljava/lang/Iterable;

    .line 1407
    check-cast v0, Ljava/lang/Iterable;

    .line 1409
    invoke-static {v2, v0}, Lf7/l;->v0(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    .line 1412
    move-result-object v0

    .line 1413
    invoke-interface {v11, v0}, Lj0/c1;->setValue(Ljava/lang/Object;)V

    .line 1416
    :cond_25
    :goto_1e
    return-object v10

    .line 1417
    :pswitch_11
    invoke-static/range {p1 .. p1}, Le3/s;->g0(Ljava/lang/Object;)V

    .line 1420
    iget-object v0, v1, Le5/h;->e:Ljava/lang/Object;

    .line 1422
    check-cast v0, Lc1/g;

    .line 1424
    if-eqz v0, :cond_26

    .line 1426
    check-cast v11, Ls7/a;

    .line 1428
    if-eqz v11, :cond_26

    .line 1430
    invoke-interface {v11}, Ls7/a;->invoke()Ljava/lang/Object;

    .line 1433
    :cond_26
    return-object v10

    .line 1434
    :pswitch_12
    const/4 v8, 0x0

    .line 1435
    invoke-static/range {p1 .. p1}, Le3/s;->g0(Ljava/lang/Object;)V

    .line 1438
    iget-object v0, v1, Le5/h;->e:Ljava/lang/Object;

    .line 1440
    check-cast v0, Ld8/x;

    .line 1442
    check-cast v11, Landroid/content/Context;

    .line 1444
    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 1447
    move-result-object v2

    .line 1448
    const/16 v0, 0x2c

    .line 1450
    int-to-float v0, v0

    .line 1451
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1454
    move-result-object v3

    .line 1455
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 1458
    move-result-object v3

    .line 1459
    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 1461
    mul-float/2addr v0, v3

    .line 1462
    float-to-int v0, v0

    .line 1463
    if-ge v0, v9, :cond_27

    .line 1465
    move v3, v9

    .line 1466
    goto :goto_1f

    .line 1467
    :cond_27
    move v3, v0

    .line 1468
    :goto_1f
    new-instance v0, Landroid/content/Intent;

    .line 1470
    const-string v4, "android.service.quicksettings.action.QS_TILE"

    .line 1472
    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1475
    const/16 v4, 0x80

    .line 1477
    invoke-virtual {v2, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    .line 1480
    move-result-object v0

    .line 1481
    const-string v4, "queryIntentServices(...)"

    .line 1483
    invoke-static {v0, v4}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1486
    check-cast v0, Ljava/lang/Iterable;

    .line 1488
    new-instance v4, Ljava/util/ArrayList;

    .line 1490
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1493
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1496
    move-result-object v0

    .line 1497
    :cond_28
    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1500
    move-result v5

    .line 1501
    if-eqz v5, :cond_29

    .line 1503
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1506
    move-result-object v5

    .line 1507
    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 1509
    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 1511
    if-eqz v5, :cond_28

    .line 1513
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1516
    goto :goto_20

    .line 1517
    :cond_29
    new-instance v5, Ljava/util/ArrayList;

    .line 1519
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1522
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 1525
    move-result v0

    .line 1526
    move v6, v8

    .line 1527
    :cond_2a
    :goto_21
    if-ge v6, v0, :cond_2b

    .line 1529
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1532
    move-result-object v7

    .line 1533
    add-int/lit8 v6, v6, 0x1

    .line 1535
    move-object v10, v7

    .line 1536
    check-cast v10, Landroid/content/pm/ServiceInfo;

    .line 1538
    iget-boolean v12, v10, Landroid/content/pm/ServiceInfo;->enabled:Z

    .line 1540
    if-eqz v12, :cond_2a

    .line 1542
    iget-boolean v12, v10, Landroid/content/pm/ServiceInfo;->exported:Z

    .line 1544
    if-eqz v12, :cond_2a

    .line 1546
    iget-object v12, v10, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 1548
    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 1551
    move-result-object v14

    .line 1552
    invoke-static {v12, v14}, Lkotlin/jvm/internal/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1555
    move-result v12

    .line 1556
    if-nez v12, :cond_2a

    .line 1558
    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 1560
    const-string v12, "android.permission.BIND_QUICK_SETTINGS_TILE"

    .line 1562
    invoke-static {v10, v12}, Lkotlin/jvm/internal/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1565
    move-result v10

    .line 1566
    if-eqz v10, :cond_2a

    .line 1568
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1571
    goto :goto_21

    .line 1572
    :cond_2b
    new-instance v4, Ljava/util/ArrayList;

    .line 1574
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1577
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 1580
    move-result v6

    .line 1581
    move v0, v8

    .line 1582
    :goto_22
    if-ge v0, v6, :cond_2f

    .line 1584
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1587
    move-result-object v7

    .line 1588
    add-int/lit8 v10, v0, 0x1

    .line 1590
    check-cast v7, Landroid/content/pm/ServiceInfo;

    .line 1592
    :try_start_16
    new-instance v0, Landroid/content/ComponentName;

    .line 1594
    iget-object v11, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 1596
    iget-object v12, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 1598
    invoke-direct {v0, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1601
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 1604
    move-result-object v0

    .line 1605
    const-string v11, "flattenToString(...)"

    .line 1607
    invoke-static {v0, v11}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1610
    new-instance v11, Ljava/lang/StringBuilder;

    .line 1612
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1615
    const-string v12, "app_tile:"

    .line 1617
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1620
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1623
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1626
    move-result-object v15

    .line 1627
    invoke-static {v15}, Lh5/w4;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 1630
    move-result-object v0

    .line 1631
    if-nez v0, :cond_2c

    .line 1633
    const/4 v0, 0x0

    .line 1634
    goto :goto_24

    .line 1635
    :cond_2c
    iget-object v0, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1637
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 1640
    move-result-object v0

    .line 1641
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1644
    move-result-object v17

    .line 1645
    new-instance v0, Lh5/t4;

    .line 1647
    new-instance v14, Lh5/m5;

    .line 1649
    invoke-virtual {v7, v2}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 1652
    move-result-object v11

    .line 1653
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1656
    move-result-object v16

    .line 1657
    const-string v18, ""

    .line 1659
    const/16 v19, 0x1

    .line 1661
    const/16 v20, 0x1

    .line 1663
    invoke-direct/range {v14 .. v20}, Lh5/m5;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1666
    move-object/from16 v11, v17

    .line 1668
    invoke-static {v2, v7, v3}, Lh5/n1;->a1(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;I)Lh5/u4;

    .line 1671
    move-result-object v7

    .line 1672
    invoke-direct {v0, v14, v11, v7}, Lh5/t4;-><init>(Lh5/m5;Ljava/lang/String;Lh5/u4;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    .line 1675
    goto :goto_23

    .line 1676
    :catchall_6
    move-exception v0

    .line 1677
    invoke-static {v0}, Le3/s;->H(Ljava/lang/Throwable;)Le7/j;

    .line 1680
    move-result-object v0

    .line 1681
    :goto_23
    instance-of v7, v0, Le7/j;

    .line 1683
    if-eqz v7, :cond_2d

    .line 1685
    const/4 v0, 0x0

    .line 1686
    :cond_2d
    check-cast v0, Lh5/t4;

    .line 1688
    :goto_24
    if-eqz v0, :cond_2e

    .line 1690
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1693
    :cond_2e
    move v0, v10

    .line 1694
    goto :goto_22

    .line 1695
    :cond_2f
    new-instance v0, Ljava/util/HashSet;

    .line 1697
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1700
    new-instance v2, Ljava/util/ArrayList;

    .line 1702
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1705
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 1708
    move-result v3

    .line 1709
    :cond_30
    :goto_25
    if-ge v8, v3, :cond_31

    .line 1711
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1714
    move-result-object v5

    .line 1715
    add-int/lit8 v8, v8, 0x1

    .line 1717
    move-object v6, v5

    .line 1718
    check-cast v6, Lh5/t4;

    .line 1720
    iget-object v6, v6, Lh5/t4;->a:Lh5/m5;

    .line 1722
    iget-object v6, v6, Lh5/m5;->a:Ljava/lang/String;

    .line 1724
    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1727
    move-result v6

    .line 1728
    if-eqz v6, :cond_30

    .line 1730
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1733
    goto :goto_25

    .line 1734
    :cond_31
    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 1736
    const-string v3, "CASE_INSENSITIVE_ORDER"

    .line 1738
    invoke-static {v0, v3}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1741
    new-instance v0, Lh5/n0;

    .line 1743
    invoke-direct {v0, v9}, Lh5/n0;-><init>(I)V

    .line 1746
    invoke-static {v2, v0}, Lf7/l;->H0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 1749
    move-result-object v0

    .line 1750
    return-object v0

    .line 1751
    :pswitch_13
    invoke-static/range {p1 .. p1}, Le3/s;->g0(Ljava/lang/Object;)V

    .line 1754
    :try_start_17
    new-instance v0, Lorg/json/JSONArray;

    .line 1756
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1759
    iget-object v2, v1, Le5/h;->e:Ljava/lang/Object;

    .line 1761
    check-cast v2, Ljava/util/List;

    .line 1763
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1766
    move-result-object v2

    .line 1767
    :goto_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1770
    move-result v3

    .line 1771
    if-eqz v3, :cond_32

    .line 1773
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1776
    move-result-object v3

    .line 1777
    check-cast v3, Lh5/s4;

    .line 1779
    new-instance v4, Lorg/json/JSONObject;

    .line 1781
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 1784
    const-string v5, "id"

    .line 1786
    iget-object v7, v3, Lh5/s4;->a:Ljava/lang/String;

    .line 1788
    invoke-virtual {v4, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1791
    const-string v5, "title"

    .line 1793
    iget-object v7, v3, Lh5/s4;->b:Ljava/lang/String;

    .line 1795
    invoke-virtual {v4, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1798
    const-string v5, "category"

    .line 1800
    iget-object v7, v3, Lh5/s4;->c:Ljava/lang/String;

    .line 1802
    invoke-virtual {v4, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1805
    const-string v5, "col"

    .line 1807
    iget v7, v3, Lh5/s4;->d:I

    .line 1809
    invoke-virtual {v4, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1812
    const-string v5, "row"

    .line 1814
    iget v7, v3, Lh5/s4;->e:I

    .line 1816
    invoke-virtual {v4, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1819
    const-string v5, "colSpan"

    .line 1821
    iget v7, v3, Lh5/s4;->f:I

    .line 1823
    invoke-virtual {v4, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1826
    const-string v5, "rowSpan"

    .line 1828
    iget v7, v3, Lh5/s4;->g:I

    .line 1830
    invoke-virtual {v4, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1833
    const-string v5, "isRemovable"

    .line 1835
    iget-boolean v3, v3, Lh5/s4;->h:Z

    .line 1837
    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1840
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1843
    goto :goto_26

    .line 1844
    :catch_a
    move-exception v0

    .line 1845
    goto :goto_27

    .line 1846
    :cond_32
    check-cast v11, Lh5/o0;

    .line 1848
    iget-object v2, v11, Lh5/o0;->b:Landroid/content/SharedPreferences;

    .line 1850
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 1853
    move-result-object v2

    .line 1854
    const-string v3, "matrix_tiles_json"

    .line 1856
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 1859
    move-result-object v0

    .line 1860
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1863
    move-result-object v0

    .line 1864
    const-string v2, "matrix_version"

    .line 1866
    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1869
    move-result-object v0

    .line 1870
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_a

    .line 1873
    goto :goto_28

    .line 1874
    :goto_27
    const-string v2, "ControlCenterLayout"

    .line 1876
    const-string v3, "Failed to persist control tiles to disk"

    .line 1878
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1881
    :goto_28
    return-object v10

    .line 1882
    :pswitch_14
    const/4 v8, 0x0

    .line 1883
    invoke-static/range {p1 .. p1}, Le3/s;->g0(Ljava/lang/Object;)V

    .line 1886
    check-cast v11, Lj0/c1;

    .line 1888
    iget-object v0, v1, Le5/h;->e:Ljava/lang/Object;

    .line 1890
    check-cast v0, Ljava/lang/Boolean;

    .line 1892
    if-eqz v0, :cond_33

    .line 1894
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1897
    move-result v8

    .line 1898
    :cond_33
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1901
    move-result-object v0

    .line 1902
    invoke-interface {v11, v0}, Lj0/c1;->setValue(Ljava/lang/Object;)V

    .line 1905
    return-object v10

    .line 1906
    :pswitch_15
    invoke-static/range {p1 .. p1}, Le3/s;->g0(Ljava/lang/Object;)V

    .line 1909
    iget-object v0, v1, Le5/h;->e:Ljava/lang/Object;

    .line 1911
    check-cast v0, Ls7/d;

    .line 1913
    if-eqz v0, :cond_34

    .line 1915
    check-cast v11, Lj0/t2;

    .line 1917
    invoke-static {v11}, Lf5/sa;->Q0(Lj0/t2;)J

    .line 1920
    move-result-wide v2

    .line 1921
    new-instance v4, Lc1/v;

    .line 1923
    invoke-direct {v4, v2, v3}, Lc1/v;-><init>(J)V

    .line 1926
    invoke-interface {v0, v4}, Ls7/d;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1929
    :cond_34
    return-object v10

    .line 1930
    :pswitch_16
    check-cast v11, Lj0/c1;

    .line 1932
    invoke-static/range {p1 .. p1}, Le3/s;->g0(Ljava/lang/Object;)V

    .line 1935
    iget-object v0, v1, Le5/h;->e:Ljava/lang/Object;

    .line 1937
    check-cast v0, Landroid/graphics/Bitmap;

    .line 1939
    if-eqz v0, :cond_35

    .line 1941
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 1944
    move-result v2

    .line 1945
    if-nez v2, :cond_35

    .line 1947
    :try_start_18
    new-instance v2, Lc1/g;

    .line 1949
    invoke-direct {v2, v0}, Lc1/g;-><init>(Landroid/graphics/Bitmap;)V

    .line 1952
    invoke-interface {v11, v2}, Lj0/c1;->setValue(Ljava/lang/Object;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_b

    .line 1955
    goto :goto_29

    .line 1956
    :catch_b
    const/4 v13, 0x0

    .line 1957
    invoke-interface {v11, v13}, Lj0/c1;->setValue(Ljava/lang/Object;)V

    .line 1960
    goto :goto_29

    .line 1961
    :cond_35
    const/4 v13, 0x0

    .line 1962
    invoke-interface {v11, v13}, Lj0/c1;->setValue(Ljava/lang/Object;)V

    .line 1965
    :goto_29
    return-object v10

    .line 1966
    :pswitch_17
    move-object v13, v7

    .line 1967
    invoke-static/range {p1 .. p1}, Le3/s;->g0(Ljava/lang/Object;)V

    .line 1970
    iget-object v0, v1, Le5/h;->e:Ljava/lang/Object;

    .line 1972
    check-cast v0, Ld8/x;

    .line 1974
    new-instance v2, Le5/b;

    .line 1976
    check-cast v11, Le5/l;

    .line 1978
    invoke-direct {v2, v11, v13, v9}, Le5/b;-><init>(Le5/l;Lj7/d;I)V

    .line 1981
    invoke-static {v0, v13, v2, v5}, Ld8/a0;->t(Ld8/x;Lj7/i;Ls7/f;I)Ld8/d0;

    .line 1984
    new-instance v2, Le5/b;

    .line 1986
    invoke-direct {v2, v11, v13, v6}, Le5/b;-><init>(Le5/l;Lj7/d;I)V

    .line 1989
    invoke-static {v0, v13, v2, v5}, Ld8/a0;->t(Ld8/x;Lj7/i;Ls7/f;I)Ld8/d0;

    .line 1992
    new-instance v2, Le5/b;

    .line 1994
    invoke-direct {v2, v11, v13, v5}, Le5/b;-><init>(Le5/l;Lj7/d;I)V

    .line 1997
    invoke-static {v0, v13, v2, v5}, Ld8/a0;->t(Ld8/x;Lj7/i;Ls7/f;I)Ld8/d0;

    .line 2000
    return-object v10

    .line 2001
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

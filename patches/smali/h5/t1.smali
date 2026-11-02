.class public final Lh5/t1;
.super Ll7/j;
.source "SourceFile"

# interfaces
.implements Ls7/f;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Lj7/d;I)V
    .locals 0

    .line 1
    iput p3, p0, Lh5/t1;->d:I

    iput-object p1, p0, Lh5/t1;->e:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ll7/j;-><init>(ILj7/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lj7/d;)Lj7/d;
    .locals 2

    .line 1
    iget p1, p0, Lh5/t1;->d:I

    .line 3
    packed-switch p1, :pswitch_data_0

    .line 6
    new-instance p1, Lh5/t1;

    .line 8
    iget-object v0, p0, Lh5/t1;->e:Ljava/lang/Object;

    .line 10
    check-cast v0, Lu2/r;

    .line 12
    const/4 v1, 0x7

    .line 13
    invoke-direct {p1, v0, p2, v1}, Lh5/t1;-><init>(Ljava/lang/Object;Lj7/d;I)V

    .line 16
    return-object p1

    .line 17
    :pswitch_0
    new-instance p1, Lh5/t1;

    .line 19
    iget-object v0, p0, Lh5/t1;->e:Ljava/lang/Object;

    .line 21
    check-cast v0, Lt4/d;

    .line 23
    const/4 v1, 0x6

    .line 24
    invoke-direct {p1, v0, p2, v1}, Lh5/t1;-><init>(Ljava/lang/Object;Lj7/d;I)V

    .line 27
    return-object p1

    .line 28
    :pswitch_1
    new-instance p1, Lh5/t1;

    .line 30
    iget-object v0, p0, Lh5/t1;->e:Ljava/lang/Object;

    .line 32
    check-cast v0, Ljava/lang/String;

    .line 34
    const/4 v1, 0x5

    .line 35
    invoke-direct {p1, v0, p2, v1}, Lh5/t1;-><init>(Ljava/lang/Object;Lj7/d;I)V

    .line 38
    return-object p1

    .line 39
    :pswitch_2
    new-instance p1, Lh5/t1;

    .line 41
    iget-object v0, p0, Lh5/t1;->e:Ljava/lang/Object;

    .line 43
    check-cast v0, La5/j;

    .line 45
    const/4 v1, 0x4

    .line 46
    invoke-direct {p1, v0, p2, v1}, Lh5/t1;-><init>(Ljava/lang/Object;Lj7/d;I)V

    .line 49
    return-object p1

    .line 50
    :pswitch_3
    new-instance p1, Lh5/t1;

    .line 52
    iget-object v0, p0, Lh5/t1;->e:Ljava/lang/Object;

    .line 54
    check-cast v0, Ls4/o;

    .line 56
    const/4 v1, 0x3

    .line 57
    invoke-direct {p1, v0, p2, v1}, Lh5/t1;-><init>(Ljava/lang/Object;Lj7/d;I)V

    .line 60
    return-object p1

    .line 61
    :pswitch_4
    new-instance p1, Lh5/t1;

    .line 63
    iget-object v0, p0, Lh5/t1;->e:Ljava/lang/Object;

    .line 65
    check-cast v0, Lv4/t;

    .line 67
    const/4 v1, 0x2

    .line 68
    invoke-direct {p1, v0, p2, v1}, Lh5/t1;-><init>(Ljava/lang/Object;Lj7/d;I)V

    .line 71
    return-object p1

    .line 72
    :pswitch_5
    new-instance p1, Lh5/t1;

    .line 74
    iget-object v0, p0, Lh5/t1;->e:Ljava/lang/Object;

    .line 76
    check-cast v0, Li5/e;

    .line 78
    const/4 v1, 0x1

    .line 79
    invoke-direct {p1, v0, p2, v1}, Lh5/t1;-><init>(Ljava/lang/Object;Lj7/d;I)V

    .line 82
    return-object p1

    .line 83
    :pswitch_6
    new-instance p1, Lh5/t1;

    .line 85
    iget-object v0, p0, Lh5/t1;->e:Ljava/lang/Object;

    .line 87
    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 89
    const/4 v1, 0x0

    .line 90
    invoke-direct {p1, v0, p2, v1}, Lh5/t1;-><init>(Ljava/lang/Object;Lj7/d;I)V

    .line 93
    return-object p1

    nop

    .line 95
    :pswitch_data_0
    .packed-switch 0x0
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
    iget v0, p0, Lh5/t1;->d:I

    .line 3
    check-cast p1, Ld8/x;

    .line 5
    check-cast p2, Lj7/d;

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 10
    invoke-virtual {p0, p1, p2}, Lh5/t1;->create(Ljava/lang/Object;Lj7/d;)Lj7/d;

    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lh5/t1;

    .line 16
    sget-object p2, Le7/p;->a:Le7/p;

    .line 18
    invoke-virtual {p1, p2}, Lh5/t1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    return-object p2

    .line 22
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lh5/t1;->create(Ljava/lang/Object;Lj7/d;)Lj7/d;

    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lh5/t1;

    .line 28
    sget-object p2, Le7/p;->a:Le7/p;

    .line 30
    invoke-virtual {p1, p2}, Lh5/t1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    move-result-object p1

    .line 34
    return-object p1

    .line 35
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lh5/t1;->create(Ljava/lang/Object;Lj7/d;)Lj7/d;

    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Lh5/t1;

    .line 41
    sget-object p2, Le7/p;->a:Le7/p;

    .line 43
    invoke-virtual {p1, p2}, Lh5/t1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    move-result-object p1

    .line 47
    return-object p1

    .line 48
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lh5/t1;->create(Ljava/lang/Object;Lj7/d;)Lj7/d;

    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Lh5/t1;

    .line 54
    sget-object p2, Le7/p;->a:Le7/p;

    .line 56
    invoke-virtual {p1, p2}, Lh5/t1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    return-object p2

    .line 60
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lh5/t1;->create(Ljava/lang/Object;Lj7/d;)Lj7/d;

    .line 63
    move-result-object p1

    .line 64
    check-cast p1, Lh5/t1;

    .line 66
    sget-object p2, Le7/p;->a:Le7/p;

    .line 68
    invoke-virtual {p1, p2}, Lh5/t1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    return-object p2

    .line 72
    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lh5/t1;->create(Ljava/lang/Object;Lj7/d;)Lj7/d;

    .line 75
    move-result-object p1

    .line 76
    check-cast p1, Lh5/t1;

    .line 78
    sget-object p2, Le7/p;->a:Le7/p;

    .line 80
    invoke-virtual {p1, p2}, Lh5/t1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    return-object p2

    .line 84
    :pswitch_5
    invoke-virtual {p0, p1, p2}, Lh5/t1;->create(Ljava/lang/Object;Lj7/d;)Lj7/d;

    .line 87
    move-result-object p1

    .line 88
    check-cast p1, Lh5/t1;

    .line 90
    sget-object p2, Le7/p;->a:Le7/p;

    .line 92
    invoke-virtual {p1, p2}, Lh5/t1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    move-result-object p1

    .line 96
    return-object p1

    .line 97
    :pswitch_6
    invoke-virtual {p0, p1, p2}, Lh5/t1;->create(Ljava/lang/Object;Lj7/d;)Lj7/d;

    .line 100
    move-result-object p1

    .line 101
    check-cast p1, Lh5/t1;

    .line 103
    sget-object p2, Le7/p;->a:Le7/p;

    .line 105
    invoke-virtual {p1, p2}, Lh5/t1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    move-result-object p1

    .line 109
    return-object p1

    nop

    .line 111
    :pswitch_data_0
    .packed-switch 0x0
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
    .locals 14

    .line 1
    iget v0, p0, Lh5/t1;->d:I

    .line 3
    const-string v1, ""

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x1

    .line 8
    sget-object v5, Le7/p;->a:Le7/p;

    .line 10
    iget-object v6, p0, Lh5/t1;->e:Ljava/lang/Object;

    .line 12
    packed-switch v0, :pswitch_data_0

    .line 15
    invoke-static {p1}, Le3/s;->g0(Ljava/lang/Object;)V

    .line 18
    check-cast v6, Lu2/r;

    .line 20
    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    .line 23
    return-object v5

    .line 24
    :pswitch_0
    invoke-static {p1}, Le3/s;->g0(Ljava/lang/Object;)V
    const/4 v0, 0x1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    move-result-object v0
    return-object v0
:pswitch_1
    invoke-static {p1}, Le3/s;->g0(Ljava/lang/Object;)V

    .line 251
    check-cast v6, Ljava/lang/String;

    .line 253
    invoke-static {v6}, Lb8/l;->y0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 256
    move-result-object p1

    .line 257
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 260
    move-result-object p1

    .line 261
    invoke-static {p1}, Lb8/l;->g0(Ljava/lang/CharSequence;)Z

    .line 264
    move-result v0

    .line 265
    if-eqz v0, :cond_8

    .line 267
    goto :goto_7

    .line 268
    :cond_8
    :try_start_3
    invoke-static {p1}, Ls4/k;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 271
    move-result-object v0

    .line 272
    if-eqz v0, :cond_a

    .line 274
    invoke-static {v0}, Lb8/l;->g0(Ljava/lang/CharSequence;)Z

    .line 277
    move-result v1

    .line 278
    if-eqz v1, :cond_9

    .line 280
    goto :goto_5

    .line 281
    :cond_9
    move-object v2, v0

    .line 282
    goto :goto_7

    .line 283
    :catch_2
    move-exception v0

    .line 284
    move-object p1, v0

    .line 285
    goto :goto_6

    .line 286
    :cond_a
    :goto_5
    invoke-static {p1}, Ls4/k;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 289
    move-result-object v0

    .line 290
    if-eqz v0, :cond_b

    .line 292
    invoke-static {v0}, Lb8/l;->g0(Ljava/lang/CharSequence;)Z

    .line 295
    move-result v1

    .line 296
    if-eqz v1, :cond_9

    .line 298
    :cond_b
    invoke-static {p1}, Ls4/k;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 301
    move-result-object v0

    .line 302
    if-eqz v0, :cond_c

    .line 304
    invoke-static {v0}, Lb8/l;->g0(Ljava/lang/CharSequence;)Z

    .line 307
    move-result v1

    .line 308
    if-eqz v1, :cond_9

    .line 310
    :cond_c
    invoke-static {p1}, Ls4/k;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 313
    move-result-object p1

    .line 314
    if-eqz p1, :cond_e

    .line 316
    invoke-static {p1}, Lb8/l;->g0(Ljava/lang/CharSequence;)Z

    .line 319
    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 320
    if-eqz v0, :cond_d

    .line 322
    goto :goto_7

    .line 323
    :cond_d
    move-object v2, p1

    .line 324
    goto :goto_7

    .line 325
    :goto_6
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 328
    move-result-object p1

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    .line 331
    const-string v1, "Search web failed for \'"

    .line 333
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 336
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    const-string v1, "\': "

    .line 341
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 350
    move-result-object p1

    .line 351
    const-string v0, "SiriWebSearch"

    .line 353
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :cond_e
    :goto_7
    return-object v2

    .line 357
    :pswitch_2
    invoke-static {p1}, Le3/s;->g0(Ljava/lang/Object;)V

    .line 360
    check-cast v6, La5/j;

    .line 362
    new-instance p1, Ljava/lang/Exception;

    .line 364
    const-string v0, "TTS audio synthesis returned empty stream"

    .line 366
    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 369
    invoke-virtual {v6, p1}, La5/j;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    return-object v5

    .line 373
    :pswitch_3
    invoke-static {p1}, Le3/s;->g0(Ljava/lang/Object;)V

    .line 376
    check-cast v6, Ls4/o;

    .line 378
    invoke-virtual {v6}, Ls4/o;->invoke()Ljava/lang/Object;

    .line 381
    return-object v5

    .line 382
    :pswitch_4
    invoke-static {p1}, Le3/s;->g0(Ljava/lang/Object;)V

    .line 385
    check-cast v6, Lv4/t;

    .line 387
    const-string p1, "analytics_enabled"

    .line 389
    invoke-virtual {v6, p1, v4}, Lv4/t;->i(Ljava/lang/String;Z)Z

    .line 392
    move-result p1

    .line 393
    sget-object v0, Lcom/google/firebase/Firebase;->INSTANCE:Lcom/google/firebase/Firebase;

    .line 395
    invoke-static {v0}, Lcom/google/firebase/crashlytics/FirebaseCrashlyticsKt;->getCrashlytics(Lcom/google/firebase/Firebase;)Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    .line 398
    move-result-object v1

    .line 399
    invoke-virtual {v1, p1}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->setCrashlyticsCollectionEnabled(Z)V

    .line 402
    invoke-static {v0}, Lcom/google/firebase/analytics/AnalyticsKt;->getAnalytics(Lcom/google/firebase/Firebase;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 405
    move-result-object v1

    .line 406
    invoke-virtual {v1, p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->setAnalyticsCollectionEnabled(Z)V

    .line 409
    if-eqz p1, :cond_f

    .line 411
    invoke-static {v0}, Lcom/google/firebase/crashlytics/FirebaseCrashlyticsKt;->getCrashlytics(Lcom/google/firebase/Firebase;)Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    .line 414
    move-result-object p1

    .line 415
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->sendUnsentReports()V

    .line 418
    :cond_f
    return-object v5

    .line 419
    :pswitch_5
    invoke-static {p1}, Le3/s;->g0(Ljava/lang/Object;)V

    .line 422
    check-cast v6, Li5/e;

    .line 424
    iget-object v8, v6, Li5/e;->a:Ljava/lang/String;

    .line 426
    iget v9, v6, Li5/e;->b:F

    .line 428
    iget v10, v6, Li5/e;->c:F

    .line 430
    iget v11, v6, Li5/e;->d:F

    .line 432
    iget v12, v6, Li5/e;->f:I

    .line 434
    iget v13, v6, Li5/e;->g:F

    .line 436
    new-instance v7, Li5/h;

    .line 438
    invoke-direct {v7}, Li5/h;-><init>()V

    .line 441
    iget-object p1, v7, Li5/h;->a:[Li5/g;

    .line 443
    :try_start_4
    invoke-virtual/range {v7 .. v13}, Li5/h;->a(Ljava/lang/String;FFFIF)Li5/i;

    .line 446
    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 447
    array-length v1, p1

    .line 448
    :goto_8
    if-ge v3, v1, :cond_11

    .line 450
    aget-object v4, p1, v3

    .line 452
    iput-object v2, v4, Li5/g;->d:Landroid/graphics/Canvas;

    .line 454
    iget-object v5, v4, Li5/g;->c:Landroid/graphics/Bitmap;

    .line 456
    if-eqz v5, :cond_10

    .line 458
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 461
    :cond_10
    iput-object v2, v4, Li5/g;->c:Landroid/graphics/Bitmap;

    .line 463
    add-int/lit8 v3, v3, 0x1

    .line 465
    goto :goto_8

    .line 466
    :cond_11
    return-object v0

    .line 467
    :catchall_0
    move-exception v0

    .line 468
    array-length v1, p1

    .line 469
    :goto_9
    if-ge v3, v1, :cond_13

    .line 471
    aget-object v4, p1, v3

    .line 473
    iput-object v2, v4, Li5/g;->d:Landroid/graphics/Canvas;

    .line 475
    iget-object v5, v4, Li5/g;->c:Landroid/graphics/Bitmap;

    .line 477
    if-eqz v5, :cond_12

    .line 479
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 482
    :cond_12
    iput-object v2, v4, Li5/g;->c:Landroid/graphics/Bitmap;

    .line 484
    add-int/lit8 v3, v3, 0x1

    .line 486
    goto :goto_9

    .line 487
    :cond_13
    throw v0

    .line 488
    :pswitch_6
    invoke-static {p1}, Le3/s;->g0(Ljava/lang/Object;)V

    .line 491
    :try_start_5
    check-cast v6, Landroid/net/wifi/WifiManager;

    .line 493
    if-eqz v6, :cond_14

    .line 495
    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 498
    move-result-object p1

    .line 499
    goto :goto_a

    .line 500
    :cond_14
    move-object p1, v2

    .line 501
    :goto_a
    if-eqz p1, :cond_15

    .line 503
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    .line 506
    move-result-object p1

    .line 507
    if-eqz p1, :cond_15

    .line 509
    const-string v0, "\""

    .line 511
    invoke-static {p1, v0, v1, v3}, Lb8/s;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 514
    move-result-object v2

    .line 515
    :cond_15
    if-eqz v2, :cond_17

    .line 517
    invoke-static {v2}, Lb8/l;->g0(Ljava/lang/CharSequence;)Z

    .line 520
    move-result p1

    .line 521
    if-eqz p1, :cond_16

    .line 523
    goto :goto_b

    .line 524
    :cond_16
    const-string p1, "<unknown ssid>"

    .line 526
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 529
    move-result p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 530
    if-nez p1, :cond_17

    .line 532
    goto :goto_c

    .line 533
    :catch_3
    :cond_17
    :goto_b
    const-string v2, "On"

    .line 535
    :goto_c
    return-object v2

    nop

    .line 537
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

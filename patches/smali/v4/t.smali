.class public final Lv4/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Ln2/m;

.field public static volatile d:Z

.field public static volatile e:Lv4/t;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ln2/m;

    .line 3
    const/16 v1, 0x13

    .line 5
    invoke-direct {v0, v1}, Ln2/m;-><init>(I)V

    .line 8
    sput-object v0, Lv4/t;->c:Ln2/m;

    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 12

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    move-result-object v0

    .line 8
    const-string v1, "getApplicationContext(...)"

    .line 10
    invoke-static {v0, v1}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iput-object v0, p0, Lv4/t;->a:Landroid/content/Context;

    .line 15
    const-string v1, "settings"

    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 21
    move-result-object v0

    .line 22
    const-string v1, "getSharedPreferences(...)"

    .line 24
    invoke-static {v0, v1}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iput-object v0, p0, Lv4/t;->b:Landroid/content/SharedPreferences;

    .line 29
    const-string v1, "lens_enabled"

    .line 31
    const/4 v3, 0x1

    .line 32
    invoke-virtual {p0, v1, v3}, Lv4/t;->i(Ljava/lang/String;Z)Z

    .line 35
    move-result v1

    .line 36
    sput-boolean v1, Lb5/b;->b:Z

    .line 38
    :try_start_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    .line 41
    move-result-object v1

    .line 42
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 45
    move-result-object v0

    .line 46
    invoke-static {v1}, Lkotlin/jvm/internal/l;->c(Ljava/lang/Object;)V

    .line 49
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 52
    move-result-object v1

    .line 53
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 56
    move-result-object v1

    .line 57
    move v4, v2

    .line 58
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    move-result v5

    .line 62
    if-eqz v5, :cond_11

    .line 64
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    move-result-object v5

    .line 68
    check-cast v5, Ljava/util/Map$Entry;

    .line 70
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 73
    move-result-object v6

    .line 74
    check-cast v6, Ljava/lang/String;

    .line 76
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 79
    move-result-object v5

    .line 80
    if-eqz v5, :cond_0

    .line 82
    sget-object v7, Lv4/g;->k:Ljava/util/Set;

    .line 84
    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 87
    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    const-string v8, "mode"

    .line 90
    const-string v9, "threshold"

    .line 92
    if-nez v7, :cond_3

    .line 94
    :try_start_1
    invoke-static {v6}, Lkotlin/jvm/internal/l;->c(Ljava/lang/Object;)V

    .line 97
    const-string v7, "evt_"

    .line 99
    invoke-static {v6, v7, v2}, Lb8/s;->S(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 102
    move-result v7

    .line 103
    if-nez v7, :cond_3

    .line 105
    const-string v7, "_offset_x"

    .line 107
    invoke-static {v6, v7}, Lb8/s;->M(Ljava/lang/String;Ljava/lang/String;)Z

    .line 110
    move-result v7

    .line 111
    if-nez v7, :cond_3

    .line 113
    const-string v7, "_offset_y"

    .line 115
    invoke-static {v6, v7}, Lb8/s;->M(Ljava/lang/String;Ljava/lang/String;)Z

    .line 118
    move-result v7

    .line 119
    if-nez v7, :cond_3

    .line 121
    const-string v7, "_w"

    .line 123
    invoke-static {v6, v7}, Lb8/s;->M(Ljava/lang/String;Ljava/lang/String;)Z

    .line 126
    move-result v7

    .line 127
    if-nez v7, :cond_3

    .line 129
    const-string v7, "_h"

    .line 131
    invoke-static {v6, v7}, Lb8/s;->M(Ljava/lang/String;Ljava/lang/String;)Z

    .line 134
    move-result v7

    .line 135
    if-nez v7, :cond_3

    .line 137
    const-string v7, "radius"

    .line 139
    invoke-static {v6, v7, v2}, Lb8/l;->W(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 142
    move-result v7

    .line 143
    if-nez v7, :cond_3

    .line 145
    const-string v7, "tension"

    .line 147
    invoke-static {v6, v7, v2}, Lb8/l;->W(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 150
    move-result v7

    .line 151
    if-nez v7, :cond_3

    .line 153
    const-string v7, "refraction"

    .line 155
    invoke-static {v6, v7, v2}, Lb8/l;->W(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 158
    move-result v7

    .line 159
    if-nez v7, :cond_3

    .line 161
    const-string v7, "damping"

    .line 163
    invoke-static {v6, v7, v2}, Lb8/l;->W(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 166
    move-result v7

    .line 167
    if-nez v7, :cond_3

    .line 169
    const-string v7, "stiffness"

    .line 171
    invoke-static {v6, v7, v2}, Lb8/l;->W(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 174
    move-result v7

    .line 175
    if-nez v7, :cond_3

    .line 177
    const-string v7, "scale"

    .line 179
    invoke-static {v6, v7, v2}, Lb8/l;->W(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 182
    move-result v7

    .line 183
    if-nez v7, :cond_3

    .line 185
    const-string v7, "percent"

    .line 187
    invoke-static {v6, v7, v2}, Lb8/l;->W(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 190
    move-result v7

    .line 191
    if-nez v7, :cond_3

    .line 193
    const-string v7, "opacity"

    .line 195
    invoke-static {v6, v7, v2}, Lb8/l;->W(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 198
    move-result v7

    .line 199
    if-nez v7, :cond_3

    .line 201
    const-string v7, "width"

    .line 203
    invoke-static {v6, v7, v2}, Lb8/l;->W(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 206
    move-result v7

    .line 207
    if-nez v7, :cond_1

    .line 209
    const-string v7, "height"

    .line 211
    invoke-static {v6, v7, v2}, Lb8/l;->W(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 214
    move-result v7

    .line 215
    if-eqz v7, :cond_2

    .line 217
    :cond_1
    invoke-static {v6, v9, v2}, Lb8/l;->W(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 220
    move-result v7

    .line 221
    if-nez v7, :cond_2

    .line 223
    const-string v7, "timeout"

    .line 225
    invoke-static {v6, v7, v2}, Lb8/l;->W(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 228
    move-result v7

    .line 229
    if-nez v7, :cond_2

    .line 231
    invoke-static {v6, v8, v2}, Lb8/l;->W(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 234
    move-result v7

    .line 235
    if-nez v7, :cond_2

    .line 237
    goto :goto_1

    .line 238
    :cond_2
    move v7, v2

    .line 239
    goto :goto_2

    .line 240
    :cond_3
    :goto_1
    move v7, v3

    .line 241
    :goto_2
    sget-object v10, Lv4/g;->m:Ljava/util/Set;

    .line 243
    invoke-interface {v10, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 246
    move-result v10

    .line 247
    if-nez v10, :cond_5

    .line 249
    invoke-static {v6}, Lkotlin/jvm/internal/l;->c(Ljava/lang/Object;)V

    .line 252
    const-string v10, "_timeout"

    .line 254
    invoke-static {v6, v10}, Lb8/s;->M(Ljava/lang/String;Ljava/lang/String;)Z

    .line 257
    move-result v10

    .line 258
    if-nez v10, :cond_5

    .line 260
    const-string v10, "_mode"

    .line 262
    invoke-static {v6, v10}, Lb8/s;->M(Ljava/lang/String;Ljava/lang/String;)Z

    .line 265
    move-result v10

    .line 266
    if-nez v10, :cond_5

    .line 268
    const-string v10, "_threshold"

    .line 270
    invoke-static {v6, v10}, Lb8/s;->M(Ljava/lang/String;Ljava/lang/String;)Z

    .line 273
    move-result v10

    .line 274
    if-nez v10, :cond_5

    .line 276
    const-string v10, "_fps"

    .line 278
    invoke-static {v6, v10}, Lb8/s;->M(Ljava/lang/String;Ljava/lang/String;)Z

    .line 281
    move-result v10

    .line 282
    if-nez v10, :cond_5

    .line 284
    const-string v10, "_color"

    .line 286
    invoke-static {v6, v10}, Lb8/s;->M(Ljava/lang/String;Ljava/lang/String;)Z

    .line 289
    move-result v10

    .line 290
    if-nez v10, :cond_5

    .line 292
    const-string v10, "_duration"

    .line 294
    invoke-static {v6, v10}, Lb8/s;->M(Ljava/lang/String;Ljava/lang/String;)Z

    .line 297
    move-result v10

    .line 298
    if-nez v10, :cond_5

    .line 300
    const-string v10, "_fade"

    .line 302
    invoke-static {v6, v10}, Lb8/s;->M(Ljava/lang/String;Ljava/lang/String;)Z

    .line 305
    move-result v10

    .line 306
    if-nez v10, :cond_5

    .line 308
    const-string v10, "equalizer_band_"

    .line 310
    invoke-static {v6, v10, v2}, Lb8/s;->S(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 313
    move-result v10

    .line 314
    if-eqz v10, :cond_4

    .line 316
    goto :goto_3

    .line 317
    :cond_4
    move v10, v2

    .line 318
    goto :goto_4

    .line 319
    :cond_5
    :goto_3
    move v10, v3

    .line 320
    :goto_4
    sget-object v11, Lv4/g;->l:Ljava/util/Set;

    .line 322
    invoke-interface {v11, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 325
    move-result v11

    .line 326
    if-nez v11, :cond_7

    .line 328
    invoke-static {v6}, Lkotlin/jvm/internal/l;->c(Ljava/lang/Object;)V

    .line 331
    const-string v11, "_enabled"

    .line 333
    invoke-static {v6, v11}, Lb8/s;->M(Ljava/lang/String;Ljava/lang/String;)Z

    .line 336
    move-result v11

    .line 337
    if-nez v11, :cond_7

    .line 339
    const-string v11, "_active"

    .line 341
    invoke-static {v6, v11}, Lb8/s;->M(Ljava/lang/String;Ljava/lang/String;)Z

    .line 344
    move-result v11

    .line 345
    if-nez v11, :cond_7

    .line 347
    const-string v11, "feature_"

    .line 349
    invoke-static {v6, v11, v2}, Lb8/s;->S(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 352
    move-result v11

    .line 353
    if-nez v11, :cond_7

    .line 355
    const-string v11, "ps_"

    .line 357
    invoke-static {v6, v11, v2}, Lb8/s;->S(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 360
    move-result v11

    .line 361
    if-nez v11, :cond_7

    .line 363
    const-string v11, "ultra_"

    .line 365
    invoke-static {v6, v11, v2}, Lb8/s;->S(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 368
    move-result v11

    .line 369
    if-eqz v11, :cond_6

    .line 371
    invoke-static {v6, v9, v2}, Lb8/l;->W(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 374
    move-result v9

    .line 375
    if-nez v9, :cond_6

    .line 377
    invoke-static {v6, v8, v2}, Lb8/l;->W(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 380
    move-result v8

    .line 381
    if-nez v8, :cond_6

    .line 383
    goto :goto_5

    .line 384
    :cond_6
    move v8, v2

    .line 385
    goto :goto_6

    .line 386
    :cond_7
    :goto_5
    move v8, v3

    .line 387
    :goto_6
    if-eqz v7, :cond_9

    .line 389
    instance-of v7, v5, Ljava/lang/Float;

    .line 391
    if-nez v7, :cond_9

    .line 393
    instance-of v7, v5, Ljava/lang/Number;

    .line 395
    if-eqz v7, :cond_8

    .line 397
    check-cast v5, Ljava/lang/Number;

    .line 399
    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    .line 402
    move-result v4

    .line 403
    invoke-interface {v0, v6, v4}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 406
    :goto_7
    move v4, v3

    .line 407
    goto/16 :goto_0

    .line 409
    :cond_8
    instance-of v7, v5, Ljava/lang/String;

    .line 411
    if-eqz v7, :cond_0

    .line 413
    check-cast v5, Ljava/lang/String;

    .line 415
    invoke-static {v5}, Lb8/r;->L(Ljava/lang/String;)Ljava/lang/Float;

    .line 418
    move-result-object v5

    .line 419
    if-eqz v5, :cond_0

    .line 421
    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    .line 424
    move-result v4

    .line 425
    invoke-interface {v0, v6, v4}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 428
    goto :goto_7

    .line 429
    :cond_9
    if-eqz v10, :cond_c

    .line 431
    instance-of v7, v5, Ljava/lang/Integer;

    .line 433
    if-nez v7, :cond_c

    .line 435
    instance-of v7, v5, Ljava/lang/Number;

    .line 437
    if-eqz v7, :cond_a

    .line 439
    check-cast v5, Ljava/lang/Number;

    .line 441
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 444
    move-result v4

    .line 445
    invoke-interface {v0, v6, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 448
    goto :goto_7

    .line 449
    :cond_a
    instance-of v7, v5, Ljava/lang/String;

    .line 451
    if-eqz v7, :cond_0

    .line 453
    move-object v7, v5

    .line 454
    check-cast v7, Ljava/lang/String;

    .line 456
    invoke-static {v7}, Lb8/s;->U(Ljava/lang/String;)Ljava/lang/Integer;

    .line 459
    move-result-object v7

    .line 460
    if-eqz v7, :cond_b

    .line 462
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    .line 465
    move-result v4

    .line 466
    invoke-interface {v0, v6, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 469
    goto :goto_7

    .line 470
    :cond_b
    check-cast v5, Ljava/lang/String;

    .line 472
    invoke-static {v5}, Lb8/r;->L(Ljava/lang/String;)Ljava/lang/Float;

    .line 475
    move-result-object v5

    .line 476
    if-eqz v5, :cond_0

    .line 478
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    .line 481
    move-result v4

    .line 482
    float-to-int v4, v4

    .line 483
    invoke-interface {v0, v6, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 486
    goto :goto_7

    .line 487
    :cond_c
    if-eqz v8, :cond_0

    .line 489
    instance-of v7, v5, Ljava/lang/Boolean;

    .line 491
    if-nez v7, :cond_0

    .line 493
    instance-of v7, v5, Ljava/lang/Boolean;

    .line 495
    if-nez v7, :cond_0

    .line 497
    instance-of v7, v5, Ljava/lang/String;

    .line 499
    if-eqz v7, :cond_f

    .line 501
    check-cast v5, Ljava/lang/String;

    .line 503
    const-string v7, "true"

    .line 505
    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 508
    move-result v7

    .line 509
    if-eqz v7, :cond_d

    .line 511
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 513
    goto :goto_8

    .line 514
    :cond_d
    const-string v7, "false"

    .line 516
    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 519
    move-result v5

    .line 520
    if-eqz v5, :cond_e

    .line 522
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 524
    goto :goto_8

    .line 525
    :cond_e
    const/4 v5, 0x0

    .line 526
    :goto_8
    if-eqz v5, :cond_0

    .line 528
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 531
    move-result v4

    .line 532
    invoke-interface {v0, v6, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 535
    goto/16 :goto_7

    .line 537
    :cond_f
    instance-of v7, v5, Ljava/lang/Number;

    .line 539
    if-eqz v7, :cond_0

    .line 541
    check-cast v5, Ljava/lang/Number;

    .line 543
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 546
    move-result v4

    .line 547
    if-eqz v4, :cond_10

    .line 549
    move v4, v3

    .line 550
    goto :goto_9

    .line 551
    :cond_10
    move v4, v2

    .line 552
    :goto_9
    invoke-interface {v0, v6, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 555
    goto/16 :goto_7

    .line 557
    :cond_11
    if-eqz v4, :cond_12

    .line 559
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 562
    :catch_0
    :cond_12
    sget-boolean v0, Lv4/t;->d:Z

    .line 564
    if-nez v0, :cond_13

    .line 566
    sput-boolean v3, Lv4/t;->d:Z

    .line 568
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 571
    move-result-object p1

    .line 572
    new-instance v0, Ljava/lang/Thread;

    .line 574
    new-instance v1, Lb/d;

    .line 576
    const/4 v2, 0x5

    .line 577
    invoke-direct {v1, v2, p1, p0}, Lb/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 580
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 583
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 586
    :cond_13
    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 2

    .line 1
    const-string v0, "disable_landscape_rotation"

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lv4/t;->i(Ljava/lang/String;Z)Z

    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public final A0()Z
    .locals 2

    .line 1
    const-string v0, "suppress_system_notifications"

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lv4/t;->i(Ljava/lang/String;Z)Z

    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public final B()Z
    .locals 3

    .line 1
    const-string v0, "dynamic_light_recorder"

    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object v2, p0, Lv4/t;->b:Landroid/content/SharedPreferences;

    .line 6
    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 9
    move-result v0

    .line 10
    const-string v1, "dynamic_light_screen_recorder"

    .line 12
    invoke-virtual {p0, v1, v0}, Lv4/t;->i(Ljava/lang/String;Z)Z

    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method public final B0()F
    .locals 2

    .line 1
    const-string v0, "liquid_surface_tension"

    .line 3
    const/high16 v1, 0x3f800000    # 1.0f

    .line 5
    invoke-virtual {p0, v0, v1}, Lv4/t;->Z(Ljava/lang/String;F)F

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final C()Z
    .locals 3

    .line 1
    const-string v0, "dynamic_light_recorder"

    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object v2, p0, Lv4/t;->b:Landroid/content/SharedPreferences;

    .line 6
    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 9
    move-result v0

    .line 10
    const-string v1, "dynamic_light_voice_recorder"

    .line 12
    invoke-virtual {p0, v1, v0}, Lv4/t;->i(Ljava/lang/String;Z)Z

    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method public final C0()Z
    .locals 2

    .line 1
    const-string v0, "use_accent_color_in_shortcuts"

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lv4/t;->i(Ljava/lang/String;Z)Z

    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public final D()Z
    .locals 2

    .line 1
    const-string v0, "dynamic_light_wave_enabled"

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lv4/t;->i(Ljava/lang/String;Z)Z

    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public final D0(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lv4/t;->b:Landroid/content/SharedPreferences;

    .line 3
    const-string v1, "app_theme"

    .line 5
    invoke-static {v0, v1, p1}, Lm1/a;->p(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    return-void
.end method

.method public final E(I)I
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "equalizer_band_level_"

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p0, v0, p1}, Lv4/t;->f0(ILjava/lang/String;)I

    .line 19
    move-result p1

    .line 20
    return p1
.end method

.method public final E0(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lv4/t;->b:Landroid/content/SharedPreferences;

    .line 3
    const-string v1, "apple_equalizer_enabled"

    .line 5
    invoke-static {v0, v1, p1}, Lm1/a;->q(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 8
    return-void
.end method

.method public final F(FLjava/lang/String;Ljava/lang/String;)F
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "evt_"

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-string p2, "_"

    .line 13
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object p2

    .line 23
    iget-object v0, p0, Lv4/t;->b:Landroid/content/SharedPreferences;

    .line 25
    invoke-interface {v0, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-interface {v0, p2, p1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    .line 35
    move-result p2

    .line 36
    const-string v0, "compact_h"

    .line 38
    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 41
    move-result p3

    .line 42
    if-eqz p3, :cond_1

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const/4 p3, 0x0

    .line 46
    cmpg-float p3, p2, p3

    .line 48
    if-gtz p3, :cond_2

    .line 50
    :goto_0
    return p1

    .line 51
    :cond_2
    :goto_1
    return p2
.end method

.method public final F0(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "type"

    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lv4/t;->b:Landroid/content/SharedPreferences;

    .line 8
    const-string v1, "coversheet_bg_type"

    .line 10
    invoke-static {v0, v1, p1}, Lm1/a;->p(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public final G()F
    .locals 3

    .line 1
    const-string v0, "anim_expand_damping"

    .line 3
    const v1, 0x3f0ccccd    # 0.55f

    .line 6
    iget-object v2, p0, Lv4/t;->b:Landroid/content/SharedPreferences;

    .line 8
    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public final G0(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lv4/t;->b:Landroid/content/SharedPreferences;

    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/16 v2, 0x8

    .line 10
    invoke-static {p1, v1, v2}, Lt2/b;->p(III)I

    .line 13
    move-result p1

    .line 14
    const-string v1, "cs_clock_color"

    .line 16
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 19
    move-result-object p1

    .line 20
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 23
    return-void
.end method

.method public final H()F
    .locals 3

    .line 1
    const-string v0, "anim_expand_stiffness"

    .line 3
    const/high16 v1, 0x43160000    # 150.0f

    .line 5
    iget-object v2, p0, Lv4/t;->b:Landroid/content/SharedPreferences;

    .line 7
    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public final H0(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lv4/t;->b:Landroid/content/SharedPreferences;

    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x5

    .line 9
    invoke-static {p1, v1, v2}, Lt2/b;->p(III)I

    .line 12
    move-result p1

    .line 13
    const-string v1, "cs_clock_font_mode"

    .line 15
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 18
    move-result-object p1

    .line 19
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 22
    return-void
.end method

.method public final I()F
    .locals 2

    .line 1
    const-string v0, "expanded_offset_y"

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lv4/t;->Z(Ljava/lang/String;F)F

    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public final I0(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lv4/t;->b:Landroid/content/SharedPreferences;

    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 6
    move-result-object v0

    .line 7
    const v1, 0x3e23d70a    # 0.16f

    .line 10
    const v2, 0x3ee147ae    # 0.44f

    .line 13
    invoke-static {p1, v1, v2}, Lt2/b;->o(FFF)F

    .line 16
    move-result p1

    .line 17
    const-string v1, "cs_clock_height_scale"

    .line 19
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 22
    move-result-object p1

    .line 23
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 26
    return-void
.end method

.method public final J()Z
    .locals 2

    .line 1
    const-string v0, "face_id_card_mode_enabled"

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lv4/t;->i(Ljava/lang/String;Z)Z

    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public final J0(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lv4/t;->b:Landroid/content/SharedPreferences;

    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/high16 v2, 0x3f800000    # 1.0f

    .line 10
    invoke-static {p1, v1, v2}, Lt2/b;->o(FFF)F

    .line 13
    move-result p1

    .line 14
    const-string v1, "cs_clock_tint_opacity"

    .line 16
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 19
    move-result-object p1

    .line 20
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 23
    return-void
.end method

.method public final K()Z
    .locals 2

    .line 1
    const-string v0, "feature_battery_enabled"

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lv4/t;->i(Ljava/lang/String;Z)Z

    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public final K0(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lv4/t;->b:Landroid/content/SharedPreferences;

    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 6
    move-result-object v0

    .line 7
    const v1, 0x3f0ccccd    # 0.55f

    .line 10
    const v2, 0x3faccccd    # 1.35f

    .line 13
    invoke-static {p1, v1, v2}, Lt2/b;->o(FFF)F

    .line 16
    move-result p1

    .line 17
    const-string v1, "cs_clock_weight_scale"

    .line 19
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 22
    move-result-object p1

    .line 23
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 26
    return-void
.end method

.method public final L()Z
    .locals 2

    .line 1
    const-string v0, "feature_bluetooth_enabled"

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lv4/t;->i(Ljava/lang/String;Z)Z

    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public final L0(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lv4/t;->b:Landroid/content/SharedPreferences;

    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 6
    move-result-object v0

    .line 7
    const v1, 0x3f147ae1    # 0.58f

    .line 10
    const v2, 0x3f6b851f    # 0.92f

    .line 13
    invoke-static {p1, v1, v2}, Lt2/b;->o(FFF)F

    .line 16
    move-result p1

    .line 17
    const-string v1, "cs_clock_width_scale"

    .line 19
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 22
    move-result-object p1

    .line 23
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 26
    return-void
.end method

.method public final M()Z
    .locals 2

    .line 1
    const-string v0, "feat_browser_download_enabled"

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lv4/t;->i(Ljava/lang/String;Z)Z

    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public final M0(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lv4/t;->b:Landroid/content/SharedPreferences;

    .line 3
    const-string v1, "cs_depth_enabled"

    .line 5
    invoke-static {v0, v1, p1}, Lm1/a;->q(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 8
    return-void
.end method

.method public final N()Z
    .locals 2

    .line 1
    const-string v0, "feature_calls_enabled"

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lv4/t;->i(Ljava/lang/String;Z)Z

    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public final N0(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lv4/t;->b:Landroid/content/SharedPreferences;

    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 6
    move-result-object v0

    .line 7
    const v1, 0x3e19999a    # 0.15f

    .line 10
    const/high16 v2, 0x3f800000    # 1.0f

    .line 12
    invoke-static {p1, v1, v2}, Lt2/b;->o(FFF)F

    .line 15
    move-result p1

    .line 16
    const-string v1, "cs_depth_scale"

    .line 18
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 21
    move-result-object p1

    .line 22
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 25
    return-void
.end method

.method public final O()Z
    .locals 2

    .line 1
    const-string v0, "feature_dnd_enabled"

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lv4/t;->i(Ljava/lang/String;Z)Z

    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public final O0(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "id"

    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lv4/t;->b:Landroid/content/SharedPreferences;

    .line 8
    const-string v1, "cs_left_shortcut_id"

    .line 10
    invoke-static {v0, v1, p1}, Lm1/a;->p(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public final P()Z
    .locals 2

    .line 1
    const-string v0, "feat_google_maps_enabled"

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lv4/t;->i(Ljava/lang/String;Z)Z

    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public final P0(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "id"

    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lv4/t;->b:Landroid/content/SharedPreferences;

    .line 8
    const-string v1, "cs_right_shortcut_id"

    .line 10
    invoke-static {v0, v1, p1}, Lm1/a;->p(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public final Q()Z
    .locals 2

    .line 1
    const-string v0, "feature_headphones_enabled"

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lv4/t;->i(Ljava/lang/String;Z)Z

    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public final Q0(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lv4/t;->b:Landroid/content/SharedPreferences;

    .line 3
    const-string v1, "dev_lock_animation"

    .line 5
    invoke-static {v0, v1, p1}, Lm1/a;->q(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 8
    return-void
.end method

.method public final R()Z
    .locals 2

    .line 1
    const-string v0, "feature_hotspot_enabled"

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lv4/t;->i(Ljava/lang/String;Z)Z

    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public final R0(FLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lv4/t;->b:Landroid/content/SharedPreferences;

    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    const-string v2, "evt_"

    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const-string p2, "_"

    .line 19
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object p2

    .line 29
    invoke-interface {v0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 32
    move-result-object p1

    .line 33
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 36
    return-void
.end method

.method public final S()Z
    .locals 2

    .line 1
    const-string v0, "feature_music_enabled"

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lv4/t;->i(Ljava/lang/String;Z)Z

    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public final S0(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lv4/t;->b:Landroid/content/SharedPreferences;

    .line 3
    const-string v1, "expanded_offset_y"

    .line 5
    invoke-static {v0, v1, p1}, Lm1/a;->n(Landroid/content/SharedPreferences;Ljava/lang/String;F)V

    .line 8
    return-void
.end method

.method public final T()Z
    .locals 2

    .line 1
    const-string v0, "feature_notifications_enabled"

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lv4/t;->i(Ljava/lang/String;Z)Z

    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public final T0(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lv4/t;->b:Landroid/content/SharedPreferences;

    .line 3
    const-string v1, "feat_siri_enabled"

    .line 5
    invoke-static {v0, v1, p1}, Lm1/a;->q(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 8
    return-void
.end method

.method public final U()Z
    .locals 2

    .line 1
    const-string v0, "feature_ringer_enabled"

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lv4/t;->i(Ljava/lang/String;Z)Z

    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public final U0(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "mode"

    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lv4/t;->b:Landroid/content/SharedPreferences;

    .line 8
    const-string v1, "headphones_model_mode"

    .line 10
    invoke-static {v0, v1, p1}, Lm1/a;->p(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public final V()Z
    .locals 2

    .line 1
    const-string v0, "feature_screen_recorder_enabled"

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lv4/t;->i(Ljava/lang/String;Z)Z

    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public final V0(Ljava/util/Set;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lv4/t;->a:Landroid/content/Context;

    .line 3
    check-cast p1, Ljava/lang/Iterable;

    .line 5
    invoke-static {p1}, Lf7/l;->l0(Ljava/lang/Iterable;)La8/n;

    .line 8
    move-result-object p1

    .line 9
    new-instance v1, Ll5/p;

    .line 11
    const/16 v2, 0x19

    .line 13
    invoke-direct {v1, v2}, Ll5/p;-><init>(I)V

    .line 16
    new-instance v2, La8/h;

    .line 18
    const/4 v3, 0x3

    .line 19
    invoke-direct {v2, p1, v1, v3}, La8/h;-><init>(Ljava/lang/Object;Ls7/d;I)V

    .line 22
    new-instance p1, Ll5/p;

    .line 24
    const/16 v1, 0x1a

    .line 26
    invoke-direct {p1, v1}, Ll5/p;-><init>(I)V

    .line 29
    new-instance v1, La8/g;

    .line 31
    const/4 v3, 0x1

    .line 32
    invoke-direct {v1, v2, v3, p1}, La8/g;-><init>(La8/j;ZLs7/d;)V

    .line 35
    new-instance p1, Ljava/util/HashSet;

    .line 37
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 40
    new-instance v2, La8/f;

    .line 42
    invoke-direct {v2, v1}, La8/f;-><init>(La8/g;)V

    .line 45
    :goto_0
    invoke-virtual {v2}, La8/f;->hasNext()Z

    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_0

    .line 51
    invoke-virtual {v2}, La8/f;->next()Ljava/lang/Object;

    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    iget-object v1, p0, Lv4/t;->b:Landroid/content/SharedPreferences;

    .line 61
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 64
    move-result-object v1

    .line 65
    const-string v2, "island_app_blacklist"

    .line 67
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 70
    move-result-object p1

    .line 71
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 74
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    .line 76
    const-string v1, "com.example.liquidisland.ACTION_BLACKLIST_UPDATED"

    .line 78
    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :catch_0
    return-void
.end method

.method public final W()Z
    .locals 2

    .line 1
    const-string v0, "feat_siri_enabled"

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lv4/t;->i(Ljava/lang/String;Z)Z

    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public final W0(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lv4/t;->b:Landroid/content/SharedPreferences;

    .line 3
    const-string v1, "expanded_corner_radius"

    .line 5
    invoke-static {v0, v1, p1}, Lm1/a;->o(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    .line 8
    return-void
.end method

.method public final X()Z
    .locals 2

    .line 1
    const-string v0, "feature_voice_recorder_enabled"

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lv4/t;->i(Ljava/lang/String;Z)Z

    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public final X0(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lv4/t;->b:Landroid/content/SharedPreferences;

    .line 3
    const-string v1, "island_height"

    .line 5
    invoke-static {v0, v1, p1}, Lm1/a;->n(Landroid/content/SharedPreferences;Ljava/lang/String;F)V

    .line 8
    return-void
.end method

.method public final Y()Z
    .locals 2

    .line 1
    const-string v0, "feature_wifi_enabled"

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lv4/t;->i(Ljava/lang/String;Z)Z

    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public final Y0(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lv4/t;->b:Landroid/content/SharedPreferences;

    .line 3
    const-string v1, "island_offset_x"

    .line 5
    invoke-static {v0, v1, p1}, Lm1/a;->n(Landroid/content/SharedPreferences;Ljava/lang/String;F)V

    .line 8
    return-void
.end method

.method public final Z(Ljava/lang/String;F)F
    .locals 3

    .line 1
    iget-object v0, p0, Lv4/t;->b:Landroid/content/SharedPreferences;

    .line 3
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    .line 6
    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return p1

    .line 8
    :catch_0
    :try_start_1
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    instance-of v2, v1, Ljava/lang/Number;

    .line 18
    if-eqz v2, :cond_0

    .line 20
    check-cast v1, Ljava/lang/Number;

    .line 22
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 25
    move-result v1

    .line 26
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 29
    move-result-object v0

    .line 30
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 33
    move-result-object p1

    .line 34
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 37
    :goto_0
    move p2, v1

    .line 38
    goto :goto_2

    .line 39
    :cond_0
    instance-of v2, v1, Ljava/lang/String;

    .line 41
    if-eqz v2, :cond_2

    .line 43
    check-cast v1, Ljava/lang/String;

    .line 45
    invoke-static {v1}, Lb8/r;->L(Ljava/lang/String;)Ljava/lang/Float;

    .line 48
    move-result-object v1

    .line 49
    if-eqz v1, :cond_1

    .line 51
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 54
    move-result v1

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    move v1, p2

    .line 57
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 60
    move-result-object v0

    .line 61
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 64
    move-result-object p1

    .line 65
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 68
    goto :goto_0

    .line 69
    :catch_1
    :cond_2
    :goto_2
    return p2
.end method

.method public final Z0(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lv4/t;->b:Landroid/content/SharedPreferences;

    .line 3
    const-string v1, "island_offset_y"

    .line 5
    invoke-static {v0, v1, p1}, Lm1/a;->n(Landroid/content/SharedPreferences;Ljava/lang/String;F)V

    .line 8
    return-void
.end method

.method public final a()Z
    .locals 2

    .line 1
    const-string v0, "adaptive_color_in_activities"

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lv4/t;->i(Ljava/lang/String;Z)Z

    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public final a0()Z
    .locals 2

    .line 1
    const-string v0, "gemini_demo_active"

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lv4/t;->i(Ljava/lang/String;Z)Z

    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public final a1(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lv4/t;->b:Landroid/content/SharedPreferences;

    .line 3
    const-string v1, "island_width"

    .line 5
    invoke-static {v0, v1, p1}, Lm1/a;->n(Landroid/content/SharedPreferences;Ljava/lang/String;F)V

    .line 8
    return-void
.end method

.method public final b()Z
    .locals 2

    .line 1
    const-string v0, "adaptive_gestures"

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lv4/t;->i(Ljava/lang/String;Z)Z

    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public final b0()Z
    .locals 2

    .line 1
    const-string v0, "hide_in_landscape"

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lv4/t;->i(Ljava/lang/String;Z)Z

    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public final b1(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lv4/t;->b:Landroid/content/SharedPreferences;

    .line 3
    const-string v1, "multitasking_bubble_corner_radius"

    .line 5
    invoke-static {v0, v1, p1}, Lm1/a;->n(Landroid/content/SharedPreferences;Ljava/lang/String;F)V

    .line 8
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "app_accent_color"

    .line 3
    const-string v1, "blue"

    .line 5
    invoke-virtual {p0, v0, v1}, Lv4/t;->z0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final c0()Z
    .locals 2

    .line 1
    const-string v0, "hide_island_in_active_player"

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lv4/t;->i(Ljava/lang/String;Z)Z

    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public final c1(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lv4/t;->b:Landroid/content/SharedPreferences;

    .line 3
    const-string v1, "multitasking_bubble_shape"

    .line 5
    invoke-static {v0, v1, p1}, Lm1/a;->p(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "app_language"

    .line 3
    const-string v1, "en"

    .line 5
    invoke-virtual {p0, v0, v1}, Lv4/t;->z0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final d0()Z
    .locals 2

    .line 1
    const-string v0, "hide_on_lock_screen"

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lv4/t;->i(Ljava/lang/String;Z)Z

    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public final d1(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lv4/t;->b:Landroid/content/SharedPreferences;

    .line 3
    const-string v1, "multitasking_bubble_width"

    .line 5
    invoke-static {v0, v1, p1}, Lm1/a;->n(Landroid/content/SharedPreferences;Ljava/lang/String;F)V

    .line 8
    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "app_theme"

    .line 3
    const-string v1, "system"

    .line 5
    invoke-virtual {p0, v0, v1}, Lv4/t;->z0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final e0()Z
    .locals 2

    .line 1
    const-string v0, "hide_when_idle"

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lv4/t;->i(Ljava/lang/String;Z)Z

    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public final e1(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lv4/t;->b:Landroid/content/SharedPreferences;

    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "multitasking_mode"

    .line 9
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 12
    move-result-object v0

    .line 13
    const-string v1, "cards"

    .line 15
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result p1

    .line 19
    const-string v1, "cards_system_enabled"

    .line 21
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 24
    move-result-object p1

    .line 25
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 28
    return-void
.end method

.method public final f()Z
    .locals 2

    .line 1
    const-string v0, "auto_disable_motion_blur"

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lv4/t;->i(Ljava/lang/String;Z)Z

    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public final f0(ILjava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lv4/t;->b:Landroid/content/SharedPreferences;

    .line 3
    const-string v1, "key"

    .line 5
    invoke-static {p2, v1}, Lkotlin/jvm/internal/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    :try_start_0
    invoke-interface {v0, p2, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 11
    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    return p1

    .line 13
    :catch_0
    :try_start_1
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    instance-of v2, v1, Ljava/lang/Number;

    .line 23
    if-eqz v2, :cond_0

    .line 25
    check-cast v1, Ljava/lang/Number;

    .line 27
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 30
    move-result v1

    .line 31
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 34
    move-result-object v0

    .line 35
    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 38
    move-result-object p2

    .line 39
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 42
    :goto_0
    move p1, v1

    .line 43
    goto :goto_3

    .line 44
    :cond_0
    instance-of v2, v1, Ljava/lang/String;

    .line 46
    if-eqz v2, :cond_4

    .line 48
    move-object v2, v1

    .line 49
    check-cast v2, Ljava/lang/String;

    .line 51
    invoke-static {v2}, Lb8/s;->U(Ljava/lang/String;)Ljava/lang/Integer;

    .line 54
    move-result-object v2

    .line 55
    if-eqz v2, :cond_1

    .line 57
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 60
    move-result v1

    .line 61
    goto :goto_2

    .line 62
    :cond_1
    check-cast v1, Ljava/lang/String;

    .line 64
    invoke-static {v1}, Lb8/r;->L(Ljava/lang/String;)Ljava/lang/Float;

    .line 67
    move-result-object v1

    .line 68
    if-eqz v1, :cond_2

    .line 70
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 73
    move-result v1

    .line 74
    float-to-int v1, v1

    .line 75
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    move-result-object v1

    .line 79
    goto :goto_1

    .line 80
    :cond_2
    const/4 v1, 0x0

    .line 81
    :goto_1
    if-eqz v1, :cond_3

    .line 83
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 86
    move-result v1

    .line 87
    goto :goto_2

    .line 88
    :cond_3
    move v1, p1

    .line 89
    :goto_2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 92
    move-result-object v0

    .line 93
    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 96
    move-result-object p2

    .line 97
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 100
    goto :goto_0

    .line 101
    :catch_1
    :cond_4
    :goto_3
    return p1
.end method

.method public final f1(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lv4/t;->b:Landroid/content/SharedPreferences;

    .line 3
    const-string v1, "music_art_3d_flip_enabled"

    .line 5
    invoke-static {v0, v1, p1}, Lm1/a;->q(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 8
    return-void
.end method

.method public final g()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "backdrop_mode"

    .line 3
    const-string v1, "shizuku"

    .line 5
    invoke-virtual {p0, v0, v1}, Lv4/t;->z0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final g0()Ljava/util/Set;
    .locals 5

    .line 1
    iget-object v0, p0, Lv4/t;->b:Landroid/content/SharedPreferences;

    .line 3
    const-string v1, "island_app_blacklist"

    .line 5
    sget-object v2, Lf7/v;->d:Lf7/v;

    .line 7
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 13
    move-object v0, v2

    .line 14
    :cond_0
    check-cast v0, Ljava/lang/Iterable;

    .line 16
    invoke-static {v0}, Lf7/l;->l0(Ljava/lang/Iterable;)La8/n;

    .line 19
    move-result-object v0

    .line 20
    new-instance v1, Ll5/p;

    .line 22
    const/16 v3, 0x17

    .line 24
    invoke-direct {v1, v3}, Ll5/p;-><init>(I)V

    .line 27
    new-instance v3, La8/h;

    .line 29
    const/4 v4, 0x3

    .line 30
    invoke-direct {v3, v0, v1, v4}, La8/h;-><init>(Ljava/lang/Object;Ls7/d;I)V

    .line 33
    new-instance v0, Ll5/p;

    .line 35
    const/16 v1, 0x18

    .line 37
    invoke-direct {v0, v1}, Ll5/p;-><init>(I)V

    .line 40
    new-instance v1, La8/g;

    .line 42
    const/4 v4, 0x1

    .line 43
    invoke-direct {v1, v3, v4, v0}, La8/g;-><init>(La8/j;ZLs7/d;)V

    .line 46
    new-instance v0, La8/f;

    .line 48
    invoke-direct {v0, v1}, La8/f;-><init>(La8/g;)V

    .line 51
    invoke-virtual {v0}, La8/f;->hasNext()Z

    .line 54
    move-result v1

    .line 55
    if-nez v1, :cond_1

    .line 57
    return-object v2

    .line 58
    :cond_1
    invoke-virtual {v0}, La8/f;->next()Ljava/lang/Object;

    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v0}, La8/f;->hasNext()Z

    .line 65
    move-result v2

    .line 66
    if-nez v2, :cond_2

    .line 68
    invoke-static {v1}, Le4/b;->K0(Ljava/lang/Object;)Ljava/util/Set;

    .line 71
    move-result-object v0

    .line 72
    return-object v0

    .line 73
    :cond_2
    new-instance v2, Ljava/util/LinkedHashSet;

    .line 75
    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 78
    invoke-virtual {v2, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 81
    :goto_0
    invoke-virtual {v0}, La8/f;->hasNext()Z

    .line 84
    move-result v1

    .line 85
    if-eqz v1, :cond_3

    .line 87
    invoke-virtual {v0}, La8/f;->next()Ljava/lang/Object;

    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v2, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 94
    goto :goto_0

    .line 95
    :cond_3
    return-object v2
.end method

.method public final g1(Ljava/util/Set;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lv4/t;->b:Landroid/content/SharedPreferences;

    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "music_blacklist"

    .line 9
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 12
    move-result-object p1

    .line 13
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 16
    return-void
.end method

.method public final h()Z
    .locals 2

    .line 1
    const-string v0, "block_system_shade"

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lv4/t;->i(Ljava/lang/String;Z)Z

    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public final h0()I
    .locals 2

    .line 1
    const-string v0, "expanded_corner_radius"

    .line 3
    const/16 v1, 0x2c

    .line 5
    invoke-virtual {p0, v1, v0}, Lv4/t;->f0(ILjava/lang/String;)I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final h1(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "design"

    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lv4/t;->b:Landroid/content/SharedPreferences;

    .line 8
    const-string v1, "music_player_design"

    .line 10
    invoke-static {v0, v1, p1}, Lm1/a;->p(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public final i(Ljava/lang/String;Z)Z
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
    iget-object v0, p0, Lv4/t;->b:Landroid/content/SharedPreferences;

    .line 3
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 6
    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return p1

    .line 8
    :catch_0
    :try_start_1
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    instance-of v2, v1, Ljava/lang/Boolean;

    .line 18
    if-eqz v2, :cond_0

    .line 20
    check-cast v1, Ljava/lang/Boolean;

    .line 22
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 25
    move-result p2

    .line 26
    goto :goto_4

    .line 27
    :cond_0
    instance-of v2, v1, Ljava/lang/String;

    .line 29
    if-eqz v2, :cond_4

    .line 31
    check-cast v1, Ljava/lang/String;

    .line 33
    const-string v2, "true"

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_1

    .line 41
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const-string v2, "false"

    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_2

    .line 52
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    const/4 v1, 0x0

    .line 56
    :goto_0
    if-eqz v1, :cond_3

    .line 58
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 61
    move-result v1

    .line 62
    goto :goto_1

    .line 63
    :cond_3
    move v1, p2

    .line 64
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 67
    move-result-object v0

    .line 68
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 71
    move-result-object p1

    .line 72
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 75
    :goto_2
    move p2, v1

    .line 76
    goto :goto_4

    .line 77
    :cond_4
    instance-of v2, v1, Ljava/lang/Number;

    .line 79
    if-eqz v2, :cond_6

    .line 81
    check-cast v1, Ljava/lang/Number;

    .line 83
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 86
    move-result v1

    .line 87
    if-eqz v1, :cond_5

    .line 89
    const/4 v1, 0x1

    .line 90
    goto :goto_3

    .line 91
    :cond_5
    const/4 v1, 0x0

    .line 92
    :goto_3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 95
    move-result-object v0

    .line 96
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 99
    move-result-object p1

    .line 100
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 103
    goto :goto_2

    .line 104
    :catch_1
    :cond_6
    :goto_4
    return p2
.end method

.method public final i0()Z
    .locals 2

    .line 1
    const-string v0, "island_enabled"

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lv4/t;->i(Ljava/lang/String;Z)Z

    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public final i1(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lv4/t;->b:Landroid/content/SharedPreferences;

    .line 3
    const-string v1, "music_timeout_enabled"

    .line 5
    invoke-static {v0, v1, p1}, Lm1/a;->q(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 8
    return-void
.end method

.method public final j()Z
    .locals 2

    .line 1
    const-string v0, "cards_system_enabled"

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lv4/t;->i(Ljava/lang/String;Z)Z

    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public final j0()F
    .locals 2

    .line 1
    const-string v0, "island_height"

    .line 3
    const/high16 v1, 0x42100000    # 36.0f

    .line 5
    invoke-virtual {p0, v0, v1}, Lv4/t;->Z(Ljava/lang/String;F)F

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final j1(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lv4/t;->b:Landroid/content/SharedPreferences;

    .line 3
    const-string v1, "real_visualizer_enabled"

    .line 5
    invoke-static {v0, v1, p1}, Lm1/a;->q(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 8
    return-void
.end method

.method public final k()Z
    .locals 2

    .line 1
    const-string v0, "click_animation_enabled"

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lv4/t;->i(Ljava/lang/String;Z)Z

    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public final k0()F
    .locals 2

    .line 1
    const-string v0, "island_offset_x"

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lv4/t;->Z(Ljava/lang/String;F)F

    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public final k1(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "source"

    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lv4/t;->b:Landroid/content/SharedPreferences;

    .line 8
    const-string v1, "screen_rec_audio_source"

    .line 10
    invoke-static {v0, v1, p1}, Lm1/a;->p(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public final l()F
    .locals 3

    .line 1
    const-string v0, "anim_collapse_damping"

    .line 3
    const/high16 v1, 0x3f400000    # 0.75f

    .line 5
    iget-object v2, p0, Lv4/t;->b:Landroid/content/SharedPreferences;

    .line 7
    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public final l0()F
    .locals 2

    .line 1
    const-string v0, "island_offset_y"

    .line 3
    const/high16 v1, -0x3f800000    # -4.0f

    .line 5
    invoke-virtual {p0, v0, v1}, Lv4/t;->Z(Ljava/lang/String;F)F

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final l1(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "resolution"

    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lv4/t;->b:Landroid/content/SharedPreferences;

    .line 8
    const-string v1, "screen_rec_resolution"

    .line 10
    invoke-static {v0, v1, p1}, Lm1/a;->p(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public final m()F
    .locals 3

    .line 1
    const-string v0, "anim_collapse_stiffness"

    .line 3
    const/high16 v1, 0x43af0000    # 350.0f

    .line 5
    iget-object v2, p0, Lv4/t;->b:Landroid/content/SharedPreferences;

    .line 7
    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public final m0()F
    .locals 2

    .line 1
    const-string v0, "island_opacity"

    .line 3
    const/high16 v1, 0x3f800000    # 1.0f

    .line 5
    invoke-virtual {p0, v0, v1}, Lv4/t;->Z(Ljava/lang/String;F)F

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final m1(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lv4/t;->b:Landroid/content/SharedPreferences;

    .line 3
    const-string v1, "screen_rec_save_uri"

    .line 5
    invoke-static {v0, v1, p1}, Lm1/a;->p(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    return-void
.end method

.method public final n()I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "cs_clock_color"

    .line 4
    invoke-virtual {p0, v0, v1}, Lv4/t;->f0(ILjava/lang/String;)I

    .line 7
    move-result v1

    .line 8
    const/16 v2, 0x8

    .line 10
    invoke-static {v1, v0, v2}, Lt2/b;->p(III)I

    .line 13
    move-result v0

    .line 14
    return v0
.end method

.method public final n0()F
    .locals 2

    .line 1
    const-string v0, "island_width"

    .line 3
    const v1, 0x42ca999a    # 101.3f

    .line 6
    invoke-virtual {p0, v0, v1}, Lv4/t;->Z(Ljava/lang/String;F)F

    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public final o()I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "cs_clock_font_mode"

    .line 4
    invoke-virtual {p0, v0, v1}, Lv4/t;->f0(ILjava/lang/String;)I

    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x5

    .line 9
    invoke-static {v1, v0, v2}, Lt2/b;->p(III)I

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final o0()Z
    .locals 2

    .line 1
    const-string v0, "motion_blur_enabled"

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lv4/t;->i(Ljava/lang/String;Z)Z

    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public final p()F
    .locals 3

    .line 1
    const-string v0, "cs_clock_height_scale"

    .line 3
    const v1, 0x3eb95810    # 0.362f

    .line 6
    invoke-virtual {p0, v0, v1}, Lv4/t;->Z(Ljava/lang/String;F)F

    .line 9
    move-result v0

    .line 10
    const v1, 0x3e23d70a    # 0.16f

    .line 13
    const v2, 0x3ee147ae    # 0.44f

    .line 16
    invoke-static {v0, v1, v2}, Lt2/b;->o(FFF)F

    .line 19
    move-result v0

    .line 20
    return v0
.end method

.method public final p0()Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "multitasking_mode"

    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lv4/t;->b:Landroid/content/SharedPreferences;

    .line 6
    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 12
    return-object v0

    .line 13
    :cond_0
    invoke-virtual {p0}, Lv4/t;->j()Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 19
    const-string v0, "cards"

    .line 21
    return-object v0

    .line 22
    :cond_1
    const-string v0, "bubble"

    .line 24
    return-object v0
.end method

.method public final q()Z
    .locals 2

    .line 1
    const-string v0, "cs_clock_solid_enabled"

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lv4/t;->i(Ljava/lang/String;Z)Z

    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public final q0()Ljava/util/Set;
    .locals 3

    .line 1
    iget-object v0, p0, Lv4/t;->b:Landroid/content/SharedPreferences;

    .line 3
    const-string v1, "music_blacklist"

    .line 5
    sget-object v2, Lf7/v;->d:Lf7/v;

    .line 7
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 13
    return-object v2

    .line 14
    :cond_0
    return-object v0
.end method

.method public final r()F
    .locals 3

    .line 1
    const-string v0, "cs_clock_tint_opacity"

    .line 3
    const v1, 0x3f3851ec    # 0.72f

    .line 6
    invoke-virtual {p0, v0, v1}, Lv4/t;->Z(Ljava/lang/String;F)F

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    const/high16 v2, 0x3f800000    # 1.0f

    .line 13
    invoke-static {v0, v1, v2}, Lt2/b;->o(FFF)F

    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public final r0()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "music_player_design"

    .line 3
    const-string v1, "default"

    .line 5
    invoke-virtual {p0, v0, v1}, Lv4/t;->z0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final s()F
    .locals 3

    .line 1
    const-string v0, "cs_clock_weight_scale"

    .line 3
    const/high16 v1, 0x3f800000    # 1.0f

    .line 5
    invoke-virtual {p0, v0, v1}, Lv4/t;->Z(Ljava/lang/String;F)F

    .line 8
    move-result v0

    .line 9
    const v1, 0x3f0ccccd    # 0.55f

    .line 12
    const v2, 0x3faccccd    # 1.35f

    .line 15
    invoke-static {v0, v1, v2}, Lt2/b;->o(FFF)F

    .line 18
    move-result v0

    .line 19
    return v0
.end method

.method public final s0()Z
    .locals 2

    .line 1
    const-string v0, "neon_notification_enabled"

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lv4/t;->i(Ljava/lang/String;Z)Z

    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public final t()F
    .locals 3

    .line 1
    const-string v0, "cs_clock_width_scale"

    .line 3
    const v1, 0x3f5c28f6    # 0.86f

    .line 6
    invoke-virtual {p0, v0, v1}, Lv4/t;->Z(Ljava/lang/String;F)F

    .line 9
    move-result v0

    .line 10
    const v1, 0x3f147ae1    # 0.58f

    .line 13
    const v2, 0x3f6b851f    # 0.92f

    .line 16
    invoke-static {v0, v1, v2}, Lt2/b;->o(FFF)F

    .line 19
    move-result v0

    .line 20
    return v0
.end method

.method public final t0()Z
    .locals 2

    .line 1
    const-string v0, "neon_only_in_landscape"

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lv4/t;->i(Ljava/lang/String;Z)Z

    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public final u()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "cs_left_shortcut_id"

    .line 3
    const-string v1, "flashlight"

    .line 5
    invoke-virtual {p0, v0, v1}, Lv4/t;->z0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final u0()F
    .locals 2

    .line 1
    const-string v0, "privacy_dot_offset_x"

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lv4/t;->Z(Ljava/lang/String;F)F

    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public final v()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "cs_right_shortcut_id"

    .line 3
    const-string v1, "camera"

    .line 5
    invoke-virtual {p0, v0, v1}, Lv4/t;->z0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final v0()Z
    .locals 2

    .line 1
    const-string v0, "privacy_indicators_enabled"

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lv4/t;->i(Ljava/lang/String;Z)Z

    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public final w()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "cs_widgets_list"

    .line 3
    const-string v1, ""

    .line 5
    invoke-virtual {p0, v0, v1}, Lv4/t;->z0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final w0()Z
    .locals 2

    .line 1
    const-string v0, "real_visualizer_enabled"

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lv4/t;->i(Ljava/lang/String;Z)Z

    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public final x()Z
    .locals 2

    .line 1
    const-string v0, "custom_status_bar_enabled"

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lv4/t;->i(Ljava/lang/String;Z)Z

    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public final x0()F
    .locals 2

    .line 1
    const-string v0, "liquid_refraction"

    .line 3
    const v1, 0x3de147ae    # 0.11f

    .line 6
    invoke-virtual {p0, v0, v1}, Lv4/t;->Z(Ljava/lang/String;F)F

    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public final y()Z
    .locals 2

    .line 1
    const-string v0, "dev_lock_animation"

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lv4/t;->i(Ljava/lang/String;Z)Z

    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public final y0()Z
    .locals 2

    .line 1
    const-string v0, "show_slider_values"

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lv4/t;->i(Ljava/lang/String;Z)Z

    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public final z()Z
    .locals 2

    .line 1
    const-string v0, "dimming_enabled"

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lv4/t;->i(Ljava/lang/String;Z)Z

    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public final z0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lv4/t;->b:Landroid/content/SharedPreferences;

    .line 3
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    if-nez p1, :cond_0

    .line 9
    return-object p2

    .line 10
    :cond_0
    return-object p1

    .line 11
    :catch_0
    :try_start_1
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_1

    .line 21
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 25
    if-nez v1, :cond_2

    .line 27
    :cond_1
    move-object v1, p2

    .line 28
    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 31
    move-result-object v0

    .line 32
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 35
    move-result-object p1

    .line 36
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 39
    move-object p2, v1

    .line 40
    :catch_1
    return-object p2
.end method

.class public Lcom/android/internal/telephony/Am;
.super Ljava/lang/Object;
.source "Am.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/Am$1;,
        Lcom/android/internal/telephony/Am$InstrumentationWatcher;,
        Lcom/android/internal/telephony/Am$IntentReceiver;,
        Lcom/android/internal/telephony/Am$MyActivityController;
    }
.end annotation


# static fields
.field private static final FATAL_ERROR_CODE:Ljava/lang/String; = "Error type 1"

.field private static final NO_CLASS_ERROR_CODE:Ljava/lang/String; = "Error type 3"

.field private static final NO_SYSTEM_ERROR_CODE:Ljava/lang/String; = "Error type 2"

.field private static final SHELL_PACKAGE_NAME:Ljava/lang/String; = "com.android.shell"


# instance fields
.field private mAm:Landroid/app/IActivityManager;

.field private mArgs:[Ljava/lang/String;

.field private mAutoStop:Z

.field private mCurArgData:Ljava/lang/String;

.field private mNextArg:I

.field private mProfileFile:Ljava/lang/String;

.field private mReceiverPermission:Ljava/lang/String;

.field private mRepeat:I

.field private mSamplingInterval:I

.field private mStartFlags:I

.field private mStopOption:Z

.field private mUserId:I

.field private mWaitOption:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput v0, p0, Lcom/android/internal/telephony/Am;->mStartFlags:I

    .line 73
    iput-boolean v0, p0, Lcom/android/internal/telephony/Am;->mWaitOption:Z

    .line 74
    iput-boolean v0, p0, Lcom/android/internal/telephony/Am;->mStopOption:Z

    .line 76
    iput v0, p0, Lcom/android/internal/telephony/Am;->mRepeat:I

    .line 1552
    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/Am;)Landroid/app/IActivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/Am;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/telephony/Am;->mAm:Landroid/app/IActivityManager;

    return-object v0
.end method

.method public static main(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    .line 363
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/Am;

    invoke-direct {v1}, Lcom/android/internal/telephony/Am;-><init>()V

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/Am;->runExt(Landroid/content/Context;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 370
    :goto_0
    return-void

    .line 364
    :catch_0
    move-exception v0

    .line 365
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/android/internal/telephony/Am;->showUsage()V

    .line 366
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 367
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 368
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 96
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/Am;

    invoke-direct {v1}, Lcom/android/internal/telephony/Am;-><init>()V

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/Am;->run([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 104
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/android/internal/telephony/Am;->showUsage()V

    .line 99
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 100
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 102
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    goto :goto_0
.end method

.method private makeIntent(I)Landroid/content/Intent;
    .locals 25
    .param p1, "defUser"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 415
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 416
    .local v13, "intent":Landroid/content/Intent;
    move-object v3, v13

    .line 417
    .local v3, "baseIntent":Landroid/content/Intent;
    const/4 v9, 0x0

    .line 419
    .local v9, "hasIntentInfo":Z
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/Am;->mStartFlags:I

    .line 420
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/Am;->mWaitOption:Z

    .line 421
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/Am;->mStopOption:Z

    .line 422
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/Am;->mRepeat:I

    .line 423
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/Am;->mProfileFile:Ljava/lang/String;

    .line 424
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/Am;->mSamplingInterval:I

    .line 425
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/Am;->mAutoStop:Z

    .line 426
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/Am;->mUserId:I

    .line 427
    const/4 v7, 0x0

    .line 428
    .local v7, "data":Landroid/net/Uri;
    const/16 v19, 0x0

    .line 431
    .local v19, "type":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/Am;->nextOption()Ljava/lang/String;

    move-result-object v16

    .local v16, "opt":Ljava/lang/String;
    if-eqz v16, :cond_3f

    .line 432
    const-string v22, "-a"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 433
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 434
    if-ne v13, v3, :cond_0

    .line 435
    const/4 v9, 0x1

    goto :goto_0

    .line 437
    :cond_1
    const-string v22, "-d"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 438
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 439
    if-ne v13, v3, :cond_0

    .line 440
    const/4 v9, 0x1

    goto :goto_0

    .line 442
    :cond_2
    const-string v22, "-t"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 443
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v19

    .line 444
    if-ne v13, v3, :cond_0

    .line 445
    const/4 v9, 0x1

    goto :goto_0

    .line 447
    :cond_3
    const-string v22, "-c"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 448
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 449
    if-ne v13, v3, :cond_0

    .line 450
    const/4 v9, 0x1

    goto :goto_0

    .line 452
    :cond_4
    const-string v22, "-e"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_5

    const-string v22, "--es"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 453
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v14

    .line 454
    .local v14, "key":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v21

    .line 455
    .local v21, "value":Ljava/lang/String;
    move-object/from16 v0, v21

    invoke-virtual {v13, v14, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 456
    .end local v14    # "key":Ljava/lang/String;
    .end local v21    # "value":Ljava/lang/String;
    :cond_6
    const-string v22, "--esn"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 457
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v14

    .line 458
    .restart local v14    # "key":Ljava/lang/String;
    const/16 v22, 0x0

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v13, v14, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 459
    .end local v14    # "key":Ljava/lang/String;
    :cond_7
    const-string v22, "--ei"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 460
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v14

    .line 461
    .restart local v14    # "key":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v21

    .line 462
    .restart local v21    # "value":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v14, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 463
    .end local v14    # "key":Ljava/lang/String;
    .end local v21    # "value":Ljava/lang/String;
    :cond_8
    const-string v22, "--eu"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 464
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v14

    .line 465
    .restart local v14    # "key":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v21

    .line 466
    .restart local v21    # "value":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v14, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 467
    .end local v14    # "key":Ljava/lang/String;
    .end local v21    # "value":Ljava/lang/String;
    :cond_9
    const-string v22, "--ecn"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_b

    .line 468
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v14

    .line 469
    .restart local v14    # "key":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v21

    .line 470
    .restart local v21    # "value":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    .line 471
    .local v6, "cn":Landroid/content/ComponentName;
    if-nez v6, :cond_a

    new-instance v22, Ljava/lang/IllegalArgumentException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Bad component name: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 472
    :cond_a
    invoke-virtual {v13, v14, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 473
    .end local v6    # "cn":Landroid/content/ComponentName;
    .end local v14    # "key":Ljava/lang/String;
    .end local v21    # "value":Ljava/lang/String;
    :cond_b
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v22

    const-string v23, "CscFeature_RIL_DmLoggingService"

    invoke-virtual/range {v22 .. v23}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_d

    const-string v22, "--eba"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_d

    .line 476
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v14

    .line 477
    .restart local v14    # "key":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v21

    .line 478
    .restart local v21    # "value":Ljava/lang/String;
    const-string v22, ","

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 479
    .local v18, "strings":[Ljava/lang/String;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    new-array v15, v0, [B

    .line 480
    .local v15, "list":[B
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v11, v0, :cond_c

    .line 481
    aget-object v22, v18, v11

    invoke-static/range {v22 .. v22}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Byte;->byteValue()B

    move-result v22

    aput-byte v22, v15, v11

    .line 480
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 483
    :cond_c
    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    goto/16 :goto_0

    .line 484
    .end local v11    # "i":I
    .end local v14    # "key":Ljava/lang/String;
    .end local v15    # "list":[B
    .end local v18    # "strings":[Ljava/lang/String;
    .end local v21    # "value":Ljava/lang/String;
    :cond_d
    const-string v22, "--eia"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_f

    .line 485
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v14

    .line 486
    .restart local v14    # "key":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v21

    .line 487
    .restart local v21    # "value":Ljava/lang/String;
    const-string v22, ","

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 488
    .restart local v18    # "strings":[Ljava/lang/String;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    new-array v15, v0, [I

    .line 489
    .local v15, "list":[I
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_2
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v11, v0, :cond_e

    .line 490
    aget-object v22, v18, v11

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    aput v22, v15, v11

    .line 489
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 492
    :cond_e
    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 493
    .end local v11    # "i":I
    .end local v14    # "key":Ljava/lang/String;
    .end local v15    # "list":[I
    .end local v18    # "strings":[Ljava/lang/String;
    .end local v21    # "value":Ljava/lang/String;
    :cond_f
    const-string v22, "--el"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_10

    .line 494
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v14

    .line 495
    .restart local v14    # "key":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v21

    .line 496
    .restart local v21    # "value":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v14, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 497
    .end local v14    # "key":Ljava/lang/String;
    .end local v21    # "value":Ljava/lang/String;
    :cond_10
    const-string v22, "--ela"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_12

    .line 498
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v14

    .line 499
    .restart local v14    # "key":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v21

    .line 500
    .restart local v21    # "value":Ljava/lang/String;
    const-string v22, ","

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 501
    .restart local v18    # "strings":[Ljava/lang/String;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    new-array v15, v0, [J

    .line 502
    .local v15, "list":[J
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_3
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v11, v0, :cond_11

    .line 503
    aget-object v22, v18, v11

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    aput-wide v22, v15, v11

    .line 502
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 505
    :cond_11
    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 506
    const/4 v9, 0x1

    .line 507
    goto/16 :goto_0

    .end local v11    # "i":I
    .end local v14    # "key":Ljava/lang/String;
    .end local v15    # "list":[J
    .end local v18    # "strings":[Ljava/lang/String;
    .end local v21    # "value":Ljava/lang/String;
    :cond_12
    const-string v22, "--ef"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_13

    .line 508
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v14

    .line 509
    .restart local v14    # "key":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v21

    .line 510
    .restart local v21    # "value":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v14, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 511
    const/4 v9, 0x1

    .line 512
    goto/16 :goto_0

    .end local v14    # "key":Ljava/lang/String;
    .end local v21    # "value":Ljava/lang/String;
    :cond_13
    const-string v22, "--efa"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_15

    .line 513
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v14

    .line 514
    .restart local v14    # "key":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v21

    .line 515
    .restart local v21    # "value":Ljava/lang/String;
    const-string v22, ","

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 516
    .restart local v18    # "strings":[Ljava/lang/String;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    new-array v15, v0, [F

    .line 517
    .local v15, "list":[F
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_4
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v11, v0, :cond_14

    .line 518
    aget-object v22, v18, v11

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v22

    aput v22, v15, v11

    .line 517
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 520
    :cond_14
    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[F)Landroid/content/Intent;

    .line 521
    const/4 v9, 0x1

    .line 522
    goto/16 :goto_0

    .end local v11    # "i":I
    .end local v14    # "key":Ljava/lang/String;
    .end local v15    # "list":[F
    .end local v18    # "strings":[Ljava/lang/String;
    .end local v21    # "value":Ljava/lang/String;
    :cond_15
    const-string v22, "--esa"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_16

    .line 523
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v14

    .line 524
    .restart local v14    # "key":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v21

    .line 528
    .restart local v21    # "value":Ljava/lang/String;
    const-string v22, "(?<!\\\\),"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 529
    .restart local v18    # "strings":[Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v13, v14, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 530
    const/4 v9, 0x1

    .line 531
    goto/16 :goto_0

    .end local v14    # "key":Ljava/lang/String;
    .end local v18    # "strings":[Ljava/lang/String;
    .end local v21    # "value":Ljava/lang/String;
    :cond_16
    const-string v22, "--ez"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_17

    .line 532
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v14

    .line 533
    .restart local v14    # "key":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v21

    .line 534
    .restart local v21    # "value":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v14, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 535
    .end local v14    # "key":Ljava/lang/String;
    .end local v21    # "value":Ljava/lang/String;
    :cond_17
    const-string v22, "-n"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_19

    .line 536
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v17

    .line 537
    .local v17, "str":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    .line 538
    .restart local v6    # "cn":Landroid/content/ComponentName;
    if-nez v6, :cond_18

    new-instance v22, Ljava/lang/IllegalArgumentException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Bad component name: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 539
    :cond_18
    invoke-virtual {v13, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 540
    if-ne v13, v3, :cond_0

    .line 541
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 543
    .end local v6    # "cn":Landroid/content/ComponentName;
    .end local v17    # "str":Ljava/lang/String;
    :cond_19
    const-string v22, "-f"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1a

    .line 544
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v17

    .line 545
    .restart local v17    # "str":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 546
    .end local v17    # "str":Ljava/lang/String;
    :cond_1a
    const-string v22, "--grant-read-uri-permission"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1b

    .line 547
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 548
    :cond_1b
    const-string v22, "--grant-write-uri-permission"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1c

    .line 549
    const/16 v22, 0x2

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 550
    :cond_1c
    const-string v22, "--grant-persistable-uri-permission"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1d

    .line 551
    const/16 v22, 0x40

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 552
    :cond_1d
    const-string v22, "--grant-prefix-uri-permission"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1e

    .line 553
    const/16 v22, 0x80

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 554
    :cond_1e
    const-string v22, "--exclude-stopped-packages"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1f

    .line 555
    const/16 v22, 0x10

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 556
    :cond_1f
    const-string v22, "--include-stopped-packages"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_20

    .line 557
    const/16 v22, 0x20

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 558
    :cond_20
    const-string v22, "--debug-log-resolution"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_21

    .line 559
    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 560
    :cond_21
    const-string v22, "--activity-brought-to-front"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_22

    .line 561
    const/high16 v22, 0x400000

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 562
    :cond_22
    const-string v22, "--activity-clear-top"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_23

    .line 563
    const/high16 v22, 0x4000000

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 564
    :cond_23
    const-string v22, "--activity-clear-when-task-reset"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_24

    .line 565
    const/high16 v22, 0x80000

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 566
    :cond_24
    const-string v22, "--activity-exclude-from-recents"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_25

    .line 567
    const/high16 v22, 0x800000

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 568
    :cond_25
    const-string v22, "--activity-launched-from-history"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_26

    .line 569
    const/high16 v22, 0x100000

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 570
    :cond_26
    const-string v22, "--activity-multiple-task"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_27

    .line 571
    const/high16 v22, 0x8000000

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 572
    :cond_27
    const-string v22, "--activity-no-animation"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_28

    .line 573
    const/high16 v22, 0x10000

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 574
    :cond_28
    const-string v22, "--activity-no-history"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_29

    .line 575
    const/high16 v22, 0x40000000    # 2.0f

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 576
    :cond_29
    const-string v22, "--activity-no-user-action"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2a

    .line 577
    const/high16 v22, 0x40000

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 578
    :cond_2a
    const-string v22, "--activity-previous-is-top"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2b

    .line 579
    const/high16 v22, 0x1000000

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 580
    :cond_2b
    const-string v22, "--activity-reorder-to-front"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2c

    .line 581
    const/high16 v22, 0x20000

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 582
    :cond_2c
    const-string v22, "--activity-reset-task-if-needed"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2d

    .line 583
    const/high16 v22, 0x200000

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 584
    :cond_2d
    const-string v22, "--activity-single-top"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2e

    .line 585
    const/high16 v22, 0x20000000

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 586
    :cond_2e
    const-string v22, "--activity-clear-task"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2f

    .line 587
    const v22, 0x8000

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 588
    :cond_2f
    const-string v22, "--activity-task-on-home"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_30

    .line 589
    const/16 v22, 0x4000

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 590
    :cond_30
    const-string v22, "--receiver-registered-only"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_31

    .line 591
    const/high16 v22, 0x40000000    # 2.0f

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 592
    :cond_31
    const-string v22, "--receiver-replace-pending"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_32

    .line 593
    const/high16 v22, 0x20000000

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 594
    :cond_32
    const-string v22, "--selector"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_33

    .line 595
    move-object/from16 v0, v19

    invoke-virtual {v13, v7, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 596
    new-instance v13, Landroid/content/Intent;

    .end local v13    # "intent":Landroid/content/Intent;
    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .restart local v13    # "intent":Landroid/content/Intent;
    goto/16 :goto_0

    .line 597
    :cond_33
    const-string v22, "-D"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_34

    .line 598
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/Am;->mStartFlags:I

    move/from16 v22, v0

    or-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/Am;->mStartFlags:I

    goto/16 :goto_0

    .line 599
    :cond_34
    const-string v22, "-W"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_35

    .line 600
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/Am;->mWaitOption:Z

    goto/16 :goto_0

    .line 601
    :cond_35
    const-string v22, "-P"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_36

    .line 602
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/Am;->mProfileFile:Ljava/lang/String;

    .line 603
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/Am;->mAutoStop:Z

    goto/16 :goto_0

    .line 604
    :cond_36
    const-string v22, "--start-profiler"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_37

    .line 605
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/Am;->mProfileFile:Ljava/lang/String;

    .line 606
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/Am;->mAutoStop:Z

    goto/16 :goto_0

    .line 607
    :cond_37
    const-string v22, "--sampling"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_38

    .line 608
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/Am;->mSamplingInterval:I

    goto/16 :goto_0

    .line 609
    :cond_38
    const-string v22, "-R"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_39

    .line 610
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/Am;->mRepeat:I

    goto/16 :goto_0

    .line 611
    :cond_39
    const-string v22, "-S"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3a

    .line 612
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/Am;->mStopOption:Z

    goto/16 :goto_0

    .line 613
    :cond_3a
    const-string v22, "--opengl-trace"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3b

    .line 614
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/Am;->mStartFlags:I

    move/from16 v22, v0

    or-int/lit8 v22, v22, 0x4

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/Am;->mStartFlags:I

    goto/16 :goto_0

    .line 615
    :cond_3b
    const-string v22, "--user"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3c

    .line 616
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Am;->parseUserArg(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/Am;->mUserId:I

    goto/16 :goto_0

    .line 617
    :cond_3c
    const-string v22, "--receiver-permission"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3d

    .line 618
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/Am;->mReceiverPermission:Ljava/lang/String;

    goto/16 :goto_0

    .line 619
    :cond_3d
    const-string v22, "-p"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3e

    .line 623
    :cond_3e
    sget-object v22, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Error: Unknown option: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 624
    const/16 v22, 0x0

    .line 687
    :goto_5
    return-object v22

    .line 627
    :cond_3f
    move-object/from16 v0, v19

    invoke-virtual {v13, v7, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 629
    if-eq v13, v3, :cond_42

    const/4 v10, 0x1

    .line 630
    .local v10, "hasSelector":Z
    :goto_6
    if-eqz v10, :cond_40

    .line 632
    invoke-virtual {v3, v13}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 633
    move-object v13, v3

    .line 636
    :cond_40
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/Am;->nextArg()Ljava/lang/String;

    move-result-object v2

    .line 637
    .local v2, "arg":Ljava/lang/String;
    const/4 v3, 0x0

    .line 638
    if-nez v2, :cond_43

    .line 639
    if-eqz v10, :cond_41

    .line 645
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "baseIntent":Landroid/content/Intent;
    const-string v22, "android.intent.action.MAIN"

    move-object/from16 v0, v22

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 646
    .restart local v3    # "baseIntent":Landroid/content/Intent;
    const-string v22, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 664
    :cond_41
    :goto_7
    if-eqz v3, :cond_48

    .line 665
    invoke-virtual {v13}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    .line 666
    .local v8, "extras":Landroid/os/Bundle;
    const/16 v22, 0x0

    check-cast v22, Landroid/os/Bundle;

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 667
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v20

    .line 668
    .local v20, "uriExtras":Landroid/os/Bundle;
    const/16 v22, 0x0

    check-cast v22, Landroid/os/Bundle;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 669
    invoke-virtual {v13}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_46

    invoke-virtual {v3}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v22

    if-eqz v22, :cond_46

    .line 670
    new-instance v5, Ljava/util/HashSet;

    invoke-virtual {v3}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v5, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 671
    .local v5, "cats":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_46

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 672
    .local v4, "c":Ljava/lang/String;
    invoke-virtual {v3, v4}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    goto :goto_8

    .line 629
    .end local v2    # "arg":Ljava/lang/String;
    .end local v4    # "c":Ljava/lang/String;
    .end local v5    # "cats":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v8    # "extras":Landroid/os/Bundle;
    .end local v10    # "hasSelector":Z
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v20    # "uriExtras":Landroid/os/Bundle;
    :cond_42
    const/4 v10, 0x0

    goto :goto_6

    .line 648
    .restart local v2    # "arg":Ljava/lang/String;
    .restart local v10    # "hasSelector":Z
    :cond_43
    const/16 v22, 0x3a

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v22

    if-ltz v22, :cond_44

    .line 651
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-static {v2, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    goto :goto_7

    .line 652
    :cond_44
    const/16 v22, 0x2f

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v22

    if-ltz v22, :cond_45

    .line 655
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "baseIntent":Landroid/content/Intent;
    const-string v22, "android.intent.action.MAIN"

    move-object/from16 v0, v22

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 656
    .restart local v3    # "baseIntent":Landroid/content/Intent;
    const-string v22, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 657
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_7

    .line 660
    :cond_45
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "baseIntent":Landroid/content/Intent;
    const-string v22, "android.intent.action.MAIN"

    move-object/from16 v0, v22

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 661
    .restart local v3    # "baseIntent":Landroid/content/Intent;
    const-string v22, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 662
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_7

    .line 675
    .restart local v8    # "extras":Landroid/os/Bundle;
    .restart local v20    # "uriExtras":Landroid/os/Bundle;
    :cond_46
    const/16 v22, 0x48

    move/from16 v0, v22

    invoke-virtual {v13, v3, v0}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    .line 676
    if-nez v8, :cond_49

    .line 677
    move-object/from16 v8, v20

    .line 682
    :cond_47
    :goto_9
    invoke-virtual {v13, v8}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 683
    const/4 v9, 0x1

    .line 686
    .end local v8    # "extras":Landroid/os/Bundle;
    .end local v20    # "uriExtras":Landroid/os/Bundle;
    :cond_48
    if-nez v9, :cond_4a

    new-instance v22, Ljava/lang/IllegalArgumentException;

    const-string v23, "No intent supplied"

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 678
    .restart local v8    # "extras":Landroid/os/Bundle;
    .restart local v20    # "uriExtras":Landroid/os/Bundle;
    :cond_49
    if-eqz v20, :cond_47

    .line 679
    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 680
    move-object/from16 v8, v20

    goto :goto_9

    .end local v8    # "extras":Landroid/os/Bundle;
    .end local v20    # "uriExtras":Landroid/os/Bundle;
    :cond_4a
    move-object/from16 v22, v13

    .line 687
    goto/16 :goto_5
.end method

.method private nextArg()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1658
    iget-object v2, p0, Lcom/android/internal/telephony/Am;->mCurArgData:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1659
    iget-object v0, p0, Lcom/android/internal/telephony/Am;->mCurArgData:Ljava/lang/String;

    .line 1660
    .local v0, "arg":Ljava/lang/String;
    iput-object v1, p0, Lcom/android/internal/telephony/Am;->mCurArgData:Ljava/lang/String;

    .line 1665
    .end local v0    # "arg":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1662
    :cond_0
    iget v2, p0, Lcom/android/internal/telephony/Am;->mNextArg:I

    iget-object v3, p0, Lcom/android/internal/telephony/Am;->mArgs:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 1663
    iget-object v1, p0, Lcom/android/internal/telephony/Am;->mArgs:[Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/telephony/Am;->mNextArg:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/telephony/Am;->mNextArg:I

    aget-object v0, v1, v2

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 1665
    goto :goto_0
.end method

.method private nextArgRequired()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1670
    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 1671
    .local v0, "arg":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1672
    iget-object v2, p0, Lcom/android/internal/telephony/Am;->mArgs:[Ljava/lang/String;

    iget v3, p0, Lcom/android/internal/telephony/Am;->mNextArg:I

    add-int/lit8 v3, v3, -0x1

    aget-object v1, v2, v3

    .line 1673
    .local v1, "prev":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Argument expected after \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1675
    .end local v1    # "prev":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private nextOption()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v2, 0x0

    .line 1629
    iget-object v3, p0, Lcom/android/internal/telephony/Am;->mCurArgData:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1630
    iget-object v2, p0, Lcom/android/internal/telephony/Am;->mArgs:[Ljava/lang/String;

    iget v3, p0, Lcom/android/internal/telephony/Am;->mNextArg:I

    add-int/lit8 v3, v3, -0x1

    aget-object v1, v2, v3

    .line 1631
    .local v1, "prev":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No argument expected after \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1633
    .end local v1    # "prev":Ljava/lang/String;
    :cond_0
    iget v3, p0, Lcom/android/internal/telephony/Am;->mNextArg:I

    iget-object v4, p0, Lcom/android/internal/telephony/Am;->mArgs:[Ljava/lang/String;

    array-length v4, v4

    if-lt v3, v4, :cond_1

    move-object v0, v2

    .line 1654
    :goto_0
    return-object v0

    .line 1636
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/Am;->mArgs:[Ljava/lang/String;

    iget v4, p0, Lcom/android/internal/telephony/Am;->mNextArg:I

    aget-object v0, v3, v4

    .line 1637
    .local v0, "arg":Ljava/lang/String;
    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    move-object v0, v2

    .line 1638
    goto :goto_0

    .line 1640
    :cond_2
    iget v3, p0, Lcom/android/internal/telephony/Am;->mNextArg:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/telephony/Am;->mNextArg:I

    .line 1641
    const-string v3, "--"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v0, v2

    .line 1642
    goto :goto_0

    .line 1644
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v6, :cond_5

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_5

    .line 1645
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_4

    .line 1646
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/Am;->mCurArgData:Ljava/lang/String;

    .line 1647
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1649
    :cond_4
    iput-object v2, p0, Lcom/android/internal/telephony/Am;->mCurArgData:Ljava/lang/String;

    goto :goto_0

    .line 1653
    :cond_5
    iput-object v2, p0, Lcom/android/internal/telephony/Am;->mCurArgData:Ljava/lang/String;

    goto :goto_0
.end method

.method static removeWallOption()V
    .locals 3

    .prologue
    .line 1040
    const-string v1, "dalvik.vm.extra-opts"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1041
    .local v0, "props":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "-Xprofile:wallclock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1042
    const-string v1, "-Xprofile:wallclock"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1043
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1044
    const-string v1, "dalvik.vm.extra-opts"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    :cond_0
    return-void
.end method

.method private run([Ljava/lang/String;)V
    .locals 4
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 294
    array-length v1, p1

    if-ge v1, v2, :cond_0

    .line 295
    invoke-static {}, Lcom/android/internal/telephony/Am;->showUsage()V

    .line 358
    :goto_0
    return-void

    .line 299
    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/Am;->mAm:Landroid/app/IActivityManager;

    .line 300
    iget-object v1, p0, Lcom/android/internal/telephony/Am;->mAm:Landroid/app/IActivityManager;

    if-nez v1, :cond_1

    .line 301
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Error type 2"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 302
    new-instance v1, Landroid/util/AndroidException;

    const-string v2, "Can\'t connect to activity manager; is the system running?"

    invoke-direct {v1, v2}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 305
    :cond_1
    iput-object p1, p0, Lcom/android/internal/telephony/Am;->mArgs:[Ljava/lang/String;

    .line 306
    aget-object v0, p1, v3

    .line 307
    .local v0, "op":Ljava/lang/String;
    iput v2, p0, Lcom/android/internal/telephony/Am;->mNextArg:I

    .line 309
    const-string v1, "start"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 310
    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->runStart()V

    goto :goto_0

    .line 311
    :cond_2
    const-string v1, "startservice"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 312
    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->runStartService()V

    goto :goto_0

    .line 313
    :cond_3
    const-string v1, "stopservice"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 314
    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->runStopService()V

    goto :goto_0

    .line 315
    :cond_4
    const-string v1, "force-stop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 316
    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->runForceStop()V

    goto :goto_0

    .line 317
    :cond_5
    const-string v1, "kill"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 318
    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->runKill()V

    goto :goto_0

    .line 319
    :cond_6
    const-string v1, "kill-all"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 320
    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->runKillAll()V

    goto :goto_0

    .line 321
    :cond_7
    const-string v1, "instrument"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 322
    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->runInstrument()V

    goto :goto_0

    .line 323
    :cond_8
    const-string v1, "broadcast"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 324
    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->sendBroadcast()V

    goto :goto_0

    .line 325
    :cond_9
    const-string v1, "broadcastno"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 326
    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->sendBroadcastNoneOrdered()V

    goto/16 :goto_0

    .line 327
    :cond_a
    const-string v1, "stickybroadcastno"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 328
    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->sendStickyBroadcastNoneOrdered()V

    goto/16 :goto_0

    .line 329
    :cond_b
    const-string v1, "dumpheap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 330
    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->runDumpHeap()V

    goto/16 :goto_0

    .line 331
    :cond_c
    const-string v1, "set-debug-app"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 332
    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->runSetDebugApp()V

    goto/16 :goto_0

    .line 333
    :cond_d
    const-string v1, "clear-debug-app"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 334
    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->runClearDebugApp()V

    goto/16 :goto_0

    .line 335
    :cond_e
    const-string v1, "bug-report"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 336
    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->runBugReport()V

    goto/16 :goto_0

    .line 337
    :cond_f
    const-string v1, "monitor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 338
    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->runMonitor()V

    goto/16 :goto_0

    .line 339
    :cond_10
    const-string v1, "hang"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 340
    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->runHang()V

    goto/16 :goto_0

    .line 341
    :cond_11
    const-string v1, "restart"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 342
    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->runRestart()V

    goto/16 :goto_0

    .line 343
    :cond_12
    const-string v1, "idle-maintenance"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 344
    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->runIdleMaintenance()V

    goto/16 :goto_0

    .line 345
    :cond_13
    const-string v1, "screen-compat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 346
    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->runScreenCompat()V

    goto/16 :goto_0

    .line 347
    :cond_14
    const-string v1, "to-uri"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 348
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/Am;->runToUri(Z)V

    goto/16 :goto_0

    .line 349
    :cond_15
    const-string v1, "to-intent-uri"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 350
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/Am;->runToUri(Z)V

    goto/16 :goto_0

    .line 351
    :cond_16
    const-string v1, "switch-user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 352
    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->runSwitchUser()V

    goto/16 :goto_0

    .line 353
    :cond_17
    const-string v1, "stop-user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 354
    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->runStopUser()V

    goto/16 :goto_0

    .line 356
    :cond_18
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private runBugReport()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1128
    iget-object v0, p0, Lcom/android/internal/telephony/Am;->mAm:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->requestBugReport()V

    .line 1129
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Your lovely bug report is being created; please be patient."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1130
    return-void
.end method

.method private runClearDebugApp()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1124
    iget-object v0, p0, Lcom/android/internal/telephony/Am;->mAm:Landroid/app/IActivityManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IActivityManager;->setDebugApp(Ljava/lang/String;ZZ)V

    .line 1125
    return-void
.end method

.method private runDumpHeap()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1050
    const/4 v3, 0x1

    .line 1051
    .local v3, "managed":Z
    const/4 v2, -0x2

    .line 1054
    .local v2, "userId":I
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->nextOption()Ljava/lang/String;

    move-result-object v9

    .local v9, "opt":Ljava/lang/String;
    if-eqz v9, :cond_4

    .line 1055
    const-string v0, "--user"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1056
    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/Am;->parseUserArg(Ljava/lang/String;)I

    move-result v2

    .line 1057
    const/4 v0, -0x1

    if-ne v2, v0, :cond_0

    .line 1058
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v11, "Error: Can\'t dump heap with user \'all\'"

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1101
    :cond_1
    :goto_1
    return-void

    .line 1061
    :cond_2
    const-string v0, "-n"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1062
    const/4 v3, 0x0

    goto :goto_0

    .line 1064
    :cond_3
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error: Unknown option: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 1068
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 1069
    .local v1, "process":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 1070
    .local v4, "heapFile":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1071
    .local v5, "fd":Landroid/os/ParcelFileDescriptor;
    const/4 v10, 0x0

    .line 1074
    .local v10, "res":Z
    :try_start_0
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1075
    .local v8, "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 1076
    const/high16 v0, 0x3c000000    # 0.0078125f

    invoke-static {v8, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 1086
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/Am;->mAm:Landroid/app/IActivityManager;

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->dumpHeap(Ljava/lang/String;IZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v10

    .line 1091
    if-eqz v5, :cond_5

    .line 1092
    :try_start_2
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1098
    :cond_5
    :goto_2
    if-nez v10, :cond_1

    .line 1099
    new-instance v0, Landroid/util/AndroidException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "HEAP DUMP FAILED on process "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1080
    .end local v8    # "file":Ljava/io/File;
    :catch_0
    move-exception v6

    .line 1081
    .local v6, "e":Ljava/io/FileNotFoundException;
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error: Unable to open file: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 1087
    .end local v6    # "e":Ljava/io/FileNotFoundException;
    .restart local v8    # "file":Ljava/io/File;
    :catch_1
    move-exception v7

    .line 1088
    .local v7, "ex":Ljava/lang/Exception;
    :try_start_3
    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1090
    .end local v7    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 1091
    if-eqz v5, :cond_6

    .line 1092
    :try_start_4
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1095
    :cond_6
    :goto_3
    throw v0

    .line 1094
    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v11

    goto :goto_3
.end method

.method private runExt(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 373
    array-length v3, p2

    if-ge v3, v4, :cond_1

    .line 374
    invoke-static {}, Lcom/android/internal/telephony/Am;->showUsage()V

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 378
    :cond_1
    iput-object p2, p0, Lcom/android/internal/telephony/Am;->mArgs:[Ljava/lang/String;

    .line 379
    const/4 v3, 0x0

    aget-object v2, p2, v3

    .line 380
    .local v2, "op":Ljava/lang/String;
    iput v4, p0, Lcom/android/internal/telephony/Am;->mNextArg:I

    .line 382
    const-string v3, "broadcast"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 383
    const/4 v3, -0x1

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/Am;->makeIntent(I)Landroid/content/Intent;

    move-result-object v1

    .line 384
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 386
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Broadcasting: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 387
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 390
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/Am;->run([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 391
    :catch_0
    move-exception v0

    .line 392
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/android/internal/telephony/Am;->showUsage()V

    .line 393
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 394
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 395
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private runForceStop()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 886
    const/4 v1, -0x1

    .line 889
    .local v1, "userId":I
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->nextOption()Ljava/lang/String;

    move-result-object v0

    .local v0, "opt":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 890
    const-string v2, "--user"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 891
    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/Am;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 893
    :cond_0
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Unknown option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 898
    :goto_1
    return-void

    .line 897
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/Am;->mAm:Landroid/app/IActivityManager;

    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method private runHang()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1459
    const/4 v0, 0x0

    .line 1460
    .local v0, "allowRestart":Z
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->nextOption()Ljava/lang/String;

    move-result-object v1

    .local v1, "opt":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1461
    const-string v2, "--allow-restart"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1462
    const/4 v0, 0x1

    goto :goto_0

    .line 1464
    :cond_0
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Unknown option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1471
    :goto_1
    return-void

    .line 1469
    :cond_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Hanging the system..."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1470
    iget-object v2, p0, Lcom/android/internal/telephony/Am;->mAm:Landroid/app/IActivityManager;

    new-instance v3, Landroid/os/Binder;

    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    invoke-interface {v2, v3, v0}, Landroid/app/IActivityManager;->hang(Landroid/os/IBinder;Z)V

    goto :goto_1
.end method

.method private runIdleMaintenance()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v9, -0x1

    const/4 v1, 0x0

    .line 1486
    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->nextOption()Ljava/lang/String;

    move-result-object v14

    .local v14, "opt":Ljava/lang/String;
    if-eqz v14, :cond_0

    .line 1487
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Unknown option: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1496
    :goto_0
    return-void

    .line 1491
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Performing idle maintenance..."

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1492
    new-instance v2, Landroid/content/Intent;

    const-string v0, "com.android.server.task.controllers.IdleController.ACTION_TRIGGER_IDLE"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1494
    .local v2, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/internal/telephony/Am;->mAm:Landroid/app/IActivityManager;

    const/4 v11, 0x1

    move-object v3, v1

    move-object v4, v1

    move-object v6, v1

    move-object v7, v1

    move-object v8, v1

    move-object v10, v1

    move v12, v5

    move v13, v9

    invoke-interface/range {v0 .. v13}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I

    goto :goto_0
.end method

.method private runInstrument()V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 971
    const/4 v3, 0x0

    .line 972
    .local v3, "profileFile":Ljava/lang/String;
    const/16 v17, 0x0

    .line 973
    .local v17, "wait":Z
    const/16 v16, 0x0

    .line 974
    .local v16, "rawMode":Z
    const/4 v13, 0x0

    .line 975
    .local v13, "no_window_animation":Z
    const/4 v8, -0x2

    .line 976
    .local v8, "userId":I
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 977
    .local v5, "args":Landroid/os/Bundle;
    const/4 v10, 0x0

    .local v10, "argKey":Ljava/lang/String;
    const/4 v11, 0x0

    .line 978
    .local v11, "argValue":Ljava/lang/String;
    const-string v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v18

    .line 981
    .local v18, "wm":Landroid/view/IWindowManager;
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/Am;->nextOption()Ljava/lang/String;

    move-result-object v15

    .local v15, "opt":Ljava/lang/String;
    if-eqz v15, :cond_8

    .line 982
    const-string v1, "-p"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 983
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 984
    :cond_0
    const-string v1, "-w"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 985
    const/16 v17, 0x1

    goto :goto_0

    .line 986
    :cond_1
    const-string v1, "-r"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 987
    const/16 v16, 0x1

    goto :goto_0

    .line 988
    :cond_2
    const-string v1, "-e"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 989
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v10

    .line 990
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v11

    .line 991
    invoke-virtual {v5, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 992
    :cond_3
    const-string v1, "--no_window_animation"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "--no-window-animation"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 994
    :cond_4
    const/4 v13, 0x1

    goto :goto_0

    .line 995
    :cond_5
    const-string v1, "--user"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 996
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Am;->parseUserArg(Ljava/lang/String;)I

    move-result v8

    goto :goto_0

    .line 998
    :cond_6
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error: Unknown option: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1037
    :cond_7
    :goto_1
    return-void

    .line 1003
    :cond_8
    const/4 v1, -0x1

    if-ne v8, v1, :cond_9

    .line 1004
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Error: Can\'t start instrumentation with user \'all\'"

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 1008
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v12

    .line 1009
    .local v12, "cnArg":Ljava/lang/String;
    invoke-static {v12}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 1010
    .local v2, "cn":Landroid/content/ComponentName;
    if-nez v2, :cond_a

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad component name: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1012
    :cond_a
    const/4 v6, 0x0

    .line 1013
    .local v6, "watcher":Lcom/android/internal/telephony/Am$InstrumentationWatcher;
    if-eqz v17, :cond_b

    .line 1014
    new-instance v6, Lcom/android/internal/telephony/Am$InstrumentationWatcher;

    .end local v6    # "watcher":Lcom/android/internal/telephony/Am$InstrumentationWatcher;
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v1}, Lcom/android/internal/telephony/Am$InstrumentationWatcher;-><init>(Lcom/android/internal/telephony/Am;Lcom/android/internal/telephony/Am$1;)V

    .line 1015
    .restart local v6    # "watcher":Lcom/android/internal/telephony/Am$InstrumentationWatcher;
    move/from16 v0, v16

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/Am$InstrumentationWatcher;->setRawOutput(Z)V

    .line 1017
    :cond_b
    const/4 v14, 0x0

    .line 1018
    .local v14, "oldAnims":[F
    if-eqz v13, :cond_c

    .line 1019
    invoke-interface/range {v18 .. v18}, Landroid/view/IWindowManager;->getAnimationScales()[F

    move-result-object v14

    .line 1020
    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v1, v4}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    .line 1021
    const/4 v1, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v1, v4}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    .line 1024
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/Am;->mAm:Landroid/app/IActivityManager;

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v1 .. v9}, Landroid/app/IActivityManager;->startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 1025
    new-instance v1, Landroid/util/AndroidException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "INSTRUMENTATION_FAILED: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1028
    :cond_d
    if-eqz v6, :cond_e

    .line 1029
    invoke-virtual {v6}, Lcom/android/internal/telephony/Am$InstrumentationWatcher;->waitForFinish()Z

    move-result v1

    if-nez v1, :cond_e

    .line 1030
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "INSTRUMENTATION_ABORTED: System has crashed."

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1034
    :cond_e
    if-eqz v14, :cond_7

    .line 1035
    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Landroid/view/IWindowManager;->setAnimationScales([F)V

    goto/16 :goto_1
.end method

.method private runKill()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 901
    const/4 v1, -0x1

    .line 904
    .local v1, "userId":I
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->nextOption()Ljava/lang/String;

    move-result-object v0

    .local v0, "opt":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 905
    const-string v2, "--user"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 906
    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/Am;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 908
    :cond_0
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Unknown option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 913
    :goto_1
    return-void

    .line 912
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/Am;->mAm:Landroid/app/IActivityManager;

    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Landroid/app/IActivityManager;->killBackgroundProcesses(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method private runKillAll()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 916
    iget-object v0, p0, Lcom/android/internal/telephony/Am;->mAm:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->killAllBackgroundProcesses()V

    .line 917
    return-void
.end method

.method private runMonitor()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1443
    const/4 v1, 0x0

    .line 1444
    .local v1, "gdbPort":Ljava/lang/String;
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->nextOption()Ljava/lang/String;

    move-result-object v2

    .local v2, "opt":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 1445
    const-string v3, "--gdb"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1446
    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1448
    :cond_0
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: Unknown option: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1455
    :goto_1
    return-void

    .line 1453
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/Am$MyActivityController;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/Am$MyActivityController;-><init>(Lcom/android/internal/telephony/Am;Ljava/lang/String;)V

    .line 1454
    .local v0, "controller":Lcom/android/internal/telephony/Am$MyActivityController;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Am$MyActivityController;->run()V

    goto :goto_1
.end method

.method private runRestart()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1475
    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->nextOption()Ljava/lang/String;

    move-result-object v0

    .local v0, "opt":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1476
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Unknown option: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1482
    :goto_0
    return-void

    .line 1480
    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Restart the system..."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1481
    iget-object v1, p0, Lcom/android/internal/telephony/Am;->mAm:Landroid/app/IActivityManager;

    invoke-interface {v1}, Landroid/app/IActivityManager;->restart()V

    goto :goto_0
.end method

.method private runScreenCompat()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1499
    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 1501
    .local v1, "mode":Ljava/lang/String;
    const-string v3, "on"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1502
    const/4 v0, 0x1

    .line 1510
    .local v0, "enabled":Z
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 1513
    .local v2, "packageName":Ljava/lang/String;
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/Am;->mAm:Landroid/app/IActivityManager;

    if-eqz v0, :cond_3

    const/4 v3, 0x1

    :goto_1
    invoke-interface {v4, v2, v3}, Landroid/app/IActivityManager;->setPackageScreenCompatMode(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1518
    :goto_2
    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->nextArg()Ljava/lang/String;

    move-result-object v2

    .line 1519
    if-nez v2, :cond_0

    .line 1520
    .end local v0    # "enabled":Z
    .end local v2    # "packageName":Ljava/lang/String;
    :goto_3
    return-void

    .line 1503
    :cond_1
    const-string v3, "off"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1504
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_0

    .line 1506
    .end local v0    # "enabled":Z
    :cond_2
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: enabled mode must be \'on\' or \'off\' at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 1513
    .restart local v0    # "enabled":Z
    .restart local v2    # "packageName":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 1516
    :catch_0
    move-exception v3

    goto :goto_2
.end method

.method private runSetDebugApp()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1104
    const/4 v3, 0x0

    .line 1105
    .local v3, "wait":Z
    const/4 v1, 0x0

    .line 1108
    .local v1, "persistent":Z
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->nextOption()Ljava/lang/String;

    move-result-object v0

    .local v0, "opt":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 1109
    const-string v4, "-w"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1110
    const/4 v3, 0x1

    goto :goto_0

    .line 1111
    :cond_0
    const-string v4, "--persistent"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1112
    const/4 v1, 0x1

    goto :goto_0

    .line 1114
    :cond_1
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: Unknown option: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1121
    :goto_1
    return-void

    .line 1119
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 1120
    .local v2, "pkg":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/Am;->mAm:Landroid/app/IActivityManager;

    invoke-interface {v4, v2, v3, v1}, Landroid/app/IActivityManager;->setDebugApp(Ljava/lang/String;ZZ)V

    goto :goto_1
.end method

.method private runStart()V
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 726
    const/4 v2, -0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/Am;->makeIntent(I)Landroid/content/Intent;

    move-result-object v5

    .line 728
    .local v5, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/Am;->mUserId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 729
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Error: Can\'t start service with user \'all\'"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 883
    :goto_0
    return-void

    .line 733
    :cond_0
    invoke-virtual {v5}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    .line 734
    .local v6, "mimeType":Ljava/lang/String;
    if-nez v6, :cond_1

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, "content"

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 736
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/Am;->mAm:Landroid/app/IActivityManager;

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/Am;->mUserId:I

    invoke-interface {v2, v3, v4}, Landroid/app/IActivityManager;->getProviderMimeType(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v6

    .line 740
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/Am;->mStopOption:Z

    if-eqz v2, :cond_2

    .line 742
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 743
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v21

    .line 764
    .local v21, "packageName":Ljava/lang/String;
    :goto_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stopping: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 765
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/Am;->mAm:Landroid/app/IActivityManager;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/Am;->mUserId:I

    move-object/from16 v0, v21

    invoke-interface {v2, v0, v3}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    .line 766
    const-wide/16 v2, 0xfa

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 769
    .end local v21    # "packageName":Ljava/lang/String;
    :cond_2
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 770
    const/high16 v2, 0x10000000

    invoke-virtual {v5, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 772
    const/16 v18, 0x0

    .line 773
    .local v18, "fd":Landroid/os/ParcelFileDescriptor;
    const/4 v11, 0x0

    .line 775
    .local v11, "profilerInfo":Landroid/app/ProfilerInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/Am;->mProfileFile:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 777
    :try_start_0
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/Am;->mProfileFile:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x3c000000    # 0.0078125f

    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    .line 786
    new-instance v11, Landroid/app/ProfilerInfo;

    .end local v11    # "profilerInfo":Landroid/app/ProfilerInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/Am;->mProfileFile:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/Am;->mSamplingInterval:I

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/Am;->mAutoStop:Z

    move-object/from16 v0, v18

    invoke-direct {v11, v2, v0, v3, v4}, Landroid/app/ProfilerInfo;-><init>(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;IZ)V

    .line 789
    .restart local v11    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_3
    const/16 v24, 0x0

    .line 791
    .local v24, "result":Landroid/app/IActivityManager$WaitResult;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v26

    .line 794
    .local v26, "startTime":J
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/Am;->mWaitOption:Z

    if-eqz v2, :cond_f

    .line 795
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/Am;->mAm:Landroid/app/IActivityManager;

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/telephony/Am;->mStartFlags:I

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/Am;->mUserId:I

    invoke-interface/range {v2 .. v13}, Landroid/app/IActivityManager;->startActivityAndWait(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)Landroid/app/IActivityManager$WaitResult;

    move-result-object v24

    .line 797
    move-object/from16 v0, v24

    iget v0, v0, Landroid/app/IActivityManager$WaitResult;->result:I

    move/from16 v23, v0

    .line 802
    .local v23, "res":I
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 803
    .local v16, "endTime":J
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/Am;->mWaitOption:Z

    if-eqz v2, :cond_10

    sget-object v20, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 804
    .local v20, "out":Ljava/io/PrintStream;
    :goto_3
    const/16 v19, 0x0

    .line 805
    .local v19, "launched":Z
    packed-switch v23, :pswitch_data_0

    .line 856
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Activity not started, unknown error code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 860
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/Am;->mWaitOption:Z

    if-eqz v2, :cond_8

    if-eqz v19, :cond_8

    .line 861
    if-nez v24, :cond_4

    .line 862
    new-instance v24, Landroid/app/IActivityManager$WaitResult;

    .end local v24    # "result":Landroid/app/IActivityManager$WaitResult;
    invoke-direct/range {v24 .. v24}, Landroid/app/IActivityManager$WaitResult;-><init>()V

    .line 863
    .restart local v24    # "result":Landroid/app/IActivityManager$WaitResult;
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    move-object/from16 v0, v24

    iput-object v2, v0, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    .line 865
    :cond_4
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Status: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    iget-boolean v2, v0, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    if-eqz v2, :cond_11

    const-string v2, "timeout"

    :goto_5
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 866
    move-object/from16 v0, v24

    iget-object v2, v0, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    if-eqz v2, :cond_5

    .line 867
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    iget-object v4, v0, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 869
    :cond_5
    move-object/from16 v0, v24

    iget-wide v2, v0, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    const-wide/16 v8, 0x0

    cmp-long v2, v2, v8

    if-ltz v2, :cond_6

    .line 870
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ThisTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    iget-wide v8, v0, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 872
    :cond_6
    move-object/from16 v0, v24

    iget-wide v2, v0, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    const-wide/16 v8, 0x0

    cmp-long v2, v2, v8

    if-ltz v2, :cond_7

    .line 873
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TotalTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    iget-wide v8, v0, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 875
    :cond_7
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WaitTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-long v8, v16, v26

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 876
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Complete"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 878
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/Am;->mRepeat:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/Am;->mRepeat:I

    .line 879
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/Am;->mRepeat:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_9

    .line 880
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/Am;->mAm:Landroid/app/IActivityManager;

    invoke-interface {v2}, Landroid/app/IActivityManager;->unhandledBack()V

    .line 882
    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/Am;->mRepeat:I

    const/4 v3, 0x1

    if-gt v2, v3, :cond_1

    goto/16 :goto_0

    .line 745
    .end local v11    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v16    # "endTime":J
    .end local v18    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v19    # "launched":Z
    .end local v20    # "out":Ljava/io/PrintStream;
    .end local v23    # "res":I
    .end local v24    # "result":Landroid/app/IActivityManager$WaitResult;
    .end local v26    # "startTime":J
    :cond_a
    const-string v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v22

    .line 747
    .local v22, "pm":Landroid/content/pm/IPackageManager;
    if-nez v22, :cond_b

    .line 748
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Error: Package manager not running; aborting"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 751
    :cond_b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/Am;->mUserId:I

    move-object/from16 v0, v22

    invoke-interface {v0, v5, v6, v2, v3}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v14

    .line 753
    .local v14, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v14, :cond_c

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_d

    .line 754
    :cond_c
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Intent does not match any activities: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 757
    :cond_d
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_e

    .line 758
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Intent matches multiple activities; can\'t stop: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 762
    :cond_e
    const/4 v2, 0x0

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    .restart local v21    # "packageName":Ljava/lang/String;
    goto/16 :goto_1

    .line 782
    .end local v14    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v21    # "packageName":Ljava/lang/String;
    .end local v22    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v11    # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local v18    # "fd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v15

    .line 783
    .local v15, "e":Ljava/io/FileNotFoundException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Unable to open file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/Am;->mProfileFile:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 799
    .end local v15    # "e":Ljava/io/FileNotFoundException;
    .restart local v24    # "result":Landroid/app/IActivityManager$WaitResult;
    .restart local v26    # "startTime":J
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/Am;->mAm:Landroid/app/IActivityManager;

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/telephony/Am;->mStartFlags:I

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/Am;->mUserId:I

    invoke-interface/range {v2 .. v13}, Landroid/app/IActivityManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v23

    .restart local v23    # "res":I
    goto/16 :goto_2

    .line 803
    .restart local v16    # "endTime":J
    :cond_10
    sget-object v20, Ljava/lang/System;->err:Ljava/io/PrintStream;

    goto/16 :goto_3

    .line 807
    .restart local v19    # "launched":Z
    .restart local v20    # "out":Ljava/io/PrintStream;
    :pswitch_0
    const/16 v19, 0x1

    .line 808
    goto/16 :goto_4

    .line 810
    :pswitch_1
    const/16 v19, 0x1

    .line 811
    const-string v2, "Warning: Activity not started because the  current activity is being kept for the user."

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 816
    :pswitch_2
    const/16 v19, 0x1

    .line 817
    const-string v2, "Warning: Activity not started, intent has been delivered to currently running top-most instance."

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 823
    :pswitch_3
    const/16 v19, 0x1

    .line 824
    const-string v2, "Warning: Activity not started because intent should be handled by the caller"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 829
    :pswitch_4
    const/16 v19, 0x1

    .line 830
    const-string v2, "Warning: Activity not started, its current task has been brought to the front"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 835
    :pswitch_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Activity not started, unable to resolve "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v5}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 840
    :pswitch_6
    const-string v2, "Error type 3"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 841
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Activity class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not exist."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 846
    :pswitch_7
    const-string v2, "Error: Activity not started, you requested to both forward and receive its result"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 851
    :pswitch_8
    const-string v2, "Error: Activity not started, you do not have permission to access it."

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 865
    :cond_11
    const-string v2, "ok"

    goto/16 :goto_5

    .line 805
    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private runStartService()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 691
    const/4 v0, -0x2

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/Am;->makeIntent(I)Landroid/content/Intent;

    move-result-object v2

    .line 692
    .local v2, "intent":Landroid/content/Intent;
    iget v0, p0, Lcom/android/internal/telephony/Am;->mUserId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 693
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Error: Can\'t start activity with user \'all\'"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 706
    :cond_0
    :goto_0
    return-void

    .line 696
    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting service: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 697
    iget-object v0, p0, Lcom/android/internal/telephony/Am;->mAm:Landroid/app/IActivityManager;

    const/4 v1, 0x0

    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.shell"

    iget v5, p0, Lcom/android/internal/telephony/Am;->mUserId:I

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v6

    .line 699
    .local v6, "cn":Landroid/content/ComponentName;
    if-nez v6, :cond_2

    .line 700
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Error: Not found; no service started."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 701
    :cond_2
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "!"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 702
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Requires permission "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 703
    :cond_3
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "!!"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 704
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private runStopService()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 709
    const/4 v2, -0x2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/Am;->makeIntent(I)Landroid/content/Intent;

    move-result-object v0

    .line 710
    .local v0, "intent":Landroid/content/Intent;
    iget v2, p0, Lcom/android/internal/telephony/Am;->mUserId:I

    if-ne v2, v6, :cond_1

    .line 711
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Error: Can\'t stop activity with user \'all\'"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 723
    :cond_0
    :goto_0
    return-void

    .line 714
    :cond_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stopping service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 715
    iget-object v2, p0, Lcom/android/internal/telephony/Am;->mAm:Landroid/app/IActivityManager;

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/Am;->mUserId:I

    invoke-interface {v2, v3, v0, v4, v5}, Landroid/app/IActivityManager;->stopService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v1

    .line 716
    .local v1, "result":I
    if-nez v1, :cond_2

    .line 717
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Service not stopped: was not running."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 718
    :cond_2
    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 719
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Service stopped"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 720
    :cond_3
    if-ne v1, v6, :cond_0

    .line 721
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Error stopping service"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private runStopUser()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1138
    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 1139
    .local v2, "user":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/Am;->mAm:Landroid/app/IActivityManager;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/app/IActivityManager;->stopUser(ILandroid/app/IStopUserCallback;)I

    move-result v0

    .line 1140
    .local v0, "res":I
    if-eqz v0, :cond_0

    .line 1141
    const-string v1, ""

    .line 1142
    .local v1, "txt":Ljava/lang/String;
    packed-switch v0, :pswitch_data_0

    .line 1150
    :goto_0
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Switch failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1152
    .end local v1    # "txt":Ljava/lang/String;
    :cond_0
    return-void

    .line 1144
    .restart local v1    # "txt":Ljava/lang/String;
    :pswitch_0
    const-string v1, " (Can\'t stop current user)"

    .line 1145
    goto :goto_0

    .line 1147
    :pswitch_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " (Unknown user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1142
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private runSwitchUser()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1133
    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 1134
    .local v0, "user":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/Am;->mAm:Landroid/app/IActivityManager;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->switchUser(I)Z

    .line 1135
    return-void
.end method

.method private runToUri(Z)V
    .locals 3
    .param p1, "intentScheme"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1523
    const/4 v1, -0x2

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/Am;->makeIntent(I)Landroid/content/Intent;

    move-result-object v0

    .line 1524
    .local v0, "intent":Landroid/content/Intent;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1525
    return-void

    .line 1524
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private sendBroadcast()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 954
    const/4 v0, -0x2

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/Am;->makeIntent(I)Landroid/content/Intent;

    move-result-object v2

    .line 955
    .local v2, "intent":Landroid/content/Intent;
    new-instance v4, Lcom/android/internal/telephony/Am$IntentReceiver;

    invoke-direct {v4, p0, v1}, Lcom/android/internal/telephony/Am$IntentReceiver;-><init>(Lcom/android/internal/telephony/Am;Lcom/android/internal/telephony/Am$1;)V

    .line 956
    .local v4, "receiver":Lcom/android/internal/telephony/Am$IntentReceiver;
    iget-object v0, p0, Lcom/android/internal/telephony/Am;->mReceiverPermission:Ljava/lang/String;

    if-nez v0, :cond_0

    move-object v8, v1

    .line 958
    .local v8, "requiredPermissions":[Ljava/lang/String;
    :goto_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Broadcasting: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 960
    if-nez v2, :cond_1

    .line 968
    :goto_1
    return-void

    .line 956
    .end local v8    # "requiredPermissions":[Ljava/lang/String;
    :cond_0
    new-array v8, v11, [Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/telephony/Am;->mReceiverPermission:Ljava/lang/String;

    aput-object v0, v8, v5

    goto :goto_0

    .line 963
    .restart local v8    # "requiredPermissions":[Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/Am;->mAm:Landroid/app/IActivityManager;

    const/4 v9, -0x1

    iget v13, p0, Lcom/android/internal/telephony/Am;->mUserId:I

    move-object v3, v1

    move-object v6, v1

    move-object v7, v1

    move-object v10, v1

    move v12, v5

    invoke-interface/range {v0 .. v13}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I

    goto :goto_1
.end method

.method private sendBroadcastNoneOrdered()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 937
    const/4 v0, -0x2

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/Am;->makeIntent(I)Landroid/content/Intent;

    move-result-object v2

    .line 938
    .local v2, "intent":Landroid/content/Intent;
    new-instance v4, Lcom/android/internal/telephony/Am$IntentReceiver;

    invoke-direct {v4, p0, v1}, Lcom/android/internal/telephony/Am$IntentReceiver;-><init>(Lcom/android/internal/telephony/Am;Lcom/android/internal/telephony/Am$1;)V

    .line 939
    .local v4, "receiver":Lcom/android/internal/telephony/Am$IntentReceiver;
    iget-object v0, p0, Lcom/android/internal/telephony/Am;->mReceiverPermission:Ljava/lang/String;

    if-nez v0, :cond_0

    move-object v8, v1

    .line 941
    .local v8, "requiredPermissions":[Ljava/lang/String;
    :goto_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Broadcasting: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 943
    if-nez v2, :cond_1

    .line 951
    :goto_1
    return-void

    .line 939
    .end local v8    # "requiredPermissions":[Ljava/lang/String;
    :cond_0
    const/4 v0, 0x1

    new-array v8, v0, [Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/telephony/Am;->mReceiverPermission:Ljava/lang/String;

    aput-object v0, v8, v5

    goto :goto_0

    .line 946
    .restart local v8    # "requiredPermissions":[Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/Am;->mAm:Landroid/app/IActivityManager;

    const/4 v9, -0x1

    iget v13, p0, Lcom/android/internal/telephony/Am;->mUserId:I

    move-object v3, v1

    move-object v6, v1

    move-object v7, v1

    move-object v10, v1

    move v11, v5

    move v12, v5

    invoke-interface/range {v0 .. v13}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I

    goto :goto_1
.end method

.method private sendStickyBroadcastNoneOrdered()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 920
    const/4 v0, -0x2

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/Am;->makeIntent(I)Landroid/content/Intent;

    move-result-object v2

    .line 921
    .local v2, "intent":Landroid/content/Intent;
    new-instance v4, Lcom/android/internal/telephony/Am$IntentReceiver;

    invoke-direct {v4, p0, v1}, Lcom/android/internal/telephony/Am$IntentReceiver;-><init>(Lcom/android/internal/telephony/Am;Lcom/android/internal/telephony/Am$1;)V

    .line 922
    .local v4, "receiver":Lcom/android/internal/telephony/Am$IntentReceiver;
    iget-object v0, p0, Lcom/android/internal/telephony/Am;->mReceiverPermission:Ljava/lang/String;

    if-nez v0, :cond_0

    move-object v8, v1

    .line 924
    .local v8, "requiredPermissions":[Ljava/lang/String;
    :goto_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Broadcasting: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 926
    if-nez v2, :cond_1

    .line 934
    :goto_1
    return-void

    .line 922
    .end local v8    # "requiredPermissions":[Ljava/lang/String;
    :cond_0
    new-array v8, v12, [Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/telephony/Am;->mReceiverPermission:Ljava/lang/String;

    aput-object v0, v8, v5

    goto :goto_0

    .line 929
    .restart local v8    # "requiredPermissions":[Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/Am;->mAm:Landroid/app/IActivityManager;

    const/4 v9, -0x1

    iget v13, p0, Lcom/android/internal/telephony/Am;->mUserId:I

    move-object v3, v1

    move-object v6, v1

    move-object v7, v1

    move-object v10, v1

    move v11, v5

    invoke-interface/range {v0 .. v13}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I

    goto :goto_1
.end method

.method private static showUsage()V
    .locals 2

    .prologue
    .line 107
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "usage: am [subcommand] [options]\nusage: am start [-D] [-W] [-P <FILE>] [--start-profiler <FILE>]\n               [--sampling INTERVAL] [-R COUNT] [-S] [--opengl-trace]\n               [--user <USER_ID> | current] <INTENT>\n       am startservice [--user <USER_ID> | current] <INTENT>\n       am stopservice [--user <USER_ID> | current] <INTENT>\n       am force-stop [--user <USER_ID> | all | current] <PACKAGE>\n       am kill [--user <USER_ID> | all | current] <PACKAGE>\n       am kill-all\n       am broadcast [--user <USER_ID> | all | current] <INTENT>\n       am instrument [-r] [-e <NAME> <VALUE>] [-p <FILE>] [-w]\n               [--user <USER_ID> | current]\n               [--no-window-animation]\n               [--abi <ABI>]\n : Launch the instrumented process with the                    selected ABI. This assumes that the process supports the                   selected ABI.               <COMPONENT>\n       am profile start [--user <USER_ID> current] <PROCESS> <FILE>\n       am profile stop [--user <USER_ID> current] [<PROCESS>]\n       am dumpheap [--user <USER_ID> current] [-n] <PROCESS> <FILE>\n       am set-debug-app [-w] [--persistent] <PACKAGE>\n       am clear-debug-app\n       am monitor [--gdb <port>]\n       am hang [--allow-restart]\n       am restart\n       am idle-maintenance\n       am screen-compat [on|off] <PACKAGE>\n       am to-uri [INTENT]\n       am to-intent-uri [INTENT]\n       am switch-user <USER_ID>\n       am stop-user <USER_ID>\n       am stack start <DISPLAY_ID> <INTENT>\n       am stack movetask <TASK_ID> <STACK_ID> [true|false]\n       am stack resize <STACK_ID> <LEFT,TOP,RIGHT,BOTTOM>\n       am stack list\n       am stack info <STACK_ID>\n       am lock-task <TASK_ID>\n       am lock-task stop\n       am get-config\n\nam start: start an Activity.  Options are:\n    -D: enable debugging\n    -W: wait for launch to complete\n    --start-profiler <FILE>: start profiler and send results to <FILE>\n    --sampling INTERVAL: use sample profiling with INTERVAL microseconds\n        between samples (use with --start-profiler)\n    -P <FILE>: like above, but profiling stops when app goes idle\n    -R: repeat the activity launch <COUNT> times.  Prior to each repeat,\n        the top activity will be finished.\n    -S: force stop the target app before starting the activity\n    --opengl-trace: enable tracing of OpenGL functions\n    --user <USER_ID> | current: Specify which user to run as; if not\n        specified then run as the current user.\n\nam startservice: start a Service.  Options are:\n    --user <USER_ID> | current: Specify which user to run as; if not\n        specified then run as the current user.\n\nam stopservice: stop a Service.  Options are:\n    --user <USER_ID> | current: Specify which user to run as; if not\n        specified then run as the current user.\n\nam force-stop: force stop everything associated with <PACKAGE>.\n    --user <USER_ID> | all | current: Specify user to force stop;\n        all users if not specified.\n\nam kill: Kill all processes associated with <PACKAGE>.  Only kills.\n  processes that are safe to kill -- that is, will not impact the user\n  experience.\n    --user <USER_ID> | all | current: Specify user whose processes to kill;\n        all users if not specified.\n\nam kill-all: Kill all background processes.\n\nam broadcast: send a broadcast Intent.  Options are:\n    --user <USER_ID> | all | current: Specify which user to send to; if not\n        specified then send to all users.\n    --receiver-permission <PERMISSION>: Require receiver to hold permission.\n\nam instrument: start an Instrumentation.  Typically this target <COMPONENT>\n  is the form <TEST_PACKAGE>/<RUNNER_CLASS>.  Options are:\n    -r: print raw results (otherwise decode REPORT_KEY_STREAMRESULT).  Use with\n        [-e perf true] to generate raw output for performance measurements.\n    -e <NAME> <VALUE>: set argument <NAME> to <VALUE>.  For test runners a\n        common form is [-e <testrunner_flag> <value>[,<value>...]].\n    -p <FILE>: write profiling data to <FILE>\n    -w: wait for instrumentation to finish before returning.  Required for\n        test runners.\n    --user <USER_ID> | current: Specify user instrumentation runs in;\n        current user if not specified.\n    --no-window-animation: turn off window animations while running.\n\nam profile: start and stop profiler on a process.  The given <PROCESS> argument\n  may be either a process name or pid.  Options are:\n    --user <USER_ID> | current: When supplying a process name,\n        specify user of process to profile; uses current user if not specified.\n\nam dumpheap: dump the heap of a process.  The given <PROCESS> argument may\n  be either a process name or pid.  Options are:\n    -n: dump native heap instead of managed heap\n    --user <USER_ID> | current: When supplying a process name,\n        specify user of process to dump; uses current user if not specified.\n\nam set-debug-app: set application <PACKAGE> to debug.  Options are:\n    -w: wait for debugger when application starts\n    --persistent: retain this value\n\nam clear-debug-app: clear the previously set-debug-app.\n\nam bug-report: request bug report generation; will launch UI\n    when done to select where it should be delivered.\n\nam monitor: start monitoring for crashes or ANRs.\n    --gdb: start gdbserv on the given port at crash/ANR\n\nam hang: hang the system.\n    --allow-restart: allow watchdog to perform normal system restart\n\nam restart: restart the user-space system.\n\nam idle-maintenance: perform idle maintenance now.\n\nam screen-compat: control screen compatibility mode of <PACKAGE>.\n\nam to-uri: print the given Intent specification as a URI.\n\nam to-intent-uri: print the given Intent specification as an intent: URI.\n\nam switch-user: switch to put USER_ID in the foreground, starting\n  execution of that user if it is currently stopped.\n\nam stop-user: stop execution of USER_ID, not allowing it to run any\n  code until a later explicit switch to it.\n\nam stack start: start a new activity on <DISPLAY_ID> using <INTENT>.\n\nam stack movetask: move <TASK_ID> from its current stack to the top (true) or   bottom (false) of <STACK_ID>.\n\nam stack resize: change <STACK_ID> size and position to <LEFT,TOP,RIGHT,BOTTOM>.\n\nam stack list: list all of the activity stacks and their sizes.\n\nam stack info: display the information about activity stack <STACK_ID>.\n\nam lock-task: bring <TASK_ID> to the front and don\'t allow other tasks to run\n\nam get-config: retrieve the configuration and any recent configurations\n  of the device\n\n<INTENT> specifications include these flags and arguments:\n    [-a <ACTION>] [-d <DATA_URI>] [-t <MIME_TYPE>]\n    [-c <CATEGORY> [-c <CATEGORY>] ...]\n    [-e|--es <EXTRA_KEY> <EXTRA_STRING_VALUE> ...]\n    [--esn <EXTRA_KEY> ...]\n    [--ez <EXTRA_KEY> <EXTRA_BOOLEAN_VALUE> ...]\n    [--ei <EXTRA_KEY> <EXTRA_INT_VALUE> ...]\n    [--el <EXTRA_KEY> <EXTRA_LONG_VALUE> ...]\n    [--ef <EXTRA_KEY> <EXTRA_FLOAT_VALUE> ...]\n    [--eu <EXTRA_KEY> <EXTRA_URI_VALUE> ...]\n    [--ecn <EXTRA_KEY> <EXTRA_COMPONENT_NAME_VALUE>]\n    [--eia <EXTRA_KEY> <EXTRA_INT_VALUE>[,<EXTRA_INT_VALUE...]]\n    [--ela <EXTRA_KEY> <EXTRA_LONG_VALUE>[,<EXTRA_LONG_VALUE...]]\n    [--efa <EXTRA_KEY> <EXTRA_FLOAT_VALUE>[,<EXTRA_FLOAT_VALUE...]]\n    [--esa <EXTRA_KEY> <EXTRA_STRING_VALUE>[,<EXTRA_STRING_VALUE...]]\n        (to embed a comma into a string escape it using \"\\,\")\n    [-n <COMPONENT>] [-f <FLAGS>]\n    [--grant-read-uri-permission] [--grant-write-uri-permission]\n    [--grant-persistable-uri-permission] [--grant-prefix-uri-permission]\n    [--debug-log-resolution] [--exclude-stopped-packages]\n    [--include-stopped-packages]\n    [--activity-brought-to-front] [--activity-clear-top]\n    [--activity-clear-when-task-reset] [--activity-exclude-from-recents]\n    [--activity-launched-from-history] [--activity-multiple-task]\n    [--activity-no-animation] [--activity-no-history]\n    [--activity-no-user-action] [--activity-previous-is-top]\n    [--activity-reorder-to-front] [--activity-reset-task-if-needed]\n    [--activity-single-top] [--activity-clear-task]\n    [--activity-task-on-home]\n    [--receiver-registered-only] [--receiver-replace-pending]\n    [--selector]\n    [<URI> | <PACKAGE> | <COMPONENT>]\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 291
    return-void
.end method


# virtual methods
.method parseUserArg(Ljava/lang/String;)I
    .locals 2
    .param p1, "arg"    # Ljava/lang/String;

    .prologue
    .line 404
    const-string v1, "all"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 405
    const/4 v0, -0x1

    .line 411
    .local v0, "userId":I
    :goto_0
    return v0

    .line 406
    .end local v0    # "userId":I
    :cond_0
    const-string v1, "current"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "cur"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 407
    :cond_1
    const/4 v0, -0x2

    .restart local v0    # "userId":I
    goto :goto_0

    .line 409
    .end local v0    # "userId":I
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .restart local v0    # "userId":I
    goto :goto_0
.end method

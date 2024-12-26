.class public Lcom/samsung/android/rlc/service/RmmTask;
.super Ljava/lang/Object;
.source "RmmTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;,
        Lcom/samsung/android/rlc/service/RmmTask$RmmTaskObject;
    }
.end annotation


# static fields
.field public static final BOOT:I = 0x0

.field public static final CHECK_INIT_STATUS:I = 0x7

.field public static final DELIVERY_REPORT:I = 0x2

.field public static final GCM_MG_REGISTRATION:I = 0x5

.field public static final GCM_PUSH_REG:I = 0x3

.field private static final GCM_RCV_PERMISSION:Ljava/lang/String; = "com.google.android.c2dm.permission.SEND"

.field public static final INIT:I = 0x1

.field private static final INTENT_GCM_RECEIVE:Ljava/lang/String; = "com.google.android.c2dm.intent.RECEIVE"

.field private static final INTENT_GCM_REG_CANCEL:Ljava/lang/String; = "android.intent.action.REGISTRATION_CANCELED"

.field private static final INTENT_GCM_REG_COMPETE:Ljava/lang/String; = "android.intent.action.REGISTRATION_COMPLETED"

.field private static final INTENT_GCM_REG_ID:Ljava/lang/String; = "com.google.android.c2dm.intent.REGISTRATION"

.field private static final INTENT_INIT_DVC:Ljava/lang/String; = "com.samsung.android.rmm.initialize"

.field private static final INTENT_INIT_PERMISSION:Ljava/lang/String; = "com.samsung.android.permission.RMM_INIT"

.field private static final INTENT_RETRY_C2DMREG:Ljava/lang/String; = "com.samsung.android.rlc.C2DM_REGISTRATION_RETRY"

.field private static final INTENT_RETRY_CEHCKDVC:Ljava/lang/String; = "com.samsung.android.rlc.CHECK_DEVICE_STATUS_RETRY"

.field private static final INTENT_RETRY_COMPETE:Ljava/lang/String; = "com.samsung.android.rlc.COMPLETE_RETRY"

.field private static final INTENT_RETRY_DELIVERY:Ljava/lang/String; = "com.samsung.android.rlc.DELIVERY_REQUEST_RETRY"

.field private static final INTENT_RETRY_GCMREG:Ljava/lang/String; = "com.samsung.android.rlc.GCM_REGISTRATION_RETRY"

.field private static final INTENT_RETRY_GCMREQ:Ljava/lang/String; = "com.samsung.android.rlc.GCM_MG_REGISTRATION_REQUEST_RETRY"

.field private static final INTENT_RETRY_HTTP:Ljava/lang/String; = "com.samsung.android.rlc.HTTP_REQUEST_RETRY"

.field private static final INTENT_RETRY_PREPARE:Ljava/lang/String; = "com.samsung.android.rlc.PREPARE_RETRY"

.field private static final INTENT_RETRY_REPORT:Ljava/lang/String; = "com.samsung.android.rlc.REPORT_RETRY"

.field private static final INTENT_RETRY_SPPREG_:Ljava/lang/String; = "com.samsung.android.rlc.SPP_REGISTRATION_RETRY"

.field private static final INTENT_RETRY_SPPREQ:Ljava/lang/String; = "com.samsung.android.rlc.SPP_MG_REGISTRATION_REQUEST_RETRY"

.field private static final INTENT_RETRY_TOKEN:Ljava/lang/String; = "com.samsung.android.rlc.TOKEN_RETRY"

.field private static final INTENT_RETRY_UNLOCK_ALERT:Ljava/lang/String; = "com.samsung.android.rlc.UNLOCK_REPORT_RETRY"

.field private static final INTENT_SPP_ACK_RESULT:Ljava/lang/String; = "com.sec.spp.NotificationAckResultAction"

.field private static final INTENT_SPP_ERROR:Ljava/lang/String; = "com.sec.spp.ServiceAbnormallyStoppedAction"

.field private static final INTENT_SPP_MESSAGE:Ljava/lang/String; = "eb850acb179b3447"

.field private static final INTENT_SPP_REG_CHANGE:Ljava/lang/String; = "com.sec.spp.RegistrationChangedAction"

.field private static final INTENT_SYS_BOOT_COMPLETE:Ljava/lang/String; = "android.intent.action.BOOT_COMPLETED"

.field private static final INTENT_SYS_NOTI_CANCLE:Ljava/lang/String; = "android.intent.action.NOTI_CANCELED"

.field private static final INTENT_WAKE_UP_CLIENT:Ljava/lang/String; = "com.samsung.remotelock.CLIENT_WAKEUP"

.field public static final RLC_CLEAR:I = 0xd

.field public static final RLC_COMPLETE:I = 0xa

.field public static final RLC_NOT_SUPPORT:I = 0xc

.field public static final RLC_PREPARE:I = 0x9

.field public static final RLC_REG_RCV:I = 0xe

.field public static final RLC_RESULT_REPORT:I = 0xb

.field protected static final RMM_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.rlc"

.field public static final SPP_MG_REGISTRATION:I = 0x6

.field public static final SPP_PUSH_REG:I = 0x4

.field private static final SYS_PERMISSION:Ljava/lang/String; = "com.sec.pcw.device.permission.PROTECT_SYSTEM"

.field static final TAG:Ljava/lang/String;

.field public static final UNKNOWN:I = -0x1

.field public static final UNLOCK_REPORT:I = 0x8

.field private static rmmTask:Lcom/samsung/android/rlc/service/RmmTask;


# instance fields
.field private mContext:Landroid/content/Context;

.field private queue:Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/rlc/service/RmmTask;->rmmTask:Lcom/samsung/android/rlc/service/RmmTask;

    .line 54
    const-class v0, Lcom/samsung/android/rlc/service/RmmTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/service/RmmTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/rlc/service/RmmTask;->queue:Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;

    .line 42
    sget-object v0, Lcom/samsung/android/rlc/service/RmmTask;->TAG:Ljava/lang/String;

    const-string v1, "RmmTask created"

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    new-instance v0, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;

    new-instance v1, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    invoke-direct {v0, p0, p1, v1}, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;-><init>(Lcom/samsung/android/rlc/service/RmmTask;Landroid/content/Context;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/samsung/android/rlc/service/RmmTask;->queue:Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;

    .line 44
    iput-object p1, p0, Lcom/samsung/android/rlc/service/RmmTask;->mContext:Landroid/content/Context;

    .line 45
    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/rlc/service/RmmTask;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/rlc/service/RmmTask;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/samsung/android/rlc/service/RmmTask;->handleIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/service/RmmTask;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    const-class v1, Lcom/samsung/android/rlc/service/RmmTask;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/rlc/service/RmmTask;->rmmTask:Lcom/samsung/android/rlc/service/RmmTask;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/samsung/android/rlc/service/RmmTask;

    invoke-direct {v0, p0}, Lcom/samsung/android/rlc/service/RmmTask;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/rlc/service/RmmTask;->rmmTask:Lcom/samsung/android/rlc/service/RmmTask;

    .line 51
    :cond_0
    sget-object v0, Lcom/samsung/android/rlc/service/RmmTask;->rmmTask:Lcom/samsung/android/rlc/service/RmmTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getOperationName(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 74
    if-nez p0, :cond_0

    const-string v0, "BOOT"

    .line 89
    :goto_0
    return-object v0

    .line 75
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const-string v0, "INIT"

    goto :goto_0

    .line 76
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    const-string v0, "DELIVERY_REPORT"

    goto :goto_0

    .line 77
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    const-string v0, "GCM_PUSH_REG"

    goto :goto_0

    .line 78
    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    const-string v0, "SPP_PUSH_REG"

    goto :goto_0

    .line 79
    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    const-string v0, "GCM_MG_REGISTRATION"

    goto :goto_0

    .line 80
    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    const-string v0, "SPP_MG_REGISTRATION"

    goto :goto_0

    .line 81
    :cond_6
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    const-string v0, "CHECK_INIT_STATUS"

    goto :goto_0

    .line 82
    :cond_7
    const/16 v0, 0x8

    if-ne p0, v0, :cond_8

    const-string v0, "UNLOCK_REPORT"

    goto :goto_0

    .line 83
    :cond_8
    const/16 v0, 0xc

    if-ne p0, v0, :cond_9

    const-string v0, "RLC_NOT_SUPPORT"

    goto :goto_0

    .line 84
    :cond_9
    const/16 v0, 0xb

    if-ne p0, v0, :cond_a

    const-string v0, "RLC_RESULT_REPORT"

    goto :goto_0

    .line 85
    :cond_a
    const/16 v0, 0xa

    if-ne p0, v0, :cond_b

    const-string v0, "RLC_COMPLETE"

    goto :goto_0

    .line 86
    :cond_b
    const/16 v0, 0x9

    if-ne p0, v0, :cond_c

    const-string v0, "RLC_PREPARE"

    goto :goto_0

    .line 87
    :cond_c
    const/16 v0, 0xd

    if-ne p0, v0, :cond_d

    const-string v0, "RLC_CREAR"

    goto :goto_0

    .line 88
    :cond_d
    const/16 v0, 0xe

    if-ne p0, v0, :cond_e

    const-string v0, "RLC_REGISTRATION_RECEIVER"

    goto :goto_0

    .line 89
    :cond_e
    const-string v0, "UNKNOWN"

    goto :goto_0
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 94
    const-string v3, "type"

    const/4 v4, -0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 95
    .local v2, "type":I
    sget-object v3, Lcom/samsung/android/rlc/service/RmmTask;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onHandleIntent : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lcom/samsung/android/rlc/service/RmmTask;->getOperationName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const/16 v3, 0xd

    if-eq v2, v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/rlc/service/RmmTask;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/rlc/util/PreferencesUtil;->isRlcClear(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 98
    sget-object v3, Lcom/samsung/android/rlc/service/RmmTask;->TAG:Ljava/lang/String;

    const-string v4, "RLC Cleared !!! "

    invoke-static {v3, v4}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 105
    :pswitch_1
    iget-object v3, p0, Lcom/samsung/android/rlc/service/RmmTask;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/rlc/receiver/handler/BootHandler;->init(Landroid/content/Context;)V

    goto :goto_0

    .line 108
    :pswitch_2
    iget-object v3, p0, Lcom/samsung/android/rlc/service/RmmTask;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/samsung/android/rlc/receiver/handler/DeliveryReportHandler;->run(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 111
    :pswitch_3
    iget-object v3, p0, Lcom/samsung/android/rlc/service/RmmTask;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/rlc/receiver/handler/GCMHandler;->registerAtGCM(Landroid/content/Context;)V

    goto :goto_0

    .line 114
    :pswitch_4
    iget-object v3, p0, Lcom/samsung/android/rlc/service/RmmTask;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/rlc/receiver/handler/SPPHandler;->registerAtSPP(Landroid/content/Context;)V

    goto :goto_0

    .line 118
    :pswitch_5
    iget-object v3, p0, Lcom/samsung/android/rlc/service/RmmTask;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;->run(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 121
    :pswitch_6
    iget-object v3, p0, Lcom/samsung/android/rlc/service/RmmTask;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/samsung/android/rlc/receiver/handler/CheckRegistrationHandler;->run(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 124
    :pswitch_7
    iget-object v3, p0, Lcom/samsung/android/rlc/service/RmmTask;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/samsung/android/rlc/receiver/handler/UnlockReportHandler;->run(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 127
    :pswitch_8
    iget-object v3, p0, Lcom/samsung/android/rlc/service/RmmTask;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/rlc/service/RmmTask;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/rlc/service/RmmTask;->mContext:Landroid/content/Context;

    invoke-static {v5, p1}, Lcom/samsung/android/rlc/receiver/handler/PrepareHandler;->run(Landroid/content/Context;Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/rlc/receiver/handler/CompleteHandler;->run(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/rlc/receiver/handler/ReportHandler;->run(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v1

    .line 128
    .local v1, "resultReport":Z
    if-eqz v1, :cond_0

    const-string v3, "Completed"

    iget-object v4, p0, Lcom/samsung/android/rlc/service/RmmTask;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/rlc/util/RLCUtil;->getRLCStatus()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 129
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 130
    .local v0, "clearBundle":Landroid/os/Bundle;
    const-string v3, "clearOp"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 132
    iget-object v3, p0, Lcom/samsung/android/rlc/service/RmmTask;->mContext:Landroid/content/Context;

    const/16 v4, 0xc

    invoke-static {v3, v0, v4}, Lcom/samsung/android/rlc/service/RmmTask;->startTask(Landroid/content/Context;Landroid/os/Bundle;I)V

    goto :goto_0

    .line 136
    .end local v0    # "clearBundle":Landroid/os/Bundle;
    .end local v1    # "resultReport":Z
    :pswitch_9
    iget-object v3, p0, Lcom/samsung/android/rlc/service/RmmTask;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/rlc/receiver/handler/ReportHandler;->run(Landroid/content/Context;Landroid/os/Bundle;)Z

    goto :goto_0

    .line 140
    :pswitch_a
    iget-object v3, p0, Lcom/samsung/android/rlc/service/RmmTask;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/samsung/android/rlc/receiver/handler/RlcClearHandler;->run(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 143
    :pswitch_b
    iget-object v3, p0, Lcom/samsung/android/rlc/service/RmmTask;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/samsung/android/rlc/service/RmmTask;->registerRcv(Landroid/content/Context;)V

    goto :goto_0

    .line 102
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public static isInstalled(Landroid/content/Context;)Z
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 189
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.samsung.android.rlc"

    const/16 v4, 0x40

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 190
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    sget-object v2, Lcom/samsung/android/rlc/service/RmmTask;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PACKAGE NAME :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    const/4 v2, 0x1

    .line 195
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    :goto_0
    return v2

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, Lcom/samsung/android/rlc/service/RmmTask;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private registerRcv(Landroid/content/Context;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 199
    const-string v17, "ro.csc.sales_code"

    invoke-static/range {v17 .. v17}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 200
    .local v9, "salesCode":Ljava/lang/String;
    const-string v17, "ro.security.vaultkeeper.feature"

    invoke-static/range {v17 .. v17}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 201
    .local v12, "supportRMM":Ljava/lang/String;
    sget-object v17, Lcom/samsung/android/rlc/service/RmmTask;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "CSC : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " , Rmm prop : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/rlc/service/RmmTask;->isInstalled(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_0

    const-string v17, "1"

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 204
    :cond_0
    sget-object v17, Lcom/samsung/android/rlc/service/RmmTask;->TAG:Ljava/lang/String;

    const-string v18, "There is no RMM Client"

    invoke-static/range {v17 .. v18}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :goto_0
    return-void

    .line 207
    :cond_1
    const-string v17, "SER"

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2

    const-string v17, "SKZ"

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2

    const-string v17, "CAC"

    .line 208
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2

    const-string v17, "SEK"

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 209
    :cond_2
    new-instance v3, Lcom/samsung/android/rlc/receiver/GCMReceiver;

    invoke-direct {v3}, Lcom/samsung/android/rlc/receiver/GCMReceiver;-><init>()V

    .line 210
    .local v3, "gcmReceiver":Lcom/samsung/android/rlc/receiver/GCMReceiver;
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 211
    .local v6, "intentfilter":Landroid/content/IntentFilter;
    const-string v17, "com.google.android.c2dm.intent.RECEIVE"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 212
    const-string v17, "com.samsung.android.rlc"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 213
    const-string v17, "com.google.android.c2dm.permission.SEND"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v3, v6, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 214
    const-string v17, "com.google.android.c2dm.intent.REGISTRATION"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 215
    const-string v17, "com.samsung.android.rlc"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 216
    const-string v17, "com.google.android.c2dm.permission.SEND"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v3, v6, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 217
    const-string v17, "android.intent.action.REGISTRATION_COMPLETED"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 218
    const-string v17, "com.google.android.c2dm.permission.SEND"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v3, v6, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 219
    const-string v17, "android.intent.action.REGISTRATION_CANCELED"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 220
    const-string v17, "com.google.android.c2dm.permission.SEND"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v3, v6, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 222
    new-instance v13, Landroid/content/IntentFilter;

    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    .line 223
    .local v13, "sysIntentfilter":Landroid/content/IntentFilter;
    new-instance v14, Lcom/samsung/android/rlc/receiver/SYSTEMReceiver;

    invoke-direct {v14}, Lcom/samsung/android/rlc/receiver/SYSTEMReceiver;-><init>()V

    .line 224
    .local v14, "systemReceiver":Lcom/samsung/android/rlc/receiver/SYSTEMReceiver;
    const-string v17, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 225
    const-string v17, "com.sec.pcw.device.permission.PROTECT_SYSTEM"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v14, v13, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 226
    const-string v17, "android.intent.action.NOTI_CANCELED"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 227
    const-string v17, "com.sec.pcw.device.permission.PROTECT_SYSTEM"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v14, v13, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 229
    new-instance v15, Landroid/content/IntentFilter;

    invoke-direct {v15}, Landroid/content/IntentFilter;-><init>()V

    .line 230
    .local v15, "wakeIntentfilter":Landroid/content/IntentFilter;
    new-instance v16, Lcom/samsung/android/rlc/receiver/WakeUPReceiver;

    invoke-direct/range {v16 .. v16}, Lcom/samsung/android/rlc/receiver/WakeUPReceiver;-><init>()V

    .line 231
    .local v16, "wakeupReceiver":Lcom/samsung/android/rlc/receiver/WakeUPReceiver;
    const-string v17, "com.samsung.remotelock.CLIENT_WAKEUP"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 232
    const-string v17, "rlc"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 233
    const-string v17, "operation.initialize"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 236
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 237
    .local v7, "retIntentfilter":Landroid/content/IntentFilter;
    new-instance v8, Lcom/samsung/android/rlc/receiver/RetryReceiver;

    invoke-direct {v8}, Lcom/samsung/android/rlc/receiver/RetryReceiver;-><init>()V

    .line 238
    .local v8, "retryReceiver":Lcom/samsung/android/rlc/receiver/RetryReceiver;
    const-string v17, "com.samsung.android.rlc.SPP_REGISTRATION_RETRY"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 239
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 240
    const-string v17, "com.samsung.android.rlc.C2DM_REGISTRATION_RETRY"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 241
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 242
    const-string v17, "com.samsung.android.rlc.GCM_REGISTRATION_RETRY"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 243
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 244
    const-string v17, "com.samsung.android.rlc.TOKEN_RETRY"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 245
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 246
    const-string v17, "com.samsung.android.rlc.HTTP_REQUEST_RETRY"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 247
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 248
    const-string v17, "com.samsung.android.rlc.COMPLETE_RETRY"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 249
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 250
    const-string v17, "com.samsung.android.rlc.PREPARE_RETRY"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 251
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 252
    const-string v17, "com.samsung.android.rlc.UNLOCK_REPORT_RETRY"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 253
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 254
    const-string v17, "com.samsung.android.rlc.CHECK_DEVICE_STATUS_RETRY"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 255
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 256
    const-string v17, "com.samsung.android.rlc.REPORT_RETRY"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 257
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 258
    const-string v17, "com.samsung.android.rlc.SPP_MG_REGISTRATION_REQUEST_RETRY"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 259
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 260
    const-string v17, "com.samsung.android.rlc.GCM_MG_REGISTRATION_REQUEST_RETRY"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 261
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 262
    const-string v17, "com.samsung.android.rlc.DELIVERY_REQUEST_RETRY"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 263
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 265
    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    .line 266
    .local v10, "sppIntentfilter":Landroid/content/IntentFilter;
    new-instance v11, Lcom/samsung/android/rlc/receiver/SPPReceiver;

    invoke-direct {v11}, Lcom/samsung/android/rlc/receiver/SPPReceiver;-><init>()V

    .line 267
    .local v11, "sppRecevier":Lcom/samsung/android/rlc/receiver/SPPReceiver;
    const-string v17, "eb850acb179b3447"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 268
    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 269
    const-string v17, "com.sec.spp.NotificationAckResultAction"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 270
    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 271
    const-string v17, "com.sec.spp.RegistrationChangedAction"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 272
    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 273
    const-string v17, "com.sec.spp.ServiceAbnormallyStoppedAction"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 274
    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 276
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 277
    .local v4, "initFilter":Landroid/content/IntentFilter;
    new-instance v5, Lcom/samsung/android/rlc/receiver/InitalizeReceiver;

    invoke-direct {v5}, Lcom/samsung/android/rlc/receiver/InitalizeReceiver;-><init>()V

    .line 278
    .local v5, "initReceiver":Lcom/samsung/android/rlc/receiver/InitalizeReceiver;
    const-string v17, "com.samsung.android.rmm.initialize"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 279
    const-string v17, "com.samsung.android.permission.RMM_INIT"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v5, v4, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 281
    .end local v3    # "gcmReceiver":Lcom/samsung/android/rlc/receiver/GCMReceiver;
    .end local v4    # "initFilter":Landroid/content/IntentFilter;
    .end local v5    # "initReceiver":Lcom/samsung/android/rlc/receiver/InitalizeReceiver;
    .end local v6    # "intentfilter":Landroid/content/IntentFilter;
    .end local v7    # "retIntentfilter":Landroid/content/IntentFilter;
    .end local v8    # "retryReceiver":Lcom/samsung/android/rlc/receiver/RetryReceiver;
    .end local v10    # "sppIntentfilter":Landroid/content/IntentFilter;
    .end local v11    # "sppRecevier":Lcom/samsung/android/rlc/receiver/SPPReceiver;
    .end local v13    # "sysIntentfilter":Landroid/content/IntentFilter;
    .end local v14    # "systemReceiver":Lcom/samsung/android/rlc/receiver/SYSTEMReceiver;
    .end local v15    # "wakeIntentfilter":Landroid/content/IntentFilter;
    .end local v16    # "wakeupReceiver":Lcom/samsung/android/rlc/receiver/WakeUPReceiver;
    :cond_3
    sget-object v17, Lcom/samsung/android/rlc/service/RmmTask;->TAG:Ljava/lang/String;

    const-string v18, "This device not support rmm service"

    invoke-static/range {v17 .. v18}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static startTask(Landroid/content/Context;Landroid/os/Bundle;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "type"    # I

    .prologue
    .line 288
    if-eqz p0, :cond_1

    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    .line 289
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 290
    .local v0, "taskIntent":Landroid/content/Intent;
    const-string v1, "type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 292
    if-eqz p1, :cond_0

    .line 293
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 296
    :cond_0
    sget-object v1, Lcom/samsung/android/rlc/service/RmmTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startTask : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Lcom/samsung/android/rlc/service/RmmTask;->getOperationName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-static {p0}, Lcom/samsung/android/rlc/service/RmmTask;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/service/RmmTask;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/android/rlc/service/RmmTask;->queue:Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;

    new-instance v2, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskObject;

    invoke-direct {v2, v0}, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskObject;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;->add(Lcom/samsung/android/rlc/service/RmmTask$RmmTaskObject;)V

    .line 299
    .end local v0    # "taskIntent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

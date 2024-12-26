.class public Lcom/samsung/android/rlc/util/RLCUtil;
.super Ljava/lang/Object;
.source "RLCUtil.java"


# static fields
.field public static NODATA:I

.field public static NOT_SUPPORTED:I

.field public static PKG_VER:Ljava/lang/String;

.field public static RESET_ASKED:I

.field public static SUPPORTED:I

.field private static final TAG:Ljava/lang/String;

.field private static volatile rlcUtil:Lcom/samsung/android/rlc/util/RLCUtil;


# instance fields
.field private mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

.field private m_Sync:Ljava/lang/Object;

.field private mcontext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/samsung/android/rlc/util/RLCUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    .line 21
    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/rlc/util/RLCUtil;->RESET_ASKED:I

    .line 22
    const/4 v0, 0x1

    sput v0, Lcom/samsung/android/rlc/util/RLCUtil;->NODATA:I

    .line 23
    const/4 v0, 0x2

    sput v0, Lcom/samsung/android/rlc/util/RLCUtil;->SUPPORTED:I

    .line 24
    const/4 v0, 0x4

    sput v0, Lcom/samsung/android/rlc/util/RLCUtil;->NOT_SUPPORTED:I

    .line 25
    const-string v0, "rmm_pkg_ver"

    sput-object v0, Lcom/samsung/android/rlc/util/RLCUtil;->PKG_VER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/rlc/util/RLCUtil;->m_Sync:Ljava/lang/Object;

    .line 35
    iput-object p1, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mcontext:Landroid/content/Context;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/rlc/util/RLCUtil;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/rlc/util/RLCUtil;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mcontext:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    sget-object v0, Lcom/samsung/android/rlc/util/RLCUtil;->rlcUtil:Lcom/samsung/android/rlc/util/RLCUtil;

    if-nez v0, :cond_0

    .line 40
    sget-object v0, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    const-string v1, "[getInstance]Create new instance"

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    new-instance v0, Lcom/samsung/android/rlc/util/RLCUtil;

    invoke-direct {v0, p0}, Lcom/samsung/android/rlc/util/RLCUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/rlc/util/RLCUtil;->rlcUtil:Lcom/samsung/android/rlc/util/RLCUtil;

    .line 43
    :cond_0
    sget-object v0, Lcom/samsung/android/rlc/util/RLCUtil;->rlcUtil:Lcom/samsung/android/rlc/util/RLCUtil;

    return-object v0
.end method

.method private getSecureData()Lorg/json/JSONObject;
    .locals 8

    .prologue
    .line 267
    const/4 v1, 0x0

    .line 269
    .local v1, "result":Lorg/json/JSONObject;
    iget-object v5, p0, Lcom/samsung/android/rlc/util/RLCUtil;->m_Sync:Ljava/lang/Object;

    monitor-enter v5

    .line 270
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->initRlcInstance()V

    .line 271
    const-string v3, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    .local v3, "savedData":Ljava/lang/String;
    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {v4}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->getClientData()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 279
    :try_start_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 280
    sget-object v4, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    const-string v6, "[getSecureData]RLC Manager returns null"

    invoke-static {v4, v6}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    monitor-exit v5

    move-object v2, v1

    .line 292
    .end local v1    # "result":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 274
    .restart local v1    # "result":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 275
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RLC Manager throws exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v2, v1

    .end local v1    # "result":Lorg/json/JSONObject;
    .local v2, "result":Lorg/json/JSONObject;
    goto :goto_0

    .line 285
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "result":Lorg/json/JSONObject;
    .restart local v1    # "result":Lorg/json/JSONObject;
    :cond_0
    :try_start_3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 286
    .end local v1    # "result":Lorg/json/JSONObject;
    .restart local v2    # "result":Lorg/json/JSONObject;
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v1, v2

    .end local v2    # "result":Lorg/json/JSONObject;
    .restart local v1    # "result":Lorg/json/JSONObject;
    goto :goto_0

    .line 287
    :catch_1
    move-exception v0

    .line 288
    .local v0, "e":Lorg/json/JSONException;
    :try_start_5
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 290
    monitor-exit v5

    move-object v2, v1

    .line 292
    .end local v1    # "result":Lorg/json/JSONObject;
    .restart local v2    # "result":Lorg/json/JSONObject;
    goto :goto_0

    .line 290
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "result":Lorg/json/JSONObject;
    .end local v3    # "savedData":Ljava/lang/String;
    .restart local v1    # "result":Lorg/json/JSONObject;
    :catchall_0
    move-exception v4

    :goto_1
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v4

    .end local v1    # "result":Lorg/json/JSONObject;
    .restart local v2    # "result":Lorg/json/JSONObject;
    .restart local v3    # "savedData":Ljava/lang/String;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "result":Lorg/json/JSONObject;
    .restart local v1    # "result":Lorg/json/JSONObject;
    goto :goto_1
.end method

.method private initRlcInstance()V
    .locals 3

    .prologue
    .line 46
    iget-object v0, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    if-nez v0, :cond_0

    .line 47
    sget-object v0, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    const-string v1, "[InitRlcInstance] Create new Instance"

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    new-instance v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    iget-object v1, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mcontext:Landroid/content/Context;

    new-instance v2, Lcom/samsung/android/rlc/util/RLCUtil$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/rlc/util/RLCUtil$1;-><init>(Lcom/samsung/android/rlc/util/RLCUtil;)V

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;-><init>(Landroid/content/Context;Lcom/samsung/android/service/RemoteLockControl/IRemoteLockControlListener;)V

    iput-object v0, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    sget-object v0, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    const-string v1, "[InitRlcInstance] Already Exist"

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public backUpSecureData()Ljava/lang/String;
    .locals 3

    .prologue
    .line 82
    sget-object v1, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    const-string v2, "[backUpSecureData]"

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-direct {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->initRlcInstance()V

    .line 85
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->getClientData()Ljava/lang/String;
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 89
    :goto_0
    return-object v1

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    invoke-virtual {v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;->printStackTrace()V

    .line 89
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bindToLockListner()V
    .locals 3

    .prologue
    .line 380
    sget-object v1, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    const-string v2, "[bindToLockListner]"

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    invoke-direct {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->initRlcInstance()V

    .line 383
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->bindToLockScreen()V
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    :goto_0
    return-void

    .line 384
    :catch_0
    move-exception v0

    .line 385
    .local v0, "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    invoke-virtual {v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;->printStackTrace()V

    goto :goto_0
.end method

.method public completeLock(Z[B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 8
    .param p1, "resultSvr"    # Z
    .param p2, "passcode"    # [B
    .param p3, "token"    # [B
    .param p4, "notiMsg"    # Ljava/lang/String;
    .param p5, "phoneNum"    # Ljava/lang/String;
    .param p6, "requetor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 355
    sget-object v0, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[completeRlc operation]Token Size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    invoke-direct {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->initRlcInstance()V

    .line 357
    sget-object v0, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    const-string v1, "[completeLocking]"

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    iget-object v0, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->completeLocking(Z[B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v7

    .line 360
    .local v7, "result":[B
    sget-object v1, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[completeRlc] Result : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v7, :cond_0

    array-length v0, v7

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    return-object v7

    .line 360
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public completeRlc(Z[BI[B)[B
    .locals 4
    .param p1, "resultSvr"    # Z
    .param p2, "token"    # [B
    .param p3, "command"    # I
    .param p4, "sign"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 334
    sget-object v1, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[completeRlc operation]Token Size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    invoke-direct {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->initRlcInstance()V

    .line 336
    const/4 v0, 0x0

    .line 337
    .local v0, "result":[B
    packed-switch p3, :pswitch_data_0

    .line 351
    :goto_0
    :pswitch_0
    sget-object v2, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[completeRlc] Result : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_0

    array-length v1, v0

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    return-object v0

    .line 339
    :pswitch_1
    sget-object v1, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    const-string v2, "[completeRegistering]"

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    iget-object v1, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {v1, p1, p2, p4}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->completeRegistering(Z[B[B)[B

    move-result-object v0

    .line 341
    goto :goto_0

    .line 343
    :pswitch_2
    sget-object v1, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    const-string v2, "[completeUnlocking]"

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object v1, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->completeUnlocking(Z[B)[B

    move-result-object v0

    .line 345
    goto :goto_0

    .line 347
    :pswitch_3
    sget-object v1, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    const-string v2, "[completeComplete]"

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    iget-object v1, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->completeCompleting(Z[B)[B

    move-result-object v0

    goto :goto_0

    .line 351
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 337
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public completeUnlocking(Ljava/lang/String;)I
    .locals 5
    .param p1, "passcode"    # Ljava/lang/String;

    .prologue
    .line 322
    sget-object v2, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[completeUnlocking] : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    invoke-direct {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->initRlcInstance()V

    .line 324
    const/4 v1, 0x0

    .line 326
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {v2, p1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->completeUnlocking(Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 330
    :goto_0
    return v1

    .line 327
    :catch_0
    move-exception v0

    .line 328
    .local v0, "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    invoke-virtual {v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;->printStackTrace()V

    goto :goto_0
.end method

.method public encryptData([B[B)[B
    .locals 2
    .param p1, "data"    # [B
    .param p2, "serverCert"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 374
    invoke-direct {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->initRlcInstance()V

    .line 375
    iget-object v1, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->encryptData([B[B)[B

    move-result-object v0

    .line 376
    .local v0, "result":[B
    return-object v0
.end method

.method public getIMEI(I)[Ljava/lang/String;
    .locals 8
    .param p1, "slotCnt"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    .line 142
    iget-object v4, p0, Lcom/samsung/android/rlc/util/RLCUtil;->m_Sync:Ljava/lang/Object;

    monitor-enter v4

    .line 143
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getSecureData()Lorg/json/JSONObject;

    move-result-object v2

    .line 147
    .local v2, "result":Lorg/json/JSONObject;
    if-nez v2, :cond_0

    .line 148
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v3

    .line 172
    :goto_0
    return-object v1

    .line 151
    :cond_0
    :try_start_1
    const-string v5, "IMEI1"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 152
    if-le p1, v7, :cond_1

    .line 153
    const-string v5, "IMEI2"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-eqz v5, :cond_2

    .line 154
    :try_start_2
    monitor-exit v4

    move-object v1, v3

    goto :goto_0

    .line 157
    :cond_1
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v3

    goto :goto_0

    .line 161
    :cond_2
    :try_start_3
    new-array v1, p1, [Ljava/lang/String;

    .line 162
    .local v1, "imeis":[Ljava/lang/String;
    const/4 v5, 0x0

    const-string v6, "IMEI1"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    .line 163
    if-le p1, v7, :cond_3

    .line 164
    const/4 v5, 0x1

    const-string v6, "IMEI2"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    .line 165
    sget-object v5, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Dualsim device. get imei 2 from rmm area , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, v1, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 167
    :cond_3
    :try_start_4
    monitor-exit v4

    goto :goto_0

    .line 171
    .end local v1    # "imeis":[Ljava/lang/String;
    .end local v2    # "result":Lorg/json/JSONObject;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .line 168
    .restart local v2    # "result":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Lorg/json/JSONException;
    :try_start_5
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 171
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v1, v3

    .line 172
    goto :goto_0
.end method

.method public getRLCID()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 123
    iget-object v3, p0, Lcom/samsung/android/rlc/util/RLCUtil;->m_Sync:Ljava/lang/Object;

    monitor-enter v3

    .line 124
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getSecureData()Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 127
    .local v1, "result":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    :try_start_1
    const-string v4, "RID"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 128
    :cond_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 137
    :goto_0
    return-object v2

    .line 131
    :cond_1
    :try_start_3
    sget-object v4, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getRLCID]RLC ID length : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "RID"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v4, "RID"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    :try_start_4
    monitor-exit v3

    goto :goto_0

    .line 136
    .end local v1    # "result":Lorg/json/JSONObject;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 133
    .restart local v1    # "result":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Lorg/json/JSONException;
    :try_start_5
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 136
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
.end method

.method public getRLCStatus()Ljava/lang/String;
    .locals 5

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->initRlcInstance()V

    .line 67
    const/4 v1, 0x0

    .line 69
    .local v1, "rlcStatus":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {v2}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->query()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 74
    :goto_0
    if-nez v1, :cond_0

    .line 75
    sget-object v2, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    const-string v3, "[getRLCStatus]RLC Manager returns null"

    invoke-static {v2, v3}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :cond_0
    sget-object v2, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getRLCStatus] RLC Status : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-object v1

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getRegiStatus()I
    .locals 8

    .prologue
    .line 224
    const/4 v2, -0x1

    .line 225
    .local v2, "regiStatus":I
    iget-object v5, p0, Lcom/samsung/android/rlc/util/RLCUtil;->m_Sync:Ljava/lang/Object;

    monitor-enter v5

    .line 226
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getSecureData()Lorg/json/JSONObject;

    move-result-object v3

    .line 227
    .local v3, "result":Lorg/json/JSONObject;
    const-string v1, "-1"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    .local v1, "isRegistered":Ljava/lang/String;
    if-eqz v3, :cond_0

    :try_start_1
    const-string v4, "RLC_STATUS"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 230
    :cond_0
    const/4 v4, -0x1

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 241
    :goto_0
    return v4

    .line 233
    :cond_1
    :try_start_3
    const-string v4, "RLC_STATUS"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    .line 238
    :goto_1
    :try_start_4
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 239
    sget-object v4, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[isRegistration] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    monitor-exit v5

    move v4, v2

    .line 241
    goto :goto_0

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 240
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "isRegistered":Ljava/lang/String;
    .end local v3    # "result":Lorg/json/JSONObject;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4
.end method

.method public getStringInSecure(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "Key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 391
    iget-object v3, p0, Lcom/samsung/android/rlc/util/RLCUtil;->m_Sync:Ljava/lang/Object;

    monitor-enter v3

    .line 392
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getSecureData()Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 395
    .local v1, "result":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 396
    :cond_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 403
    :goto_0
    return-object v2

    .line 398
    :cond_1
    :try_start_3
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    :try_start_4
    monitor-exit v3

    goto :goto_0

    .line 402
    .end local v1    # "result":Lorg/json/JSONObject;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 399
    .restart local v1    # "result":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 400
    .local v0, "e":Lorg/json/JSONException;
    :try_start_5
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 402
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
.end method

.method public isTargetDevice(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-static {p1}, Lcom/samsung/android/rlc/util/DeviceUtil;->getCISSalesCode(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public prepareRlc([B[B[BI)[B
    .locals 4
    .param p1, "serverCert"    # [B
    .param p2, "nonceSvr"    # [B
    .param p3, "rlcId"    # [B
    .param p4, "command"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 296
    sget-object v1, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    const-string v2, "[prepareRlc operation]"

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-direct {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->initRlcInstance()V

    .line 298
    const/4 v0, 0x0

    .line 299
    .local v0, "result":[B
    packed-switch p4, :pswitch_data_0

    .line 317
    :goto_0
    sget-object v2, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[prepareRlc] Result : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_0

    array-length v1, v0

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    return-object v0

    .line 301
    :pswitch_0
    sget-object v1, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    const-string v2, "[prepareRegistering]"

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object v1, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->prepareRegistering([B[B[B)[B

    move-result-object v0

    .line 303
    goto :goto_0

    .line 305
    :pswitch_1
    sget-object v1, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    const-string v2, "[prepareLocking]"

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    iget-object v1, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->prepareLocking([B[B[B)[B

    move-result-object v0

    .line 307
    goto :goto_0

    .line 309
    :pswitch_2
    sget-object v1, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    const-string v2, "[prepareUnlocking]"

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iget-object v1, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->prepareUnlocking([B[B[B)[B

    move-result-object v0

    .line 311
    goto :goto_0

    .line 313
    :pswitch_3
    sget-object v1, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    const-string v2, "[prepareComplete]"

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v1, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->prepareCompleting([B[B[B)[B

    move-result-object v0

    goto :goto_0

    .line 317
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 299
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public query([B[B[B)[B
    .locals 4
    .param p1, "serverCert"    # [B
    .param p2, "nonceSvr"    # [B
    .param p3, "rlcId"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 366
    invoke-direct {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->initRlcInstance()V

    .line 367
    iget-object v1, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->query([B[B[B)[B

    move-result-object v0

    .line 368
    .local v0, "result":[B
    sget-object v1, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[query] :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    return-object v0
.end method

.method public resetSecureData()V
    .locals 5

    .prologue
    .line 103
    sget-object v2, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    const-string v3, "[resetSecureData]"

    invoke-static {v2, v3}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v3, p0, Lcom/samsung/android/rlc/util/RLCUtil;->m_Sync:Ljava/lang/Object;

    monitor-enter v3

    .line 105
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getSecureData()Lorg/json/JSONObject;

    move-result-object v1

    .line 106
    .local v1, "result":Lorg/json/JSONObject;
    if-nez v1, :cond_0

    .line 107
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    :goto_0
    return-void

    .line 110
    :cond_0
    :try_start_1
    const-string v2, "RID"

    const-string v4, ""

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    const-string v2, "RLC_STATUS"

    const-string v4, "-1"

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    iget-object v2, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->setClientData(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    :goto_1
    :try_start_2
    monitor-exit v3

    goto :goto_0

    .end local v1    # "result":Lorg/json/JSONObject;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 113
    .restart local v1    # "result":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Lorg/json/JSONException;
    :try_start_3
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 115
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 116
    .local v0, "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    invoke-virtual {v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public restoreSecureData(Ljava/lang/String;)Z
    .locals 4
    .param p1, "backUpData"    # Ljava/lang/String;

    .prologue
    .line 92
    sget-object v1, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[restoreSecureData] : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-direct {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->initRlcInstance()V

    .line 95
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->setClientData(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    const/4 v1, 0x1

    .line 100
    :goto_0
    return v1

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    invoke-virtual {v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;->printStackTrace()V

    .line 100
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setIMEIs([Ljava/lang/String;)V
    .locals 6
    .param p1, "imeis"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 177
    iget-object v3, p0, Lcom/samsung/android/rlc/util/RLCUtil;->m_Sync:Ljava/lang/Object;

    monitor-enter v3

    .line 178
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getSecureData()Lorg/json/JSONObject;

    move-result-object v1

    .line 180
    .local v1, "result":Lorg/json/JSONObject;
    if-nez v1, :cond_0

    .line 181
    sget-object v2, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    const-string v4, "[setIMEIs]There is no data in secure area"

    invoke-static {v2, v4}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    new-instance v1, Lorg/json/JSONObject;

    .end local v1    # "result":Lorg/json/JSONObject;
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    .restart local v1    # "result":Lorg/json/JSONObject;
    :cond_0
    :try_start_1
    const-string v2, "IMEI1"

    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 187
    array-length v2, p1

    if-le v2, v5, :cond_1

    .line 188
    const-string v2, "IMEI2"

    const/4 v4, 0x1

    aget-object v4, p1, v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 190
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->setClientData(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    :goto_0
    :try_start_2
    monitor-exit v3

    .line 197
    return-void

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 196
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "result":Lorg/json/JSONObject;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 193
    .restart local v1    # "result":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    .line 194
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public setRLCID(Ljava/lang/String;)V
    .locals 6
    .param p1, "rlcId"    # Ljava/lang/String;

    .prologue
    .line 201
    iget-object v3, p0, Lcom/samsung/android/rlc/util/RLCUtil;->m_Sync:Ljava/lang/Object;

    monitor-enter v3

    .line 202
    :try_start_0
    sget-object v2, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setRLCID] : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-direct {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getSecureData()Lorg/json/JSONObject;

    move-result-object v1

    .line 205
    .local v1, "result":Lorg/json/JSONObject;
    if-nez v1, :cond_0

    .line 206
    sget-object v2, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    const-string v4, "[setRLCID]There is no data in secure area"

    invoke-static {v2, v4}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    new-instance v1, Lorg/json/JSONObject;

    .end local v1    # "result":Lorg/json/JSONObject;
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    .restart local v1    # "result":Lorg/json/JSONObject;
    :cond_0
    :try_start_1
    const-string v2, "RID"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 212
    sget-object v2, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setRLCID]RLC ID length : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v2, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->setClientData(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    :goto_0
    :try_start_2
    monitor-exit v3

    .line 220
    return-void

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 219
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "result":Lorg/json/JSONObject;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 216
    .restart local v1    # "result":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    .line 217
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public setRegiStatus(I)V
    .locals 6
    .param p1, "status"    # I

    .prologue
    .line 246
    iget-object v3, p0, Lcom/samsung/android/rlc/util/RLCUtil;->m_Sync:Ljava/lang/Object;

    monitor-enter v3

    .line 247
    :try_start_0
    sget-object v2, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setRegiStatus] : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-direct {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getSecureData()Lorg/json/JSONObject;

    move-result-object v1

    .line 250
    .local v1, "result":Lorg/json/JSONObject;
    if-nez v1, :cond_0

    .line 251
    sget-object v2, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    const-string v4, "[setRegiStatus]There is no data in secure area"

    invoke-static {v2, v4}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    new-instance v1, Lorg/json/JSONObject;

    .end local v1    # "result":Lorg/json/JSONObject;
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    .restart local v1    # "result":Lorg/json/JSONObject;
    :cond_0
    :try_start_1
    const-string v2, "RLC_STATUS"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 256
    iget-object v2, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->setClientData(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 262
    :goto_0
    :try_start_2
    monitor-exit v3

    .line 263
    return-void

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 262
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "result":Lorg/json/JSONObject;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 259
    .restart local v1    # "result":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    .line 260
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public setStringInSecure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 407
    iget-object v3, p0, Lcom/samsung/android/rlc/util/RLCUtil;->m_Sync:Ljava/lang/Object;

    monitor-enter v3

    .line 408
    :try_start_0
    sget-object v2, Lcom/samsung/android/rlc/util/RLCUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setStringInSecure] : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    invoke-direct {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getSecureData()Lorg/json/JSONObject;

    move-result-object v1

    .line 411
    .local v1, "result":Lorg/json/JSONObject;
    if-nez v1, :cond_0

    .line 412
    new-instance v1, Lorg/json/JSONObject;

    .end local v1    # "result":Lorg/json/JSONObject;
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    .restart local v1    # "result":Lorg/json/JSONObject;
    :cond_0
    :try_start_1
    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 416
    iget-object v2, p0, Lcom/samsung/android/rlc/util/RLCUtil;->mRlcManager:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->setClientData(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 422
    :goto_0
    :try_start_2
    monitor-exit v3

    .line 423
    return-void

    .line 417
    :catch_0
    move-exception v0

    .line 418
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 422
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "result":Lorg/json/JSONObject;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 419
    .restart local v1    # "result":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    .line 420
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

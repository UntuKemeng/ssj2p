.class Lcom/android/server/SdpManagerService$SdpHandler;
.super Landroid/os/Handler;
.source "SdpManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SdpManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SdpHandler"
.end annotation


# static fields
.field private static final HANDLER_TAG:Ljava/lang/String; = "SdpManagerServiceHandler"


# instance fields
.field final synthetic this$0:Lcom/android/server/SdpManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/SdpManagerService;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 3613
    iput-object p1, p0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    .line 3614
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3615
    const-string v0, "SdpHandler"

    # invokes: Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static {v0}, Lcom/android/server/SdpManagerService;->access$2700(Ljava/lang/String;)I

    .line 3617
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 24
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3620
    const-string v4, "SdpHandler"

    # invokes: Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static {v4}, Lcom/android/server/SdpManagerService;->access$2700(Ljava/lang/String;)I

    .line 3621
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 3769
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 3623
    :pswitch_1
    const-string v4, "SdpManagerServiceHandler"

    const-string/jumbo v5, "received MSG_SYSTEM_READY. "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3624
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    new-instance v5, Lcom/android/server/SdpServiceKeeper;

    # getter for: Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/SdpManagerService;->access$2900()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/server/SdpServiceKeeper;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/android/server/SdpManagerService;->mServiceKeeper:Lcom/android/server/SdpServiceKeeper;
    invoke-static {v4, v5}, Lcom/android/server/SdpManagerService;->access$2802(Lcom/android/server/SdpManagerService;Lcom/android/server/SdpServiceKeeper;)Lcom/android/server/SdpServiceKeeper;

    .line 3625
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    # getter for: Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/SdpManagerService;->access$2900()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/android/server/SdpManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v4, v5}, Lcom/android/server/SdpManagerService;->access$3002(Lcom/android/server/SdpManagerService;Lcom/android/internal/widget/LockPatternUtils;)Lcom/android/internal/widget/LockPatternUtils;

    .line 3628
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    # getter for: Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/SdpManagerService;->access$3100(Lcom/android/server/SdpManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 3629
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    # getter for: Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;
    invoke-static {v4}, Lcom/android/server/SdpManagerService;->access$3200(Lcom/android/server/SdpManagerService;)Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    move-result-object v4

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->getEngineListLocked()Landroid/util/SparseArray;
    invoke-static {v4}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$2100(Lcom/android/server/SdpManagerService$SdpEngineDatabase;)Landroid/util/SparseArray;

    move-result-object v11

    .line 3631
    .local v11, "engineList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    if-eqz v11, :cond_2

    .line 3632
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v13, v4, :cond_2

    .line 3633
    invoke-virtual {v11, v13}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v15

    .line 3634
    .local v15, "id":I
    invoke-virtual {v11, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3636
    .local v2, "alias":Ljava/lang/String;
    const-string v4, "SdpManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SDP_USER_0 getEngineListLocked :: engine found : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "[id:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3639
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    # getter for: Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;
    invoke-static {v4}, Lcom/android/server/SdpManagerService;->access$3200(Lcom/android/server/SdpManagerService;)Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    move-result-object v4

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->getEngineInfoLocked(I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    invoke-static {v4, v15}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$1500(Lcom/android/server/SdpManagerService$SdpEngineDatabase;I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v1

    .line 3641
    .local v1, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-eqz v1, :cond_1

    .line 3642
    const-string v4, "SdpManagerService"

    invoke-virtual {v1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3644
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    # getter for: Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;
    invoke-static {v4}, Lcom/android/server/SdpManagerService;->access$1100(Lcom/android/server/SdpManagerService;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v15, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3648
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    # getter for: Lcom/android/server/SdpManagerService;->mServiceKeeper:Lcom/android/server/SdpServiceKeeper;
    invoke-static {v4}, Lcom/android/server/SdpManagerService;->access$2800(Lcom/android/server/SdpManagerService;)Lcom/android/server/SdpServiceKeeper;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/server/SdpServiceKeeper;->loadPolicy(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Lcom/android/server/sdp/engine/SdpPolicy;

    .line 3632
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 3650
    :cond_1
    const-string v6, "SdpManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t find engine info ["

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v11, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "]"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 3654
    .end local v1    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .end local v2    # "alias":Ljava/lang/String;
    .end local v11    # "engineList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v13    # "i":I
    .end local v15    # "id":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v11    # "engineList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_2
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3656
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {}, Lcom/android/server/pm/TimaHelper;->getInstance()Lcom/android/server/pm/TimaHelper;

    move-result-object v5

    # setter for: Lcom/android/server/SdpManagerService;->mTimaHelper:Lcom/android/server/pm/TimaHelper;
    invoke-static {v4, v5}, Lcom/android/server/SdpManagerService;->access$3302(Lcom/android/server/SdpManagerService;Lcom/android/server/pm/TimaHelper;)Lcom/android/server/pm/TimaHelper;

    .line 3657
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    # getter for: Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/SdpManagerService;->access$2900()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/util/EnterprisePartitionManager;

    move-result-object v5

    # setter for: Lcom/android/server/SdpManagerService;->mEPM:Lcom/sec/knox/container/util/EnterprisePartitionManager;
    invoke-static {v4, v5}, Lcom/android/server/SdpManagerService;->access$3402(Lcom/android/server/SdpManagerService;Lcom/sec/knox/container/util/EnterprisePartitionManager;)Lcom/sec/knox/container/util/EnterprisePartitionManager;

    .line 3658
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    new-instance v1, Lcom/android/server/SdpManagerService$SecureFileSystemManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    # getter for: Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/SdpManagerService;->access$2900()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    # getter for: Lcom/android/server/SdpManagerService;->mTimaHelper:Lcom/android/server/pm/TimaHelper;
    invoke-static {v4}, Lcom/android/server/SdpManagerService;->access$3300(Lcom/android/server/SdpManagerService;)Lcom/android/server/pm/TimaHelper;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    # getter for: Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;
    invoke-static {v5}, Lcom/android/server/SdpManagerService;->access$3600(Lcom/android/server/SdpManagerService;)Lcom/sec/knox/container/util/KeyManagementUtil;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    # getter for: Lcom/android/server/SdpManagerService;->mEPM:Lcom/sec/knox/container/util/EnterprisePartitionManager;
    invoke-static {v6}, Lcom/android/server/SdpManagerService;->access$3400(Lcom/android/server/SdpManagerService;)Lcom/sec/knox/container/util/EnterprisePartitionManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;-><init>(Lcom/android/server/SdpManagerService;Landroid/content/Context;Lcom/android/server/pm/TimaHelper;Lcom/sec/knox/container/util/KeyManagementUtil;Lcom/sec/knox/container/util/EnterprisePartitionManager;Lcom/android/server/SdpManagerService$1;)V

    # setter for: Lcom/android/server/SdpManagerService;->mSecureFileSystemManager:Lcom/android/server/SdpManagerService$SecureFileSystemManager;
    invoke-static {v8, v1}, Lcom/android/server/SdpManagerService;->access$3502(Lcom/android/server/SdpManagerService;Lcom/android/server/SdpManagerService$SecureFileSystemManager;)Lcom/android/server/SdpManagerService$SecureFileSystemManager;

    .line 3660
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    # getter for: Lcom/android/server/SdpManagerService;->mSecureFileSystemManager:Lcom/android/server/SdpManagerService$SecureFileSystemManager;
    invoke-static {v4}, Lcom/android/server/SdpManagerService;->access$3500(Lcom/android/server/SdpManagerService;)Lcom/android/server/SdpManagerService$SecureFileSystemManager;

    move-result-object v4

    # invokes: Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mount()Z
    invoke-static {v4}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->access$3800(Lcom/android/server/SdpManagerService$SecureFileSystemManager;)Z

    .line 3661
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    # getter for: Lcom/android/server/SdpManagerService;->mSecureFileSystemManager:Lcom/android/server/SdpManagerService$SecureFileSystemManager;
    invoke-static {v4}, Lcom/android/server/SdpManagerService;->access$3500(Lcom/android/server/SdpManagerService;)Lcom/android/server/SdpManagerService$SecureFileSystemManager;

    move-result-object v4

    # invokes: Lcom/android/server/SdpManagerService$SecureFileSystemManager;->isActivated()Z
    invoke-static {v4}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->access$3900(Lcom/android/server/SdpManagerService$SecureFileSystemManager;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3662
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    # getter for: Lcom/android/server/SdpManagerService;->mSecureFileSystemManager:Lcom/android/server/SdpManagerService$SecureFileSystemManager;
    invoke-static {v4}, Lcom/android/server/SdpManagerService;->access$3500(Lcom/android/server/SdpManagerService;)Lcom/android/server/SdpManagerService$SecureFileSystemManager;

    move-result-object v4

    # invokes: Lcom/android/server/SdpManagerService$SecureFileSystemManager;->systemReady()Z
    invoke-static {v4}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->access$4000(Lcom/android/server/SdpManagerService$SecureFileSystemManager;)Z

    .line 3669
    :cond_3
    const/4 v13, 0x0

    .restart local v13    # "i":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    # getter for: Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;
    invoke-static {v4}, Lcom/android/server/SdpManagerService;->access$1100(Lcom/android/server/SdpManagerService;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v17

    .local v17, "nsize":I
    :goto_3
    move/from16 v0, v17

    if-ge v13, v0, :cond_5

    .line 3670
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    # getter for: Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;
    invoke-static {v4}, Lcom/android/server/SdpManagerService;->access$1100(Lcom/android/server/SdpManagerService;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    .line 3671
    .restart local v1    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    invoke-virtual {v1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v10

    .line 3672
    .local v10, "engineId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    # invokes: Lcom/android/server/SdpManagerService;->isKnoxEngine(I)Z
    invoke-static {v4, v10}, Lcom/android/server/SdpManagerService;->access$4100(Lcom/android/server/SdpManagerService;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3669
    :goto_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 3677
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    # invokes: Lcom/android/server/SdpManagerService;->bootInternal(I)I
    invoke-static {v4, v10}, Lcom/android/server/SdpManagerService;->access$4200(Lcom/android/server/SdpManagerService;I)I

    goto :goto_4

    .line 3683
    .end local v1    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .end local v10    # "engineId":I
    :cond_5
    new-instance v12, Landroid/content/IntentFilter;

    invoke-direct {v12}, Landroid/content/IntentFilter;-><init>()V

    .line 3685
    .local v12, "filter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.USER_ADDED"

    invoke-virtual {v12, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3686
    const-string v4, "android.intent.action.USER_REMOVED"

    invoke-virtual {v12, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3687
    # getter for: Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/SdpManagerService;->access$2900()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lcom/android/server/SdpManagerService$ActionReceiver;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/android/server/SdpManagerService$ActionReceiver;-><init>(Lcom/android/server/SdpManagerService;Lcom/android/server/SdpManagerService$1;)V

    invoke-virtual {v4, v5, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3688
    const-string v4, "SdpManagerServiceHandler"

    const-string/jumbo v5, "registered boradcast receiver for SDP.. "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3690
    new-instance v12, Landroid/content/IntentFilter;

    .end local v12    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v12}, Landroid/content/IntentFilter;-><init>()V

    .line 3691
    .restart local v12    # "filter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v12, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3692
    const-string/jumbo v4, "package"

    invoke-virtual {v12, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 3694
    # getter for: Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/SdpManagerService;->access$2900()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lcom/android/server/SdpManagerService$ActionReceiver;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/android/server/SdpManagerService$ActionReceiver;-><init>(Lcom/android/server/SdpManagerService;Lcom/android/server/SdpManagerService$1;)V

    const-string v6, "com.samsung.container.ACCESS_RECEIVER"

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v12, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 3699
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    # getter for: Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;
    invoke-static {v4}, Lcom/android/server/SdpManagerService;->access$1100(Lcom/android/server/SdpManagerService;)Landroid/util/SparseArray;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_9

    .line 3700
    const-string v4, "SdpManagerServiceHandler"

    const-string v5, "Creating default engine."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3702
    # getter for: Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/SdpManagerService;->access$2900()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v22

    .line 3703
    .local v22, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v22, :cond_0

    .line 3704
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/pm/UserInfo;

    .line 3705
    .local v21, "user":Landroid/content/pm/UserInfo;
    if-eqz v21, :cond_6

    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v4

    if-nez v4, :cond_6

    .line 3706
    move-object/from16 v0, v21

    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    .line 3707
    .local v3, "userId":I
    const-string v4, "SdpManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Creating default engine for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3708
    invoke-static {v3}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->getAndroidDefaultAlias(I)Ljava/lang/String;

    move-result-object v2

    .line 3709
    .restart local v2    # "alias":Ljava/lang/String;
    new-instance v1, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x5

    const/4 v8, 0x0

    move v4, v3

    invoke-direct/range {v1 .. v8}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;-><init>(Ljava/lang/String;IIIIIZ)V

    .line 3718
    .restart local v1    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    const-string v4, "SdpManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Creating default engine info for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3719
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    # getter for: Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;
    invoke-static {v4}, Lcom/android/server/SdpManagerService;->access$3600(Lcom/android/server/SdpManagerService;)Lcom/sec/knox/container/util/KeyManagementUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/knox/container/util/KeyManagementUtil;->generatePasswordResetToken()Ljava/lang/String;

    move-result-object v20

    .line 3720
    .local v20, "rstToken":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    const/4 v5, 0x0

    move-object/from16 v0, v20

    # invokes: Lcom/android/server/SdpManagerService;->createKeys(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)[B
    invoke-static {v4, v1, v5, v0}, Lcom/android/server/SdpManagerService;->access$4400(Lcom/android/server/SdpManagerService;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v9

    .line 3721
    .local v9, "cmk":[B
    if-nez v9, :cond_7

    .line 3722
    const-string v4, "SdpManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "failed to create keys for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 3724
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    # getter for: Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/SdpManagerService;->access$3100(Lcom/android/server/SdpManagerService;)Ljava/lang/Object;

    move-result-object v23

    monitor-enter v23

    .line 3726
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    const/4 v8, 0x0

    move-object v5, v1

    # invokes: Lcom/android/server/SdpManagerService;->addEngineInternalLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;IILcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;[B)I
    invoke-static/range {v4 .. v9}, Lcom/android/server/SdpManagerService;->access$4500(Lcom/android/server/SdpManagerService;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;IILcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;[B)I

    move-result v19

    .line 3728
    .local v19, "ret":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    # invokes: Lcom/android/server/SdpManagerService;->zeroOut([B)V
    invoke-static {v4, v9}, Lcom/android/server/SdpManagerService;->access$4600(Lcom/android/server/SdpManagerService;[B)V

    .line 3729
    if-eqz v19, :cond_8

    .line 3730
    const-string v4, "SdpManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to add default engine. ret:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3731
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-virtual {v4, v1}, Lcom/android/server/SdpManagerService;->removeKeys(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V

    .line 3735
    :goto_6
    monitor-exit v23

    goto/16 :goto_5

    .end local v19    # "ret":I
    :catchall_1
    move-exception v4

    monitor-exit v23
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    .line 3733
    .restart local v19    # "ret":I
    :cond_8
    :try_start_3
    const-string v4, "SdpManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Default engine has been created successfully for userId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_6

    .line 3741
    .end local v1    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .end local v2    # "alias":Ljava/lang/String;
    .end local v3    # "userId":I
    .end local v9    # "cmk":[B
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v19    # "ret":I
    .end local v20    # "rstToken":Ljava/lang/String;
    .end local v21    # "user":Landroid/content/pm/UserInfo;
    .end local v22    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    # getter for: Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;
    invoke-static {v4}, Lcom/android/server/SdpManagerService;->access$1100(Lcom/android/server/SdpManagerService;)Landroid/util/SparseArray;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    .line 3742
    .restart local v1    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-eqz v1, :cond_0

    .line 3743
    invoke-virtual {v1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getUserId()I

    move-result v3

    .line 3744
    .restart local v3    # "userId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    # getter for: Lcom/android/server/SdpManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v4}, Lcom/android/server/SdpManagerService;->access$3000(Lcom/android/server/SdpManagerService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v18

    .line 3746
    .local v18, "quality":I
    if-nez v18, :cond_a

    const/16 v16, 0x1

    .line 3749
    .local v16, "noCredential":Z
    :goto_7
    if-eqz v16, :cond_0

    .line 3750
    const-string v4, "SdpManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No credential to authenticate default user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3751
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x1

    # invokes: Lcom/android/server/SdpManagerService;->unlockInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;I)I
    invoke-static {v4, v1, v5, v6}, Lcom/android/server/SdpManagerService;->access$4700(Lcom/android/server/SdpManagerService;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;I)I

    move-result v19

    .line 3753
    .restart local v19    # "ret":I
    if-nez v19, :cond_b

    .line 3754
    const-string v4, "SdpManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Default engine has been unlocked successfully for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3746
    .end local v16    # "noCredential":Z
    .end local v19    # "ret":I
    :cond_a
    const/16 v16, 0x0

    goto :goto_7

    .line 3756
    .restart local v16    # "noCredential":Z
    .restart local v19    # "ret":I
    :cond_b
    const-string v4, "SdpManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to unlock default engine for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", errno : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3621
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

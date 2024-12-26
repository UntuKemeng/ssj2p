.class Lcom/android/server/pm/PackageManagerService$EMPackageHandler;
.super Landroid/os/Handler;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EMPackageHandler"
.end annotation


# static fields
.field public static final EM_PKG_HADNLER_ID:Ljava/lang/String; = "EM_PKG_HADNLER_ID"

.field public static final ID_INVALID:I = -0x1


# instance fields
.field protected final TIMEOUT:J

.field protected emComponents:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected emCurrentPosition:I

.field protected emDontKillFlags:[Z

.field protected emID:I

.field protected emNewState:[I

.field protected emPackages:[Ljava/lang/String;

.field protected emPreviousID:I

.field protected emProgression:I

.field protected emReceiverBroadcastNext:Landroid/content/IIntentReceiver;

.field protected emSize:I

.field protected emTotSize:I

.field protected emUids:[I

.field protected emUserId:I

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 2765
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 2766
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2733
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emID:I

    .line 2734
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emPreviousID:I

    .line 2746
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->TIMEOUT:J

    .line 2748
    new-instance v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/PackageManagerService$EMPackageHandler$1;-><init>(Lcom/android/server/pm/PackageManagerService$EMPackageHandler;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emReceiverBroadcastNext:Landroid/content/IIntentReceiver;

    .line 2767
    return-void
.end method


# virtual methods
.method doHandleMessage(Landroid/os/Message;)V
    .locals 16
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x4

    const/4 v14, 0x3

    const/4 v15, 0x2

    .line 2809
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 2956
    :goto_0
    return-void

    .line 2811
    :pswitch_0
    const-string v2, "PackageManager"

    const-string v3, "EM_MAKE_PENDING_BROADCAST Start"

    invoke-static {v2, v3}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2821
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->initForPendingBroadcast(I)V

    .line 2823
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcastsForBurst:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcastsWithList;

    if-eqz v2, :cond_1

    .line 2824
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcastsForBurst:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcastsWithList;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcastsWithList;->size()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emSize:I

    .line 2825
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emSize:I

    if-gtz v2, :cond_0

    .line 2826
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pending size ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] EM_MAKE_PENDING_BROADCAST Cancel"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/emergencymode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2828
    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emProgression:I

    .line 2829
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mEMPackageHander:Lcom/android/server/pm/PackageManagerService$EMPackageHandler;

    invoke-virtual {v2, v5}, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 2832
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emSize:I

    new-array v2, v2, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emPackages:[Ljava/lang/String;

    .line 2833
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emSize:I

    new-array v2, v2, [Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emComponents:[Ljava/util/ArrayList;

    .line 2834
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emSize:I

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emUids:[I

    .line 2835
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emSize:I

    new-array v2, v2, [Z

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emDontKillFlags:[Z

    .line 2836
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emSize:I

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emNewState:[I

    .line 2837
    sget-object v14, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v14

    .line 2838
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emPackages:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emComponents:[Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emUids:[I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emDontKillFlags:[Z

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emNewState:[I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emSize:I

    # invokes: Lcom/android/server/pm/PackageManagerService;->handlePendingBroadcastsForBurst([Ljava/lang/String;[Ljava/util/ArrayList;[I[Z[II)I
    invoke-static/range {v2 .. v8}, Lcom/android/server/pm/PackageManagerService;->access$2500(Lcom/android/server/pm/PackageManagerService;[Ljava/lang/String;[Ljava/util/ArrayList;[I[Z[II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emTotSize:I

    .line 2839
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2840
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emTotSize:I

    if-lez v2, :cond_1

    .line 2841
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mEMPackageHander:Lcom/android/server/pm/PackageManagerService$EMPackageHandler;

    invoke-virtual {v2, v15}, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->sendEmptyMessage(I)Z

    .line 2844
    :cond_1
    const-string v2, "PackageManager"

    const-string v3, "EM_MAKE_PENDING_BROADCAST End"

    invoke-static {v2, v3}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2839
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 2849
    :pswitch_1
    const-string v2, "PackageManager"

    const-string v3, "EM_SEND_PENDING_BROADCAST Start"

    invoke-static {v2, v3}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2850
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mEMPackageHander:Lcom/android/server/pm/PackageManagerService$EMPackageHandler;

    invoke-virtual {v2, v14}, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2851
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mEMPackageHander:Lcom/android/server/pm/PackageManagerService$EMPackageHandler;

    invoke-virtual {v2, v14}, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->removeMessages(I)V

    .line 2854
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emCurrentPosition:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emTotSize:I

    if-lt v2, v3, :cond_4

    .line 2856
    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emProgression:I

    .line 2857
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emPreviousID:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emID:I

    if-ne v2, v3, :cond_3

    .line 2858
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mEMPackageHander:Lcom/android/server/pm/PackageManagerService$EMPackageHandler;

    invoke-virtual {v2, v5}, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 2860
    :cond_3
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SKIP EMERGENCY_FINISHED_SENDING_PACKAGE_CHANGED emPrevioudID["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emPreviousID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] emID["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/emergencymode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2865
    :cond_4
    const/4 v13, 0x0

    .line 2869
    .local v13, "ps":Lcom/android/server/pm/PackageSetting;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    const/16 v2, 0xa

    if-ge v10, v2, :cond_c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emCurrentPosition:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emTotSize:I

    if-ge v2, v3, :cond_c

    .line 2870
    const/4 v11, 0x0

    .line 2871
    .local v11, "isAddReceiver":Z
    const/4 v9, -0x1

    .line 2872
    .local v9, "cSet":I
    sget-object v3, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 2873
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v2, v2, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emPackages:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emCurrentPosition:I

    aget-object v4, v4, v5

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    move-object v13, v0

    .line 2874
    if-eqz v13, :cond_5

    .line 2875
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emUserId:I

    invoke-virtual {v13, v2}, Lcom/android/server/pm/PackageSetting;->getEnabled(I)I

    move-result v9

    .line 2877
    :cond_5
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2878
    const/16 v2, 0x9

    if-eq v10, v2, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emCurrentPosition:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emTotSize:I

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_7

    .line 2879
    :cond_6
    const/4 v11, 0x1

    .line 2882
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emNewState:[I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emCurrentPosition:I

    aget v2, v2, v3

    if-ne v9, v2, :cond_9

    .line 2884
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emCurrentPosition:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emTotSize:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emProgression:I

    .line 2885
    if-eqz v11, :cond_8

    .line 2886
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mEMPackageHander:Lcom/android/server/pm/PackageManagerService$EMPackageHandler;

    const-wide/32 v4, 0xea60

    invoke-virtual {v2, v14, v4, v5}, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2887
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emPackages:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emCurrentPosition:I

    aget-object v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emDontKillFlags:[Z

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emCurrentPosition:I

    aget-boolean v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emComponents:[Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emCurrentPosition:I

    aget-object v5, v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emUids:[I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emCurrentPosition:I

    aget v6, v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emReceiverBroadcastNext:Landroid/content/IIntentReceiver;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emID:I

    # invokes: Lcom/android/server/pm/PackageManagerService;->sendPackageChangedBroadcastWithReceiver(Ljava/lang/String;ZLjava/util/ArrayList;ILandroid/content/IIntentReceiver;I)V
    invoke-static/range {v2 .. v8}, Lcom/android/server/pm/PackageManagerService;->access$2600(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZLjava/util/ArrayList;ILandroid/content/IIntentReceiver;I)V

    .line 2891
    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emCurrentPosition:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emCurrentPosition:I

    .line 2869
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 2877
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 2889
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emPackages:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emCurrentPosition:I

    aget-object v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emDontKillFlags:[Z

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emCurrentPosition:I

    aget-boolean v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emComponents:[Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emCurrentPosition:I

    aget-object v5, v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emUids:[I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emCurrentPosition:I

    aget v6, v6, v7

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emID:I

    # invokes: Lcom/android/server/pm/PackageManagerService;->sendPackageChangedBroadcastWithReceiver(Ljava/lang/String;ZLjava/util/ArrayList;ILandroid/content/IIntentReceiver;I)V
    invoke-static/range {v2 .. v8}, Lcom/android/server/pm/PackageManagerService;->access$2600(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZLjava/util/ArrayList;ILandroid/content/IIntentReceiver;I)V

    goto :goto_2

    .line 2896
    :cond_9
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SKIP EM_SEND_PENDING_BROADCAST ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emCurrentPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] / ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emTotSize:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] name["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emPackages:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emCurrentPosition:I

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] curr["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]  now["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emNewState:[I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emCurrentPosition:I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]  emUserId["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/emergencymode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2899
    const/16 v2, 0x9

    if-eq v10, v2, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emCurrentPosition:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emTotSize:I

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_b

    .line 2900
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mEMPackageHander:Lcom/android/server/pm/PackageManagerService$EMPackageHandler;

    invoke-virtual {v2, v15}, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->sendEmptyMessage(I)Z

    .line 2902
    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emCurrentPosition:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emCurrentPosition:I

    goto/16 :goto_3

    .line 2907
    .end local v9    # "cSet":I
    .end local v11    # "isAddReceiver":Z
    :cond_c
    const-string v2, "PackageManager"

    const-string v3, "EM_SEND_PENDING_BROADCAST End"

    invoke-static {v2, v3}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2912
    .end local v10    # "i":I
    .end local v13    # "ps":Lcom/android/server/pm/PackageSetting;
    :pswitch_2
    const-string v2, "PackageManager"

    const-string v3, "EM_CHECK_TIMEOUT_OF_BROADCAST"

    invoke-static {v2, v3}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2913
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mEMPackageHander:Lcom/android/server/pm/PackageManagerService$EMPackageHandler;

    invoke-virtual {v2, v15}, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 2918
    :pswitch_3
    const-string v2, "PackageManager"

    const-string v3, "EMERGENCY_FINISHED_SENDING_PACKAGE_CHANGED"

    invoke-static {v2, v3}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2919
    new-instance v12, Landroid/content/Intent;

    const-string v2, "com.samsung.intent.action.EMERGENCY_FINISHED_SENDING_PACKAGE_CHANGED"

    invoke-direct {v12, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2920
    .local v12, "it":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v12, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2921
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2922
    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emSize:I

    goto/16 :goto_0

    .line 2927
    .end local v12    # "it":Landroid/content/Intent;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mEMPackageHander:Lcom/android/server/pm/PackageManagerService$EMPackageHandler;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->makeNewID()V

    .line 2928
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mEMPackageHander:Lcom/android/server/pm/PackageManagerService$EMPackageHandler;

    invoke-virtual {v2, v5}, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2930
    const-string v2, "PackageManager"

    const-string v3, "cancelEMHandlerSendPendingBroadcast : Nothing to do"

    invoke-static {v2, v3}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2934
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mEMPackageHander:Lcom/android/server/pm/PackageManagerService$EMPackageHandler;

    invoke-virtual {v2, v15}, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 2935
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mEMPackageHander:Lcom/android/server/pm/PackageManagerService$EMPackageHandler;

    invoke-virtual {v2, v15}, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->removeMessages(I)V

    .line 2937
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mEMPackageHander:Lcom/android/server/pm/PackageManagerService$EMPackageHandler;

    invoke-virtual {v2, v14}, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2938
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mEMPackageHander:Lcom/android/server/pm/PackageManagerService$EMPackageHandler;

    invoke-virtual {v2, v14}, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->removeMessages(I)V

    .line 2940
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mEMPackageHander:Lcom/android/server/pm/PackageManagerService$EMPackageHandler;

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2941
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mEMPackageHander:Lcom/android/server/pm/PackageManagerService$EMPackageHandler;

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->removeMessages(I)V

    .line 2947
    :cond_10
    const-string v2, "PackageManager"

    const-string v3, "EM_CANCEL_SENDING_BROADCAST"

    invoke-static {v2, v3}, Lcom/sec/android/emergencymode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2948
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mEMPackageHander:Lcom/android/server/pm/PackageManagerService$EMPackageHandler;

    invoke-virtual {v2, v5}, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 2809
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getProgressionOfPackageChanged()I
    .locals 1

    .prologue
    .line 2797
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emProgression:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    .line 2802
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->doHandleMessage(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2804
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2806
    return-void

    .line 2804
    :catchall_0
    move-exception v0

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    throw v0
.end method

.method public initForPendingBroadcast(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2770
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->makeNewID()V

    .line 2771
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emID:I

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emPreviousID:I

    .line 2772
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emPackages:[Ljava/lang/String;

    .line 2773
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emComponents:[Ljava/util/ArrayList;

    .line 2774
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emUids:[I

    .line 2775
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emDontKillFlags:[Z

    .line 2776
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emNewState:[I

    .line 2777
    iput v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emSize:I

    .line 2778
    iput v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emTotSize:I

    .line 2779
    iput v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emCurrentPosition:I

    .line 2780
    iput p1, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emUserId:I

    .line 2781
    iput v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emProgression:I

    .line 2782
    return-void
.end method

.method public isCanceled()Z
    .locals 2

    .prologue
    .line 2790
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emPreviousID:I

    iget v1, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emID:I

    if-ne v0, v1, :cond_0

    .line 2791
    const/4 v0, 0x0

    .line 2793
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public makeNewID()V
    .locals 3

    .prologue
    .line 2785
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emID:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emID:I

    .line 2786
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "makeNewID ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2787
    return-void
.end method

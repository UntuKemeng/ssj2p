.class Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;
.super Ljava/lang/Thread;
.source "MediaSessionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VolumeKeyLongPressControlThread"
.end annotation


# instance fields
.field private final DURATION_LONG_PRESS:I

.field private final DURATION_REPEAT:I

.field private final MAX_REPEAT:I

.field private mDirection:I

.field private mFlags:I

.field private mNeedToRun:Z

.field private mSleepDuration:I

.field private mStream:I

.field private pm:Landroid/os/PowerManager;

.field final synthetic this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;)V
    .locals 2

    .prologue
    .line 856
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 850
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->DURATION_LONG_PRESS:I

    .line 851
    const/16 v0, 0x32

    iput v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->DURATION_REPEAT:I

    .line 852
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->MAX_REPEAT:I

    .line 857
    iget-object v0, p1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->pm:Landroid/os/PowerManager;

    .line 858
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 872
    const/4 v0, 0x0

    .line 875
    .local v0, "repeat":I
    :goto_0
    :try_start_0
    iget v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->mSleepDuration:I

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 879
    :goto_1
    monitor-enter p0

    .line 880
    :try_start_1
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->pm:Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 881
    const-string v4, "MediaSessionService"

    const-string/jumbo v5, "isInteractive() == true"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    monitor-exit p0

    .line 906
    :goto_2
    return-void

    .line 885
    :cond_0
    iget-boolean v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->mNeedToRun:Z

    if-eqz v4, :cond_1

    const/16 v4, 0xc8

    if-lt v0, v4, :cond_2

    .line 886
    :cond_1
    monitor-exit p0

    goto :goto_2

    .line 904
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 888
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 889
    :try_start_2
    const-string v4, "MediaSessionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "volumekey long press repeat:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    iget v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->mSleepDuration:I

    const/16 v5, 0x1f4

    if-ne v4, v5, :cond_3

    .line 892
    const/16 v4, 0x32

    iput v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->mSleepDuration:I

    .line 894
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v2

    .line 896
    .local v2, "token":J
    :try_start_3
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v4, v4, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->access$1100(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 897
    :try_start_4
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v4, v4, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;
    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->access$1600(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v6, v6, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mCurrentUserId:I
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService;->access$2100(Lcom/android/server/media/MediaSessionService;)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/android/server/media/MediaSessionStack;->getDefaultVolumeSession(I)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v1

    .line 899
    .local v1, "session":Lcom/android/server/media/MediaSessionRecord;
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->mStream:I

    iget v7, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->mDirection:I

    iget v8, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->mFlags:I

    # invokes: Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchAdjustVolumeLocked(IIILcom/android/server/media/MediaSessionRecord;)V
    invoke-static {v4, v6, v7, v8, v1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->access$2200(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;IIILcom/android/server/media/MediaSessionRecord;)V

    .line 900
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 902
    :try_start_5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 904
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 900
    .end local v1    # "session":Lcom/android/server/media/MediaSessionRecord;
    :catchall_1
    move-exception v4

    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 902
    :catchall_2
    move-exception v4

    :try_start_8
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 876
    .end local v2    # "token":J
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public updateInfo(IIIZ)V
    .locals 1
    .param p1, "stream"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I
    .param p4, "down"    # Z

    .prologue
    .line 861
    monitor-enter p0

    .line 862
    :try_start_0
    iput p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->mStream:I

    .line 863
    iput p2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->mDirection:I

    .line 864
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->mSleepDuration:I

    .line 865
    iput-boolean p4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->mNeedToRun:Z

    .line 866
    iput p3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->mFlags:I

    .line 867
    monitor-exit p0

    .line 868
    return-void

    .line 867
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

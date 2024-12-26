.class public final Lcom/android/internal/os/BatteryStatsImpl$Uid;
.super Landroid/os/BatteryStats$Uid;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Uid"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;,
        Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;,
        Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;,
        Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    }
.end annotation


# static fields
.field static final NO_BATCHED_SCAN_STARTED:I = -0x1

.field static final PROCESS_STATE_NONE:I = 0x3


# instance fields
.field mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mBluetoothControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field mCpuPower:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field mCurStepSystemTime:J

.field mCurStepUserTime:J

.field mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mFullWifiLockOut:Z

.field mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mGpuSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field final mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field mLastStepSystemTime:J

.field mLastStepUserTime:J

.field mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field final mPackageStats:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;",
            ">;"
        }
    .end annotation
.end field

.field final mPids:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/BatteryStats$Uid$Pid;",
            ">;"
        }
    .end annotation
.end field

.field mProcessState:I

.field mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field final mProcessStats:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;",
            ">;"
        }
    .end annotation
.end field

.field final mSensorStats:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;",
            ">;"
        }
    .end annotation
.end field

.field final mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field final mUid:I

.field mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

.field mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

.field mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field final mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;",
            ">;"
        }
    .end annotation
.end field

.field mWifiBatchedScanBinStarted:I

.field mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mWifiControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field mWifiMulticastEnabled:Z

.field mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mWifiRunning:Z

.field mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mWifiScanStarted:Z

.field mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field final synthetic this$0:Lcom/android/internal/os/BatteryStatsImpl;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;I)V
    .locals 6
    .param p2, "uid"    # I

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x3

    const/4 v3, 0x4

    .line 4605
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {p0}, Landroid/os/BatteryStats$Uid;-><init>()V

    .line 4505
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    .line 4520
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    .line 4535
    new-array v0, v3, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 4541
    new-array v0, v3, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 4552
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 4553
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 4554
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuPower:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 4563
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$1;

    invoke-direct {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$1;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    .line 4570
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$2;

    invoke-direct {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$2;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    .line 4579
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$3;

    invoke-direct {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$3;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    .line 4588
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    .line 4593
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    .line 4598
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    .line 4603
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    .line 4606
    iput p2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUid:I

    .line 4607
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p1, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRunningTimers:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 4609
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p1, Lcom/android/internal/os/BatteryStatsImpl;->mFullWifiLockTimers:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, p0, v5, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 4611
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanTimers:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 4613
    new-array v0, v5, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 4614
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastTimers:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 4616
    new-array v0, v4, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 4618
    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsImpl;->getGpuSpeedSteps()I

    move-result v0

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 4621
    return-void
.end method


# virtual methods
.method public createAudioTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .locals 4

    .prologue
    .line 4776
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 4777
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/16 v1, 0xf

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mAudioTurnedOnTimers:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 4780
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public createCameraTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .locals 4

    .prologue
    .line 4848
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 4849
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/16 v1, 0x11

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mCameraTurnedOnTimers:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 4852
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public createFlashlightTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .locals 4

    .prologue
    .line 4824
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 4825
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/16 v1, 0x10

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightTurnedOnTimers:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 4828
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public createForegroundActivityTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .locals 4

    .prologue
    .line 4872
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 4873
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/16 v1, 0xa

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 4876
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public createVibratorOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;
    .locals 3

    .prologue
    .line 4937
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    if-nez v0, :cond_0

    .line 4938
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    .line 4940
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    return-object v0
.end method

.method public createVideoTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .locals 4

    .prologue
    .line 4800
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 4801
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mVideoTurnedOnTimers:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 4804
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public bridge synthetic getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .prologue
    .line 4491
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getAudioTurnedOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public getAudioTurnedOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 1

    .prologue
    .line 5013
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;
    .locals 1

    .prologue
    .line 7078
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    return-object v0
.end method

.method public bridge synthetic getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .prologue
    .line 4491
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getCameraTurnedOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public getCameraTurnedOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 1

    .prologue
    .line 5028
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public getCpuPowerMaUs(I)J
    .locals 2
    .param p1, "which"    # I

    .prologue
    .line 5183
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuPower:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getFlashlightTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .prologue
    .line 4491
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getFlashlightTurnedOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public getFlashlightTurnedOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 1

    .prologue
    .line 5023
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public bridge synthetic getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .prologue
    .line 4491
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getForegroundActivityTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public getForegroundActivityTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 1

    .prologue
    .line 5033
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public getFullWifiLockTime(JI)J
    .locals 3
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .prologue
    .line 4963
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 4964
    const-wide/16 v0, 0x0

    .line 4966
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getJobStats()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4635
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method public getMobileRadioActiveCount(I)I
    .locals 2
    .param p1, "which"    # I

    .prologue
    .line 5167
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    long-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMobileRadioActiveTime(I)J
    .locals 2
    .param p1, "which"    # I

    .prologue
    .line 5161
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getNetworkActivityBytes(II)J
    .locals 2
    .param p1, "type"    # I
    .param p2, "which"    # I

    .prologue
    .line 5141
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 5143
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    .line 5145
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getNetworkActivityPackets(II)J
    .locals 2
    .param p1, "type"    # I
    .param p2, "which"    # I

    .prologue
    .line 5151
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 5153
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    .line 5155
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getPackageStats()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Uid$Pkg;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4650
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public getPackageStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 6901
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    .line 6902
    .local v0, "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    if-nez v0, :cond_0

    .line 6903
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    .end local v0    # "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    invoke-direct {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;)V

    .line 6904
    .restart local v0    # "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6907
    :cond_0
    return-object v0
.end method

.method public getPidStats()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<+",
            "Landroid/os/BatteryStats$Uid$Pid;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6884
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getPidStatsLocked(I)Landroid/os/BatteryStats$Uid$Pid;
    .locals 2
    .param p1, "pid"    # I

    .prologue
    .line 6888
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryStats$Uid$Pid;

    .line 6889
    .local v0, "p":Landroid/os/BatteryStats$Uid$Pid;
    if-nez v0, :cond_0

    .line 6890
    new-instance v0, Landroid/os/BatteryStats$Uid$Pid;

    .end local v0    # "p":Landroid/os/BatteryStats$Uid$Pid;
    invoke-direct {v0, p0}, Landroid/os/BatteryStats$Uid$Pid;-><init>(Landroid/os/BatteryStats$Uid;)V

    .line 6891
    .restart local v0    # "p":Landroid/os/BatteryStats$Uid$Pid;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6893
    :cond_0
    return-object v0
.end method

.method public getProcessStateTime(IJI)J
    .locals 4
    .param p1, "state"    # I
    .param p2, "elapsedRealtimeUs"    # J
    .param p4, "which"    # I

    .prologue
    const-wide/16 v0, 0x0

    .line 5050
    if-ltz p1, :cond_0

    const/4 v2, 0x3

    if-lt p1, v2, :cond_1

    .line 5054
    :cond_0
    :goto_0
    return-wide v0

    .line 5051
    :cond_1
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v2, v2, p1

    if-eqz v2, :cond_0

    .line 5054
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getProcessStats()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Uid$Proc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4645
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 6831
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    .line 6832
    .local v0, "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    if-nez v0, :cond_0

    .line 6833
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    .end local v0    # "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    invoke-direct {v0, p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;Ljava/lang/String;)V

    .line 6834
    .restart local v0    # "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6837
    :cond_0
    return-object v0
.end method

.method public getSensorStats()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<+",
            "Landroid/os/BatteryStats$Uid$Sensor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4640
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getSensorTimerLocked(IZ)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .locals 5
    .param p1, "sensor"    # I
    .param p2, "create"    # Z

    .prologue
    .line 6955
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;

    .line 6956
    .local v0, "se":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    if-nez v0, :cond_2

    .line 6957
    if-nez p2, :cond_1

    .line 6958
    const/4 v1, 0x0

    .line 6974
    :cond_0
    :goto_0
    return-object v1

    .line 6960
    :cond_1
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;

    .end local v0    # "se":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    invoke-direct {v0, p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;I)V

    .line 6961
    .restart local v0    # "se":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6963
    :cond_2
    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->mTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6964
    .local v1, "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-nez v1, :cond_0

    .line 6967
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mSensorTimers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 6968
    .local v2, "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    if-nez v2, :cond_3

    .line 6969
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6970
    .restart local v2    # "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mSensorTimers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6972
    :cond_3
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .end local v1    # "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v1, p0, v3, v2, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    .line 6973
    .restart local v1    # "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    iput-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->mTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto :goto_0
.end method

.method public getServiceStatsLocked(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "serv"    # Ljava/lang/String;

    .prologue
    .line 6915
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getPackageStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    move-result-object v0

    .line 6916
    .local v0, "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    .line 6917
    .local v1, "ss":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    if-nez v1, :cond_0

    .line 6918
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->newServiceStatsLocked()Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    move-result-object v1

    .line 6919
    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6922
    :cond_0
    return-object v1
.end method

.method public getSyncStats()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4630
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method public getSystemCpuTimeUs(I)J
    .locals 2
    .param p1, "which"    # I

    .prologue
    .line 5178
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimeAtCpuSpeed(III)J
    .locals 4
    .param p1, "cluster"    # I
    .param p2, "step"    # I
    .param p3, "which"    # I

    .prologue
    .line 5188
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v2, :cond_0

    .line 5189
    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    array-length v2, v2

    if-ge p1, v2, :cond_0

    .line 5190
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v1, v2, p1

    .line 5191
    .local v1, "cpuSpeeds":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    if-eqz v1, :cond_0

    .line 5192
    if-ltz p2, :cond_0

    array-length v2, v1

    if-ge p2, v2, :cond_0

    .line 5193
    aget-object v0, v1, p2

    .line 5194
    .local v0, "c":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    if-eqz v0, :cond_0

    .line 5195
    invoke-virtual {v0, p3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v2

    .line 5201
    .end local v0    # "c":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .end local v1    # "cpuSpeeds":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getTimeAtGpuSpeed(II)J
    .locals 2
    .param p1, "step"    # I
    .param p2, "which"    # I

    .prologue
    .line 5207
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 5208
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 5209
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    .line 5212
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 4655
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUid:I

    return v0
.end method

.method public getUserActivityCount(II)I
    .locals 1
    .param p1, "type"    # I
    .param p2, "which"    # I

    .prologue
    .line 5082
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    if-nez v0, :cond_0

    .line 5083
    const/4 v0, 0x0

    .line 5085
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->getCountLocked(I)I

    move-result v0

    goto :goto_0
.end method

.method public getUserCpuTimeUs(I)J
    .locals 2
    .param p1, "which"    # I

    .prologue
    .line 5173
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getVibratorOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .prologue
    .line 4491
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getVibratorOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public getVibratorOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 1

    .prologue
    .line 5059
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    return-object v0
.end method

.method public bridge synthetic getVideoTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .prologue
    .line 4491
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getVideoTurnedOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public getVideoTurnedOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 1

    .prologue
    .line 5018
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public getWakelockStats()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Uid$Wakelock;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4625
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method public getWifiBatchedScanCount(II)I
    .locals 2
    .param p1, "csphBin"    # I
    .param p2, "which"    # I

    .prologue
    const/4 v0, 0x0

    .line 4996
    if-ltz p1, :cond_0

    const/4 v1, 0x5

    if-lt p1, v1, :cond_1

    .line 5000
    :cond_0
    :goto_0
    return v0

    .line 4997
    :cond_1
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v1, v1, p1

    if-eqz v1, :cond_0

    .line 5000
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    move-result v0

    goto :goto_0
.end method

.method public getWifiBatchedScanTime(IJI)J
    .locals 4
    .param p1, "csphBin"    # I
    .param p2, "elapsedRealtimeUs"    # J
    .param p4, "which"    # I

    .prologue
    const-wide/16 v0, 0x0

    .line 4987
    if-ltz p1, :cond_0

    const/4 v2, 0x5

    if-lt p1, v2, :cond_1

    .line 4991
    :cond_0
    :goto_0
    return-wide v0

    .line 4988
    :cond_1
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v2, v2, p1

    if-eqz v2, :cond_0

    .line 4991
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getWifiControllerActivity(II)J
    .locals 2
    .param p1, "type"    # I
    .param p2, "which"    # I

    .prologue
    .line 5218
    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 5220
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    .line 5222
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getWifiMulticastTime(JI)J
    .locals 3
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .prologue
    .line 5005
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 5006
    const-wide/16 v0, 0x0

    .line 5008
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getWifiRunningTime(JI)J
    .locals 3
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .prologue
    .line 4955
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 4956
    const-wide/16 v0, 0x0

    .line 4958
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getWifiScanCount(I)I
    .locals 1
    .param p1, "which"    # I

    .prologue
    .line 4979
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 4980
    const/4 v0, 0x0

    .line 4982
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    move-result v0

    goto :goto_0
.end method

.method public getWifiScanTime(JI)J
    .locals 3
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .prologue
    .line 4971
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 4972
    const-wide/16 v0, 0x0

    .line 4974
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    goto :goto_0
.end method

.method public hasNetworkActivity()Z
    .locals 1

    .prologue
    .line 5136
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUserActivity()Z
    .locals 1

    .prologue
    .line 5077
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method initNetworkActivityLocked()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 5226
    new-array v1, v4, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 5227
    new-array v1, v4, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 5228
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 5229
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v2, v1, v0

    .line 5230
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v2, v1, v0

    .line 5228
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5232
    :cond_0
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 5233
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 5234
    return-void
.end method

.method initUserActivityLocked()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 5107
    new-array v1, v4, [Lcom/android/internal/os/BatteryStatsImpl$Counter;

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    .line 5108
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 5109
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$Counter;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Counter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v2, v1, v0

    .line 5108
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5111
    :cond_0
    return-void
.end method

.method makeProcessState(ILandroid/os/Parcel;)V
    .locals 7
    .param p1, "i"    # I
    .param p2, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0xc

    .line 5037
    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-lt p1, v0, :cond_1

    .line 5046
    :cond_0
    :goto_0
    return-void

    .line 5039
    :cond_1
    if-nez p2, :cond_2

    .line 5040
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v1, v0, p1

    goto :goto_0

    .line 5043
    :cond_2
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v0, v6, p1

    goto :goto_0
.end method

.method makeWifiBatchedScanBin(ILandroid/os/Parcel;)V
    .locals 7
    .param p1, "i"    # I
    .param p2, "in"    # Landroid/os/Parcel;

    .prologue
    const/16 v2, 0xb

    .line 5089
    if-ltz p1, :cond_0

    const/4 v0, 0x5

    if-lt p1, v0, :cond_1

    .line 5103
    :cond_0
    :goto_0
    return-void

    .line 5091
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiBatchedScanTimers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 5092
    .local v3, "collected":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    if-nez v3, :cond_2

    .line 5093
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "collected":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5094
    .restart local v3    # "collected":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiBatchedScanTimers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5096
    :cond_2
    if-nez p2, :cond_3

    .line 5097
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v1, v0, p1

    goto :goto_0

    .line 5100
    :cond_3
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v0, v6, p1

    goto :goto_0
.end method

.method public noteActivityPausedLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 4893
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_0

    .line 4894
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 4897
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-boolean v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryInternal:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteGpuStoppedLocked()V

    .line 4901
    :cond_0
    return-void
.end method

.method public noteActivityResumedLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 4882
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createForegroundActivityTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 4885
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getUid()I

    move-result v0

    sput v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastUid:I

    .line 4886
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteGpuStartedLocked()V

    .line 4889
    return-void
.end method

.method public noteAudioTurnedOffLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 4788
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_0

    .line 4789
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 4791
    :cond_0
    return-void
.end method

.method public noteAudioTurnedOnLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 4784
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createAudioTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 4785
    return-void
.end method

.method public noteCameraTurnedOffLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 4860
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_0

    .line 4861
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 4863
    :cond_0
    return-void
.end method

.method public noteCameraTurnedOnLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 4856
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createCameraTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 4857
    return-void
.end method

.method public noteFlashlightTurnedOffLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 4836
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_0

    .line 4837
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 4839
    :cond_0
    return-void
.end method

.method public noteFlashlightTurnedOnLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 4832
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createFlashlightTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 4833
    return-void
.end method

.method public noteFullWifiLockAcquiredLocked(J)V
    .locals 5
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 4680
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    if-nez v0, :cond_1

    .line 4681
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    .line 4682
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 4683
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mFullWifiLockTimers:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 4686
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 4688
    :cond_1
    return-void
.end method

.method public noteFullWifiLockReleasedLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 4692
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    if-eqz v0, :cond_0

    .line 4693
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    .line 4694
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 4696
    :cond_0
    return-void
.end method

.method public noteGpuStartedLocked()V
    .locals 2

    .prologue
    .line 4905
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    # getter for: Lcom/android/internal/os/BatteryStatsImpl;->mKernelGpuSpeedReader:Lcom/android/internal/os/KernelGpuSpeedReader;
    invoke-static {v1}, Lcom/android/internal/os/BatteryStatsImpl;->access$100(Lcom/android/internal/os/BatteryStatsImpl;)Lcom/android/internal/os/KernelGpuSpeedReader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/os/KernelGpuSpeedReader;->readDelta()[J

    move-result-object v0

    .line 4906
    .local v0, "gpuSpeeds":[J
    return-void
.end method

.method public noteGpuStoppedLocked()V
    .locals 6

    .prologue
    .line 4909
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    # getter for: Lcom/android/internal/os/BatteryStatsImpl;->mKernelGpuSpeedReader:Lcom/android/internal/os/KernelGpuSpeedReader;
    invoke-static {v2}, Lcom/android/internal/os/BatteryStatsImpl;->access$100(Lcom/android/internal/os/BatteryStatsImpl;)Lcom/android/internal/os/KernelGpuSpeedReader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/os/KernelGpuSpeedReader;->readDelta()[J

    move-result-object v0

    .line 4910
    .local v0, "gpuSpeeds":[J
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v2, :cond_1

    .line 4911
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 4912
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    .line 4913
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v3, v2, v1

    .line 4915
    :cond_0
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v2, v2, v1

    aget-wide v4, v0, v1

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 4911
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4918
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method noteMobileRadioActiveTimeLocked(J)V
    .locals 5
    .param p1, "batteryUptime"    # J

    .prologue
    .line 5127
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-nez v0, :cond_0

    .line 5128
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->initNetworkActivityLocked()V

    .line 5130
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 5131
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 5132
    return-void
.end method

.method noteNetworkActivityLocked(IJJ)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "deltaBytes"    # J
    .param p4, "deltaPackets"    # J

    .prologue
    .line 5114
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-nez v0, :cond_0

    .line 5115
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->initNetworkActivityLocked()V

    .line 5117
    :cond_0
    if-ltz p1, :cond_1

    const/4 v0, 0x4

    if-ge p1, v0, :cond_1

    .line 5118
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 5119
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v0, v0, p1

    invoke-virtual {v0, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 5124
    :goto_0
    return-void

    .line 5121
    :cond_1
    const-string v0, "BatteryStatsImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown network activity type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was specified."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public noteResetAudioLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 4794
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_0

    .line 4795
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    .line 4797
    :cond_0
    return-void
.end method

.method public noteResetCameraLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 4866
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_0

    .line 4867
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    .line 4869
    :cond_0
    return-void
.end method

.method public noteResetFlashlightLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 4842
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_0

    .line 4843
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    .line 4845
    :cond_0
    return-void
.end method

.method public noteResetVideoLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 4818
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_0

    .line 4819
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    .line 4821
    :cond_0
    return-void
.end method

.method public noteStartGps(J)V
    .locals 3
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 7064
    const/16 v1, -0x2710

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getSensorTimerLocked(IZ)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    .line 7065
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-eqz v0, :cond_0

    .line 7066
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 7068
    :cond_0
    return-void
.end method

.method public noteStartJobLocked(Ljava/lang/String;J)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "elapsedRealtimeMs"    # J

    .prologue
    .line 6992
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->startObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6993
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-eqz v0, :cond_0

    .line 6994
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 6996
    :cond_0
    return-void
.end method

.method public noteStartSensor(IJ)V
    .locals 2
    .param p1, "sensor"    # I
    .param p2, "elapsedRealtimeMs"    # J

    .prologue
    .line 7049
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getSensorTimerLocked(IZ)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    .line 7050
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-eqz v0, :cond_0

    .line 7051
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 7053
    :cond_0
    return-void
.end method

.method public noteStartSyncLocked(Ljava/lang/String;J)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "elapsedRealtimeMs"    # J

    .prologue
    .line 6978
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->startObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6979
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-eqz v0, :cond_0

    .line 6980
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 6982
    :cond_0
    return-void
.end method

.method public noteStartWakeLocked(ILjava/lang/String;IJ)V
    .locals 4
    .param p1, "pid"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "elapsedRealtimeMs"    # J

    .prologue
    .line 7006
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v2, p2}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->startObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    .line 7007
    .local v1, "wl":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    if-eqz v1, :cond_0

    .line 7008
    invoke-virtual {v1, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->getStopwatchTimer(I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 7010
    :cond_0
    if-ltz p1, :cond_1

    if-nez p3, :cond_1

    .line 7011
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getPidStatsLocked(I)Landroid/os/BatteryStats$Uid$Pid;

    move-result-object v0

    .line 7012
    .local v0, "p":Landroid/os/BatteryStats$Uid$Pid;
    iget v2, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    if-nez v2, :cond_1

    .line 7013
    iput-wide p4, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeStartMs:J

    .line 7016
    .end local v0    # "p":Landroid/os/BatteryStats$Uid$Pid;
    :cond_1
    return-void
.end method

.method public noteStopGps(J)V
    .locals 3
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 7071
    const/16 v1, -0x2710

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getSensorTimerLocked(IZ)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    .line 7072
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-eqz v0, :cond_0

    .line 7073
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 7075
    :cond_0
    return-void
.end method

.method public noteStopJobLocked(Ljava/lang/String;J)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "elapsedRealtimeMs"    # J

    .prologue
    .line 6999
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->stopObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 7000
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-eqz v0, :cond_0

    .line 7001
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 7003
    :cond_0
    return-void
.end method

.method public noteStopSensor(IJ)V
    .locals 2
    .param p1, "sensor"    # I
    .param p2, "elapsedRealtimeMs"    # J

    .prologue
    .line 7057
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getSensorTimerLocked(IZ)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    .line 7058
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-eqz v0, :cond_0

    .line 7059
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 7061
    :cond_0
    return-void
.end method

.method public noteStopSyncLocked(Ljava/lang/String;J)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "elapsedRealtimeMs"    # J

    .prologue
    .line 6985
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->stopObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6986
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-eqz v0, :cond_0

    .line 6987
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 6989
    :cond_0
    return-void
.end method

.method public noteStopWakeLocked(ILjava/lang/String;IJ)V
    .locals 6
    .param p1, "pid"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "elapsedRealtimeMs"    # J

    .prologue
    .line 7019
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v2, p2}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->stopObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    .line 7020
    .local v1, "wl":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    if-eqz v1, :cond_0

    .line 7021
    invoke-virtual {v1, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->getStopwatchTimer(I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 7023
    :cond_0
    if-ltz p1, :cond_1

    if-nez p3, :cond_1

    .line 7024
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryStats$Uid$Pid;

    .line 7025
    .local v0, "p":Landroid/os/BatteryStats$Uid$Pid;
    if-eqz v0, :cond_1

    iget v2, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    if-lez v2, :cond_1

    .line 7026
    iget v2, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    add-int/lit8 v3, v2, -0x1

    iput v3, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 7027
    iget-wide v2, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeSumMs:J

    iget-wide v4, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeStartMs:J

    sub-long v4, p4, v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeSumMs:J

    .line 7028
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeStartMs:J

    .line 7032
    .end local v0    # "p":Landroid/os/BatteryStats$Uid$Pid;
    :cond_1
    return-void
.end method

.method public noteUserActivityLocked(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 5064
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    if-nez v0, :cond_0

    .line 5065
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->initUserActivityLocked()V

    .line 5067
    :cond_0
    if-ltz p1, :cond_1

    const/4 v0, 0x3

    if-ge p1, v0, :cond_1

    .line 5068
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->stepAtomic()V

    .line 5073
    :goto_0
    return-void

    .line 5070
    :cond_1
    const-string v0, "BatteryStatsImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown user activity type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was specified."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public noteVibratorOffLocked()V
    .locals 2

    .prologue
    .line 4948
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    if-eqz v0, :cond_0

    .line 4949
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->abortLastDuration(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 4951
    :cond_0
    return-void
.end method

.method public noteVibratorOnLocked(J)V
    .locals 3
    .param p1, "durationMillis"    # J

    .prologue
    .line 4944
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createVibratorOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->addDuration(Lcom/android/internal/os/BatteryStatsImpl;J)V

    .line 4945
    return-void
.end method

.method public noteVideoTurnedOffLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 4812
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_0

    .line 4813
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 4815
    :cond_0
    return-void
.end method

.method public noteVideoTurnedOnLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 4808
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createVideoTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 4809
    return-void
.end method

.method public noteWifiBatchedScanStartedLocked(IJ)V
    .locals 4
    .param p1, "csph"    # I
    .param p2, "elapsedRealtimeMs"    # J

    .prologue
    .line 4720
    const/4 v0, 0x0

    .line 4721
    .local v0, "bin":I
    :goto_0
    const/16 v1, 0x8

    if-le p1, v1, :cond_0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 4722
    shr-int/lit8 p1, p1, 0x3

    .line 4723
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4726
    :cond_0
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    if-ne v1, v0, :cond_1

    .line 4737
    :goto_1
    return-void

    .line 4728
    :cond_1
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 4729
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 4732
    :cond_2
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    .line 4733
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v1, v1, v0

    if-nez v1, :cond_3

    .line 4734
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->makeWifiBatchedScanBin(ILandroid/os/Parcel;)V

    .line 4736
    :cond_3
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v1, v1, v0

    invoke-virtual {v1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    goto :goto_1
.end method

.method public noteWifiBatchedScanStoppedLocked(J)V
    .locals 3
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    const/4 v2, -0x1

    .line 4741
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    if-eq v0, v2, :cond_0

    .line 4742
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 4744
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    .line 4746
    :cond_0
    return-void
.end method

.method public noteWifiControllerActivityLocked(IJ)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "timeMs"    # J

    .prologue
    .line 4769
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 4770
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v1, v0, p1

    .line 4772
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 4773
    return-void
.end method

.method public noteWifiMulticastDisabledLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 4762
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastEnabled:Z

    if-eqz v0, :cond_0

    .line 4763
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastEnabled:Z

    .line 4764
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 4766
    :cond_0
    return-void
.end method

.method public noteWifiMulticastEnabledLocked(J)V
    .locals 5
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 4750
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastEnabled:Z

    if-nez v0, :cond_1

    .line 4751
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastEnabled:Z

    .line 4752
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 4753
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastTimers:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 4756
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 4758
    :cond_1
    return-void
.end method

.method public noteWifiRunningLocked(J)V
    .locals 5
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 4660
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunning:Z

    if-nez v0, :cond_1

    .line 4661
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunning:Z

    .line 4662
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 4663
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRunningTimers:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 4666
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 4668
    :cond_1
    return-void
.end method

.method public noteWifiScanStartedLocked(J)V
    .locals 5
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 4700
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanStarted:Z

    if-nez v0, :cond_1

    .line 4701
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanStarted:Z

    .line 4702
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 4703
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanTimers:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 4706
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 4708
    :cond_1
    return-void
.end method

.method public noteWifiScanStoppedLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 4712
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanStarted:Z

    if-eqz v0, :cond_0

    .line 4713
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanStarted:Z

    .line 4714
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 4716
    :cond_0
    return-void
.end method

.method public noteWifiStoppedLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 4672
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunning:Z

    if-eqz v0, :cond_0

    .line 4673
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunning:Z

    .line 4674
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 4676
    :cond_0
    return-void
.end method

.method readFromParcelLocked(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V
    .locals 38
    .param p1, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p2, "screenOffTimeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p3, "in"    # Landroid/os/Parcel;

    .prologue
    .line 5734
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 5735
    .local v25, "numWakelocks":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->clear()V

    .line 5736
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_0
    move/from16 v0, v25

    if-ge v14, v0, :cond_0

    .line 5737
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v36

    .line 5738
    .local v36, "wakelockName":Ljava/lang/String;
    new-instance v35, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;)V

    .line 5739
    .local v35, "wakelock":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    move-object/from16 v0, v35

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->readFromParcelLocked(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    .line 5740
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    move-object/from16 v0, v36

    move-object/from16 v1, v35

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5736
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 5743
    .end local v35    # "wakelock":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    .end local v36    # "wakelockName":Ljava/lang/String;
    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 5744
    .local v24, "numSyncs":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->clear()V

    .line 5745
    const/4 v14, 0x0

    :goto_1
    move/from16 v0, v24

    if-ge v14, v0, :cond_2

    .line 5746
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v34

    .line 5747
    .local v34, "syncName":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    .line 5748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    move-object/from16 v37, v0

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/16 v6, 0xd

    const/4 v7, 0x0

    move-object/from16 v5, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, v37

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5745
    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 5753
    .end local v34    # "syncName":Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 5754
    .local v19, "numJobs":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->clear()V

    .line 5755
    const/4 v14, 0x0

    :goto_2
    move/from16 v0, v19

    if-ge v14, v0, :cond_4

    .line 5756
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 5757
    .local v15, "jobName":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    .line 5758
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    move-object/from16 v37, v0

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/16 v6, 0xe

    const/4 v7, 0x0

    move-object/from16 v5, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v15, v4}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5755
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 5762
    .end local v15    # "jobName":Ljava/lang/String;
    :cond_4
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 5763
    .local v22, "numSensors":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 5764
    const/16 v16, 0x0

    .local v16, "k":I
    :goto_3
    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_5

    .line 5765
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .line 5766
    .local v31, "sensorNumber":I
    new-instance v30, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;I)V

    .line 5767
    .local v30, "sensor":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->readFromParcelLocked(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    .line 5768
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    move/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5764
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 5771
    .end local v30    # "sensor":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    .end local v31    # "sensorNumber":I
    :cond_5
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 5772
    .local v21, "numProcs":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    .line 5773
    const/16 v16, 0x0

    :goto_4
    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_6

    .line 5774
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v29

    .line 5775
    .local v29, "processName":Ljava/lang/String;
    new-instance v28, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;Ljava/lang/String;)V

    .line 5776
    .local v28, "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    move-object/from16 v0, v28

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->readFromParcelLocked(Landroid/os/Parcel;)V

    .line 5777
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v4, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5773
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 5780
    .end local v28    # "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    .end local v29    # "processName":Ljava/lang/String;
    :cond_6
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 5781
    .local v20, "numPkgs":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    .line 5782
    const/16 v17, 0x0

    .local v17, "l":I
    :goto_5
    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_7

    .line 5783
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    .line 5784
    .local v26, "packageName":Ljava/lang/String;
    new-instance v27, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;)V

    .line 5785
    .local v27, "pkg":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->readFromParcelLocked(Landroid/os/Parcel;)V

    .line 5786
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5782
    add-int/lit8 v17, v17, 0x1

    goto :goto_5

    .line 5789
    .end local v26    # "packageName":Ljava/lang/String;
    .end local v27    # "pkg":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    :cond_7
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunning:Z

    .line 5790
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8

    .line 5791
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v6, 0x4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v7, v5, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRunningTimers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v8, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v5, p0

    move-object/from16 v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5796
    :goto_6
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    .line 5797
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9

    .line 5798
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v6, 0x5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v7, v5, Lcom/android/internal/os/BatteryStatsImpl;->mFullWifiLockTimers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v8, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v5, p0

    move-object/from16 v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5803
    :goto_7
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanStarted:Z

    .line 5804
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a

    .line 5805
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v6, 0x6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v7, v5, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanTimers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v8, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v5, p0

    move-object/from16 v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5810
    :goto_8
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    .line 5811
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_9
    const/4 v4, 0x5

    if-ge v13, v4, :cond_c

    .line 5812
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b

    .line 5813
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v13, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->makeWifiBatchedScanBin(ILandroid/os/Parcel;)V

    .line 5811
    :goto_a
    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    .line 5794
    .end local v13    # "i":I
    :cond_8
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto :goto_6

    .line 5801
    :cond_9
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto :goto_7

    .line 5808
    :cond_a
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto :goto_8

    .line 5815
    .restart local v13    # "i":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v5, 0x0

    aput-object v5, v4, v13

    goto :goto_a

    .line 5818
    :cond_c
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastEnabled:Z

    .line 5819
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d

    .line 5820
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v6, 0x7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v7, v5, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastTimers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v8, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v5, p0

    move-object/from16 v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5825
    :goto_b
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e

    .line 5826
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/16 v6, 0xf

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v7, v5, Lcom/android/internal/os/BatteryStatsImpl;->mAudioTurnedOnTimers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v8, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v5, p0

    move-object/from16 v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5831
    :goto_c
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f

    .line 5832
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/16 v6, 0x8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v7, v5, Lcom/android/internal/os/BatteryStatsImpl;->mVideoTurnedOnTimers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v8, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v5, p0

    move-object/from16 v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5837
    :goto_d
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_10

    .line 5838
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/16 v6, 0x10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v7, v5, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightTurnedOnTimers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v8, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v5, p0

    move-object/from16 v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5843
    :goto_e
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_11

    .line 5844
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/16 v6, 0x11

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v7, v5, Lcom/android/internal/os/BatteryStatsImpl;->mCameraTurnedOnTimers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v8, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v5, p0

    move-object/from16 v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5849
    :goto_f
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_12

    .line 5850
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/16 v6, 0xa

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v8, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v5, p0

    move-object/from16 v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5855
    :goto_10
    const/4 v4, 0x3

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    .line 5856
    const/4 v13, 0x0

    :goto_11
    const/4 v4, 0x3

    if-ge v13, v4, :cond_14

    .line 5857
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_13

    .line 5858
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v13, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->makeProcessState(ILandroid/os/Parcel;)V

    .line 5856
    :goto_12
    add-int/lit8 v13, v13, 0x1

    goto :goto_11

    .line 5823
    :cond_d
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto/16 :goto_b

    .line 5829
    :cond_e
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto/16 :goto_c

    .line 5835
    :cond_f
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto/16 :goto_d

    .line 5841
    :cond_10
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto :goto_e

    .line 5847
    :cond_11
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto :goto_f

    .line 5853
    :cond_12
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto :goto_10

    .line 5860
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v5, 0x0

    aput-object v5, v4, v13

    goto :goto_12

    .line 5863
    :cond_14
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_15

    .line 5864
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    const/16 v5, 0x9

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v4, v0, v5, v6, v1}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    .line 5868
    :goto_13
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_16

    .line 5869
    const/4 v4, 0x3

    new-array v4, v4, [Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    .line 5870
    const/4 v13, 0x0

    :goto_14
    const/4 v4, 0x3

    if-ge v13, v4, :cond_17

    .line 5871
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    new-instance v5, Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p3

    invoke-direct {v5, v6, v0}, Lcom/android/internal/os/BatteryStatsImpl$Counter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v5, v4, v13

    .line 5870
    add-int/lit8 v13, v13, 0x1

    goto :goto_14

    .line 5866
    :cond_15
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    goto :goto_13

    .line 5874
    :cond_16
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    .line 5876
    :cond_17
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_19

    .line 5877
    const/4 v4, 0x4

    new-array v4, v4, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 5878
    const/4 v4, 0x4

    new-array v4, v4, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 5880
    const/4 v13, 0x0

    :goto_15
    const/4 v4, 0x4

    if-ge v13, v4, :cond_18

    .line 5881
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v5, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p3

    invoke-direct {v5, v6, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v5, v4, v13

    .line 5883
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v5, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p3

    invoke-direct {v5, v6, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v5, v4, v13

    .line 5880
    add-int/lit8 v13, v13, 0x1

    goto :goto_15

    .line 5886
    :cond_18
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p3

    invoke-direct {v4, v5, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 5887
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p3

    invoke-direct {v4, v5, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 5893
    :goto_16
    const/4 v13, 0x0

    :goto_17
    const/4 v4, 0x4

    if-ge v13, v4, :cond_1b

    .line 5894
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1a

    .line 5895
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v5, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p3

    invoke-direct {v5, v6, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v5, v4, v13

    .line 5893
    :goto_18
    add-int/lit8 v13, v13, 0x1

    goto :goto_17

    .line 5889
    :cond_19
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 5890
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    goto :goto_16

    .line 5897
    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v5, 0x0

    aput-object v5, v4, v13

    goto :goto_18

    .line 5901
    :cond_1b
    const/4 v13, 0x0

    :goto_19
    const/4 v4, 0x4

    if-ge v13, v4, :cond_1d

    .line 5902
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1c

    .line 5903
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v5, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p3

    invoke-direct {v5, v6, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v5, v4, v13

    .line 5901
    :goto_1a
    add-int/lit8 v13, v13, 0x1

    goto :goto_19

    .line 5905
    :cond_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v5, 0x0

    aput-object v5, v4, v13

    goto :goto_1a

    .line 5909
    :cond_1d
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p3

    invoke-direct {v4, v5, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 5910
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p3

    invoke-direct {v4, v5, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 5911
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p3

    invoke-direct {v4, v5, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuPower:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 5913
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_23

    .line 5914
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 5915
    .local v18, "numCpuClusters":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    # getter for: Lcom/android/internal/os/BatteryStatsImpl;->mPowerProfile:Lcom/android/internal/os/PowerProfile;
    invoke-static {v4}, Lcom/android/internal/os/BatteryStatsImpl;->access$200(Lcom/android/internal/os/BatteryStatsImpl;)Lcom/android/internal/os/PowerProfile;

    move-result-object v4

    if-eqz v4, :cond_1e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    # getter for: Lcom/android/internal/os/BatteryStatsImpl;->mPowerProfile:Lcom/android/internal/os/PowerProfile;
    invoke-static {v4}, Lcom/android/internal/os/BatteryStatsImpl;->access$200(Lcom/android/internal/os/BatteryStatsImpl;)Lcom/android/internal/os/PowerProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/os/PowerProfile;->getNumCpuClusters()I

    move-result v4

    move/from16 v0, v18

    if-eq v4, v0, :cond_1e

    .line 5916
    new-instance v4, Landroid/os/ParcelFormatException;

    const-string v5, "Incompatible number of cpu clusters"

    invoke-direct {v4, v5}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 5919
    :cond_1e
    move/from16 v0, v18

    new-array v4, v0, [[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 5920
    const/4 v11, 0x0

    .local v11, "cluster":I
    :goto_1b
    move/from16 v0, v18

    if-ge v11, v0, :cond_24

    .line 5921
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_21

    .line 5922
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 5923
    .local v23, "numSpeeds":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    # getter for: Lcom/android/internal/os/BatteryStatsImpl;->mPowerProfile:Lcom/android/internal/os/PowerProfile;
    invoke-static {v4}, Lcom/android/internal/os/BatteryStatsImpl;->access$200(Lcom/android/internal/os/BatteryStatsImpl;)Lcom/android/internal/os/PowerProfile;

    move-result-object v4

    if-eqz v4, :cond_1f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    # getter for: Lcom/android/internal/os/BatteryStatsImpl;->mPowerProfile:Lcom/android/internal/os/PowerProfile;
    invoke-static {v4}, Lcom/android/internal/os/BatteryStatsImpl;->access$200(Lcom/android/internal/os/BatteryStatsImpl;)Lcom/android/internal/os/PowerProfile;

    move-result-object v4

    invoke-virtual {v4, v11}, Lcom/android/internal/os/PowerProfile;->getNumSpeedStepsInCpuCluster(I)I

    move-result v4

    move/from16 v0, v23

    if-eq v4, v0, :cond_1f

    .line 5925
    new-instance v4, Landroid/os/ParcelFormatException;

    const-string v5, "Incompatible number of cpu speeds"

    invoke-direct {v4, v5}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 5928
    :cond_1f
    move/from16 v0, v23

    new-array v12, v0, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 5929
    .local v12, "cpuSpeeds":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aput-object v12, v4, v11

    .line 5930
    const/16 v32, 0x0

    .local v32, "speed":I
    :goto_1c
    move/from16 v0, v32

    move/from16 v1, v23

    if-ge v0, v1, :cond_22

    .line 5931
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_20

    .line 5932
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p3

    invoke-direct {v4, v5, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v4, v12, v32

    .line 5930
    :cond_20
    add-int/lit8 v32, v32, 0x1

    goto :goto_1c

    .line 5936
    .end local v12    # "cpuSpeeds":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .end local v23    # "numSpeeds":I
    .end local v32    # "speed":I
    :cond_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v5, 0x0

    aput-object v5, v4, v11

    .line 5920
    :cond_22
    add-int/lit8 v11, v11, 0x1

    goto :goto_1b

    .line 5940
    .end local v11    # "cluster":I
    .end local v18    # "numCpuClusters":I
    :cond_23
    const/4 v4, 0x0

    check-cast v4, [[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 5943
    :cond_24
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_27

    .line 5944
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 5945
    .local v10, "bins":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl;->getGpuSpeedSteps()I

    move-result v33

    .line 5946
    .local v33, "steps":I
    move/from16 v0, v33

    if-lt v10, v0, :cond_25

    move/from16 v33, v10

    .end local v33    # "steps":I
    :cond_25
    move/from16 v0, v33

    new-array v4, v0, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 5947
    const/4 v13, 0x0

    :goto_1d
    if-ge v13, v10, :cond_28

    .line 5948
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_26

    .line 5949
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v5, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p3

    invoke-direct {v5, v6, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v5, v4, v13

    .line 5947
    :cond_26
    add-int/lit8 v13, v13, 0x1

    goto :goto_1d

    .line 5953
    .end local v10    # "bins":I
    :cond_27
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 5956
    :cond_28
    return-void
.end method

.method public readJobSummaryFromParcelLocked(Ljava/lang/String;Landroid/os/Parcel;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "in"    # Landroid/os/Parcel;

    .prologue
    .line 6932
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->instantiateObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6933
    .local v0, "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 6934
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6935
    return-void
.end method

.method public readSyncSummaryFromParcelLocked(Ljava/lang/String;Landroid/os/Parcel;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "in"    # Landroid/os/Parcel;

    .prologue
    .line 6926
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->instantiateObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6927
    .local v0, "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 6928
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6929
    return-void
.end method

.method public readWakeSummaryFromParcelLocked(Ljava/lang/String;Landroid/os/Parcel;)V
    .locals 2
    .param p1, "wlName"    # Ljava/lang/String;
    .param p2, "in"    # Landroid/os/Parcel;

    .prologue
    .line 6938
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    invoke-direct {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;)V

    .line 6939
    .local v0, "wl":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6940
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 6941
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->getStopwatchTimer(I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 6943
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    .line 6944
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->getStopwatchTimer(I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 6946
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    .line 6947
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->getStopwatchTimer(I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 6949
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    .line 6950
    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->getStopwatchTimer(I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 6952
    :cond_3
    return-void
.end method

.method public reportExcessiveCpuLocked(Ljava/lang/String;JJ)V
    .locals 2
    .param p1, "proc"    # Ljava/lang/String;
    .param p2, "overTime"    # J
    .param p4, "usedTime"    # J

    .prologue
    .line 7042
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v0

    .line 7043
    .local v0, "p":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    if-eqz v0, :cond_0

    .line 7044
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->addExcessiveCpu(JJ)V

    .line 7046
    :cond_0
    return-void
.end method

.method public reportExcessiveWakeLocked(Ljava/lang/String;JJ)V
    .locals 2
    .param p1, "proc"    # Ljava/lang/String;
    .param p2, "overTime"    # J
    .param p4, "usedTime"    # J

    .prologue
    .line 7035
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v0

    .line 7036
    .local v0, "p":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    if-eqz v0, :cond_0

    .line 7037
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->addExcessiveWake(JJ)V

    .line 7039
    :cond_0
    return-void
.end method

.method reset()Z
    .locals 36

    .prologue
    .line 5241
    const/4 v4, 0x0

    .line 5243
    .local v4, "active":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    if-eqz v34, :cond_0

    .line 5244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    move-result v34

    if-nez v34, :cond_4

    const/16 v34, 0x1

    :goto_0
    or-int v4, v4, v34

    .line 5245
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunning:Z

    move/from16 v34, v0

    or-int v4, v4, v34

    .line 5247
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    if-eqz v34, :cond_1

    .line 5248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    move-result v34

    if-nez v34, :cond_5

    const/16 v34, 0x1

    :goto_1
    or-int v4, v4, v34

    .line 5249
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    move/from16 v34, v0

    or-int v4, v4, v34

    .line 5251
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    if-eqz v34, :cond_2

    .line 5252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    move-result v34

    if-nez v34, :cond_6

    const/16 v34, 0x1

    :goto_2
    or-int v4, v4, v34

    .line 5253
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanStarted:Z

    move/from16 v34, v0

    or-int v4, v4, v34

    .line 5255
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    if-eqz v34, :cond_9

    .line 5256
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_3
    const/16 v34, 0x5

    move/from16 v0, v34

    if-ge v9, v0, :cond_8

    .line 5257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    aget-object v34, v34, v9

    if-eqz v34, :cond_3

    .line 5258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    aget-object v34, v34, v9

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    move-result v34

    if-nez v34, :cond_7

    const/16 v34, 0x1

    :goto_4
    or-int v4, v4, v34

    .line 5256
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 5244
    .end local v9    # "i":I
    :cond_4
    const/16 v34, 0x0

    goto :goto_0

    .line 5248
    :cond_5
    const/16 v34, 0x0

    goto :goto_1

    .line 5252
    :cond_6
    const/16 v34, 0x0

    goto :goto_2

    .line 5258
    .restart local v9    # "i":I
    :cond_7
    const/16 v34, 0x0

    goto :goto_4

    .line 5261
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    move/from16 v34, v0

    const/16 v35, -0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_11

    const/16 v34, 0x1

    :goto_5
    or-int v4, v4, v34

    .line 5263
    .end local v9    # "i":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    if-eqz v34, :cond_a

    .line 5264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    move-result v34

    if-nez v34, :cond_12

    const/16 v34, 0x1

    :goto_6
    or-int v4, v4, v34

    .line 5265
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastEnabled:Z

    move/from16 v34, v0

    or-int v4, v4, v34

    .line 5267
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    if-eqz v34, :cond_b

    .line 5268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    move-result v34

    if-nez v34, :cond_13

    const/16 v34, 0x1

    :goto_7
    or-int v4, v4, v34

    .line 5270
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    if-eqz v34, :cond_c

    .line 5271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    move-result v34

    if-nez v34, :cond_14

    const/16 v34, 0x1

    :goto_8
    or-int v4, v4, v34

    .line 5273
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    if-eqz v34, :cond_d

    .line 5274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    move-result v34

    if-nez v34, :cond_15

    const/16 v34, 0x1

    :goto_9
    or-int v4, v4, v34

    .line 5276
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    if-eqz v34, :cond_e

    .line 5277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    move-result v34

    if-nez v34, :cond_16

    const/16 v34, 0x1

    :goto_a
    or-int v4, v4, v34

    .line 5279
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    if-eqz v34, :cond_f

    .line 5280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    move-result v34

    if-nez v34, :cond_17

    const/16 v34, 0x1

    :goto_b
    or-int v4, v4, v34

    .line 5282
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    if-eqz v34, :cond_1a

    .line 5283
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_c
    const/16 v34, 0x3

    move/from16 v0, v34

    if-ge v9, v0, :cond_19

    .line 5284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    aget-object v34, v34, v9

    if-eqz v34, :cond_10

    .line 5285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    aget-object v34, v34, v9

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    move-result v34

    if-nez v34, :cond_18

    const/16 v34, 0x1

    :goto_d
    or-int v4, v4, v34

    .line 5283
    :cond_10
    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    .line 5261
    :cond_11
    const/16 v34, 0x0

    goto/16 :goto_5

    .line 5264
    .end local v9    # "i":I
    :cond_12
    const/16 v34, 0x0

    goto/16 :goto_6

    .line 5268
    :cond_13
    const/16 v34, 0x0

    goto/16 :goto_7

    .line 5271
    :cond_14
    const/16 v34, 0x0

    goto/16 :goto_8

    .line 5274
    :cond_15
    const/16 v34, 0x0

    goto :goto_9

    .line 5277
    :cond_16
    const/16 v34, 0x0

    goto :goto_a

    .line 5280
    :cond_17
    const/16 v34, 0x0

    goto :goto_b

    .line 5285
    .restart local v9    # "i":I
    :cond_18
    const/16 v34, 0x0

    goto :goto_d

    .line 5288
    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    move/from16 v34, v0

    const/16 v35, 0x3

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_1c

    const/16 v34, 0x1

    :goto_e
    or-int v4, v4, v34

    .line 5290
    .end local v9    # "i":I
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    move-object/from16 v34, v0

    if-eqz v34, :cond_1b

    .line 5291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->reset(Z)Z

    move-result v34

    if-eqz v34, :cond_1d

    .line 5292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->detach()V

    .line 5293
    const/16 v34, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    .line 5299
    :cond_1b
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v34, v0

    if-eqz v34, :cond_1e

    .line 5300
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_10
    const/16 v34, 0x3

    move/from16 v0, v34

    if-ge v9, v0, :cond_1e

    .line 5301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v34, v0

    aget-object v34, v34, v9

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->reset(Z)V

    .line 5300
    add-int/lit8 v9, v9, 0x1

    goto :goto_10

    .line 5288
    :cond_1c
    const/16 v34, 0x0

    goto :goto_e

    .line 5295
    .end local v9    # "i":I
    :cond_1d
    const/4 v4, 0x1

    goto :goto_f

    .line 5305
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v34, v0

    if-eqz v34, :cond_20

    .line 5306
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_11
    const/16 v34, 0x4

    move/from16 v0, v34

    if-ge v9, v0, :cond_1f

    .line 5307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v34, v0

    aget-object v34, v34, v9

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    .line 5308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v34, v0

    aget-object v34, v34, v9

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    .line 5306
    add-int/lit8 v9, v9, 0x1

    goto :goto_11

    .line 5310
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    .line 5311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    .line 5314
    .end local v9    # "i":I
    :cond_20
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_12
    const/16 v34, 0x4

    move/from16 v0, v34

    if-ge v9, v0, :cond_23

    .line 5315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v34, v0

    aget-object v34, v34, v9

    if-eqz v34, :cond_21

    .line 5316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v34, v0

    aget-object v34, v34, v9

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    .line 5319
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v34, v0

    aget-object v34, v34, v9

    if-eqz v34, :cond_22

    .line 5320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v34, v0

    aget-object v34, v34, v9

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    .line 5314
    :cond_22
    add-int/lit8 v9, v9, 0x1

    goto :goto_12

    .line 5324
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    .line 5325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    .line 5326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuPower:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    .line 5328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v34, v0

    if-eqz v34, :cond_26

    .line 5329
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .local v5, "arr$":[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    array-length v0, v5

    move/from16 v20, v0

    .local v20, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    move v11, v10

    .end local v5    # "arr$":[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .end local v10    # "i$":I
    .end local v20    # "len$":I
    .local v11, "i$":I
    :goto_13
    move/from16 v0, v20

    if-ge v11, v0, :cond_26

    aget-object v29, v5, v11

    .line 5330
    .local v29, "speeds":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    if-eqz v29, :cond_25

    .line 5331
    move-object/from16 v6, v29

    .local v6, "arr$":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    array-length v0, v6

    move/from16 v21, v0

    .local v21, "len$":I
    const/4 v10, 0x0

    .end local v11    # "i$":I
    .restart local v10    # "i$":I
    :goto_14
    move/from16 v0, v21

    if-ge v10, v0, :cond_25

    aget-object v28, v6, v10

    .line 5332
    .local v28, "speed":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    if-eqz v28, :cond_24

    .line 5333
    const/16 v34, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    .line 5331
    :cond_24
    add-int/lit8 v10, v10, 0x1

    goto :goto_14

    .line 5329
    .end local v6    # "arr$":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .end local v10    # "i$":I
    .end local v21    # "len$":I
    .end local v28    # "speed":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    :cond_25
    add-int/lit8 v10, v11, 0x1

    .restart local v10    # "i$":I
    move v11, v10

    .end local v10    # "i$":I
    .restart local v11    # "i$":I
    goto :goto_13

    .line 5341
    .end local v11    # "i$":I
    .end local v29    # "speeds":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v34, v0

    if-eqz v34, :cond_28

    .line 5342
    const/4 v9, 0x0

    :goto_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v34, v0

    move/from16 v0, v34

    if-ge v9, v0, :cond_28

    .line 5343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v34, v0

    aget-object v7, v34, v9

    .line 5344
    .local v7, "c":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    if-eqz v7, :cond_27

    .line 5345
    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-virtual {v7, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    .line 5342
    :cond_27
    add-int/lit8 v9, v9, 0x1

    goto :goto_15

    .line 5350
    .end local v7    # "c":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v32

    .line 5351
    .local v32, "wakeStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;>;"
    invoke-virtual/range {v32 .. v32}, Landroid/util/ArrayMap;->size()I

    move-result v34

    add-int/lit8 v18, v34, -0x1

    .local v18, "iw":I
    :goto_16
    if-ltz v18, :cond_2a

    .line 5352
    move-object/from16 v0, v32

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    .line 5353
    .local v33, "wl":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    invoke-virtual/range {v33 .. v33}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->reset()Z

    move-result v34

    if-eqz v34, :cond_29

    .line 5354
    move-object/from16 v0, v32

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 5351
    :goto_17
    add-int/lit8 v18, v18, -0x1

    goto :goto_16

    .line 5356
    :cond_29
    const/4 v4, 0x1

    goto :goto_17

    .line 5359
    .end local v33    # "wl":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->cleanup()V

    .line 5360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v30

    .line 5361
    .local v30, "syncStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    invoke-virtual/range {v30 .. v30}, Landroid/util/ArrayMap;->size()I

    move-result v34

    add-int/lit8 v14, v34, -0x1

    .local v14, "is":I
    :goto_18
    if-ltz v14, :cond_2c

    .line 5362
    move-object/from16 v0, v30

    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5363
    .local v31, "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    const/16 v34, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    move-result v34

    if-eqz v34, :cond_2b

    .line 5364
    move-object/from16 v0, v30

    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 5365
    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 5361
    :goto_19
    add-int/lit8 v14, v14, -0x1

    goto :goto_18

    .line 5367
    :cond_2b
    const/4 v4, 0x1

    goto :goto_19

    .line 5370
    .end local v31    # "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->cleanup()V

    .line 5371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v19

    .line 5372
    .local v19, "jobStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    invoke-virtual/range {v19 .. v19}, Landroid/util/ArrayMap;->size()I

    move-result v34

    add-int/lit8 v12, v34, -0x1

    .local v12, "ij":I
    :goto_1a
    if-ltz v12, :cond_2e

    .line 5373
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5374
    .restart local v31    # "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    const/16 v34, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    move-result v34

    if-eqz v34, :cond_2d

    .line 5375
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 5376
    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 5372
    :goto_1b
    add-int/lit8 v12, v12, -0x1

    goto :goto_1a

    .line 5378
    :cond_2d
    const/4 v4, 0x1

    goto :goto_1b

    .line 5381
    .end local v31    # "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->cleanup()V

    .line 5382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/util/SparseArray;->size()I

    move-result v34

    add-int/lit8 v15, v34, -0x1

    .local v15, "ise":I
    :goto_1c
    if-ltz v15, :cond_30

    .line 5383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;

    .line 5384
    .local v26, "s":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->reset()Z

    move-result v34

    if-eqz v34, :cond_2f

    .line 5385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->removeAt(I)V

    .line 5382
    :goto_1d
    add-int/lit8 v15, v15, -0x1

    goto :goto_1c

    .line 5387
    :cond_2f
    const/4 v4, 0x1

    goto :goto_1d

    .line 5390
    .end local v26    # "s":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/util/ArrayMap;->size()I

    move-result v34

    add-int/lit8 v13, v34, -0x1

    .local v13, "ip":I
    :goto_1e
    if-ltz v13, :cond_32

    .line 5391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    .line 5392
    .local v25, "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mProcessState:I

    move/from16 v34, v0

    const/16 v35, 0x3

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_31

    .line 5393
    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->detach()V

    .line 5394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 5390
    :goto_1f
    add-int/lit8 v13, v13, -0x1

    goto :goto_1e

    .line 5396
    :cond_31
    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->reset()V

    .line 5397
    const/4 v4, 0x1

    goto :goto_1f

    .line 5400
    .end local v25    # "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/util/SparseArray;->size()I

    move-result v34

    if-lez v34, :cond_34

    .line 5401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/util/SparseArray;->size()I

    move-result v34

    add-int/lit8 v9, v34, -0x1

    :goto_20
    if-ltz v9, :cond_34

    .line 5402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/os/BatteryStats$Uid$Pid;

    .line 5403
    .local v23, "pid":Landroid/os/BatteryStats$Uid$Pid;
    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    move/from16 v34, v0

    if-lez v34, :cond_33

    .line 5404
    const/4 v4, 0x1

    .line 5401
    :goto_21
    add-int/lit8 v9, v9, -0x1

    goto :goto_20

    .line 5406
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_21

    .line 5410
    .end local v23    # "pid":Landroid/os/BatteryStats$Uid$Pid;
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/util/ArrayMap;->size()I

    move-result v34

    if-lez v34, :cond_37

    .line 5411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 5412
    .local v16, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;>;"
    :cond_35
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_36

    .line 5413
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/util/Map$Entry;

    .line 5414
    .local v24, "pkgEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;"
    invoke-interface/range {v24 .. v24}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    .line 5415
    .local v22, "p":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->detach()V

    .line 5416
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Landroid/util/ArrayMap;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/util/ArrayMap;->size()I

    move-result v34

    if-lez v34, :cond_35

    .line 5417
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Landroid/util/ArrayMap;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .line 5419
    .local v17, "it2":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;>;>;"
    :goto_22
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_35

    .line 5420
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/Map$Entry;

    .line 5421
    .local v27, "servEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;>;"
    invoke-interface/range {v27 .. v27}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->detach()V

    goto :goto_22

    .line 5425
    .end local v17    # "it2":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;>;>;"
    .end local v22    # "p":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    .end local v24    # "pkgEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;"
    .end local v27    # "servEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;>;"
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/util/ArrayMap;->clear()V

    .line 5428
    .end local v16    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;>;"
    :cond_37
    const-wide/16 v34, 0x0

    move-wide/from16 v0, v34

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mLastStepSystemTime:J

    move-wide/from16 v0, v34

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mLastStepUserTime:J

    .line 5429
    const-wide/16 v34, 0x0

    move-wide/from16 v0, v34

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurStepSystemTime:J

    move-wide/from16 v0, v34

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurStepUserTime:J

    .line 5431
    if-nez v4, :cond_4c

    .line 5432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    if-eqz v34, :cond_38

    .line 5433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 5435
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    if-eqz v34, :cond_39

    .line 5436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 5438
    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    if-eqz v34, :cond_3a

    .line 5439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 5441
    :cond_3a
    const/4 v9, 0x0

    :goto_23
    const/16 v34, 0x5

    move/from16 v0, v34

    if-ge v9, v0, :cond_3c

    .line 5442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    aget-object v34, v34, v9

    if-eqz v34, :cond_3b

    .line 5443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    aget-object v34, v34, v9

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 5441
    :cond_3b
    add-int/lit8 v9, v9, 0x1

    goto :goto_23

    .line 5446
    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    if-eqz v34, :cond_3d

    .line 5447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 5449
    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    if-eqz v34, :cond_3e

    .line 5450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 5451
    const/16 v34, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5453
    :cond_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    if-eqz v34, :cond_3f

    .line 5454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 5455
    const/16 v34, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5457
    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    if-eqz v34, :cond_40

    .line 5458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 5459
    const/16 v34, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5461
    :cond_40
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    if-eqz v34, :cond_41

    .line 5462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 5463
    const/16 v34, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5465
    :cond_41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    if-eqz v34, :cond_42

    .line 5466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 5467
    const/16 v34, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5469
    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v34, v0

    if-eqz v34, :cond_43

    .line 5470
    const/4 v9, 0x0

    :goto_24
    const/16 v34, 0x3

    move/from16 v0, v34

    if-ge v9, v0, :cond_43

    .line 5471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v34, v0

    aget-object v34, v34, v9

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->detach()V

    .line 5470
    add-int/lit8 v9, v9, 0x1

    goto :goto_24

    .line 5474
    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v34, v0

    if-eqz v34, :cond_44

    .line 5475
    const/4 v9, 0x0

    :goto_25
    const/16 v34, 0x4

    move/from16 v0, v34

    if-ge v9, v0, :cond_44

    .line 5476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v34, v0

    aget-object v34, v34, v9

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    .line 5477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v34, v0

    aget-object v34, v34, v9

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    .line 5475
    add-int/lit8 v9, v9, 0x1

    goto :goto_25

    .line 5481
    :cond_44
    const/4 v9, 0x0

    :goto_26
    const/16 v34, 0x4

    move/from16 v0, v34

    if-ge v9, v0, :cond_47

    .line 5482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v34, v0

    aget-object v34, v34, v9

    if-eqz v34, :cond_45

    .line 5483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v34, v0

    aget-object v34, v34, v9

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    .line 5486
    :cond_45
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v34, v0

    aget-object v34, v34, v9

    if-eqz v34, :cond_46

    .line 5487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v34, v0

    aget-object v34, v34, v9

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    .line 5481
    :cond_46
    add-int/lit8 v9, v9, 0x1

    goto :goto_26

    .line 5490
    :cond_47
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/util/SparseArray;->clear()V

    .line 5492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    .line 5493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    .line 5494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuPower:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    .line 5496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v34, v0

    if-eqz v34, :cond_4a

    .line 5497
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .restart local v5    # "arr$":[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    array-length v0, v5

    move/from16 v20, v0

    .restart local v20    # "len$":I
    const/4 v10, 0x0

    .restart local v10    # "i$":I
    move v11, v10

    .end local v5    # "arr$":[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .end local v10    # "i$":I
    .end local v20    # "len$":I
    .restart local v11    # "i$":I
    :goto_27
    move/from16 v0, v20

    if-ge v11, v0, :cond_4a

    aget-object v8, v5, v11

    .line 5498
    .local v8, "cpuSpeeds":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    if-eqz v8, :cond_49

    .line 5499
    move-object v6, v8

    .restart local v6    # "arr$":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    array-length v0, v6

    move/from16 v21, v0

    .restart local v21    # "len$":I
    const/4 v10, 0x0

    .end local v11    # "i$":I
    .restart local v10    # "i$":I
    :goto_28
    move/from16 v0, v21

    if-ge v10, v0, :cond_49

    aget-object v7, v6, v10

    .line 5500
    .restart local v7    # "c":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    if-eqz v7, :cond_48

    .line 5501
    invoke-virtual {v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    .line 5499
    :cond_48
    add-int/lit8 v10, v10, 0x1

    goto :goto_28

    .line 5497
    .end local v6    # "arr$":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .end local v7    # "c":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .end local v10    # "i$":I
    .end local v21    # "len$":I
    :cond_49
    add-int/lit8 v10, v11, 0x1

    .restart local v10    # "i$":I
    move v11, v10

    .end local v10    # "i$":I
    .restart local v11    # "i$":I
    goto :goto_27

    .line 5508
    .end local v8    # "cpuSpeeds":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .end local v11    # "i$":I
    :cond_4a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v34, v0

    if-eqz v34, :cond_4c

    .line 5509
    const/4 v9, 0x0

    :goto_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v34, v0

    move/from16 v0, v34

    if-ge v9, v0, :cond_4c

    .line 5510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v34, v0

    aget-object v7, v34, v9

    .line 5511
    .restart local v7    # "c":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    if-eqz v7, :cond_4b

    .line 5512
    invoke-virtual {v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    .line 5509
    :cond_4b
    add-int/lit8 v9, v9, 0x1

    goto :goto_29

    .line 5519
    .end local v7    # "c":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    :cond_4c
    if-nez v4, :cond_4d

    const/16 v34, 0x1

    :goto_2a
    return v34

    :cond_4d
    const/16 v34, 0x0

    goto :goto_2a
.end method

.method public updateProcessStateLocked(Ljava/lang/String;IJ)V
    .locals 3
    .param p1, "procName"    # Ljava/lang/String;
    .param p2, "state"    # I
    .param p3, "elapsedRealtimeMs"    # J

    .prologue
    .line 6842
    const/4 v1, 0x6

    if-gt p2, v1, :cond_0

    .line 6843
    const/4 v0, 0x0

    .line 6849
    .local v0, "procState":I
    :goto_0
    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->updateRealProcessStateLocked(Ljava/lang/String;IJ)V

    .line 6850
    return-void

    .line 6844
    .end local v0    # "procState":I
    :cond_0
    const/16 v1, 0xb

    if-gt p2, v1, :cond_1

    .line 6845
    const/4 v0, 0x1

    .restart local v0    # "procState":I
    goto :goto_0

    .line 6847
    .end local v0    # "procState":I
    :cond_1
    const/4 v0, 0x2

    .restart local v0    # "procState":I
    goto :goto_0
.end method

.method public updateRealProcessStateLocked(Ljava/lang/String;IJ)V
    .locals 7
    .param p1, "procName"    # Ljava/lang/String;
    .param p2, "procState"    # I
    .param p3, "elapsedRealtimeMs"    # J

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 6854
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v2

    .line 6855
    .local v2, "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    iget v5, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mProcessState:I

    if-eq v5, p2, :cond_5

    .line 6857
    iget v5, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mProcessState:I

    if-ge p2, v5, :cond_2

    .line 6861
    iget v5, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    if-le v5, p2, :cond_1

    .line 6868
    .local v0, "changed":Z
    :goto_0
    iput p2, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mProcessState:I

    .line 6869
    if-eqz v0, :cond_5

    .line 6871
    const/4 v3, 0x3

    .line 6872
    .local v3, "uidProcState":I
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "ip":I
    :goto_1
    if-ltz v1, :cond_4

    .line 6873
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    check-cast v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    .line 6874
    .restart local v2    # "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    iget v4, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mProcessState:I

    if-ge v4, v3, :cond_0

    .line 6875
    iget v3, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mProcessState:I

    .line 6872
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .end local v0    # "changed":Z
    .end local v1    # "ip":I
    .end local v3    # "uidProcState":I
    :cond_1
    move v0, v4

    .line 6861
    goto :goto_0

    .line 6866
    :cond_2
    iget v5, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    iget v6, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mProcessState:I

    if-ne v5, v6, :cond_3

    .restart local v0    # "changed":Z
    :goto_2
    goto :goto_0

    .end local v0    # "changed":Z
    :cond_3
    move v0, v4

    goto :goto_2

    .line 6878
    .restart local v0    # "changed":Z
    .restart local v1    # "ip":I
    .restart local v3    # "uidProcState":I
    :cond_4
    invoke-virtual {p0, v3, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->updateUidProcessStateLocked(IJ)V

    .line 6881
    .end local v0    # "changed":Z
    .end local v1    # "ip":I
    .end local v3    # "uidProcState":I
    :cond_5
    return-void
.end method

.method updateUidProcessStateLocked(IJ)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "elapsedRealtimeMs"    # J

    .prologue
    const/4 v2, 0x3

    .line 4922
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    if-ne v0, p1, :cond_1

    .line 4934
    :cond_0
    :goto_0
    return-void

    .line 4924
    :cond_1
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    if-eq v0, v2, :cond_2

    .line 4925
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 4927
    :cond_2
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    .line 4928
    if-eq p1, v2, :cond_0

    .line 4929
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    if-nez v0, :cond_3

    .line 4930
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->makeProcessState(ILandroid/os/Parcel;)V

    .line 4932
    :cond_3
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    goto :goto_0
.end method

.method writeToParcelLocked(Landroid/os/Parcel;J)V
    .locals 34
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "elapsedRealtimeUs"    # J

    .prologue
    .line 5523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v30

    .line 5524
    .local v30, "wakeStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;>;"
    invoke-virtual/range {v30 .. v30}, Landroid/util/ArrayMap;->size()I

    move-result v8

    .line 5525
    .local v8, "NW":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 5526
    const/16 v20, 0x0

    .local v20, "iw":I
    :goto_0
    move/from16 v0, v20

    if-ge v0, v8, :cond_0

    .line 5527
    move-object/from16 v0, v30

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5528
    move-object/from16 v0, v30

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    .line 5529
    .local v31, "wakelock":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    move-object/from16 v0, v31

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->writeToParcelLocked(Landroid/os/Parcel;J)V

    .line 5526
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    .line 5532
    .end local v31    # "wakelock":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v28

    .line 5533
    .local v28, "syncStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    invoke-virtual/range {v28 .. v28}, Landroid/util/ArrayMap;->size()I

    move-result v6

    .line 5534
    .local v6, "NS":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 5535
    const/16 v18, 0x0

    .local v18, "is":I
    :goto_1
    move/from16 v0, v18

    if-ge v0, v6, :cond_1

    .line 5536
    move-object/from16 v0, v28

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5537
    move-object/from16 v0, v28

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5538
    .local v29, "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    move-object/from16 v0, p1

    move-object/from16 v1, v29

    move-wide/from16 v2, p2

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeTimerToParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$Timer;J)V

    .line 5535
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 5541
    .end local v29    # "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v21

    .line 5542
    .local v21, "jobStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    invoke-virtual/range {v21 .. v21}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 5543
    .local v4, "NJ":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5544
    const/16 v16, 0x0

    .local v16, "ij":I
    :goto_2
    move/from16 v0, v16

    if-ge v0, v4, :cond_2

    .line 5545
    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5546
    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5547
    .restart local v29    # "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    move-object/from16 v0, p1

    move-object/from16 v1, v29

    move-wide/from16 v2, p2

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeTimerToParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$Timer;J)V

    .line 5544
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 5550
    .end local v29    # "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/util/SparseArray;->size()I

    move-result v7

    .line 5551
    .local v7, "NSE":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 5552
    const/16 v19, 0x0

    .local v19, "ise":I
    :goto_3
    move/from16 v0, v19

    if-ge v0, v7, :cond_3

    .line 5553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v32

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;

    .line 5555
    .local v27, "sensor":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    move-object/from16 v0, v27

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->writeToParcelLocked(Landroid/os/Parcel;J)V

    .line 5552
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 5558
    .end local v27    # "sensor":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 5559
    .local v5, "NP":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 5560
    const/16 v17, 0x0

    .local v17, "ip":I
    :goto_4
    move/from16 v0, v17

    if-ge v0, v5, :cond_4

    .line 5561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    .line 5563
    .local v26, "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->writeToParcelLocked(Landroid/os/Parcel;)V

    .line 5560
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    .line 5566
    .end local v26    # "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/util/ArrayMap;->size()I

    move-result v32

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/Map$Entry;

    .line 5568
    .local v25, "pkgEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;"
    invoke-interface/range {v25 .. v25}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5569
    invoke-interface/range {v25 .. v25}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    .line 5570
    .local v24, "pkg":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->writeToParcelLocked(Landroid/os/Parcel;)V

    goto :goto_5

    .line 5573
    .end local v24    # "pkg":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    .end local v25    # "pkgEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;"
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v32, v0

    if-eqz v32, :cond_6

    .line 5574
    const/16 v32, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 5579
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v32, v0

    if-eqz v32, :cond_7

    .line 5580
    const/16 v32, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 5585
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v32, v0

    if-eqz v32, :cond_8

    .line 5586
    const/16 v32, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 5591
    :goto_8
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_9
    const/16 v32, 0x5

    move/from16 v0, v32

    if-ge v13, v0, :cond_a

    .line 5592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v32, v0

    aget-object v32, v32, v13

    if-eqz v32, :cond_9

    .line 5593
    const/16 v32, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v32, v0

    aget-object v32, v32, v13

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 5591
    :goto_a
    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    .line 5577
    .end local v13    # "i":I
    :cond_6
    const/16 v32, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 5583
    :cond_7
    const/16 v32, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .line 5589
    :cond_8
    const/16 v32, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 5596
    .restart local v13    # "i":I
    :cond_9
    const/16 v32, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 5599
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v32, v0

    if-eqz v32, :cond_b

    .line 5600
    const/16 v32, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 5606
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v32, v0

    if-eqz v32, :cond_c

    .line 5607
    const/16 v32, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 5612
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v32, v0

    if-eqz v32, :cond_d

    .line 5613
    const/16 v32, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 5618
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v32, v0

    if-eqz v32, :cond_e

    .line 5619
    const/16 v32, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 5624
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v32, v0

    if-eqz v32, :cond_f

    .line 5625
    const/16 v32, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 5630
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v32, v0

    if-eqz v32, :cond_10

    .line 5631
    const/16 v32, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 5636
    :goto_10
    const/4 v13, 0x0

    :goto_11
    const/16 v32, 0x3

    move/from16 v0, v32

    if-ge v13, v0, :cond_12

    .line 5637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v32, v0

    aget-object v32, v32, v13

    if-eqz v32, :cond_11

    .line 5638
    const/16 v32, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v32, v0

    aget-object v32, v32, v13

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 5636
    :goto_12
    add-int/lit8 v13, v13, 0x1

    goto :goto_11

    .line 5603
    :cond_b
    const/16 v32, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 5610
    :cond_c
    const/16 v32, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_c

    .line 5616
    :cond_d
    const/16 v32, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_d

    .line 5622
    :cond_e
    const/16 v32, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_e

    .line 5628
    :cond_f
    const/16 v32, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_f

    .line 5634
    :cond_10
    const/16 v32, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_10

    .line 5641
    :cond_11
    const/16 v32, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_12

    .line 5644
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    move-object/from16 v32, v0

    if-eqz v32, :cond_13

    .line 5645
    const/16 v32, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 5650
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v32, v0

    if-eqz v32, :cond_14

    .line 5651
    const/16 v32, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5652
    const/4 v13, 0x0

    :goto_14
    const/16 v32, 0x3

    move/from16 v0, v32

    if-ge v13, v0, :cond_15

    .line 5653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v32, v0

    aget-object v32, v32, v13

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->writeToParcel(Landroid/os/Parcel;)V

    .line 5652
    add-int/lit8 v13, v13, 0x1

    goto :goto_14

    .line 5648
    :cond_13
    const/16 v32, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_13

    .line 5656
    :cond_14
    const/16 v32, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5658
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v32, v0

    if-eqz v32, :cond_17

    .line 5659
    const/16 v32, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5660
    const/4 v13, 0x0

    :goto_15
    const/16 v32, 0x4

    move/from16 v0, v32

    if-ge v13, v0, :cond_16

    .line 5661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v32, v0

    aget-object v32, v32, v13

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 5662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v32, v0

    aget-object v32, v32, v13

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 5660
    add-int/lit8 v13, v13, 0x1

    goto :goto_15

    .line 5664
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 5665
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 5670
    :goto_16
    const/4 v13, 0x0

    :goto_17
    const/16 v32, 0x4

    move/from16 v0, v32

    if-ge v13, v0, :cond_19

    .line 5671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v32, v0

    aget-object v32, v32, v13

    if-eqz v32, :cond_18

    .line 5672
    const/16 v32, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v32, v0

    aget-object v32, v32, v13

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 5670
    :goto_18
    add-int/lit8 v13, v13, 0x1

    goto :goto_17

    .line 5667
    :cond_17
    const/16 v32, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_16

    .line 5675
    :cond_18
    const/16 v32, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_18

    .line 5679
    :cond_19
    const/4 v13, 0x0

    :goto_19
    const/16 v32, 0x4

    move/from16 v0, v32

    if-ge v13, v0, :cond_1b

    .line 5680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v32, v0

    aget-object v32, v32, v13

    if-eqz v32, :cond_1a

    .line 5681
    const/16 v32, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v32, v0

    aget-object v32, v32, v13

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 5679
    :goto_1a
    add-int/lit8 v13, v13, 0x1

    goto :goto_19

    .line 5684
    :cond_1a
    const/16 v32, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1a

    .line 5688
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 5689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 5690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuPower:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 5692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v32, v0

    if-eqz v32, :cond_1f

    .line 5693
    const/16 v32, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5695
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .local v9, "arr$":[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    array-length v0, v9

    move/from16 v22, v0

    .local v22, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    move v15, v14

    .end local v9    # "arr$":[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .end local v14    # "i$":I
    .end local v22    # "len$":I
    .local v15, "i$":I
    :goto_1b
    move/from16 v0, v22

    if-ge v15, v0, :cond_20

    aget-object v12, v9, v15

    .line 5696
    .local v12, "cpuSpeeds":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    if-eqz v12, :cond_1d

    .line 5697
    const/16 v32, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5698
    array-length v0, v12

    move/from16 v32, v0

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5699
    move-object v10, v12

    .local v10, "arr$":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    array-length v0, v10

    move/from16 v23, v0

    .local v23, "len$":I
    const/4 v14, 0x0

    .end local v15    # "i$":I
    .restart local v14    # "i$":I
    :goto_1c
    move/from16 v0, v23

    if-ge v14, v0, :cond_1e

    aget-object v11, v10, v14

    .line 5700
    .local v11, "c":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    if-eqz v11, :cond_1c

    .line 5701
    const/16 v32, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5702
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 5699
    :goto_1d
    add-int/lit8 v14, v14, 0x1

    goto :goto_1c

    .line 5704
    :cond_1c
    const/16 v32, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1d

    .line 5708
    .end local v10    # "arr$":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .end local v11    # "c":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .end local v14    # "i$":I
    .end local v23    # "len$":I
    .restart local v15    # "i$":I
    :cond_1d
    const/16 v32, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5695
    .end local v15    # "i$":I
    :cond_1e
    add-int/lit8 v14, v15, 0x1

    .restart local v14    # "i$":I
    move v15, v14

    .end local v14    # "i$":I
    .restart local v15    # "i$":I
    goto :goto_1b

    .line 5712
    .end local v12    # "cpuSpeeds":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .end local v15    # "i$":I
    .local v14, "i$":Ljava/util/Iterator;
    :cond_1f
    const/16 v32, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5715
    .end local v14    # "i$":Ljava/util/Iterator;
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v32, v0

    if-eqz v32, :cond_22

    .line 5716
    const/16 v32, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5718
    const/4 v13, 0x0

    :goto_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    if-ge v13, v0, :cond_23

    .line 5719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v32, v0

    aget-object v11, v32, v13

    .line 5720
    .restart local v11    # "c":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    if-eqz v11, :cond_21

    .line 5721
    const/16 v32, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5722
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 5718
    :goto_1f
    add-int/lit8 v13, v13, 0x1

    goto :goto_1e

    .line 5724
    :cond_21
    const/16 v32, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1f

    .line 5728
    .end local v11    # "c":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    :cond_22
    const/16 v32, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5731
    :cond_23
    return-void
.end method

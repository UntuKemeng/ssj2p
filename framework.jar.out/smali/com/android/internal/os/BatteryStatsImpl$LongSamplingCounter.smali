.class public Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
.super Landroid/os/BatteryStats$LongCounter;
.source "BatteryStatsImpl.java"

# interfaces
.implements Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LongSamplingCounter"
.end annotation


# instance fields
.field mCount:J

.field mLastCount:J

.field mLoadedCount:J

.field mPluggedCount:J

.field final mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

.field mUnpluggedCount:J


# direct methods
.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V
    .locals 0
    .param p1, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .prologue
    .line 853
    invoke-direct {p0}, Landroid/os/BatteryStats$LongCounter;-><init>()V

    .line 854
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 855
    invoke-virtual {p1, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->add(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 856
    return-void
.end method

.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V
    .locals 2
    .param p1, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p2, "in"    # Landroid/os/Parcel;

    .prologue
    .line 843
    invoke-direct {p0}, Landroid/os/BatteryStats$LongCounter;-><init>()V

    .line 844
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 845
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mPluggedCount:J

    .line 846
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mPluggedCount:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    .line 847
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mLoadedCount:J

    .line 848
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mLastCount:J

    .line 849
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mUnpluggedCount:J

    .line 850
    invoke-virtual {p1, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->add(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 851
    return-void
.end method


# virtual methods
.method addCountLocked(J)V
    .locals 3
    .param p1, "count"    # J

    .prologue
    .line 895
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    .line 896
    return-void
.end method

.method detach()V
    .locals 1

    .prologue
    .line 910
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->remove(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 911
    return-void
.end method

.method public getCountLocked(I)J
    .locals 4
    .param p1, "which"    # I

    .prologue
    .line 876
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    .line 877
    .local v0, "val":J
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 878
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mUnpluggedCount:J

    sub-long/2addr v0, v2

    .line 883
    :cond_0
    :goto_0
    return-wide v0

    .line 879
    :cond_1
    if-eqz p1, :cond_0

    .line 880
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mLoadedCount:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public logState(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 4
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 888
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mLoadedCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mLoadedCount:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mLastCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mLastCount:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mUnpluggedCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mUnpluggedCount:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mPluggedCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mPluggedCount:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 892
    return-void
.end method

.method public onTimeStarted(JJJ)V
    .locals 2
    .param p1, "elapsedRealtime"    # J
    .param p3, "baseUptime"    # J
    .param p5, "baseRealtime"    # J

    .prologue
    .line 866
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mPluggedCount:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mUnpluggedCount:J

    .line 867
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mPluggedCount:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    .line 868
    return-void
.end method

.method public onTimeStopped(JJJ)V
    .locals 2
    .param p1, "elapsedRealtime"    # J
    .param p3, "baseUptime"    # J
    .param p5, "baseRealtime"    # J

    .prologue
    .line 872
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mPluggedCount:J

    .line 873
    return-void
.end method

.method readSummaryFromParcelLocked(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 918
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mLoadedCount:J

    .line 919
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mLoadedCount:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    .line 920
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mLastCount:J

    .line 921
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mLoadedCount:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mPluggedCount:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mUnpluggedCount:J

    .line 922
    return-void
.end method

.method reset(Z)V
    .locals 2
    .param p1, "detachIfReset"    # Z

    .prologue
    const-wide/16 v0, 0x0

    .line 902
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    .line 903
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mUnpluggedCount:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mPluggedCount:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mLastCount:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mLoadedCount:J

    .line 904
    if-eqz p1, :cond_0

    .line 905
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    .line 907
    :cond_0
    return-void
.end method

.method writeSummaryFromParcelLocked(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;

    .prologue
    .line 914
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 915
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;

    .prologue
    .line 859
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 860
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mLoadedCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 861
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mUnpluggedCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 862
    return-void
.end method

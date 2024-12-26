.class Lcom/android/server/VibratorService$VibrateThread;
.super Ljava/lang/Thread;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VibrateThread"
.end annotation


# instance fields
.field mDone:Z

.field final mVibration:Lcom/android/server/VibratorService$Vibration;

.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V
    .locals 2
    .param p2, "vib"    # Lcom/android/server/VibratorService$Vibration;

    .prologue
    .line 1074
    iput-object p1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1075
    iput-object p2, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    .line 1076
    # getter for: Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$1800(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object v0

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUid:I
    invoke-static {p2}, Lcom/android/server/VibratorService$Vibration;->access$1200(Lcom/android/server/VibratorService$Vibration;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/WorkSource;->set(I)V

    .line 1077
    # getter for: Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$1900(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    # getter for: Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$1800(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 1078
    # getter for: Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$1900(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1079
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-virtual {v0}, Lcom/android/server/VibratorService$Vibration;->getPackageName()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/android/server/VibratorService;->mLastStartWakeLock:Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/android/server/VibratorService;->access$2002(Lcom/android/server/VibratorService;Ljava/lang/String;)Ljava/lang/String;

    .line 1080
    return-void
.end method

.method private delay(J)V
    .locals 7
    .param p1, "duration"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 1083
    cmp-long v2, p1, v4

    if-lez v2, :cond_1

    .line 1084
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long v0, p1, v2

    .line 1087
    .local v0, "bedtime":J
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1091
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    if-eqz v2, :cond_2

    .line 1097
    .end local v0    # "bedtime":J
    :cond_1
    :goto_1
    return-void

    .line 1094
    .restart local v0    # "bedtime":J
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long p1, v0, v2

    .line 1095
    cmp-long v2, p1, v4

    if-gtz v2, :cond_0

    goto :goto_1

    .line 1089
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 1100
    const/4 v3, -0x8

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1101
    monitor-enter p0

    .line 1102
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mPattern:[J
    invoke-static {v3}, Lcom/android/server/VibratorService$Vibration;->access$900(Lcom/android/server/VibratorService$Vibration;)[J

    move-result-object v14

    .line 1103
    .local v14, "pattern":[J
    array-length v13, v14

    .line 1104
    .local v13, "len":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mRepeat:I
    invoke-static {v3}, Lcom/android/server/VibratorService$Vibration;->access$1000(Lcom/android/server/VibratorService$Vibration;)I

    move-result v15

    .line 1105
    .local v15, "repeat":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUid:I
    invoke-static {v3}, Lcom/android/server/VibratorService$Vibration;->access$1200(Lcom/android/server/VibratorService$Vibration;)I

    move-result v6

    .line 1106
    .local v6, "uid":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUsageHint:I
    invoke-static {v3}, Lcom/android/server/VibratorService$Vibration;->access$1100(Lcom/android/server/VibratorService$Vibration;)I

    move-result v7

    .line 1107
    .local v7, "usageHint":I
    const/4 v2, 0x0

    .line 1108
    .local v2, "index":I
    const-wide/16 v4, 0x0

    .line 1109
    .local v4, "duration":J
    const-wide/16 v16, 0x0

    .line 1110
    .local v16, "startTime":J
    const-wide/16 v10, 0x0

    .local v10, "endTime":J
    move v12, v2

    .line 1112
    .end local v2    # "index":I
    .local v12, "index":I
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    if-nez v3, :cond_8

    .line 1114
    if-ge v12, v13, :cond_0

    .line 1115
    add-int/lit8 v2, v12, 0x1

    .end local v12    # "index":I
    .restart local v2    # "index":I
    aget-wide v8, v14, v12

    add-long/2addr v4, v8

    move v12, v2

    .line 1119
    .end local v2    # "index":I
    .restart local v12    # "index":I
    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/server/VibratorService$VibrateThread;->delay(J)V

    .line 1120
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    if-eqz v3, :cond_3

    move v2, v12

    .line 1150
    .end local v12    # "index":I
    .restart local v2    # "index":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v3}, Lcom/android/server/VibratorService;->access$1900(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1151
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-virtual {v8}, Lcom/android/server/VibratorService$Vibration;->getPackageName()Ljava/lang/String;

    move-result-object v8

    # setter for: Lcom/android/server/VibratorService;->mLastEndWakeLock:Ljava/lang/String;
    invoke-static {v3, v8}, Lcom/android/server/VibratorService;->access$2302(Lcom/android/server/VibratorService;Ljava/lang/String;)Ljava/lang/String;

    .line 1152
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1153
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/android/server/VibratorService;->access$100(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    move-result-object v8

    monitor-enter v8

    .line 1154
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    iget-object v3, v3, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    move-object/from16 v0, p0

    if-ne v3, v0, :cond_1

    .line 1155
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    const/4 v9, 0x0

    iput-object v9, v3, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    .line 1157
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    if-nez v3, :cond_2

    .line 1160
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    # invokes: Lcom/android/server/VibratorService;->unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V
    invoke-static {v3, v9}, Lcom/android/server/VibratorService;->access$2400(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V

    .line 1161
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    # invokes: Lcom/android/server/VibratorService;->startNextVibrationLocked()V
    invoke-static {v3}, Lcom/android/server/VibratorService;->access$500(Lcom/android/server/VibratorService;)V

    .line 1163
    :cond_2
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1164
    return-void

    .line 1124
    .end local v2    # "index":I
    .restart local v12    # "index":I
    :cond_3
    if-ge v12, v13, :cond_5

    .line 1127
    add-int/lit8 v2, v12, 0x1

    .end local v12    # "index":I
    .restart local v2    # "index":I
    :try_start_2
    aget-wide v4, v14, v12

    .line 1128
    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-lez v3, :cond_7

    .line 1129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 1130
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUseMagnitude:Z
    invoke-static {v8}, Lcom/android/server/VibratorService$Vibration;->access$1500(Lcom/android/server/VibratorService$Vibration;)Z

    move-result v8

    if-eqz v8, :cond_4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mMagnitude:I
    invoke-static {v8}, Lcom/android/server/VibratorService$Vibration;->access$1600(Lcom/android/server/VibratorService$Vibration;)I

    move-result v8

    :goto_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mFrequency:I
    invoke-static {v9}, Lcom/android/server/VibratorService$Vibration;->access$1400(Lcom/android/server/VibratorService$Vibration;)I

    move-result v9

    # invokes: Lcom/android/server/VibratorService;->doVibratorOn(JIIII)V
    invoke-static/range {v3 .. v9}, Lcom/android/server/VibratorService;->access$2200(Lcom/android/server/VibratorService;JIIII)V

    .line 1138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v10, v8, v16

    .line 1139
    sub-long/2addr v4, v10

    move v12, v2

    .end local v2    # "index":I
    .restart local v12    # "index":I
    goto/16 :goto_0

    .line 1130
    .end local v12    # "index":I
    .restart local v2    # "index":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mDefaultMagnitude:I
    invoke-static {v8}, Lcom/android/server/VibratorService;->access$2100(Lcom/android/server/VibratorService;)I

    move-result v8

    goto :goto_2

    .line 1142
    .end local v2    # "index":I
    .restart local v12    # "index":I
    :cond_5
    if-gez v15, :cond_6

    move v2, v12

    .line 1143
    .end local v12    # "index":I
    .restart local v2    # "index":I
    goto/16 :goto_1

    .line 1145
    .end local v2    # "index":I
    .restart local v12    # "index":I
    :cond_6
    move v2, v15

    .line 1146
    .end local v12    # "index":I
    .restart local v2    # "index":I
    const-wide/16 v4, 0x0

    move v12, v2

    .end local v2    # "index":I
    .restart local v12    # "index":I
    goto/16 :goto_0

    .line 1152
    .end local v4    # "duration":J
    .end local v6    # "uid":I
    .end local v7    # "usageHint":I
    .end local v10    # "endTime":J
    .end local v12    # "index":I
    .end local v13    # "len":I
    .end local v14    # "pattern":[J
    .end local v15    # "repeat":I
    .end local v16    # "startTime":J
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1163
    .restart local v2    # "index":I
    .restart local v4    # "duration":J
    .restart local v6    # "uid":I
    .restart local v7    # "usageHint":I
    .restart local v10    # "endTime":J
    .restart local v13    # "len":I
    .restart local v14    # "pattern":[J
    .restart local v15    # "repeat":I
    .restart local v16    # "startTime":J
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    :cond_7
    move v12, v2

    .end local v2    # "index":I
    .restart local v12    # "index":I
    goto/16 :goto_0

    :cond_8
    move v2, v12

    .end local v12    # "index":I
    .restart local v2    # "index":I
    goto/16 :goto_1
.end method

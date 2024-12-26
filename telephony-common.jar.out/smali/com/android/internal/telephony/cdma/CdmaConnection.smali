.class public Lcom/android/internal/telephony/cdma/CdmaConnection;
.super Lcom/android/internal/telephony/Connection;
.source "CdmaConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/CdmaConnection$1;,
        Lcom/android/internal/telephony/cdma/CdmaConnection$MyHandler;
    }
.end annotation


# static fields
.field static final EVENT_DTMF_DELAY_DONE:I = 0x5

.field static final EVENT_DTMF_DONE:I = 0x1

.field static final EVENT_NEXT_POST_DIAL:I = 0x3

.field static final EVENT_PAUSE_DONE:I = 0x2

.field static final EVENT_WAKE_LOCK_TIMEOUT:I = 0x4

.field static final LOG_TAG:Ljava/lang/String; = "CdmaConnection"

.field static final PAUSE_DELAY_MILLIS:I = 0x7d0

.field private static final VDBG:Z = false

.field static final WAKE_LOCK_TIMEOUT_MILLIS:I = 0xea60


# instance fields
.field isCwActive:Z

.field isCwHolding:Z

.field mCause:I

.field mDisconnectTime:J

.field mDisconnected:Z

.field private mDtmfToneDelay:I

.field mHandler:Landroid/os/Handler;

.field mIndex:I

.field mIsInAnsweringMessage:Z

.field mNeedSendDAN:Z

.field mNextPostDialChar:I

.field mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

.field mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

.field mPostDialString:Ljava/lang/String;

.field mPreciseCause:I

.field mVendorCause:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;Lcom/android/internal/telephony/cdma/CdmaCallTracker;Lcom/android/internal/telephony/cdma/CdmaCall;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cw"    # Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;
    .param p3, "ct"    # Lcom/android/internal/telephony/cdma/CdmaCallTracker;
    .param p4, "parent"    # Lcom/android/internal/telephony/cdma/CdmaCall;

    .prologue
    const/4 v4, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 306
    invoke-direct {p0}, Lcom/android/internal/telephony/Connection;-><init>()V

    .line 81
    iput-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->isCwActive:Z

    .line 82
    iput-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->isCwHolding:Z

    .line 85
    iput-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mNeedSendDAN:Z

    .line 100
    iput v5, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCause:I

    .line 101
    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->NOT_STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 102
    iput v5, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPreciseCause:I

    .line 106
    iput-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mIsInAnsweringMessage:Z

    .line 114
    iput v5, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mDtmfToneDelay:I

    .line 307
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->createWakeLock(Landroid/content/Context;)V

    .line 308
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->acquireWakeLock()V

    .line 310
    iput-object p3, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    .line 311
    new-instance v2, Lcom/android/internal/telephony/cdma/CdmaConnection$MyHandler;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/cdma/CdmaConnection$MyHandler;-><init>(Lcom/android/internal/telephony/cdma/CdmaConnection;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mHandler:Landroid/os/Handler;

    .line 312
    iget-object v2, p2, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->number:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mAddress:Ljava/lang/String;

    .line 313
    iget v2, p2, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->numberPresentation:I

    iput v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mNumberPresentation:I

    .line 314
    iget-object v2, p2, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->name:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCnapName:Ljava/lang/String;

    .line 315
    iget v2, p2, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->namePresentation:I

    iput v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCnapNamePresentation:I

    .line 316
    iput v4, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mIndex:I

    .line 317
    iput-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mIsIncoming:Z

    .line 318
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCreateTime:J

    .line 319
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mConnectTime:J

    .line 320
    iput-object p4, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    .line 322
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaConnection;->setId(I)V

    .line 323
    new-instance v2, Lcom/android/internal/telephony/CallDetails;

    invoke-direct {v2}, Lcom/android/internal/telephony/CallDetails;-><init>()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaConnection;->setCallDetails(Lcom/android/internal/telephony/CallDetails;)Z

    .line 325
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    iput v6, v2, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 326
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    const-string v3, "radiotech"

    const-string v4, "cdma"

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/CallDetails;->setExtraValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iput-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->isCwHolding:Z

    .line 330
    iput-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->isCwActive:Z

    .line 332
    sget-object v2, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p4, p0, v2}, Lcom/android/internal/telephony/cdma/CdmaCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    .line 335
    const/16 v2, 0xf

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 336
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getVideoState()I

    move-result v1

    .line 337
    .local v1, "oldVideoState":I
    const/4 v0, 0x0

    .line 338
    .local v0, "newVideoState":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "oldVideoState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newVideoState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaConnection;->log(Ljava/lang/String;)V

    .line 339
    if-eq v1, v0, :cond_0

    .line 340
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->setVideoState(I)V

    .line 342
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New Connection (WaitingNoti): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaConnection;->log(Ljava/lang/String;)V

    .line 345
    .end local v0    # "newVideoState":I
    .end local v1    # "oldVideoState":I
    :cond_1
    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/cdma/CdmaCallTracker;I)V
    .locals 6
    .param p1, "phone"    # Lcom/android/internal/telephony/cdma/CDMAPhone;
    .param p2, "dc"    # Lcom/android/internal/telephony/DriverCall;
    .param p3, "ct"    # Lcom/android/internal/telephony/cdma/CdmaCallTracker;
    .param p4, "index"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 160
    invoke-direct {p0}, Lcom/android/internal/telephony/Connection;-><init>()V

    .line 81
    iput-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->isCwActive:Z

    .line 82
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->isCwHolding:Z

    .line 85
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mNeedSendDAN:Z

    .line 100
    iput v4, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCause:I

    .line 101
    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->NOT_STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 102
    iput v4, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPreciseCause:I

    .line 106
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mIsInAnsweringMessage:Z

    .line 114
    iput v4, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mDtmfToneDelay:I

    .line 161
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaConnection;->createWakeLock(Landroid/content/Context;)V

    .line 162
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->acquireWakeLock()V

    .line 164
    iput-object p3, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    .line 165
    new-instance v2, Lcom/android/internal/telephony/cdma/CdmaConnection$MyHandler;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/cdma/CdmaConnection$MyHandler;-><init>(Lcom/android/internal/telephony/cdma/CdmaConnection;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mHandler:Landroid/os/Handler;

    .line 167
    iget-object v2, p2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mAddress:Ljava/lang/String;

    .line 169
    iget-boolean v2, p2, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mIsIncoming:Z

    .line 170
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCreateTime:J

    .line 171
    iget-object v2, p2, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCnapName:Ljava/lang/String;

    .line 172
    iget v2, p2, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    iput v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCnapNamePresentation:I

    .line 173
    iget v2, p2, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    iput v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mNumberPresentation:I

    .line 175
    iput p4, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mIndex:I

    .line 177
    iget v2, p2, Lcom/android/internal/telephony/DriverCall;->id:I

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaConnection;->setId(I)V

    .line 178
    iget-object v2, p2, Lcom/android/internal/telephony/DriverCall;->callDetails:Lcom/android/internal/telephony/CallDetails;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaConnection;->setCallDetails(Lcom/android/internal/telephony/CallDetails;)Z

    .line 181
    iget-object v2, p2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v3, Lcom/android/internal/telephony/DriverCall$State;->HOLDING:Lcom/android/internal/telephony/DriverCall$State;

    if-eq v2, v3, :cond_0

    iget-object v2, p2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v3, Lcom/android/internal/telephony/DriverCall$State;->WAITING:Lcom/android/internal/telephony/DriverCall$State;

    if-ne v2, v3, :cond_1

    .line 182
    :cond_0
    iput-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->isCwHolding:Z

    .line 183
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->isCwActive:Z

    .line 187
    :cond_1
    iget-object v2, p2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaConnection;->parentFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/cdma/CdmaCall;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    .line 188
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v2, p0, p2}, Lcom/android/internal/telephony/cdma/CdmaCall;->attach(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/DriverCall;)V

    .line 190
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->fetchDtmfToneDelay(Lcom/android/internal/telephony/cdma/CDMAPhone;)V

    .line 193
    const/16 v2, 0xf

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 194
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getVideoState()I

    move-result v1

    .line 195
    .local v1, "oldVideoState":I
    const/4 v0, 0x0

    .line 196
    .local v0, "newVideoState":I
    iget-object v2, p2, Lcom/android/internal/telephony/DriverCall;->callDetails:Lcom/android/internal/telephony/CallDetails;

    if-eqz v2, :cond_2

    .line 197
    iget-object v2, p2, Lcom/android/internal/telephony/DriverCall;->callDetails:Lcom/android/internal/telephony/CallDetails;

    iget v2, v2, Lcom/android/internal/telephony/CallDetails;->call_type:I

    invoke-static {v2}, Lcom/android/internal/telephony/CallDetails;->callTypeToVideoState(I)I

    move-result v0

    .line 199
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "oldVideoState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newVideoState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaConnection;->log(Ljava/lang/String;)V

    .line 200
    if-eq v1, v0, :cond_3

    .line 201
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->setVideoState(I)V

    .line 203
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New Connection (DriverCall): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaConnection;->log(Ljava/lang/String;)V

    .line 206
    .end local v0    # "newVideoState":I
    .end local v1    # "oldVideoState":I
    :cond_4
    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;Ljava/lang/String;Lcom/android/internal/telephony/cdma/CdmaCallTracker;Lcom/android/internal/telephony/cdma/CdmaCall;)V
    .locals 6
    .param p1, "phone"    # Lcom/android/internal/telephony/cdma/CDMAPhone;
    .param p2, "dialString"    # Ljava/lang/String;
    .param p3, "ct"    # Lcom/android/internal/telephony/cdma/CdmaCallTracker;
    .param p4, "parent"    # Lcom/android/internal/telephony/cdma/CdmaCall;

    .prologue
    .line 212
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/CdmaConnection;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;Ljava/lang/String;Lcom/android/internal/telephony/cdma/CdmaCallTracker;Lcom/android/internal/telephony/cdma/CdmaCall;Lcom/android/internal/telephony/CallDetails;)V

    .line 213
    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;Ljava/lang/String;Lcom/android/internal/telephony/cdma/CdmaCallTracker;Lcom/android/internal/telephony/cdma/CdmaCall;Lcom/android/internal/telephony/CallDetails;)V
    .locals 9
    .param p1, "phone"    # Lcom/android/internal/telephony/cdma/CDMAPhone;
    .param p2, "dialString"    # Ljava/lang/String;
    .param p3, "ct"    # Lcom/android/internal/telephony/cdma/CdmaCallTracker;
    .param p4, "parent"    # Lcom/android/internal/telephony/cdma/CdmaCall;
    .param p5, "callDetails"    # Lcom/android/internal/telephony/CallDetails;

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x5

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 215
    invoke-direct {p0}, Lcom/android/internal/telephony/Connection;-><init>()V

    .line 81
    iput-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->isCwActive:Z

    .line 82
    iput-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->isCwHolding:Z

    .line 85
    iput-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mNeedSendDAN:Z

    .line 100
    iput v5, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCause:I

    .line 101
    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->NOT_STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 102
    iput v5, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPreciseCause:I

    .line 106
    iput-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mIsInAnsweringMessage:Z

    .line 114
    iput v5, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mDtmfToneDelay:I

    .line 217
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaConnection;->createWakeLock(Landroid/content/Context;)V

    .line 218
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->acquireWakeLock()V

    .line 220
    iput-object p3, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    .line 221
    new-instance v2, Lcom/android/internal/telephony/cdma/CdmaConnection$MyHandler;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/cdma/CdmaConnection$MyHandler;-><init>(Lcom/android/internal/telephony/cdma/CdmaConnection;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mHandler:Landroid/os/Handler;

    .line 223
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mDialString:Ljava/lang/String;

    .line 226
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isUsaGlobalModel()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "VZW"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 228
    const-string v2, "*86"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 229
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getVoiceMailNumberForGlobalMode()Ljava/lang/String;

    move-result-object p2

    .line 230
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/telephony/PhoneNumberUtils;->assistedDialFromDialPad(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 231
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v7, :cond_6

    .line 232
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VoiceMail Number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaConnection;->log(Ljava/lang/String;)V

    .line 240
    :cond_0
    :goto_0
    const-string v2, "CdmaConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CDMAConn] CdmaConnection: dialString="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/cdma/CdmaConnection;->maskDialString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->keepDialString()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 244
    const-string v2, "CdmaConnection"

    const-string v3, "Ignore formatDialString"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :goto_1
    const-string v2, "CdmaConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CDMAConn] CdmaConnection:formated dialString="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/cdma/CdmaConnection;->maskDialString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mAddress:Ljava/lang/String;

    .line 255
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialString:Ljava/lang/String;

    .line 257
    if-nez p5, :cond_9

    .line 258
    new-instance p5, Lcom/android/internal/telephony/CallDetails;

    .end local p5    # "callDetails":Lcom/android/internal/telephony/CallDetails;
    invoke-direct {p5}, Lcom/android/internal/telephony/CallDetails;-><init>()V

    .line 259
    .restart local p5    # "callDetails":Lcom/android/internal/telephony/CallDetails;
    iput v6, p5, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 264
    :cond_1
    :goto_2
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaConnection;->setId(I)V

    .line 265
    invoke-virtual {p0, p5}, Lcom/android/internal/telephony/cdma/CdmaConnection;->setCallDetails(Lcom/android/internal/telephony/CallDetails;)Z

    .line 267
    iput v8, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mIndex:I

    .line 269
    iput-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mIsIncoming:Z

    .line 270
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCnapName:Ljava/lang/String;

    .line 271
    iput v6, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCnapNamePresentation:I

    .line 272
    iput v6, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mNumberPresentation:I

    .line 273
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCreateTime:J

    .line 275
    if-eqz p4, :cond_2

    .line 276
    iput-object p4, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    .line 279
    iget-object v2, p4, Lcom/android/internal/telephony/cdma/CdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_a

    .line 280
    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p4, p0, v2}, Lcom/android/internal/telephony/cdma/CdmaCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    .line 286
    :cond_2
    :goto_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->fetchDtmfToneDelay(Lcom/android/internal/telephony/cdma/CDMAPhone;)V

    .line 289
    const/16 v2, 0xf

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 290
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getVideoState()I

    move-result v1

    .line 291
    .local v1, "oldVideoState":I
    const/4 v0, 0x0

    .line 292
    .local v0, "newVideoState":I
    if-eqz p5, :cond_3

    .line 293
    iget v2, p5, Lcom/android/internal/telephony/CallDetails;->call_type:I

    invoke-static {v2}, Lcom/android/internal/telephony/CallDetails;->callTypeToVideoState(I)I

    move-result v0

    .line 295
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "oldVideoState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newVideoState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaConnection;->log(Ljava/lang/String;)V

    .line 296
    if-eq v1, v0, :cond_4

    .line 297
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->setVideoState(I)V

    .line 299
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New Connection (DialString): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaConnection;->log(Ljava/lang/String;)V

    .line 302
    .end local v0    # "newVideoState":I
    .end local v1    # "oldVideoState":I
    :cond_5
    return-void

    .line 233
    :cond_6
    const-string v2, "*86"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 234
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VoiceMail Number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaConnection;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 245
    :cond_7
    invoke-static {v7}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 246
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/android/internal/telephony/cdma/CdmaConnection;->formatDialString(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_1

    .line 248
    :cond_8
    invoke-static {p2}, Lcom/android/internal/telephony/cdma/CdmaConnection;->formatDialString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_1

    .line 260
    :cond_9
    const-string v2, "unknown"

    const-string v3, "participants"

    invoke-virtual {p5, v3}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 261
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mAddress:Ljava/lang/String;

    goto/16 :goto_2

    .line 282
    :cond_a
    sget-object v2, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p4, p0, v2}, Lcom/android/internal/telephony/cdma/CdmaCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    goto/16 :goto_3
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/cdma/CdmaConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/CdmaConnection;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->releaseWakeLock()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/cdma/CdmaConnection;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/CdmaConnection;

    .prologue
    .line 71
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mDtmfToneDelay:I

    return v0
.end method

.method private acquireWakeLock()V
    .locals 1

    .prologue
    .line 1232
    const-string v0, "acquireWakeLock"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->log(Ljava/lang/String;)V

    .line 1233
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1234
    return-void
.end method

.method private createWakeLock(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1227
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1228
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "CdmaConnection"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1229
    return-void
.end method

.method private doDisconnect()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 986
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mIndex:I

    .line 987
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mDisconnectTime:J

    .line 988
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mConnectTimeReal:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mDuration:J

    .line 991
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_SupportVolte"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "VZW"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 993
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mAddress:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "cdma"

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getRadioTech()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "ABSENT"

    const-string v2, "gsm.sim.state"

    const-string v3, "UNKNOWN"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 996
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iput-boolean v7, v1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mNeedSendStopDAN:Z

    .line 1004
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mNeedSendDAN:Z

    if-eqz v1, :cond_2

    .line 1005
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getSMSDispatcher()Lcom/android/internal/telephony/SMSDispatcher;

    move-result-object v0

    .line 1006
    .local v0, "smsDispatcher":Lcom/android/internal/telephony/SMSDispatcher;
    if-eqz v0, :cond_1

    .line 1007
    const-string v1, "CdmaConnection"

    const-string v2, "Send DAN - Start"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/SMSDispatcher;->sendDomainChangeSms(B)V

    .line 1010
    :cond_1
    iput-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mNeedSendDAN:Z

    .line 1014
    .end local v0    # "smsDispatcher":Lcom/android/internal/telephony/SMSDispatcher;
    :cond_2
    const-string v1, "CTC"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1016
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mConnectTimeReal:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mDuration:J

    .line 1019
    :cond_4
    iput-boolean v7, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mDisconnected:Z

    .line 1020
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->clearPostDialListeners()V

    .line 1021
    return-void

    .line 998
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iput-boolean v6, v1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mNeedSendStopDAN:Z

    goto :goto_0
.end method

.method static equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .prologue
    .line 354
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private fetchDtmfToneDelay(Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/cdma/CDMAPhone;

    .prologue
    .line 1428
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "carrier_config"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 1430
    .local v1, "configMgr":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 1431
    .local v0, "b":Landroid/os/PersistableBundle;
    if-eqz v0, :cond_0

    .line 1432
    const-string v2, "cdma_dtmf_tone_delay_int"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mDtmfToneDelay:I

    .line 1434
    :cond_0
    return-void
.end method

.method private static findNextPCharOrNonPOrNonWCharIndex(Ljava/lang/String;I)I
    .locals 5
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "currIndex"    # I

    .prologue
    .line 1266
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isWait(C)Z

    move-result v3

    .line 1267
    .local v3, "wMatched":Z
    add-int/lit8 v1, p1, 0x1

    .line 1268
    .local v1, "index":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1269
    .local v2, "length":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1270
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1272
    .local v0, "cNext":C
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isWait(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1273
    const/4 v3, 0x1

    .line 1277
    :cond_0
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isWait(C)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isPause(C)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1285
    .end local v0    # "cNext":C
    :cond_1
    if-ge v1, v2, :cond_2

    add-int/lit8 v4, p1, 0x1

    if-le v1, v4, :cond_2

    if-nez v3, :cond_2

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isPause(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1287
    add-int/lit8 v1, p1, 0x1

    .line 1289
    .end local v1    # "index":I
    :cond_2
    return v1

    .line 1280
    .restart local v0    # "cNext":C
    .restart local v1    # "index":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 1281
    goto :goto_0
.end method

.method private static findPOrWCharToAppend(Ljava/lang/String;II)C
    .locals 3
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "currPwIndex"    # I
    .param p2, "nextNonPwCharIndex"    # I

    .prologue
    .line 1297
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1301
    .local v0, "c":C
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isPause(C)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x2c

    .line 1309
    .local v1, "ret":C
    :goto_0
    add-int/lit8 v2, p1, 0x1

    if-le p2, v2, :cond_0

    .line 1310
    const/16 v1, 0x3b

    .line 1312
    :cond_0
    return v1

    .line 1301
    .end local v1    # "ret":C
    :cond_1
    const/16 v1, 0x3b

    goto :goto_0
.end method

.method public static formatDialString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 1333
    if-nez p0, :cond_0

    .line 1334
    const/4 v6, 0x0

    .line 1367
    :goto_0
    return-object v6

    .line 1336
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1337
    .local v2, "length":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1339
    .local v5, "ret":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 1341
    .local v1, "currIndex":I
    :goto_1
    if-ge v1, v2, :cond_5

    .line 1342
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1343
    .local v0, "c":C
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isPause(C)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isWait(C)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1344
    :cond_1
    add-int/lit8 v6, v2, -0x1

    if-ge v1, v6, :cond_2

    .line 1346
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->findNextPCharOrNonPOrNonWCharIndex(Ljava/lang/String;I)I

    move-result v3

    .line 1348
    .local v3, "nextIndex":I
    if-ge v3, v2, :cond_3

    .line 1349
    invoke-static {p0, v1, v3}, Lcom/android/internal/telephony/cdma/CdmaConnection;->findPOrWCharToAppend(Ljava/lang/String;II)C

    move-result v4

    .line 1350
    .local v4, "pC":C
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1354
    add-int/lit8 v6, v1, 0x1

    if-le v3, v6, :cond_2

    .line 1355
    add-int/lit8 v1, v3, -0x1

    .line 1365
    .end local v3    # "nextIndex":I
    .end local v4    # "pC":C
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1357
    .restart local v3    # "nextIndex":I
    :cond_3
    if-ne v3, v2, :cond_2

    .line 1359
    add-int/lit8 v1, v2, -0x1

    goto :goto_2

    .line 1363
    .end local v3    # "nextIndex":I
    :cond_4
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1367
    .end local v0    # "c":C
    :cond_5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static formatDialString(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1377
    if-nez p0, :cond_0

    .line 1378
    const/4 v6, 0x0

    .line 1411
    :goto_0
    return-object v6

    .line 1380
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1381
    .local v2, "length":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1383
    .local v5, "ret":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 1385
    .local v1, "currIndex":I
    :goto_1
    if-ge v1, v2, :cond_5

    .line 1386
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1387
    .local v0, "c":C
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isPause(C)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isWait(C)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1388
    :cond_1
    add-int/lit8 v6, v2, -0x1

    if-ge v1, v6, :cond_2

    .line 1390
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->findNextPCharOrNonPOrNonWCharIndex(Ljava/lang/String;I)I

    move-result v3

    .line 1392
    .local v3, "nextIndex":I
    if-ge v3, v2, :cond_3

    .line 1393
    invoke-static {p0, v1, v3}, Lcom/android/internal/telephony/cdma/CdmaConnection;->findPOrWCharToAppend(Ljava/lang/String;II)C

    move-result v4

    .line 1394
    .local v4, "pC":C
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1398
    add-int/lit8 v6, v1, 0x1

    if-le v3, v6, :cond_2

    .line 1399
    add-int/lit8 v1, v3, -0x1

    .line 1409
    .end local v3    # "nextIndex":I
    .end local v4    # "pC":C
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1401
    .restart local v3    # "nextIndex":I
    :cond_3
    if-ne v3, v2, :cond_2

    .line 1403
    add-int/lit8 v1, v2, -0x1

    goto :goto_2

    .line 1407
    .end local v3    # "nextIndex":I
    :cond_4
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1411
    .end local v0    # "c":C
    :cond_5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p1}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCode(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method private isConnectingInOrOut()Z
    .locals 2

    .prologue
    .line 1172
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isPause(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 1254
    const/16 v0, 0x2c

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isWait(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 1258
    const/16 v0, 0x3b

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1416
    const-string v0, "CdmaConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CDMAConn] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    return-void
.end method

.method private maskDialString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    .line 1424
    const-string v0, "<MASKED>"

    return-object v0
.end method

.method private parentFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/cdma/CdmaCall;
    .locals 3
    .param p1, "state"    # Lcom/android/internal/telephony/DriverCall$State;

    .prologue
    .line 1179
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaConnection$1;->$SwitchMap$com$android$internal$telephony$DriverCall$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/DriverCall$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1196
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal call state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1183
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    .line 1192
    :goto_0
    return-object v0

    .line 1187
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    goto :goto_0

    .line 1192
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    goto :goto_0

    .line 1179
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private processPostDialChar(C)Z
    .locals 6
    .param p1, "c"    # C

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1034
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1037
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v0, v4}, Lcom/android/internal/telephony/CommandsInterface;->sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V

    .line 1038
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    move v0, v1

    .line 1056
    :cond_0
    return v0

    .line 1040
    :cond_1
    const/16 v2, 0x2c

    if-ne p1, v2, :cond_2

    .line 1041
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->PAUSE:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 1046
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x7d0

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1048
    :cond_2
    const/16 v2, 0x3b

    if-ne p1, v2, :cond_3

    .line 1049
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    goto :goto_0

    .line 1050
    :cond_3
    const/16 v2, 0x4e

    if-ne p1, v2, :cond_0

    .line 1051
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->WILD:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    goto :goto_0
.end method

.method private releaseAllWakeLocks()V
    .locals 2

    .prologue
    .line 1246
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 1247
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1248
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 1250
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1251
    return-void
.end method

.method private releaseWakeLock()V
    .locals 2

    .prologue
    .line 1237
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 1238
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1239
    const-string v0, "releaseWakeLock"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->log(Ljava/lang/String;)V

    .line 1240
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1242
    :cond_0
    monitor-exit v1

    .line 1243
    return-void

    .line 1242
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V
    .locals 6
    .param p1, "s"    # Lcom/android/internal/telephony/Connection$PostDialState;

    .prologue
    const/4 v2, 0x4

    .line 1207
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq p1, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->PAUSE:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne p1, v1, :cond_2

    .line 1209
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 1210
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1211
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1215
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1216
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mHandler:Landroid/os/Handler;

    const-wide/32 v4, 0xea60

    invoke-virtual {v1, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1217
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1222
    .end local v0    # "msg":Landroid/os/Message;
    :goto_1
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 1223
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->notifyPostDialListeners()V

    .line 1224
    return-void

    .line 1213
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->acquireWakeLock()V

    goto :goto_0

    .line 1217
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1219
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1220
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->releaseWakeLock()V

    goto :goto_1
.end method


# virtual methods
.method public cancelPostDial()V
    .locals 1

    .prologue
    .line 521
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 522
    return-void
.end method

.method compareTo(Lcom/android/internal/telephony/DriverCall;)Z
    .locals 4
    .param p1, "c"    # Lcom/android/internal/telephony/DriverCall;

    .prologue
    const/4 v1, 0x1

    .line 364
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mIsIncoming:Z

    if-nez v2, :cond_1

    iget-boolean v2, p1, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    if-nez v2, :cond_1

    .line 370
    :cond_0
    :goto_0
    return v1

    .line 369
    :cond_1
    iget-object v2, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iget v3, p1, Lcom/android/internal/telephony/DriverCall;->TOA:I

    invoke-static {v2, v3}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, "cAddress":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mIsIncoming:Z

    iget-boolean v3, p1, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mAddress:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method disconnectCauseFromCode(I)I
    .locals 9
    .param p1, "causeCode"    # I

    .prologue
    const/16 v8, 0xc8

    const/4 v4, 0x1

    const/4 v5, 0x2

    .line 547
    sparse-switch p1, :sswitch_data_0

    .line 599
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v1, v6, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    .line 600
    .local v1, "phone":Lcom/android/internal/telephony/cdma/CDMAPhone;
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    .line 601
    .local v2, "serviceState":I
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v7

    invoke-virtual {v6, v7, v5}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 604
    .local v0, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v3

    .line 607
    .local v3, "uiccAppState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    :goto_0
    iget v6, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->sipError:I

    if-lez v6, :cond_1

    iget v6, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->sipError:I

    if-eq v6, v8, :cond_1

    .line 608
    const/16 v4, 0x65

    .line 627
    .end local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v1    # "phone":Lcom/android/internal/telephony/cdma/CDMAPhone;
    .end local v2    # "serviceState":I
    .end local v3    # "uiccAppState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    :goto_1
    :sswitch_0
    return v4

    .line 549
    :sswitch_1
    const/4 v4, 0x4

    goto :goto_1

    .line 551
    :sswitch_2
    const/4 v4, 0x5

    goto :goto_1

    .line 553
    :sswitch_3
    const/16 v4, 0xf

    goto :goto_1

    .line 555
    :sswitch_4
    const/16 v4, 0x14

    goto :goto_1

    .line 557
    :sswitch_5
    const/16 v4, 0x15

    goto :goto_1

    .line 559
    :sswitch_6
    const/16 v4, 0x2e

    goto :goto_1

    .line 561
    :sswitch_7
    const/16 v4, 0x2f

    goto :goto_1

    .line 563
    :sswitch_8
    const/16 v4, 0x30

    goto :goto_1

    .line 565
    :sswitch_9
    const/16 v4, 0x1a

    goto :goto_1

    .line 567
    :sswitch_a
    const/16 v4, 0x1b

    goto :goto_1

    .line 569
    :sswitch_b
    const/16 v4, 0x1c

    goto :goto_1

    .line 571
    :sswitch_c
    const/16 v4, 0x1d

    goto :goto_1

    .line 573
    :sswitch_d
    const/16 v4, 0x1e

    goto :goto_1

    .line 575
    :sswitch_e
    const/16 v4, 0x1f

    goto :goto_1

    .line 577
    :sswitch_f
    const/16 v4, 0x20

    goto :goto_1

    .line 579
    :sswitch_10
    const/16 v4, 0x21

    goto :goto_1

    .line 581
    :sswitch_11
    const/16 v4, 0x22

    goto :goto_1

    .line 583
    :sswitch_12
    const/16 v4, 0x23

    goto :goto_1

    .line 586
    :sswitch_13
    const/16 v4, 0x67

    goto :goto_1

    .line 594
    :sswitch_14
    const/16 v4, 0x68

    goto :goto_1

    .line 604
    .restart local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .restart local v1    # "phone":Lcom/android/internal/telephony/cdma/CDMAPhone;
    .restart local v2    # "serviceState":I
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    goto :goto_0

    .line 610
    .restart local v3    # "uiccAppState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    :cond_1
    iget v6, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->sipError:I

    if-ne v6, v8, :cond_2

    move v4, v5

    .line 611
    goto :goto_1

    .line 615
    :cond_2
    const/4 v6, 0x3

    if-ne v2, v6, :cond_3

    .line 616
    const/16 v4, 0x11

    goto :goto_1

    .line 617
    :cond_3
    if-eq v2, v4, :cond_4

    if-ne v2, v5, :cond_5

    .line 619
    :cond_4
    const/16 v4, 0x12

    goto :goto_1

    .line 620
    :cond_5
    iget v4, v1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCdmaSubscriptionSource:I

    if-nez v4, :cond_6

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-eq v3, v4, :cond_6

    .line 623
    const/16 v4, 0x13

    goto :goto_1

    .line 624
    :cond_6
    const/16 v4, 0x10

    if-ne p1, v4, :cond_7

    move v4, v5

    .line 625
    goto :goto_1

    .line 627
    :cond_7
    const/16 v4, 0x24

    goto :goto_1

    .line 547
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_1
        0x22 -> :sswitch_2
        0x44 -> :sswitch_3
        0xf0 -> :sswitch_4
        0xf1 -> :sswitch_5
        0xf4 -> :sswitch_6
        0xf5 -> :sswitch_7
        0xf6 -> :sswitch_8
        0x3e8 -> :sswitch_9
        0x3e9 -> :sswitch_a
        0x3ea -> :sswitch_b
        0x3eb -> :sswitch_c
        0x3ec -> :sswitch_d
        0x3ed -> :sswitch_e
        0x3ee -> :sswitch_f
        0x3ef -> :sswitch_10
        0x3f0 -> :sswitch_11
        0x3f1 -> :sswitch_12
        0x44c -> :sswitch_13
        0x44e -> :sswitch_0
        0x44f -> :sswitch_14
    .end sparse-switch
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->clearPostDialListeners()V

    .line 349
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->releaseAllWakeLocks()V

    .line 350
    return-void
.end method

.method fakeHoldBeforeDial()V
    .locals 2

    .prologue
    .line 940
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    if-eqz v0, :cond_0

    .line 941
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaCall;->detach(Lcom/android/internal/telephony/cdma/CdmaConnection;)V

    .line 944
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    .line 945
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    .line 947
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onStartedHolding()V

    .line 948
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 1101
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1102
    const-string v0, "CdmaConnection"

    const-string v1, "[CdmaConn] UNEXPECTED; mPartialWakeLock is held when finalizing."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->releaseWakeLock()V

    .line 1105
    return-void
.end method

.method getCDMAIndex()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 952
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mIndex:I

    if-ltz v0, :cond_0

    .line 953
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 955
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "CDMA connection index not assigned"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic getCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getCall()Lcom/android/internal/telephony/cdma/CdmaCall;

    move-result-object v0

    return-object v0
.end method

.method public getCall()Lcom/android/internal/telephony/cdma/CdmaCall;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    return-object v0
.end method

.method public getDisconnectCause()I
    .locals 1

    .prologue
    .line 434
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCause:I

    return v0
.end method

.method public getDisconnectTime()J
    .locals 2

    .prologue
    .line 419
    iget-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mDisconnectTime:J

    return-wide v0
.end method

.method public getHoldDurationMillis()J
    .locals 4

    .prologue
    .line 424
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_0

    .line 426
    const-wide/16 v0, 0x0

    .line 428
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mHoldingStartTime:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method protected getIndex()I
    .locals 1

    .prologue
    .line 1487
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mIndex:I

    return v0
.end method

.method public getNumberPresentation()I
    .locals 1

    .prologue
    .line 1439
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mNumberPresentation:I

    return v0
.end method

.method public getOrigConnection()Lcom/android/internal/telephony/Connection;
    .locals 1

    .prologue
    .line 1459
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOrigDialString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mDialString:Ljava/lang/String;

    return-object v0
.end method

.method protected getOwner()Lcom/android/internal/telephony/CallTracker;
    .locals 1

    .prologue
    .line 1492
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    return-object v0
.end method

.method public getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    return-object v0
.end method

.method public getPreciseDisconnectCause()I
    .locals 1

    .prologue
    .line 1449
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPreciseCause:I

    return v0
.end method

.method public getRemainingPostDialString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1061
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v4, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v4, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialString:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialString:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mNextPostDialChar:I

    if-gt v3, v4, :cond_2

    .line 1065
    :cond_0
    const-string v1, ""

    .line 1079
    :cond_1
    :goto_0
    return-object v1

    .line 1068
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialString:Ljava/lang/String;

    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mNextPostDialChar:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1069
    .local v1, "subStr":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1070
    const/16 v3, 0x3b

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 1071
    .local v2, "wIndex":I
    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1073
    .local v0, "pIndex":I
    if-lez v2, :cond_4

    if-lt v2, v0, :cond_3

    if-gtz v0, :cond_4

    .line 1074
    :cond_3
    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1075
    :cond_4
    if-lez v0, :cond_1

    .line 1076
    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getState()Lcom/android/internal/telephony/Call$State;
    .locals 2

    .prologue
    .line 445
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mDisconnected:Z

    if-eqz v0, :cond_0

    .line 446
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    .line 454
    :goto_0
    return-object v0

    .line 448
    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_1

    .line 449
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 450
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isCdmaCwHolding()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    iget v0, v0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    .line 451
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 454
    :cond_3
    invoke-super {p0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    goto :goto_0
.end method

.method public getUUSInfo()Lcom/android/internal/telephony/UUSInfo;
    .locals 1

    .prologue
    .line 1445
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVendorDisconnectCause()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1454
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mVendorCause:Ljava/lang/String;

    return-object v0
.end method

.method public hangup()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 460
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mDisconnected:Z

    if-nez v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangup(Lcom/android/internal/telephony/cdma/CdmaConnection;)V

    .line 465
    return-void

    .line 463
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "disconnected"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method isCallCollisionCase(Lcom/android/internal/telephony/DriverCall;)Z
    .locals 7
    .param p1, "dc"    # Lcom/android/internal/telephony/DriverCall;

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 375
    if-nez p1, :cond_1

    .line 402
    :cond_0
    :goto_0
    return v2

    .line 379
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isCallCollisionCase - getState(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", dc.state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaConnection;->log(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v5, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v5, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v5, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_3

    :cond_2
    iget-object v4, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v5, Lcom/android/internal/telephony/DriverCall$State;->DIALING:Lcom/android/internal/telephony/DriverCall$State;

    if-ne v4, v5, :cond_3

    move v2, v3

    .line 384
    goto :goto_0

    .line 385
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_4

    iget-object v4, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v5, Lcom/android/internal/telephony/DriverCall$State;->DIALING:Lcom/android/internal/telephony/DriverCall$State;

    if-ne v4, v5, :cond_4

    move v2, v3

    .line 388
    goto :goto_0

    .line 389
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v5, :cond_6

    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_0

    :cond_6
    iget-object v4, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v5, Lcom/android/internal/telephony/DriverCall$State;->DIALING:Lcom/android/internal/telephony/DriverCall$State;

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    iget v4, v4, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    if-ne v4, v6, :cond_0

    iget-object v4, p1, Lcom/android/internal/telephony/DriverCall;->callDetails:Lcom/android/internal/telephony/CallDetails;

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/android/internal/telephony/DriverCall;->callDetails:Lcom/android/internal/telephony/CallDetails;

    iget v4, v4, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    if-ne v4, v6, :cond_0

    .line 393
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    const-string v5, "sessionId"

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 394
    .local v0, "sessionIdOfConn":Ljava/lang/String;
    iget-object v4, p1, Lcom/android/internal/telephony/DriverCall;->callDetails:Lcom/android/internal/telephony/CallDetails;

    const-string v5, "sessionId"

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 396
    .local v1, "sessionIdOfDc":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 397
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCallCollisionCase - session id is different ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaConnection;->log(Ljava/lang/String;)V

    move v2, v3

    .line 398
    goto/16 :goto_0
.end method

.method public isCdmaCwActive()Z
    .locals 1

    .prologue
    .line 1469
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->isCwActive:Z

    return v0
.end method

.method public isCdmaCwHolding()Z
    .locals 1

    .prologue
    .line 1473
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->isCwHolding:Z

    return v0
.end method

.method public isMultiparty()Z
    .locals 1

    .prologue
    .line 1464
    const/4 v0, 0x0

    return v0
.end method

.method onConnectedInOrOut()V
    .locals 4

    .prologue
    .line 964
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mConnectTime:J

    .line 965
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mConnectTimeReal:J

    .line 966
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mDuration:J

    .line 971
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnectedInOrOut: connectTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mConnectTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->log(Ljava/lang/String;)V

    .line 974
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mIsIncoming:Z

    if-nez v0, :cond_0

    .line 976
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->processNextPostDialChar()V

    .line 982
    :goto_0
    return-void

    .line 980
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->releaseWakeLock()V

    goto :goto_0
.end method

.method onDisconnect(I)Z
    .locals 26
    .param p1, "cause"    # I

    .prologue
    .line 666
    const/4 v5, 0x0

    .line 668
    .local v5, "changed":Z
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCause:I

    .line 670
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mDisconnected:Z

    move/from16 v19, v0

    if-nez v19, :cond_5

    .line 671
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->doDisconnect()V

    .line 674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyDisconnect(Lcom/android/internal/telephony/Connection;)V

    .line 677
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v19

    const-string v20, "CscFeature_Common_SupportActivationDate"

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 678
    const-string v19, "CdmaConnection"

    const-string v20, "Set call time"

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v11

    .line 680
    .local v11, "mphonestate1":Lcom/android/internal/telephony/Phone;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getSubscriberId()Ljava/lang/String;

    move-result-object v10

    .line 681
    .local v10, "imsi":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_1

    .line 682
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 683
    .local v4, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v6, Ljava/io/DataOutputStream;

    invoke-direct {v6, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 685
    .local v6, "dos":Ljava/io/DataOutputStream;
    :try_start_0
    const-string v19, "gsm.nitz.time"

    const-string v20, "0"

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 686
    .local v14, "nitzTime":J
    const-wide/16 v20, 0x0

    cmp-long v19, v14, v20

    if-eqz v19, :cond_6

    .line 687
    const-string v19, "gsm.nitz.time-elapsedtime"

    const-string v20, "0"

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 688
    .local v16, "start":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    sub-long v8, v20, v16

    .line 689
    .local v8, "elapsedTime":J
    const-string v19, "ril.timezoneID"

    const-string v20, "GMT"

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 690
    .local v18, "tzname":Ljava/lang/String;
    new-instance v12, Landroid/text/format/Time;

    invoke-static/range {v18 .. v18}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 691
    .local v12, "networkTime":Landroid/text/format/Time;
    add-long v20, v14, v8

    move-wide/from16 v0, v20

    invoke-virtual {v12, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 693
    const/16 v19, 0xa

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 694
    const/16 v19, 0x22

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 695
    const/16 v19, 0xb

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 696
    iget v0, v12, Landroid/text/format/Time;->year:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 697
    iget v0, v12, Landroid/text/format/Time;->month:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 698
    iget v0, v12, Landroid/text/format/Time;->monthDay:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 699
    iget v0, v12, Landroid/text/format/Time;->hour:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 700
    iget v0, v12, Landroid/text/format/Time;->minute:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 701
    iget v0, v12, Landroid/text/format/Time;->second:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 714
    .end local v8    # "elapsedTime":J
    .end local v12    # "networkTime":Landroid/text/format/Time;
    .end local v16    # "start":J
    .end local v18    # "tzname":Ljava/lang/String;
    :goto_0
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v11, v0, v1}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 719
    if-eqz v6, :cond_0

    .line 720
    :try_start_1
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V

    .line 721
    :cond_0
    if-eqz v4, :cond_1

    .line 722
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 730
    .end local v4    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "dos":Ljava/io/DataOutputStream;
    .end local v10    # "imsi":Ljava/lang/String;
    .end local v11    # "mphonestate1":Lcom/android/internal/telephony/Phone;
    .end local v14    # "nitzTime":J
    :cond_1
    :goto_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v19

    const-string v20, "CscFeature_RIL_SupportVolteTotalCallTime"

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 731
    const-string v19, "CdmaConnection"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "mDuration : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getDurationMillis()J

    move-result-wide v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " mDuration : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getDurationMillis()J

    move-result-wide v22

    const-wide/16 v24, 0x3e8

    div-long v22, v22, v24

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getSubscriberId()Ljava/lang/String;

    move-result-object v10

    .line 734
    .restart local v10    # "imsi":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaConnection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    move-object/from16 v19, v0

    if-eqz v19, :cond_2

    const-string v19, "true"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaConnection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    move-object/from16 v20, v0

    const-string v21, "otasp"

    invoke-virtual/range {v20 .. v21}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mAddress:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/telephony/cdma/CDMAPhone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 736
    :cond_3
    const-string v19, "CdmaConnection"

    const-string v20, "This disconnect is for an Otasp call, do not set total call time."

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    .end local v10    # "imsi":Ljava/lang/String;
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    .line 769
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->connectionDisconnected(Lcom/android/internal/telephony/cdma/CdmaConnection;)Z

    move-result v5

    .line 772
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->releaseWakeLock()V

    .line 773
    return v5

    .line 703
    .restart local v4    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "dos":Ljava/io/DataOutputStream;
    .restart local v10    # "imsi":Ljava/lang/String;
    .restart local v11    # "mphonestate1":Lcom/android/internal/telephony/Phone;
    .restart local v14    # "nitzTime":J
    :cond_6
    :try_start_2
    const-string v19, "CdmaConnection"

    const-string v20, " didn\'t receive nitzTime!!"

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    const/16 v19, 0xa

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 705
    const/16 v19, 0x22

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 706
    const/16 v19, 0xb

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 707
    const/16 v19, 0x7bc

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 708
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 709
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 710
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 711
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 712
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 715
    .end local v14    # "nitzTime":J
    :catch_0
    move-exception v7

    .line 716
    .local v7, "e":Ljava/io/IOException;
    :try_start_3
    const-string v19, "CdmaConnection"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Error in setting call status to 1, exception is :"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 719
    if-eqz v6, :cond_7

    .line 720
    :try_start_4
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V

    .line 721
    :cond_7
    if-eqz v4, :cond_1

    .line 722
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .line 723
    :catch_1
    move-exception v19

    goto/16 :goto_1

    .line 718
    .end local v7    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v19

    .line 719
    if-eqz v6, :cond_8

    .line 720
    :try_start_5
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V

    .line 721
    :cond_8
    if-eqz v4, :cond_9

    .line 722
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 724
    :cond_9
    :goto_3
    throw v19

    .line 737
    .end local v4    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "dos":Ljava/io/DataOutputStream;
    .end local v11    # "mphonestate1":Lcom/android/internal/telephony/Phone;
    :cond_a
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_4

    const-string v19, "001010123456789"

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_4

    const-string v19, "999999999999999"

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_4

    const-string v19, "520360110000010"

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_4

    const-string v19, "512010123456789"

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_4

    .line 739
    :try_start_6
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 740
    .restart local v4    # "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v6, Ljava/io/DataOutputStream;

    invoke-direct {v6, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 742
    .restart local v6    # "dos":Ljava/io/DataOutputStream;
    const/16 v13, 0xf

    .line 743
    .local v13, "size":I
    const/16 v19, 0xb

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 744
    const/16 v19, 0xd

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 745
    invoke-virtual {v6, v13}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 746
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mIsIncoming:Z

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    .line 747
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 751
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaConnection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    move-object/from16 v19, v0

    if-eqz v19, :cond_c

    .line 752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaConnection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaConnection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 758
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getDurationMillis()J

    move-result-wide v20

    const-wide/16 v22, 0x3e8

    div-long v20, v20, v22

    move-wide/from16 v0, v20

    invoke-virtual {v6, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 759
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v19, v0

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Lcom/android/internal/telephony/cdma/CDMAPhone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 760
    const-string v19, "CdmaConnection"

    const-string v20, "Set call time"

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_2

    .line 761
    .end local v4    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "dos":Ljava/io/DataOutputStream;
    .end local v13    # "size":I
    :catch_2
    move-exception v7

    .line 762
    .restart local v7    # "e":Ljava/io/IOException;
    const-string v19, "CdmaConnection"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Error in setting call status to 1, exception is :"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 749
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v4    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "dos":Ljava/io/DataOutputStream;
    .restart local v13    # "size":I
    :cond_b
    const/16 v19, 0x0

    :try_start_7
    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto :goto_4

    .line 755
    :cond_c
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 756
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_5

    .line 723
    .end local v13    # "size":I
    .restart local v11    # "mphonestate1":Lcom/android/internal/telephony/Phone;
    :catch_3
    move-exception v20

    goto/16 :goto_3

    .restart local v14    # "nitzTime":J
    :catch_4
    move-exception v19

    goto/16 :goto_1
.end method

.method onHangupLocal()V
    .locals 1

    .prologue
    .line 531
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCause:I

    .line 532
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPreciseCause:I

    .line 533
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mVendorCause:Ljava/lang/String;

    .line 534
    return-void
.end method

.method onLocalDisconnect()V
    .locals 1

    .prologue
    .line 779
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mDisconnected:Z

    if-nez v0, :cond_0

    .line 780
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->doDisconnect()V

    .line 783
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    if-eqz v0, :cond_0

    .line 784
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaCall;->detach(Lcom/android/internal/telephony/cdma/CdmaConnection;)V

    .line 787
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->releaseWakeLock()V

    .line 788
    return-void
.end method

.method onRemoteDisconnect(ILjava/lang/String;)V
    .locals 4
    .param p1, "causeCode"    # I
    .param p2, "vendorCause"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x2

    .line 634
    iput p1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPreciseCause:I

    .line 635
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mVendorCause:Ljava/lang/String;

    .line 637
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->sipError:I

    .line 638
    if-eqz p2, :cond_0

    .line 639
    const-string v2, "-"

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 640
    .local v1, "vendorCauseArray":[Ljava/lang/String;
    array-length v2, v1

    if-lt v2, v3, :cond_0

    .line 642
    const/4 v2, 0x1

    :try_start_0
    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->sipError:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 646
    :goto_0
    array-length v2, v1

    const/4 v3, 0x3

    if-lt v2, v3, :cond_0

    .line 648
    const/4 v2, 0x2

    :try_start_1
    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mQmiEndReason:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 655
    .end local v1    # "vendorCauseArray":[Ljava/lang/String;
    :cond_0
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRemoteDisconnect: sipError="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->sipError:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", QmiEndReason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mQmiEndReason:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaConnection;->log(Ljava/lang/String;)V

    .line 657
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->disconnectCauseFromCode(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onDisconnect(I)Z

    .line 658
    return-void

    .line 643
    .restart local v1    # "vendorCauseArray":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 644
    .local v0, "ex":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRemoteDisconnect: error parsing vendorCause[1]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaConnection;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 649
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 650
    .restart local v0    # "ex":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRemoteDisconnect: error parsing vendorCause[2]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaConnection;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method onStartedHolding()V
    .locals 2

    .prologue
    .line 1025
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mHoldingStartTime:J

    .line 1026
    return-void
.end method

.method public proceedAfterWaitChar()V
    .locals 3

    .prologue
    .line 483
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v0, v1, :cond_0

    .line 484
    const-string v0, "CdmaConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CdmaConnection.proceedAfterWaitChar(): Expected getPostDialState() to be WAIT but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :goto_0
    return-void

    .line 489
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 491
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->processNextPostDialChar()V

    goto :goto_0
.end method

.method public proceedAfterWildChar(Ljava/lang/String;)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 496
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->WILD:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v1, v2, :cond_0

    .line 497
    const-string v1, "CdmaConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CdmaConnection.proceedAfterWaitChar(): Expected getPostDialState() to be WILD but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :goto_0
    return-void

    .line 502
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 508
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialString:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mNextPostDialChar:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialString:Ljava/lang/String;

    .line 510
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mNextPostDialChar:I

    .line 512
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "proceedAfterWildChar: new postDialString is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->log(Ljava/lang/String;)V

    .line 516
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->processNextPostDialChar()V

    goto :goto_0
.end method

.method processNextPostDialChar()V
    .locals 9

    .prologue
    .line 1108
    const/4 v1, 0x0

    .line 1111
    .local v1, "c":C
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v7, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v6, v7, :cond_1

    .line 1112
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->releaseWakeLock()V

    .line 1164
    :cond_0
    :goto_0
    return-void

    .line 1117
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialString:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialString:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mNextPostDialChar:I

    if-gt v6, v7, :cond_4

    .line 1119
    :cond_2
    sget-object v6, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 1122
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->releaseWakeLock()V

    .line 1125
    const/4 v1, 0x0

    .line 1144
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->notifyPostDialListenersNextChar(C)V

    .line 1147
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v4, v6, Lcom/android/internal/telephony/cdma/CDMAPhone;->mPostDialHandler:Landroid/os/Registrant;

    .line 1151
    .local v4, "postDialHandler":Landroid/os/Registrant;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/os/Registrant;->messageForRegistrant()Landroid/os/Message;

    move-result-object v3

    .local v3, "notifyMessage":Landroid/os/Message;
    if-eqz v3, :cond_0

    .line 1154
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 1155
    .local v5, "state":Lcom/android/internal/telephony/Connection$PostDialState;
    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    .line 1156
    .local v0, "ar":Landroid/os/AsyncResult;
    iput-object p0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 1157
    iput-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .line 1160
    iput v1, v3, Landroid/os/Message;->arg1:I

    .line 1162
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1129
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "notifyMessage":Landroid/os/Message;
    .end local v4    # "postDialHandler":Landroid/os/Registrant;
    .end local v5    # "state":Lcom/android/internal/telephony/Connection$PostDialState;
    :cond_4
    sget-object v6, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 1131
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialString:Ljava/lang/String;

    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mNextPostDialChar:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mNextPostDialChar:I

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1133
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->processPostDialChar(C)Z

    move-result v2

    .line 1135
    .local v2, "isValid":Z
    if-nez v2, :cond_3

    .line 1137
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 1139
    const-string v6, "CDMA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processNextPostDialChar: c="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isn\'t valid!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public resetConnectTimeReal()V
    .locals 2

    .prologue
    .line 1479
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mConnectTime:J

    .line 1480
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mConnectTimeReal:J

    .line 1481
    return-void
.end method

.method public separate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 469
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mDisconnected:Z

    if-nez v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->separate(Lcom/android/internal/telephony/cdma/CdmaConnection;)V

    .line 474
    return-void

    .line 472
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "disconnected"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAnsweringMessageState(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1498
    iput-boolean p1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mIsInAnsweringMessage:Z

    .line 1499
    return-void
.end method

.method public setDisconnectCause(I)V
    .locals 0
    .param p1, "cause"    # I

    .prologue
    .line 439
    iput p1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCause:I

    .line 440
    return-void
.end method

.method update(Lcom/android/internal/telephony/DriverCall;)Z
    .locals 13
    .param p1, "dc"    # Lcom/android/internal/telephony/DriverCall;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 794
    const/4 v0, 0x0

    .line 795
    .local v0, "changed":Z
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isConnectingInOrOut()Z

    move-result v7

    .line 796
    .local v7, "wasConnectingInOrOut":Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v11, v12, :cond_c

    move v8, v9

    .line 798
    .local v8, "wasHolding":Z
    :goto_0
    iget-object v11, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/cdma/CdmaConnection;->parentFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/cdma/CdmaCall;

    move-result-object v1

    .line 800
    .local v1, "newParent":Lcom/android/internal/telephony/cdma/CdmaCall;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "parent= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", newParent= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/cdma/CdmaConnection;->log(Ljava/lang/String;)V

    .line 802
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " mNumberConverted "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mNumberConverted:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/cdma/CdmaConnection;->log(Ljava/lang/String;)V

    .line 803
    iget-object v11, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mAddress:Ljava/lang/String;

    iget-object v12, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cdma/CdmaConnection;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    iget-boolean v11, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mNumberConverted:Z

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mConvertedNumber:Ljava/lang/String;

    iget-object v12, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cdma/CdmaConnection;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 805
    :cond_0
    const-string v11, "update: phone # changed!"

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/cdma/CdmaConnection;->log(Ljava/lang/String;)V

    .line 806
    iget-object v11, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iput-object v11, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mAddress:Ljava/lang/String;

    .line 807
    const/4 v0, 0x1

    .line 811
    :cond_1
    iget-object v11, p1, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 812
    iget-object v11, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCnapName:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 813
    const/4 v0, 0x1

    .line 814
    const-string v11, ""

    iput-object v11, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCnapName:Ljava/lang/String;

    .line 821
    :cond_2
    :goto_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "--dssds----"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCnapName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/cdma/CdmaConnection;->log(Ljava/lang/String;)V

    .line 822
    iget v11, p1, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    iput v11, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCnapNamePresentation:I

    .line 823
    iget v11, p1, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    iput v11, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mNumberPresentation:I

    .line 825
    iget-object v11, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    if-eq v1, v11, :cond_e

    .line 826
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    if-eqz v10, :cond_3

    .line 827
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v10, p0}, Lcom/android/internal/telephony/cdma/CdmaCall;->detach(Lcom/android/internal/telephony/cdma/CdmaConnection;)V

    .line 829
    :cond_3
    invoke-virtual {v1, p0, p1}, Lcom/android/internal/telephony/cdma/CdmaCall;->attach(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/DriverCall;)V

    .line 830
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    .line 831
    const/4 v0, 0x1

    .line 853
    :goto_2
    const-string v10, "VZW"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 854
    iget-object v10, p1, Lcom/android/internal/telephony/DriverCall;->callDetails:Lcom/android/internal/telephony/CallDetails;

    iget-boolean v11, p1, Lcom/android/internal/telephony/DriverCall;->isMpty:Z

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/CallDetails;->setIsMpty(Z)V

    .line 856
    :cond_4
    iget v10, p1, Lcom/android/internal/telephony/DriverCall;->id:I

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/cdma/CdmaConnection;->setId(I)V

    .line 857
    iget-object v10, p1, Lcom/android/internal/telephony/DriverCall;->callDetails:Lcom/android/internal/telephony/CallDetails;

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/cdma/CdmaConnection;->setCallDetails(Lcom/android/internal/telephony/CallDetails;)Z

    move-result v10

    or-int/2addr v0, v10

    .line 861
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_RIL_SupportVolte"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    const-string v10, "VZW"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    if-eqz v0, :cond_5

    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v10, v10, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mAddress:Ljava/lang/String;

    invoke-static {v10, v11}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 864
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getRadioTech()Ljava/lang/String;

    move-result-object v2

    .line 865
    .local v2, "newRadioTech":Ljava/lang/String;
    const-string v10, "cdma"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v11, Lcom/android/internal/telephony/DriverCall$State;->ACTIVE:Lcom/android/internal/telephony/DriverCall$State;

    if-ne v10, v11, :cond_5

    const-string v10, "ABSENT"

    const-string v11, "gsm.sim.state"

    const-string v12, "UNKNOWN"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 867
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v10, v10, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getSMSDispatcher()Lcom/android/internal/telephony/SMSDispatcher;

    move-result-object v6

    .line 868
    .local v6, "smsDispatcher":Lcom/android/internal/telephony/SMSDispatcher;
    if-eqz v6, :cond_5

    .line 870
    const-string v10, "CdmaConnection"

    const-string v11, "Send DAN - Start"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    const/16 v10, 0x10

    invoke-virtual {v6, v10}, Lcom/android/internal/telephony/SMSDispatcher;->sendDomainChangeSms(B)V

    .line 873
    const-string v10, "persist.radio.sent.dan_sms"

    const-string v11, "1"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    .end local v2    # "newRadioTech":Ljava/lang/String;
    .end local v6    # "smsDispatcher":Lcom/android/internal/telephony/SMSDispatcher;
    :cond_5
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_RIL_SmsCml"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_11

    .line 894
    :cond_6
    :goto_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Update, wasConnectingInOrOut="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", wasHolding="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", isConnectingInOrOut="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isConnectingInOrOut()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", changed="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaConnection;->log(Ljava/lang/String;)V

    .line 901
    if-eqz v7, :cond_7

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isConnectingInOrOut()Z

    move-result v9

    if-nez v9, :cond_7

    .line 902
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onConnectedInOrOut()V

    .line 905
    :cond_7
    if-eqz v0, :cond_8

    if-nez v8, :cond_8

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v9, v10, :cond_8

    .line 907
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onStartedHolding()V

    .line 911
    :cond_8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "update() - callDetails: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaConnection;->log(Ljava/lang/String;)V

    .line 915
    const/16 v9, 0xf

    invoke-static {v9}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(I)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 916
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getVideoState()I

    move-result v4

    .line 917
    .local v4, "oldVideoState":I
    const/4 v3, 0x0

    .line 918
    .local v3, "newVideoState":I
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    if-eqz v9, :cond_9

    .line 919
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    iget v9, v9, Lcom/android/internal/telephony/CallDetails;->call_type:I

    invoke-static {v9}, Lcom/android/internal/telephony/CallDetails;->callTypeToVideoState(I)I

    move-result v3

    .line 921
    :cond_9
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "oldVideoState: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", newVideoState: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaConnection;->log(Ljava/lang/String;)V

    .line 922
    if-eq v4, v3, :cond_a

    .line 923
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaConnection;->setVideoState(I)V

    .line 924
    const/4 v0, 0x1

    .line 926
    :cond_a
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Connection Update: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaConnection;->log(Ljava/lang/String;)V

    .line 929
    .end local v3    # "newVideoState":I
    .end local v4    # "oldVideoState":I
    :cond_b
    return v0

    .end local v1    # "newParent":Lcom/android/internal/telephony/cdma/CdmaCall;
    .end local v8    # "wasHolding":Z
    :cond_c
    move v8, v10

    .line 796
    goto/16 :goto_0

    .line 816
    .restart local v1    # "newParent":Lcom/android/internal/telephony/cdma/CdmaCall;
    .restart local v8    # "wasHolding":Z
    :cond_d
    iget-object v11, p1, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    iget-object v12, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCnapName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 817
    const/4 v0, 0x1

    .line 818
    iget-object v11, p1, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    iput-object v11, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCnapName:Ljava/lang/String;

    goto/16 :goto_1

    .line 834
    :cond_e
    iget-object v11, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v11, p0, p1}, Lcom/android/internal/telephony/cdma/CdmaCall;->update(Lcom/android/internal/telephony/cdma/CdmaConnection;Lcom/android/internal/telephony/DriverCall;)Z

    move-result v5

    .line 835
    .local v5, "parentStateChange":Z
    if-nez v0, :cond_f

    if-eqz v5, :cond_10

    :cond_f
    move v0, v9

    :goto_4
    goto/16 :goto_2

    :cond_10
    move v0, v10

    goto :goto_4

    .line 880
    .end local v5    # "parentStateChange":Z
    :cond_11
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_RIL_SupportQualcommIms"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 883
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getRadioTech()Ljava/lang/String;

    move-result-object v2

    .line 885
    .restart local v2    # "newRadioTech":Ljava/lang/String;
    const-string v10, "cdma"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v10, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v11, Lcom/android/internal/telephony/DriverCall$State;->ACTIVE:Lcom/android/internal/telephony/DriverCall$State;

    if-ne v10, v11, :cond_6

    .line 886
    iput-boolean v9, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mNeedSendDAN:Z

    .line 887
    const-string v9, "CdmaConnection"

    const-string v10, "Set DAN flag"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method public updateParent(Lcom/android/internal/telephony/cdma/CdmaCall;Lcom/android/internal/telephony/cdma/CdmaCall;)V
    .locals 1
    .param p1, "oldParent"    # Lcom/android/internal/telephony/cdma/CdmaCall;
    .param p2, "newParent"    # Lcom/android/internal/telephony/cdma/CdmaCall;

    .prologue
    .line 1083
    if-eq p2, p1, :cond_1

    .line 1084
    if-eqz p1, :cond_0

    .line 1085
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/cdma/CdmaCall;->detach(Lcom/android/internal/telephony/cdma/CdmaConnection;)V

    .line 1087
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p2, p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    .line 1088
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    .line 1090
    :cond_1
    return-void
.end method

.class public Lcom/sec/epdg/handover/EpdgImsListener50;
.super Lcom/sec/epdg/handover/EpdgImsListener;
.source "EpdgImsListener50.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsCallListener;,
        Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsSettingStateListener;,
        Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsGeneralListener;
    }
.end annotation


# static fields
.field private static final DOWNGRADED_VIDEO_CALL_COUNT:I = 0x2

.field private static final E911_CALL_COUNT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "[EpdgImsListener]"

.field private static final TOTAL_CALL_COUNT:I = 0x0

.field private static final VIDEO_CALL_COUNT:I = 0x1

.field private static final VIDEO_DEDICATED_BEARER:I = 0x2

.field private static final VOICE_DEDICATED_BEARER:I = 0x1

.field private static mEpdgImsListener:Lcom/sec/epdg/handover/EpdgImsListener50;


# instance fields
.field private mCallList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mCallStatus:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

.field private mContext:Landroid/content/Context;

.field private mEpdgImsSettings:Lcom/sec/epdg/handover/EpdgImsSettings;

.field private mEpdgSettingsWriter:Lcom/sec/epdg/EpdgSettingsWriter;

.field private mHandoverDelayedSessionId:I

.field private final mImsCallListener:Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsCallListener;

.field private mImsIfForCall:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;

.field private mImsIfForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

.field private mImsIfForSettingState:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

.field final mImsIpmeListener:Lcom/sec/ims/im/IImSessionListener$Stub;

.field private mImsManager:Lcom/sec/ims/ImsManager;

.field private final mImsRegListener:Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsGeneralListener;

.field private mImsRegNetType:I

.field private mImsRegStatus:Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

.field private final mImsSettingListener:Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsSettingStateListener;

.field private mIpmeStatus:Z

.field private mIsDowngradedVideoCall:Z

.field private mIsHandoverDelayedCase:Z

.field private mVideoDedicatedBearerState:Z

.field private mVoiceDedicatedBearerState:Z

.field private final mePdgHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/epdg/handover/EpdgImsListener50;->mEpdgImsListener:Lcom/sec/epdg/handover/EpdgImsListener50;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hdlr"    # Landroid/os/Handler;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 84
    invoke-direct {p0}, Lcom/sec/epdg/handover/EpdgImsListener;-><init>()V

    .line 44
    iput-object v2, p0, Lcom/sec/epdg/handover/EpdgImsListener50;->mEpdgImsSettings:Lcom/sec/epdg/handover/EpdgImsSettings;

    .line 50
    new-instance v0, Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsGeneralListener;

    invoke-direct {v0, p0, v2}, Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsGeneralListener;-><init>(Lcom/sec/epdg/handover/EpdgImsListener50;Lcom/sec/epdg/handover/EpdgImsListener50$1;)V

    iput-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener50;->mImsRegListener:Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsGeneralListener;

    .line 51
    new-instance v0, Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsCallListener;

    invoke-direct {v0, p0, v2}, Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsCallListener;-><init>(Lcom/sec/epdg/handover/EpdgImsListener50;Lcom/sec/epdg/handover/EpdgImsListener50$1;)V

    iput-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener50;->mImsCallListener:Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsCallListener;

    .line 52
    new-instance v0, Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsSettingStateListener;

    invoke-direct {v0, p0}, Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsSettingStateListener;-><init>(Lcom/sec/epdg/handover/EpdgImsListener50;)V

    iput-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener50;->mImsSettingListener:Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsSettingStateListener;

    .line 54
    iput-boolean v1, p0, Lcom/sec/epdg/handover/EpdgImsListener50;->mIsHandoverDelayedCase:Z

    .line 55
    iput v1, p0, Lcom/sec/epdg/handover/EpdgImsListener50;->mHandoverDelayedSessionId:I

    .line 56
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;->REGISTRATION_NOT_STARTED:Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    iput-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener50;->mImsRegStatus:Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    .line 57
    iput-object v2, p0, Lcom/sec/epdg/handover/EpdgImsListener50;->mEpdgSettingsWriter:Lcom/sec/epdg/EpdgSettingsWriter;

    .line 58
    iput-boolean v1, p0, Lcom/sec/epdg/handover/EpdgImsListener50;->mVoiceDedicatedBearerState:Z

    .line 59
    iput-boolean v1, p0, Lcom/sec/epdg/handover/EpdgImsListener50;->mVideoDedicatedBearerState:Z

    .line 60
    iput-boolean v1, p0, Lcom/sec/epdg/handover/EpdgImsListener50;->mIsDowngradedVideoCall:Z

    .line 61
    iput v1, p0, Lcom/sec/epdg/handover/EpdgImsListener50;->mImsRegNetType:I

    .line 71
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    iput-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener50;->mCallStatus:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    .line 72
    iput-boolean v1, p0, Lcom/sec/epdg/handover/EpdgImsListener50;->mIpmeStatus:Z

    .line 74
    new-instance v0, Lcom/sec/epdg/handover/EpdgImsListener50$1;

    invoke-direct {v0, p0}, Lcom/sec/epdg/handover/EpdgImsListener50$1;-><init>(Lcom/sec/epdg/handover/EpdgImsListener50;)V

    iput-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener50;->mImsIpmeListener:Lcom/sec/ims/im/IImSessionListener$Stub;

    .line 85
    iput-object p2, p0, Lcom/sec/epdg/handover/EpdgImsListener50;->mePdgHandler:Landroid/os/Handler;

    .line 86
    iput-object p1, p0, Lcom/sec/epdg/handover/EpdgImsListener50;->mContext:Landroid/content/Context;

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener50;->mCallList:Ljava/util/Map;

    .line 89
    invoke-static {v1, p1}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;

    iput-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener50;->mImsIfForCall:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;

    .line 91
    const/4 v0, 0x7

    invoke-static {v0, p1}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    iput-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener50;->mImsIfForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    .line 93
    invoke-static {p1}, Lcom/sec/epdg/EpdgSettingsWriter;->getInstance(Landroid/content/Context;)Lcom/sec/epdg/EpdgSettingsWriter;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener50;->mEpdgSettingsWriter:Lcom/sec/epdg/EpdgSettingsWriter;

    .line 94
    invoke-direct {p0}, Lcom/sec/epdg/handover/EpdgImsListener50;->initializeEpdgImsSettings()V

    .line 95
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOWIFI_PROVISIONING:Z

    if-nez v0, :cond_0

    .line 96
    invoke-direct {p0}, Lcom/sec/epdg/handover/EpdgImsListener50;->postImsReadyToEpdgService()V

    .line 99
    :cond_0
    new-instance v0, Lcom/sec/ims/ImsManager;

    iget-object v1, p0, Lcom/sec/epdg/handover/EpdgImsListener50;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/sec/epdg/handover/EpdgImsListener50$2;

    invoke-direct {v2, p0}, Lcom/sec/epdg/handover/EpdgImsListener50$2;-><init>(Lcom/sec/epdg/handover/EpdgImsListener50;)V

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/ImsManager;-><init>(Landroid/content/Context;Lcom/sec/ims/ImsManager$ConnectionListener;)V

    iput-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener50;->mImsManager:Lcom/sec/ims/ImsManager;

    .line 112
    return-void
.end method

.method static synthetic access$1000(Lcom/sec/epdg/handover/EpdgImsListener50;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/handover/EpdgImsListener50;
    .param p1, "x1"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/sec/epdg/handover/EpdgImsListener50;->setHandoverDelayedSessionId(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/epdg/handover/EpdgImsListener50;Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/handover/EpdgImsListener50;
    .param p1, "x1"    # Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/sec/epdg/handover/EpdgImsListener50;->setCallStatus(Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/epdg/handover/EpdgImsListener50;)[I
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/handover/EpdgImsListener50;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/sec/epdg/handover/EpdgImsListener50;->getCallCount()[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/epdg/handover/EpdgImsListener50;[IZ)Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/handover/EpdgImsListener50;
    .param p1, "x1"    # [I
    .param p2, "x2"    # Z

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/handover/EpdgImsListener50;->getFinalCallStatusFromCallCountList([IZ)Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/epdg/handover/EpdgImsListener50;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/handover/EpdgImsListener50;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/sec/epdg/handover/EpdgImsListener50;->getIsHandoverDelayedCase()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/sec/epdg/handover/EpdgImsListener50;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/handover/EpdgImsListener50;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/sec/epdg/handover/EpdgImsListener50;->isCallTypeAndDedicatedBearerTypeMatching()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/sec/epdg/handover/EpdgImsListener50;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/handover/EpdgImsListener50;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/sec/epdg/handover/EpdgImsListener50;->informCallStatusChangeToHandoverModule()V

    return-void
.end method

.method static synthetic access$1700(Lcom/sec/epdg/handover/EpdgImsListener50;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/handover/EpdgImsListener50;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/sec/epdg/handover/EpdgImsListener50;->informHandoverDelayToHandoverModule()V

    return-void
.end method

.method static synthetic access$1800(Lcom/sec/epdg/handover/EpdgImsListener50;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/handover/EpdgImsListener50;
    .param p1, "x1"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/sec/epdg/handover/EpdgImsListener50;->checkForHandoverDelayedCase(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/sec/epdg/handover/EpdgImsListener50;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/handover/EpdgImsListener50;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/sec/epdg/handover/EpdgImsListener50;->setVoiceDedicatedBearerState(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/epdg/handover/EpdgImsListener50;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/handover/EpdgImsListener50;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/sec/epdg/handover/EpdgImsListener50;->setIpmeStatus(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/sec/epdg/handover/EpdgImsListener50;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/handover/EpdgImsListener50;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/sec/epdg/handover/EpdgImsListener50;->setVideoDedicatedBearerState(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/epdg/handover/EpdgImsListener50;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/handover/EpdgImsListener50;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/sec/epdg/handover/EpdgImsListener50;->informIpmeStatusChangeToHandoverModule(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/epdg/handover/EpdgImsListener50;)Lcom/sec/ims/ImsManager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/handover/EpdgImsListener50;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener50;->mImsManager:Lcom/sec/ims/ImsManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/epdg/handover/EpdgImsListener50;Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/handover/EpdgImsListener50;
    .param p1, "x1"    # Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/sec/epdg/handover/EpdgImsListener50;->setRegStatus(Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/epdg/handover/EpdgImsListener50;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/handover/EpdgImsListener50;
    .param p1, "x1"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/sec/epdg/handover/EpdgImsListener50;->informImsRegStatusChangeToHandoverModule(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/epdg/handover/EpdgImsListener50;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/handover/EpdgImsListener50;
    .param p1, "x1"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/sec/epdg/handover/EpdgImsListener50;->setImsRegNetType(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/epdg/handover/EpdgImsListener50;)Lcom/sec/epdg/handover/EpdgImsSettings;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/handover/EpdgImsListener50;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener50;->mEpdgImsSettings:Lcom/sec/epdg/handover/EpdgImsSettings;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/epdg/handover/EpdgImsListener50;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/handover/EpdgImsListener50;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/sec/epdg/handover/EpdgImsListener50;->setIsHandoverDelayedCase(Z)V

    return-void
.end method

.method private checkForHandoverDelayedCase(I)V
    .locals 4
    .param p1, "sessionID"    # I

    .prologue
    const/4 v3, 0x0

    .line 660
    const-string v0, "[EpdgImsListener]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkForHandoverDelayedCase: sessionID is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    invoke-virtual {p0}, Lcom/sec/epdg/handover/EpdgImsListener50;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_BLOCKHANDOFF:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/sec/epdg/handover/EpdgImsListener50;->getHandoverDelayedSessionId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 663
    const-string v0, "[EpdgImsListener]"

    const-string v1, "checkForHandoverDelayedCase: 2nd call itself is ended, clear handover delayed flag and session id"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    invoke-direct {p0, v3}, Lcom/sec/epdg/handover/EpdgImsListener50;->setIsHandoverDelayedCase(Z)V

    .line 666
    invoke-direct {p0, v3}, Lcom/sec/epdg/handover/EpdgImsListener50;->setHandoverDelayedSessionId(I)V

    .line 668
    :cond_0
    return-void
.end method

.method private getCallCount()[I
    .locals 6

    .prologue
    .line 507
    const/4 v0, 0x0

    .line 509
    .local v0, "callCount":[I
    iget-object v3, p0, Lcom/sec/epdg/handover/EpdgImsListener50;->mImsIfForCall:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;

    if-nez v3, :cond_0

    .line 510
    const-string v3, "[EpdgImsListener]"

    const-string v4, "getCallCount, ims listener for call is not yet registered"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    .line 519
    .end local v0    # "callCount":[I
    .local v1, "callCount":[I
    :goto_0
    return-object v1

    .line 514
    .end local v1    # "callCount":[I
    .restart local v0    # "callCount":[I
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/sec/epdg/handover/EpdgImsListener50;->mImsIfForCall:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;

    invoke-interface {v3}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;->getCallCount()[I
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 518
    :goto_1
    const-string v3, "[EpdgImsListener]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCallCount: returning call count"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    .line 519
    .end local v0    # "callCount":[I
    .restart local v1    # "callCount":[I
    goto :goto_0

    .line 515
    .end local v1    # "callCount":[I
    .restart local v0    # "callCount":[I
    :catch_0
    move-exception v2

    .line 516
    .local v2, "e":Lcom/samsung/commonimsinterface/imscommon/IMSException;
    const-string v3, "[EpdgImsListener]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to getCallCount"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getFinalCallStatusFromCallCountList([IZ)Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;
    .locals 7
    .param p1, "callCount"    # [I
    .param p2, "force"    # Z

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 724
    sget-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->EMERGENCY_CALLBACK_MODE:Z

    if-eqz v1, :cond_0

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/sec/epdg/handover/EpdgImsListener50;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_E911:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-ne v1, v2, :cond_0

    .line 727
    const-string v1, "[EpdgImsListener]"

    const-string v2, "Call state should remain in CALL_E911 for E911 call or ECBM"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_E911:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    .line 772
    :goto_0
    return-object v0

    .line 730
    :cond_0
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    .line 731
    .local v0, "returnCallStatus":Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;
    iput-boolean v4, p0, Lcom/sec/epdg/handover/EpdgImsListener50;->mIsDowngradedVideoCall:Z

    .line 741
    if-eqz p1, :cond_1

    aget v1, p1, v4

    if-nez v1, :cond_2

    .line 742
    :cond_1
    const-string v1, "[EpdgImsListener]"

    const-string v2, "getFinalCallStatusFromCallCountList: there is no call"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    :goto_1
    const-string v1, "[EpdgImsListener]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFinalCallStatusFromCallCountList: returning call status as: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 744
    :cond_2
    const/4 v1, 0x3

    aget v1, p1, v1

    if-lt v1, v5, :cond_3

    .line 745
    const-string v1, "[EpdgImsListener]"

    const-string v2, "getFinalCallStatusFromCallCountList: Atleast one call is E911"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_E911:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    goto :goto_1

    .line 747
    :cond_3
    aget v1, p1, v4

    aget v2, p1, v5

    if-ne v1, v2, :cond_4

    .line 748
    const-string v1, "[EpdgImsListener]"

    const-string v2, "getFinalCallStatusFromCallCountList: All calls are video calls"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VIDEO:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    goto :goto_1

    .line 750
    :cond_4
    aget v1, p1, v4

    aget v2, p1, v6

    if-ne v1, v2, :cond_5

    .line 751
    const-string v1, "[EpdgImsListener]"

    const-string v2, "getFinalCallStatusFromCallCountList: All calls are downgraded video calls"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    iput-boolean v5, p0, Lcom/sec/epdg/handover/EpdgImsListener50;->mIsDowngradedVideoCall:Z

    .line 753
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VIDEO:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    goto :goto_1

    .line 754
    :cond_5
    aget v1, p1, v4

    aget v2, p1, v5

    aget v3, p1, v6

    add-int/2addr v2, v3

    if-ne v1, v2, :cond_6

    .line 755
    const-string v1, "[EpdgImsListener]"

    const-string v2, "getFinalCallStatusFromCallCountList: All calls are video or downgraded video calls"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    iput-boolean v5, p0, Lcom/sec/epdg/handover/EpdgImsListener50;->mIsDowngradedVideoCall:Z

    .line 757
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VIDEO:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    goto :goto_1

    .line 758
    :cond_6
    aget v1, p1, v4

    aget v2, p1, v4

    aget v3, p1, v5

    sub-int/2addr v2, v3

    aget v3, p1, v6

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_7

    .line 759
    const-string v1, "[EpdgImsListener]"

    const-string v2, "getFinalCallStatusFromCallCountList: All calls are voice calls"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VOICEONLY:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    goto :goto_1

    .line 761
    :cond_7
    aget v1, p1, v4

    aget v2, p1, v4

    aget v3, p1, v5

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_8

    .line 762
    const-string v1, "[EpdgImsListener]"

    const-string v2, "getFinalCallStatusFromCallCountList: All calls are downgraded video or voice calls"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    iput-boolean v5, p0, Lcom/sec/epdg/handover/EpdgImsListener50;->mIsDowngradedVideoCall:Z

    .line 764
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VIDEO_VOICE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    goto/16 :goto_1

    .line 766
    :cond_8
    const-string v1, "[EpdgImsListener]"

    const-string v2, "getFinalCallStatusFromCallCountList: Mixed call case"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VIDEO_VOICE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    goto/16 :goto_1
.end method

.method private getHandoverDelayedSessionId()I
    .locals 3

    .prologue
    .line 719
    const-string v0, "[EpdgImsListener]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHandoverDelayedSessionId: value returned is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/epdg/handover/EpdgImsListener50;->mHandoverDelayedSessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    iget v0, p0, Lcom/sec/epdg/handover/EpdgImsListener50;->mHandoverDelayedSessionId:I

    return v0
.end method

.method private getImsRegNetType()I
    .locals 1

    .prologue
    .line 618
    iget v0, p0, Lcom/sec/epdg/handover/EpdgImsListener50;->mImsRegNetType:I

    return v0
.end method

.method public static getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/sec/epdg/handover/EpdgImsListener;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hdlr"    # Landroid/os/Handler;

    .prologue
    .line 115
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsListener50;->mEpdgImsListener:Lcom/sec/epdg/handover/EpdgImsListener50;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Lcom/sec/epdg/handover/EpdgImsListener50;

    invoke-direct {v0, p0, p1}, Lcom/sec/epdg/handover/EpdgImsListener50;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    sput-object v0, Lcom/sec/epdg/handover/EpdgImsListener50;->mEpdgImsListener:Lcom/sec/epdg/handover/EpdgImsListener50;

    .line 118
    :cond_0
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsListener50;->mEpdgImsListener:Lcom/sec/epdg/handover/EpdgImsListener50;

    return-object v0
.end method

.method private getIsHandoverDelayedCase()Z
    .locals 3

    .prologue
    .line 709
    const-string v0, "[EpdgImsListener]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIsHandoverDelayedCase: value returned is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/epdg/handover/EpdgImsListener50;->mIsHandoverDelayedCase:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    iget-boolean v0, p0, Lcom/sec/epdg/handover/EpdgImsListener50;->mIsHandoverDelayedCase:Z

    return v0
.end method

.method private getVideoDedicatedBearerState()Z
    .locals 1

    .prologue
    .line 594
    iget-boolean v0, p0, Lcom/sec/epdg/handover/EpdgImsListener50;->mVideoDedicatedBearerState:Z

    return v0
.end method

.method private getVoiceDedicatedBearerState()Z
    .locals 1

    .prologue
    .line 585
    iget-boolean v0, p0, Lcom/sec/epdg/handover/EpdgImsListener50;->mVoiceDedicatedBearerState:Z

    return v0
.end method

.method private informCallStatusChangeToHandoverModule()V
    .locals 3

    .prologue
    .line 671
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_CALL_MONITORING:Z

    if-eqz v0, :cond_0

    .line 672
    const/16 v0, 0x3e

    invoke-virtual {p0}, Lcom/sec/epdg/handover/EpdgImsListener50;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/epdg/handover/EpdgImsListener50;->postToEpdgService(ILjava/lang/Object;I)V

    .line 674
    :cond_0
    return-void
.end method

.method private informHandoverDelayToHandoverModule()V
    .locals 3

    .prologue
    .line 683
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getHoDelayTimer()I

    move-result v0

    if-eqz v0, :cond_0

    .line 684
    const/16 v0, 0x3d

    invoke-virtual {p0}, Lcom/sec/epdg/handover/EpdgImsListener50;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/epdg/handover/EpdgImsListener50;->postToEpdgService(ILjava/lang/Object;I)V

    .line 686
    :cond_0
    return-void
.end method

.method private informImsRegStatusChangeToHandoverModule(I)V
    .locals 2
    .param p1, "networkType"    # I

    .prologue
    .line 689
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_REGISTRATION_MONITORING:Z

    if-eqz v0, :cond_0

    .line 690
    const/16 v0, 0x40

    invoke-virtual {p0}, Lcom/sec/epdg/handover/EpdgImsListener50;->getRegStatus()Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/epdg/handover/EpdgImsListener50;->postToEpdgService(ILjava/lang/Object;I)V

    .line 693
    :cond_0
    return-void
.end method

.method private informIpmeStatusChangeToHandoverModule(Z)V
    .locals 3
    .param p1, "isExist"    # Z

    .prologue
    .line 677
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_WIFI_OVER_IPME:Z

    if-eqz v0, :cond_0

    .line 678
    const/16 v0, 0x4e

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/epdg/handover/EpdgImsListener50;->postToEpdgService(ILjava/lang/Object;I)V

    .line 680
    :cond_0
    return-void
.end method

.method private initializeEpdgImsSettings()V
    .locals 4

    .prologue
    .line 787
    const/4 v1, 0x0

    .line 788
    .local v1, "sp":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    sget-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOWIFI_PROVISIONING:Z

    if-eqz v2, :cond_0

    .line 789
    const/16 v2, 0xe

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    .line 803
    .local v0, "reqFields":[I
    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsListener50;->mImsIfForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    invoke-interface {v2, v0}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->getIMSSettingValues([I)Landroid/util/SparseArray;

    move-result-object v1

    .line 805
    .end local v0    # "reqFields":[I
    :cond_0
    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsListener50;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/epdg/handover/EpdgImsListener50;->mePdgHandler:Landroid/os/Handler;

    invoke-static {v2, v3, v1}, Lcom/sec/epdg/handover/EpdgImsSettings;->getInstance(Landroid/content/Context;Landroid/os/Handler;Landroid/util/SparseArray;)Lcom/sec/epdg/handover/EpdgImsSettings;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/epdg/handover/EpdgImsListener50;->mEpdgImsSettings:Lcom/sec/epdg/handover/EpdgImsSettings;

    .line 806
    return-void

    .line 789
    nop

    :array_0
    .array-data 4
        0x60
        0x61
        0x5d
        0x5e
        0x85
        0x8e
        0x8c
        0x8d
        0x89
        0x86
        0x87
        0x88
        0x8a
        0x8b
    .end array-data
.end method

.method private isCallTypeAndDedicatedBearerTypeMatching()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 603
    invoke-direct {p0}, Lcom/sec/epdg/handover/EpdgImsListener50;->getImsRegNetType()I

    move-result v1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    .line 604
    const-string v1, "[EpdgImsListener]"

    const-string v2, "Ims is not registered on LTE, so dedicated bearer check is not required, return true"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    :cond_0
    :goto_0
    return v0

    .line 607
    :cond_1
    const-string v1, "[EpdgImsListener]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call Status is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/epdg/handover/EpdgImsListener50;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Voice dedicated Bearer State is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/sec/epdg/handover/EpdgImsListener50;->getVoiceDedicatedBearerState()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Video dedicated bearer state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/sec/epdg/handover/EpdgImsListener50;->getVideoDedicatedBearerState()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mIsDowngradedVideoCall "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/epdg/handover/EpdgImsListener50;->mIsDowngradedVideoCall:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    invoke-virtual {p0}, Lcom/sec/epdg/handover/EpdgImsListener50;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VOICEONLY:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-ne v1, v2, :cond_2

    invoke-direct {p0}, Lcom/sec/epdg/handover/EpdgImsListener50;->getVoiceDedicatedBearerState()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/epdg/handover/EpdgImsListener50;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VIDEO:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-eq v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/sec/epdg/handover/EpdgImsListener50;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VIDEO_VOICE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-ne v1, v2, :cond_4

    :cond_3
    invoke-direct {p0}, Lcom/sec/epdg/handover/EpdgImsListener50;->getVoiceDedicatedBearerState()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/sec/epdg/handover/EpdgImsListener50;->getVideoDedicatedBearerState()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_4
    iget-boolean v1, p0, Lcom/sec/epdg/handover/EpdgImsListener50;->mIsDowngradedVideoCall:Z

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/sec/epdg/handover/EpdgImsListener50;->getVoiceDedicatedBearerState()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_5
    invoke-virtual {p0}, Lcom/sec/epdg/handover/EpdgImsListener50;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private postImsReadyToEpdgService()V
    .locals 2

    .prologue
    .line 821
    iget-object v1, p0, Lcom/sec/epdg/handover/EpdgImsListener50;->mePdgHandler:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 822
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x4c

    iput v1, v0, Landroid/os/Message;->what:I

    .line 823
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 824
    return-void
.end method

.method private postToEpdgService(ILjava/lang/Object;I)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "arg1"    # I

    .prologue
    .line 696
    iget-object v1, p0, Lcom/sec/epdg/handover/EpdgImsListener50;->mePdgHandler:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 697
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 698
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 699
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 700
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 701
    return-void
.end method

.method private registerCallListener()V
    .locals 3

    .prologue
    .line 142
    const-string v1, "[EpdgImsListener]"

    const-string v2, "registerCallListener()"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v1, p0, Lcom/sec/epdg/handover/EpdgImsListener50;->mImsIfForCall:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;

    if-nez v1, :cond_1

    .line 145
    const-string v1, "[EpdgImsListener]"

    const-string v2, "mImsIfForCall is not initialized, returning...."

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    :try_start_0
    sget-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_CALL_MONITORING:Z

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/sec/epdg/handover/EpdgImsListener50;->mImsIfForCall:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;

    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsListener50;->mImsCallListener:Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsCallListener;

    invoke-interface {v1, v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;->registerForCallStateChange(Lcom/samsung/commonimsinterface/imscommon/IIMSListener;)V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Lcom/samsung/commonimsinterface/imscommon/IMSException;
    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_0
.end method

.method private registerGeneralListener()V
    .locals 4

    .prologue
    .line 176
    const-string v2, "[EpdgImsListener]"

    const-string v3, "registerGeneralListener()"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsListener50;->mImsIfForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    if-nez v2, :cond_1

    .line 179
    const-string v2, "[EpdgImsListener]"

    const-string v3, "mImsIfForGeneral is not initialized, returning...."

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    :try_start_0
    sget-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_REGISTRATION_MONITORING:Z

    if-eqz v2, :cond_2

    .line 184
    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsListener50;->mImsIfForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    iget-object v3, p0, Lcom/sec/epdg/handover/EpdgImsListener50;->mImsRegListener:Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsGeneralListener;

    invoke-interface {v2, v3}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->registerForRegisterStateChange(Lcom/samsung/commonimsinterface/imscommon/IIMSListener;)V

    .line 186
    :cond_2
    sget-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOWIFI_PROVISIONING:Z

    if-eqz v2, :cond_0

    .line 187
    const/16 v2, 0xe

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    .line 202
    .local v1, "reqFields":[I
    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsListener50;->mImsIfForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    iget-object v3, p0, Lcom/sec/epdg/handover/EpdgImsListener50;->mImsSettingListener:Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsSettingStateListener;

    invoke-interface {v2, v3, v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->registerForSettingStateListener(Lcom/samsung/commonimsinterface/imscommon/IIMSListener;[I)V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 204
    .end local v1    # "reqFields":[I
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Lcom/samsung/commonimsinterface/imscommon/IMSException;
    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_0

    .line 187
    :array_0
    .array-data 4
        0x60
        0x61
        0x5d
        0x5e
        0x85
        0x8e
        0x8c
        0x8d
        0x89
        0x86
        0x87
        0x88
        0x8a
        0x8b
    .end array-data
.end method

.method private registerIpmeListener()V
    .locals 2

    .prologue
    .line 210
    const-string v0, "[EpdgImsListener]"

    const-string v1, "registerIpmeListener()"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener50;->mImsManager:Lcom/sec/ims/ImsManager;

    if-nez v0, :cond_0

    .line 213
    const-string v0, "[EpdgImsListener]"

    const-string v1, "mImsManager is not initialized, returning...."

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :goto_0
    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener50;->mImsManager:Lcom/sec/ims/ImsManager;

    invoke-virtual {v0}, Lcom/sec/ims/ImsManager;->connectService()V

    goto :goto_0
.end method

.method private setCallStatus(Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;)V
    .locals 3
    .param p1, "value"    # Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    .prologue
    .line 558
    const-string v0, "[EpdgImsListener]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCallStatus: new call status is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    iput-object p1, p0, Lcom/sec/epdg/handover/EpdgImsListener50;->mCallStatus:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    .line 560
    return-void
.end method

.method private setHandoverDelayedSessionId(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 714
    iput p1, p0, Lcom/sec/epdg/handover/EpdgImsListener50;->mHandoverDelayedSessionId:I

    .line 715
    const-string v0, "[EpdgImsListener]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHandoverDelayedSessionId: new value is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    return-void
.end method

.method private setImsRegNetType(I)V
    .locals 0
    .param p1, "imsRegNetType"    # I

    .prologue
    .line 622
    iput p1, p0, Lcom/sec/epdg/handover/EpdgImsListener50;->mImsRegNetType:I

    .line 623
    return-void
.end method

.method private setIpmeStatus(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    .line 567
    const-string v0, "[EpdgImsListener]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIpmeStatus: new call status is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    iput-boolean p1, p0, Lcom/sec/epdg/handover/EpdgImsListener50;->mIpmeStatus:Z

    .line 569
    return-void
.end method

.method private setIsHandoverDelayedCase(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    .line 704
    iput-boolean p1, p0, Lcom/sec/epdg/handover/EpdgImsListener50;->mIsHandoverDelayedCase:Z

    .line 705
    const-string v0, "[EpdgImsListener]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIsHandoverDelayedCase: new value is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    return-void
.end method

.method private setRegStatus(Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;)V
    .locals 3
    .param p1, "value"    # Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    .prologue
    .line 633
    const-string v0, "[EpdgImsListener]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRegStatus: new Reg status is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    iput-object p1, p0, Lcom/sec/epdg/handover/EpdgImsListener50;->mImsRegStatus:Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    .line 635
    return-void
.end method

.method private setVideoDedicatedBearerState(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    .line 598
    const-string v0, "[EpdgImsListener]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setImsDedicatedBearerState: new video dedicated bearer state is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    iput-boolean p1, p0, Lcom/sec/epdg/handover/EpdgImsListener50;->mVideoDedicatedBearerState:Z

    .line 600
    return-void
.end method

.method private setVoiceDedicatedBearerState(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    .line 589
    const-string v0, "[EpdgImsListener]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setImsDedicatedBearerState: new voice dedicated bearer state is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    iput-boolean p1, p0, Lcom/sec/epdg/handover/EpdgImsListener50;->mVoiceDedicatedBearerState:Z

    .line 591
    return-void
.end method

.method private unregisterCallListener()V
    .locals 3

    .prologue
    .line 162
    const-string v1, "[EpdgImsListener]"

    const-string v2, "unregisterCallListener()"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :try_start_0
    sget-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_CALL_MONITORING:Z

    if-eqz v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/sec/epdg/handover/EpdgImsListener50;->mImsIfForCall:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;

    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsListener50;->mImsCallListener:Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsCallListener;

    invoke-interface {v1, v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;->deRegisterForCallStateChange(Lcom/samsung/commonimsinterface/imscommon/IIMSListener;)V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Lcom/samsung/commonimsinterface/imscommon/IMSException;
    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_0
.end method

.method private unregisterGeneralListener()V
    .locals 3

    .prologue
    .line 229
    const-string v1, "[EpdgImsListener]"

    const-string v2, "unregisterGeneralListener()"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :try_start_0
    sget-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_REGISTRATION_MONITORING:Z

    if-eqz v1, :cond_0

    .line 232
    iget-object v1, p0, Lcom/sec/epdg/handover/EpdgImsListener50;->mImsIfForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsListener50;->mImsRegListener:Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsGeneralListener;

    invoke-interface {v1, v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->deRegisterForRegisterStateChange(Lcom/samsung/commonimsinterface/imscommon/IIMSListener;)V

    .line 234
    :cond_0
    sget-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOWIFI_PROVISIONING:Z

    if-eqz v1, :cond_1

    .line 235
    iget-object v1, p0, Lcom/sec/epdg/handover/EpdgImsListener50;->mImsIfForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsListener50;->mImsSettingListener:Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsSettingStateListener;

    invoke-interface {v1, v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->deRegisterForSettingStateListener(Lcom/samsung/commonimsinterface/imscommon/IIMSListener;)V
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :cond_1
    :goto_0
    return-void

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, "e":Lcom/samsung/commonimsinterface/imscommon/IMSException;
    invoke-virtual {v0}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto :goto_0
.end method

.method private unregisterIpmeListener()V
    .locals 2

    .prologue
    .line 221
    const-string v0, "[EpdgImsListener]"

    const-string v1, "unregisterIpmeListener()"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener50;->mImsManager:Lcom/sec/ims/ImsManager;

    invoke-virtual {v0}, Lcom/sec/ims/ImsManager;->disconnectService()V

    .line 223
    return-void
.end method


# virtual methods
.method public getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;
    .locals 1

    .prologue
    .line 551
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_CALL_MONITORING:Z

    if-nez v0, :cond_0

    .line 552
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    .line 554
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener50;->mCallStatus:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    goto :goto_0
.end method

.method public getE911CallCount()I
    .locals 6

    .prologue
    .line 523
    const/4 v0, 0x0

    .line 524
    .local v0, "callCount":[I
    const/4 v1, 0x0

    .line 526
    .local v1, "e911CallCount":I
    invoke-direct {p0}, Lcom/sec/epdg/handover/EpdgImsListener50;->getCallCount()[I

    move-result-object v0

    .line 527
    if-nez v0, :cond_0

    .line 528
    const-string v3, "[EpdgImsListener]"

    const-string v4, "getE911CallCount: call count is null"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    .line 533
    .end local v1    # "e911CallCount":I
    .local v2, "e911CallCount":I
    :goto_0
    return v2

    .line 531
    .end local v2    # "e911CallCount":I
    .restart local v1    # "e911CallCount":I
    :cond_0
    const/4 v3, 0x3

    aget v1, v0, v3

    .line 532
    const-string v3, "[EpdgImsListener]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getE911CallCount: returning E911 call count as: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    .line 533
    .end local v1    # "e911CallCount":I
    .restart local v2    # "e911CallCount":I
    goto :goto_0
.end method

.method public getEpdgImsSettings()Lcom/sec/epdg/handover/EpdgImsSettings;
    .locals 1

    .prologue
    .line 817
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener50;->mEpdgImsSettings:Lcom/sec/epdg/handover/EpdgImsSettings;

    return-object v0
.end method

.method public getIpmeStatus()Z
    .locals 1

    .prologue
    .line 563
    iget-boolean v0, p0, Lcom/sec/epdg/handover/EpdgImsListener50;->mIpmeStatus:Z

    return v0
.end method

.method public getNonE911CallCount()I
    .locals 6

    .prologue
    .line 537
    const/4 v0, 0x0

    .line 538
    .local v0, "callCount":[I
    const/4 v1, 0x0

    .line 540
    .local v1, "otherCallCount":I
    invoke-direct {p0}, Lcom/sec/epdg/handover/EpdgImsListener50;->getCallCount()[I

    move-result-object v0

    .line 541
    if-nez v0, :cond_0

    .line 542
    const-string v3, "[EpdgImsListener]"

    const-string v4, "getNonE911CallCount: call count is null"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    .line 547
    .end local v1    # "otherCallCount":I
    .local v2, "otherCallCount":I
    :goto_0
    return v2

    .line 545
    .end local v2    # "otherCallCount":I
    .restart local v1    # "otherCallCount":I
    :cond_0
    const/4 v3, 0x0

    aget v3, v0, v3

    const/4 v4, 0x3

    aget v4, v0, v4

    sub-int v1, v3, v4

    .line 546
    const-string v3, "[EpdgImsListener]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNonE911CallCount: returning non E911 call count as: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    .line 547
    .end local v1    # "otherCallCount":I
    .restart local v2    # "otherCallCount":I
    goto :goto_0
.end method

.method public getRegStatus()Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;
    .locals 1

    .prologue
    .line 626
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_REGISTRATION_MONITORING:Z

    if-nez v0, :cond_0

    .line 627
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;->REGISTRATION_NOT_STARTED:Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    .line 629
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener50;->mImsRegStatus:Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    goto :goto_0
.end method

.method public getVoWifiSessionConnected()Z
    .locals 4

    .prologue
    .line 572
    const/4 v0, 0x0

    .line 573
    .local v0, "result":Z
    const-string v1, "[EpdgImsListener]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVoWifiSessionConnected: CALL status is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/epdg/handover/EpdgImsListener50;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    const-string v1, "[EpdgImsListener]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVoWifiSessionConnected: IPME status is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/epdg/handover/EpdgImsListener50;->getIpmeStatus()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    sget-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->KEEP_EPDG_CONNECTION_WHILE_VOWIFI_SESSION_ON:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/epdg/handover/EpdgImsListener50;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/epdg/handover/EpdgImsListener50;->getIpmeStatus()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 579
    :goto_0
    const-string v1, "[EpdgImsListener]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVoWifiSessionConnected: VOLTE Session is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    return v0

    .line 576
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onEpdgSettingChanged(Lcom/sec/epdg/EpdgSettings;)V
    .locals 2
    .param p1, "settings"    # Lcom/sec/epdg/EpdgSettings;

    .prologue
    .line 809
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener50;->mEpdgImsSettings:Lcom/sec/epdg/handover/EpdgImsSettings;

    if-eqz v0, :cond_0

    .line 810
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsListener50;->mEpdgImsSettings:Lcom/sec/epdg/handover/EpdgImsSettings;

    iget-object v1, p0, Lcom/sec/epdg/handover/EpdgImsListener50;->mImsIfForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    invoke-virtual {v0, v1, p1}, Lcom/sec/epdg/handover/EpdgImsSettings;->onEpdgSettingChanged(Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;Lcom/sec/epdg/EpdgSettings;)V

    .line 814
    :goto_0
    return-void

    .line 812
    :cond_0
    const-string v0, "[EpdgImsListener]"

    const-string v1, "onEpdgSettingChanged failed"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerListener()V
    .locals 1

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/sec/epdg/handover/EpdgImsListener50;->registerGeneralListener()V

    .line 125
    invoke-direct {p0}, Lcom/sec/epdg/handover/EpdgImsListener50;->registerCallListener()V

    .line 126
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_WIFI_OVER_IPME:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/epdg/handover/EpdgImsListener50;->registerIpmeListener()V

    .line 127
    :cond_0
    return-void
.end method

.method public setEcbmChanged(Z)V
    .locals 5
    .param p1, "modeStart"    # Z

    .prologue
    .line 638
    sget-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->EMERGENCY_CALLBACK_MODE:Z

    if-nez v2, :cond_1

    .line 657
    :cond_0
    :goto_0
    return-void

    .line 641
    :cond_1
    const-string v2, "[EpdgImsListener]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setEcbmChanged :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    sget-object v1, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    .line 643
    .local v1, "callStatus":Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;
    if-eqz p1, :cond_3

    .line 644
    sget-object v1, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_E911:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    .line 653
    :cond_2
    :goto_1
    invoke-direct {p0, v1}, Lcom/sec/epdg/handover/EpdgImsListener50;->setCallStatus(Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;)V

    .line 654
    sget-object v2, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_E911:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-eq v1, v2, :cond_0

    .line 655
    invoke-direct {p0}, Lcom/sec/epdg/handover/EpdgImsListener50;->informCallStatusChangeToHandoverModule()V

    goto :goto_0

    .line 647
    :cond_3
    const/4 v0, 0x0

    .line 648
    .local v0, "callCount":[I
    invoke-direct {p0}, Lcom/sec/epdg/handover/EpdgImsListener50;->getCallCount()[I

    move-result-object v0

    .line 649
    if-eqz v0, :cond_2

    .line 650
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/sec/epdg/handover/EpdgImsListener50;->getFinalCallStatusFromCallCountList([IZ)Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 777
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 778
    .local v1, "status":Ljava/lang/StringBuffer;
    invoke-direct {p0}, Lcom/sec/epdg/handover/EpdgImsListener50;->getCallCount()[I

    move-result-object v0

    .line 779
    .local v0, "callCount":[I
    if-eqz v0, :cond_0

    .line 780
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call Count is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Call status is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/epdg/handover/EpdgImsListener50;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 782
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ims Reg State is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/epdg/handover/EpdgImsListener50;->getRegStatus()Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 783
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public unregisterListener()V
    .locals 1

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/sec/epdg/handover/EpdgImsListener50;->unregisterGeneralListener()V

    .line 134
    invoke-direct {p0}, Lcom/sec/epdg/handover/EpdgImsListener50;->unregisterCallListener()V

    .line 135
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_WIFI_OVER_IPME:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/epdg/handover/EpdgImsListener50;->unregisterIpmeListener()V

    .line 136
    :cond_0
    return-void
.end method

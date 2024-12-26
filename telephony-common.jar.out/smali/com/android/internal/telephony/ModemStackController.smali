.class public Lcom/android/internal/telephony/ModemStackController;
.super Landroid/os/Handler;
.source "ModemStackController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ModemStackController$SubscriptionStatus;,
        Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;
    }
.end annotation


# static fields
.field private static final BIND_TO_STACK:I = 0x1

.field private static final CMD_DEACTIVATE_ALL_SUBS:I = 0x1

.field private static final CMD_TRIGGER_BIND:I = 0x5

.field private static final CMD_TRIGGER_UNBIND:I = 0x3

.field static final DBG_HIGH:Z

.field private static final DEFAULT_MAX_DATA_ALLOWED:I = 0x1

.field private static final EVENT_BIND_DONE:I = 0x6

.field private static final EVENT_GET_MODEM_CAPS_DONE:I = 0x2

.field private static final EVENT_GET_NWSEL_MODE_DONE:I = 0xc

.field private static final EVENT_MODEM_CAPABILITY_CHANGED:I = 0xa

.field private static final EVENT_RADIO_AVAILABLE:I = 0x9

.field private static final EVENT_RADIO_ON:I = 0xb

.field private static final EVENT_SET_NWSEL_MODE_DONE:I = 0xd

.field private static final EVENT_SET_PREF_MODE:I = 0xe

.field private static final EVENT_SET_PREF_MODE_DONE:I = 0x7

.field private static final EVENT_SUB_DEACTIVATED:I = 0x8

.field private static final EVENT_UNBIND_DONE:I = 0x4

.field private static final FAILURE:I = 0x0

.field private static final GET_MODEM_CAPS_BUFFER_LEN:I = 0x7

.field static final LOG_TAG:Ljava/lang/String; = "ModemStackController"

.field private static final PRIMARY_STACK_ID:I = 0x0

.field private static final STATE_BIND:I = 0x5

.field private static final STATE_GOT_MODEM_CAPS:I = 0x2

.field private static final STATE_SET_NWSEL_MODE:I = 0x8

.field private static final STATE_SET_PREF_MODE:I = 0x7

.field private static final STATE_SUB_ACT:I = 0x6

.field private static final STATE_SUB_DEACT:I = 0x3

.field private static final STATE_UNBIND:I = 0x4

.field private static final STATE_UNKNOWN:I = 0x1

.field private static final SUCCESS:I = 0x1

.field private static final UNBIND_TO_STACK:I

.field private static sModemStackController:Lcom/android/internal/telephony/ModemStackController;


# instance fields
.field private mActiveSubCount:I

.field private mCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private mCmdFailed:[Z

.field private mContext:Landroid/content/Context;

.field private mCurrentStackId:[I

.field private mDeactivationInProgress:Z

.field private mDeactivedSubCount:I

.field private mGetModemCapInProgress:Z

.field private mIsCrossMappingRequired:Z

.field private mIsPhoneInEcbmMode:Z

.field private mIsRecoveryInProgress:Z

.field private mIsStackReady:Z

.field private mModemCapInfo:[Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;

.field private mModemDataCapsAvailableRegistrants:Landroid/os/RegistrantList;

.field private mModemRatCapabilitiesAvailable:Z

.field private mModemRatCapsAvailableRegistrants:Landroid/os/RegistrantList;

.field private mNumPhones:I

.field private mPrefNwMode:[I

.field private mPreferredStackId:[I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mStackReadyRegistrants:Landroid/os/RegistrantList;

.field private mSubState:[I

.field private mSubcriptionStatus:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateStackMsg:Landroid/os/Message;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 90
    const-string v0, "0x4948"

    const-string v1, "ro.debug_level"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/ModemStackController;->DBG_HIGH:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uiccManager"    # Lcom/android/internal/telephony/uicc/UiccController;
    .param p3, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 286
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 171
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    .line 172
    iput v5, p0, Lcom/android/internal/telephony/ModemStackController;->mActiveSubCount:I

    .line 173
    iput v5, p0, Lcom/android/internal/telephony/ModemStackController;->mDeactivedSubCount:I

    .line 174
    iget v2, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mPreferredStackId:[I

    .line 175
    iget v2, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mCurrentStackId:[I

    .line 176
    iget v2, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mPrefNwMode:[I

    .line 177
    iget v2, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mSubState:[I

    .line 178
    iput-boolean v5, p0, Lcom/android/internal/telephony/ModemStackController;->mIsStackReady:Z

    .line 179
    iput-boolean v5, p0, Lcom/android/internal/telephony/ModemStackController;->mIsRecoveryInProgress:Z

    .line 180
    iput-boolean v5, p0, Lcom/android/internal/telephony/ModemStackController;->mIsPhoneInEcbmMode:Z

    .line 181
    iput-boolean v5, p0, Lcom/android/internal/telephony/ModemStackController;->mModemRatCapabilitiesAvailable:Z

    .line 182
    iput-boolean v5, p0, Lcom/android/internal/telephony/ModemStackController;->mDeactivationInProgress:Z

    .line 183
    iput-boolean v5, p0, Lcom/android/internal/telephony/ModemStackController;->mGetModemCapInProgress:Z

    .line 184
    iget v2, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mCmdFailed:[Z

    .line 185
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mStackReadyRegistrants:Landroid/os/RegistrantList;

    .line 186
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mModemRatCapsAvailableRegistrants:Landroid/os/RegistrantList;

    .line 187
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mModemDataCapsAvailableRegistrants:Landroid/os/RegistrantList;

    .line 189
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mSubcriptionStatus:Ljava/util/HashMap;

    .line 191
    iput-boolean v5, p0, Lcom/android/internal/telephony/ModemStackController;->mIsCrossMappingRequired:Z

    .line 194
    iput-object v7, p0, Lcom/android/internal/telephony/ModemStackController;->mModemCapInfo:[Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;

    .line 196
    new-instance v2, Lcom/android/internal/telephony/ModemStackController$1;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/ModemStackController$1;-><init>(Lcom/android/internal/telephony/ModemStackController;)V

    iput-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 287
    const-string v2, "Constructor - Enter"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 289
    iput-object p3, p0, Lcom/android/internal/telephony/ModemStackController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 290
    iput-object p1, p0, Lcom/android/internal/telephony/ModemStackController;->mContext:Landroid/content/Context;

    .line 291
    iget v2, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    new-array v2, v2, [Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;

    iput-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mModemCapInfo:[Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;

    .line 293
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 294
    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v1

    const/16 v3, 0x9

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 295
    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v1

    const/16 v3, 0xa

    invoke-interface {v2, p0, v3, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForModemCapEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 296
    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v1

    const/16 v3, 0xb

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 293
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 299
    :cond_0
    const/4 v1, 0x0

    :goto_1
    iget v2, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    if-ge v1, v2, :cond_1

    .line 300
    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mPreferredStackId:[I

    aput v1, v2, v1

    .line 301
    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mCurrentStackId:[I

    aput v1, v2, v1

    .line 302
    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mSubState:[I

    aput v6, v2, v1

    .line 303
    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mCmdFailed:[Z

    aput-boolean v5, v2, v1

    .line 299
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 307
    :cond_1
    iget v2, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    if-ne v2, v6, :cond_2

    iput-boolean v6, p0, Lcom/android/internal/telephony/ModemStackController;->mIsStackReady:Z

    .line 309
    :cond_2
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 311
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.ACTION_SUBINFO_CONTENT_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 312
    const-string v2, "org.codeaurora.intent.action.ACTION_SUBSCRIPTION_SET_UICC_RESULT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 313
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 314
    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/ModemStackController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 315
    const-string v2, "Constructor - Exit"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 316
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/ModemStackController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/ModemStackController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/ModemStackController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/ModemStackController;
    .param p1, "x1"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/internal/telephony/ModemStackController;->mIsPhoneInEcbmMode:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/ModemStackController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/ModemStackController;

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/internal/telephony/ModemStackController;->mDeactivationInProgress:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/ModemStackController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/ModemStackController;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/internal/telephony/ModemStackController;->mSubcriptionStatus:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/ModemStackController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/ModemStackController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ModemStackController;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private areAllSubsinSameState(I)Z
    .locals 6
    .param p1, "state"    # I

    .prologue
    .line 704
    iget-object v0, p0, Lcom/android/internal/telephony/ModemStackController;->mSubState:[I

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    .line 705
    .local v3, "subState":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "areAllSubsinSameState state= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " substate="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 706
    if-eq v3, p1, :cond_0

    const/4 v4, 0x0

    .line 708
    .end local v3    # "subState":I
    :goto_1
    return v4

    .line 704
    .restart local v3    # "subState":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 708
    .end local v3    # "subState":I
    :cond_1
    const/4 v4, 0x1

    goto :goto_1
.end method

.method private bindStackOnSub(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    .line 520
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindStack "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mPreferredStackId:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " On phoneId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 521
    const/4 v1, 0x6

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {p0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 522
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mPreferredStackId:[I

    aget v2, v2, p1

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/CommandsInterface;->updateStackBinding(IILandroid/os/Message;)V

    .line 523
    return-void
.end method

.method private deactivateAllSubscriptions()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 891
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v3

    .line 892
    .local v3, "subCtrlr":Lcom/android/internal/telephony/SubscriptionController;
    iget-object v9, p0, Lcom/android/internal/telephony/ModemStackController;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 893
    .local v6, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    iput v13, p0, Lcom/android/internal/telephony/ModemStackController;->mActiveSubCount:I

    .line 894
    if-eqz v6, :cond_6

    .line 895
    iget v9, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    new-array v4, v9, [I

    .line 896
    .local v4, "subId":[I
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    .line 897
    .local v5, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v9

    invoke-virtual {v3, v9}, Lcom/android/internal/telephony/SubscriptionController;->getSubState(I)I

    move-result v7

    .line 898
    .local v7, "subStatus":I
    if-ne v7, v12, :cond_0

    .line 899
    iget v9, p0, Lcom/android/internal/telephony/ModemStackController;->mActiveSubCount:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/android/internal/telephony/ModemStackController;->mActiveSubCount:I

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v10

    aput v10, v4, v9

    .line 901
    :cond_0
    iget-object v9, p0, Lcom/android/internal/telephony/ModemStackController;->mSubcriptionStatus:Ljava/util/HashMap;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 903
    .end local v5    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .end local v7    # "subStatus":I
    :cond_1
    iget v9, p0, Lcom/android/internal/telephony/ModemStackController;->mActiveSubCount:I

    if-lez v9, :cond_5

    .line 904
    iput v13, p0, Lcom/android/internal/telephony/ModemStackController;->mDeactivedSubCount:I

    .line 905
    iput-boolean v12, p0, Lcom/android/internal/telephony/ModemStackController;->mDeactivationInProgress:Z

    .line 908
    iget v9, p0, Lcom/android/internal/telephony/ModemStackController;->mActiveSubCount:I

    if-le v9, v12, :cond_2

    .line 909
    aget v9, v4, v12

    invoke-virtual {v3}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v10

    if-ne v9, v10, :cond_2

    .line 910
    aget v8, v4, v13

    .line 911
    .local v8, "tempSubId":I
    aget v9, v4, v12

    aput v9, v4, v13

    .line 912
    aput v8, v4, v12

    .line 916
    .end local v8    # "tempSubId":I
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    :try_start_0
    iget v9, p0, Lcom/android/internal/telephony/ModemStackController;->mActiveSubCount:I

    if-ge v1, v9, :cond_4

    .line 917
    if-eqz v1, :cond_3

    const-wide/16 v10, 0x3e8

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V

    .line 918
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "deactivateAllSubscriptions: subId:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget v10, v4, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 919
    aget v9, v4, v1

    invoke-virtual {v3, v9}, Lcom/android/internal/telephony/SubscriptionController;->deactivateSubId(I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 916
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 921
    :catch_0
    move-exception v0

    .line 922
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/ModemStackController;->loge(Ljava/lang/String;)V

    .line 936
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "i":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "subId":[I
    :cond_4
    :goto_2
    return-void

    .line 926
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "subId":[I
    :cond_5
    iput-boolean v13, p0, Lcom/android/internal/telephony/ModemStackController;->mDeactivationInProgress:Z

    .line 927
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->triggerUnBindingOnAllSubs()V

    goto :goto_2

    .line 931
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "subId":[I
    :cond_6
    const-string v9, "deactivateAllSubscriptions: subInfoList is null!!!"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 932
    iput-boolean v13, p0, Lcom/android/internal/telephony/ModemStackController;->mIsRecoveryInProgress:Z

    .line 933
    iput-boolean v12, p0, Lcom/android/internal/telephony/ModemStackController;->mIsStackReady:Z

    .line 934
    iget-object v9, p0, Lcom/android/internal/telephony/ModemStackController;->mStackReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v9}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto :goto_2
.end method

.method public static getInstance()Lcom/android/internal/telephony/ModemStackController;
    .locals 2

    .prologue
    .line 278
    sget-object v0, Lcom/android/internal/telephony/ModemStackController;->sModemStackController:Lcom/android/internal/telephony/ModemStackController;

    if-nez v0, :cond_0

    .line 279
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ModemStackController.getInstance called before make()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/ModemStackController;->sModemStackController:Lcom/android/internal/telephony/ModemStackController;

    return-object v0
.end method

.method private getNwSelectionModeDone(Landroid/os/AsyncResult;I)V
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "phoneId"    # I

    .prologue
    const/4 v5, 0x0

    .line 634
    const/4 v1, 0x2

    .line 635
    .local v1, "responseCode":I
    const/16 v3, 0xd

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/ModemStackController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 637
    .local v0, "resp":Landroid/os/Message;
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 638
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v2, v3

    check-cast v2, [I

    .line 639
    .local v2, "selectionMode":[I
    const/4 v1, 0x0

    .line 641
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNwSelectionModeDone(SUB:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): Mode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v2, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 642
    aget v3, v2, v5

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 643
    iget-object v3, p0, Lcom/android/internal/telephony/ModemStackController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, p2

    invoke-interface {v3, v0}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 649
    .end local v2    # "selectionMode":[I
    :goto_0
    return-void

    .line 647
    :cond_0
    const/4 v3, 0x0

    invoke-static {v1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v4

    invoke-static {v0, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 648
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ModemStackController;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private getNwSelectionModeOnAllSubs()V
    .locals 4

    .prologue
    .line 652
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->resetSubStates()V

    .line 653
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    if-ge v0, v2, :cond_0

    .line 654
    const/16 v2, 0xc

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ModemStackController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 655
    .local v1, "resp":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    invoke-interface {v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->getNetworkSelectionMode(Landroid/os/Message;)V

    .line 653
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 657
    .end local v1    # "resp":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private isAnyCallsInProgress()Z
    .locals 3

    .prologue
    .line 788
    const/4 v1, 0x0

    .line 789
    .local v1, "isCallInProgress":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    if-ge v0, v2, :cond_0

    .line 790
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 792
    const/4 v1, 0x1

    .line 796
    :cond_0
    return v1

    .line 789
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isAnyCmdFailed()Z
    .locals 3

    .prologue
    .line 719
    const/4 v1, 0x0

    .line 720
    .local v1, "result":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    if-ge v0, v2, :cond_1

    .line 721
    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mCmdFailed:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_0

    .line 722
    const/4 v1, 0x1

    .line 720
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 725
    :cond_1
    return v1
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 1046
    const-string v0, "ModemStackController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 1050
    const-string v0, "ModemStackController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    return-void
.end method

.method public static make(Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/ModemStackController;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uiccMgr"    # Lcom/android/internal/telephony/uicc/UiccController;
    .param p2, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 268
    const-string v0, "ModemStackController"

    const-string v1, "getInstance"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    sget-object v0, Lcom/android/internal/telephony/ModemStackController;->sModemStackController:Lcom/android/internal/telephony/ModemStackController;

    if-nez v0, :cond_0

    .line 270
    new-instance v0, Lcom/android/internal/telephony/ModemStackController;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/telephony/ModemStackController;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/android/internal/telephony/ModemStackController;->sModemStackController:Lcom/android/internal/telephony/ModemStackController;

    .line 274
    sget-object v0, Lcom/android/internal/telephony/ModemStackController;->sModemStackController:Lcom/android/internal/telephony/ModemStackController;

    return-object v0

    .line 272
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ModemStackController.make() should only be called once"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private notifyModemDataCapabilitiesAvailable()V
    .locals 1

    .prologue
    .line 992
    sget-boolean v0, Lcom/android/internal/telephony/ModemStackController;->DBG_HIGH:Z

    if-eqz v0, :cond_0

    const-string v0, "notifyGetDataCapabilitiesDone"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 993
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ModemStackController;->mModemDataCapsAvailableRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 994
    return-void
.end method

.method private notifyModemRatCapabilitiesAvailable()V
    .locals 1

    .prologue
    .line 985
    const-string v0, "notifyGetRatCapabilitiesDone: Got RAT capabilities for all Stacks!!!"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 986
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/ModemStackController;->mGetModemCapInProgress:Z

    .line 987
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/ModemStackController;->mModemRatCapabilitiesAvailable:Z

    .line 988
    iget-object v0, p0, Lcom/android/internal/telephony/ModemStackController;->mModemRatCapsAvailableRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 989
    return-void
.end method

.method private notifyStackReady()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 939
    const-string v3, "notifyStackReady: Stack is READY!!!"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 940
    iput-boolean v5, p0, Lcom/android/internal/telephony/ModemStackController;->mIsRecoveryInProgress:Z

    .line 941
    iput-boolean v6, p0, Lcom/android/internal/telephony/ModemStackController;->mIsStackReady:Z

    .line 942
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->resetSubStates()V

    .line 944
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    if-ge v0, v3, :cond_0

    .line 946
    iget-object v3, p0, Lcom/android/internal/telephony/ModemStackController;->mCurrentStackId:[I

    iget-object v4, p0, Lcom/android/internal/telephony/ModemStackController;->mPreferredStackId:[I

    aget v4, v4, v0

    aput v4, v3, v0

    .line 944
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 951
    :cond_0
    iget-boolean v3, p0, Lcom/android/internal/telephony/ModemStackController;->mIsCrossMappingRequired:Z

    if-eqz v3, :cond_1

    .line 952
    iput-boolean v5, p0, Lcom/android/internal/telephony/ModemStackController;->mIsCrossMappingRequired:Z

    .line 954
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v2

    .line 955
    .local v2, "subId":I
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v1

    .line 956
    .local v1, "phoneId":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Call setDataAllowed() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 958
    if-ltz v1, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/ModemStackController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v3, v3

    if-gt v1, v3, :cond_1

    .line 959
    const-string v3, "ril.dds.force"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/SubscriptionController;->isActiveSubId(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 961
    iget-object v3, p0, Lcom/android/internal/telephony/ModemStackController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, v1

    const/4 v4, 0x0

    invoke-interface {v3, v6, v4}, Lcom/android/internal/telephony/CommandsInterface;->setDataAllowed(ZLandroid/os/Message;)V

    .line 971
    .end local v1    # "phoneId":I
    .end local v2    # "subId":I
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/ModemStackController;->mStackReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v3}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 972
    return-void

    .line 963
    .restart local v1    # "phoneId":I
    .restart local v2    # "subId":I
    :cond_2
    const-string v3, "isActiveSubId(subId) is false, do not call setDataAllowed()!"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private onBindComplete(Landroid/os/AsyncResult;I)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "phoneId"    # I

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x0

    .line 551
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/android/internal/telephony/ModemStackController;->mCmdFailed:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p2

    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBindComplete("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): got Exception ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ModemStackController;->loge(Ljava/lang/String;)V

    .line 556
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ModemStackController;->mSubState:[I

    aput v3, v0, p2

    .line 559
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/ModemStackController;->areAllSubsinSameState(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 560
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->isAnyCmdFailed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 561
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->recoverToPrevState()V

    .line 562
    iget-object v0, p0, Lcom/android/internal/telephony/ModemStackController;->mCmdFailed:[Z

    aput-boolean v2, v0, p2

    .line 575
    :cond_1
    :goto_0
    return-void

    .line 566
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/ModemStackController;->isStackIdError()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 567
    invoke-virtual {p0}, Lcom/android/internal/telephony/ModemStackController;->getModemCaps()V

    .line 568
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->resetSubStates()V

    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isStackIdError() StatckId error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mCurrentStackId:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mCurrentStackId:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ModemStackController;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 573
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->setPrefNwTypeOnAllSubs()V

    goto :goto_0
.end method

.method private onGetModemCapabilityDone(Landroid/os/AsyncResult;[BI)V
    .locals 3
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "result"    # [B
    .param p3, "phoneId"    # I

    .prologue
    const/4 v2, 0x2

    .line 436
    if-nez p2, :cond_1

    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    if-eqz v0, :cond_1

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGetModemCapabilityDone: EXIT!, result null or Exception ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ModemStackController;->loge(Ljava/lang/String;)V

    .line 440
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/ModemStackController;->mGetModemCapInProgress:Z

    .line 441
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/ModemStackController;->mIsStackReady:Z

    .line 442
    iget-object v0, p0, Lcom/android/internal/telephony/ModemStackController;->mStackReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 446
    :cond_1
    if-eqz p2, :cond_2

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGetModemCapabilityDone on phoneId["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 453
    :goto_1
    if-ltz p3, :cond_3

    iget v0, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    if-ge p3, v0, :cond_3

    .line 455
    iget-object v0, p0, Lcom/android/internal/telephony/ModemStackController;->mSubState:[I

    aput v2, v0, p3

    .line 456
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ModemStackController;->parseGetModemCapabilityResponse([BI)V

    .line 459
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ModemStackController;->areAllSubsinSameState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->notifyModemRatCapabilitiesAvailable()V

    goto :goto_0

    .line 449
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGetModemCapabilityDone on phoneId["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] result = null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 463
    :cond_3
    const-string v0, "Invalid Index!!!"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ModemStackController;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onSetNwSelectionModeDone(Landroid/os/AsyncResult;I)V
    .locals 3
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "phoneId"    # I

    .prologue
    const/16 v2, 0x8

    .line 660
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_Support75Mode"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 673
    :cond_0
    :goto_0
    return-void

    .line 664
    :cond_1
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    if-eqz v0, :cond_2

    .line 665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetNwSelectionModeDone(SUB:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): got Exception ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ModemStackController;->loge(Ljava/lang/String;)V

    .line 668
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/ModemStackController;->mSubState:[I

    aput v2, v0, p2

    .line 670
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ModemStackController;->areAllSubsinSameState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 671
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->triggerDeactivationOnAllSubs()V

    goto :goto_0
.end method

.method private onSetPrefNwModeDone(Landroid/os/AsyncResult;II)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "phoneId"    # I
    .param p3, "retryCount"    # I

    .prologue
    const/4 v3, 0x7

    .line 597
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_2

    .line 598
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetPrefNwModeDone(SUB:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") retryCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", got Exception ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ModemStackController;->loge(Ljava/lang/String;)V

    .line 600
    const/4 v1, 0x2

    if-ge p3, v1, :cond_1

    .line 601
    const/16 v1, 0xe

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p0, v1, p2, p3}, Lcom/android/internal/telephony/ModemStackController;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ModemStackController;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 630
    :cond_0
    :goto_0
    return-void

    .line 604
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mCmdFailed:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, p2

    .line 607
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mSubState:[I

    aput v3, v1, p2

    .line 610
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/ModemStackController;->areAllSubsinSameState(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 611
    const/4 v0, 0x0

    .line 612
    .local v0, "responseCode":I
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->isAnyCmdFailed()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 613
    const/4 v0, 0x2

    .line 616
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mUpdateStackMsg:Landroid/os/Message;

    if-eqz v1, :cond_4

    .line 617
    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mUpdateStackMsg:Landroid/os/Message;

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/ModemStackController;->sendResponseToTarget(Landroid/os/Message;I)V

    .line 618
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mUpdateStackMsg:Landroid/os/Message;

    .line 624
    :cond_4
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_Support75Mode"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 625
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->getNwSelectionModeOnAllSubs()V

    .line 628
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->notifyStackReady()V

    goto :goto_0
.end method

.method private onSubDeactivated(Landroid/os/AsyncResult;I)V
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "phoneId"    # I

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 487
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/ModemStackController$SubscriptionStatus;

    .line 488
    .local v0, "subStatus":Lcom/android/internal/telephony/ModemStackController$SubscriptionStatus;
    if-eqz v0, :cond_0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/android/internal/telephony/ModemStackController$SubscriptionStatus;->SUB_DEACTIVATED:Lcom/android/internal/telephony/ModemStackController$SubscriptionStatus;

    if-eq v1, v0, :cond_1

    .line 490
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSubDeactivated on phoneId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] Failed!!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ModemStackController;->loge(Ljava/lang/String;)V

    .line 491
    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mCmdFailed:[Z

    aput-boolean v3, v1, p2

    .line 494
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSubDeactivated on phoneId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] subStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 497
    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mSubState:[I

    aget v1, v1, p2

    if-ne v1, v5, :cond_3

    .line 517
    :cond_2
    :goto_0
    return-void

    .line 499
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mSubState:[I

    aput v5, v1, p2

    .line 500
    iget v1, p0, Lcom/android/internal/telephony/ModemStackController;->mDeactivedSubCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/ModemStackController;->mDeactivedSubCount:I

    .line 503
    iget v1, p0, Lcom/android/internal/telephony/ModemStackController;->mDeactivedSubCount:I

    iget v2, p0, Lcom/android/internal/telephony/ModemStackController;->mActiveSubCount:I

    if-ne v1, v2, :cond_2

    .line 506
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->isAnyCmdFailed()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 507
    iput-boolean v3, p0, Lcom/android/internal/telephony/ModemStackController;->mIsRecoveryInProgress:Z

    .line 508
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->recoverToPrevState()V

    .line 509
    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mCmdFailed:[Z

    aput-boolean v4, v1, p2

    .line 510
    iput-boolean v3, p0, Lcom/android/internal/telephony/ModemStackController;->mIsStackReady:Z

    .line 511
    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mStackReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto :goto_0

    .line 513
    :cond_4
    iput-boolean v4, p0, Lcom/android/internal/telephony/ModemStackController;->mDeactivationInProgress:Z

    .line 514
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->triggerUnBindingOnAllSubs()V

    goto :goto_0
.end method

.method private onUnbindComplete(Landroid/os/AsyncResult;I)V
    .locals 3
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "phoneId"    # I

    .prologue
    const/4 v2, 0x4

    .line 532
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/android/internal/telephony/ModemStackController;->mCmdFailed:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p2

    .line 534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUnbindComplete("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): got Exception ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ModemStackController;->loge(Ljava/lang/String;)V

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ModemStackController;->mSubState:[I

    aput v2, v0, p2

    .line 540
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ModemStackController;->areAllSubsinSameState(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 541
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->isAnyCmdFailed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 542
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->recoverToPrevState()V

    .line 543
    iget-object v0, p0, Lcom/android/internal/telephony/ModemStackController;->mCmdFailed:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p2

    .line 548
    :cond_1
    :goto_0
    return-void

    .line 546
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->triggerBindingOnAllSubs()V

    goto :goto_0
.end method

.method private onUnsolModemCapabilityChanged(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 468
    sget-boolean v3, Lcom/android/internal/telephony/ModemStackController;->DBG_HIGH:Z

    if-eqz v3, :cond_0

    const-string v3, "onUnsolModemCapabilityChanged"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 469
    :cond_0
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/RIL$UnsolOemHookBuffer;

    .line 471
    .local v2, "unsolOemHookBuffer":Lcom/android/internal/telephony/RIL$UnsolOemHookBuffer;
    if-eqz v2, :cond_1

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_2

    .line 472
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onUnsolModemCapabilityChanged: EXIT!, result null or Exception ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/ModemStackController;->loge(Ljava/lang/String;)V

    .line 484
    :goto_0
    return-void

    .line 476
    :cond_2
    invoke-virtual {v2}, Lcom/android/internal/telephony/RIL$UnsolOemHookBuffer;->getUnsolOemHookBuffer()[B

    move-result-object v0

    check-cast v0, [B

    .line 477
    .local v0, "data":[B
    invoke-virtual {v2}, Lcom/android/internal/telephony/RIL$UnsolOemHookBuffer;->getRilInstance()I

    move-result v1

    .line 479
    .local v1, "phoneId":I
    sget-boolean v3, Lcom/android/internal/telephony/ModemStackController;->DBG_HIGH:Z

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onUnsolModemCapabilityChanged on phoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 481
    :cond_3
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/ModemStackController;->parseGetModemCapabilityResponse([BI)V

    .line 482
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->notifyModemDataCapabilitiesAvailable()V

    goto :goto_0
.end method

.method private parseGetModemCapabilityResponse([BI)V
    .locals 8
    .param p1, "result"    # [B
    .param p2, "phoneId"    # I

    .prologue
    const/4 v7, 0x7

    .line 747
    if-nez p1, :cond_0

    .line 748
    const-string v0, "parseGetModemCapabilityResponse: result is null !"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ModemStackController;->loge(Ljava/lang/String;)V

    .line 773
    :goto_0
    return-void

    .line 752
    :cond_0
    array-length v0, p1

    if-eq v0, v7, :cond_1

    .line 753
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseGetModemCapabilityResponse: EXIT!, result length("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") and Expected length("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") not matching."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ModemStackController;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 757
    :cond_1
    sget-boolean v0, Lcom/android/internal/telephony/ModemStackController;->DBG_HIGH:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseGetModemCapabilityResponse: buffer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 758
    :cond_2
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 759
    .local v6, "respBuffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 761
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 763
    .local v2, "stackId":I
    if-ltz v2, :cond_3

    iget v0, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    if-lt v2, v0, :cond_4

    .line 764
    :cond_3
    const-string v0, "Invalid Index!!!"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ModemStackController;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 767
    :cond_4
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 768
    .local v3, "supportedRatBitMask":I
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    .line 769
    .local v4, "voiceDataCap":I
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    .local v5, "maxDataCap":I
    move-object v0, p0

    move v1, p2

    .line 771
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/ModemStackController;->updateModemCapInfo(IIIII)V

    goto :goto_0
.end method

.method private processRadioAvailable(Landroid/os/AsyncResult;I)V
    .locals 3
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "phoneId"    # I

    .prologue
    .line 421
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processRadioAvailable on phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 423
    if-ltz p2, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    if-ge p2, v1, :cond_0

    .line 424
    const/4 v1, 0x2

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {p0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 426
    .local v0, "getModemCapsMsg":Landroid/os/Message;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/ModemStackController;->mGetModemCapInProgress:Z

    .line 427
    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, p2

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getModemCapability(Landroid/os/Message;)V

    .line 432
    .end local v0    # "getModemCapsMsg":Landroid/os/Message;
    :goto_0
    return-void

    .line 430
    :cond_0
    const-string v1, "Invalid Index!!!"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ModemStackController;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private recoverToPrevState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1015
    iget-boolean v1, p0, Lcom/android/internal/telephony/ModemStackController;->mIsRecoveryInProgress:Z

    if-eqz v1, :cond_2

    .line 1018
    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mUpdateStackMsg:Landroid/os/Message;

    if-eqz v1, :cond_0

    .line 1019
    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mUpdateStackMsg:Landroid/os/Message;

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/ModemStackController;->sendResponseToTarget(Landroid/os/Message;I)V

    .line 1020
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mUpdateStackMsg:Landroid/os/Message;

    .line 1022
    :cond_0
    iput-boolean v3, p0, Lcom/android/internal/telephony/ModemStackController;->mIsRecoveryInProgress:Z

    .line 1023
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mSubState:[I

    aget v2, v2, v3

    if-ne v1, v2, :cond_1

    .line 1026
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->notifyStackReady()V

    .line 1037
    :cond_1
    :goto_0
    return-void

    .line 1031
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/ModemStackController;->mIsRecoveryInProgress:Z

    .line 1033
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    if-ge v0, v1, :cond_3

    .line 1034
    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mPreferredStackId:[I

    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mCurrentStackId:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 1033
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1036
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->triggerUnBindingOnAllSubs()V

    goto :goto_0
.end method

.method private resetSubStates()V
    .locals 3

    .prologue
    .line 712
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    if-ge v0, v1, :cond_0

    .line 713
    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mSubState:[I

    const/4 v2, 0x1

    aput v2, v1, v0

    .line 714
    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mCmdFailed:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 712
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 716
    :cond_0
    return-void
.end method

.method private sendResponseToTarget(Landroid/os/Message;I)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;
    .param p2, "responseCode"    # I

    .prologue
    .line 1040
    invoke-static {p2}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 1041
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1042
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1043
    return-void
.end method

.method private setPrefNwTypeOnAllSubs()V
    .locals 4

    .prologue
    .line 696
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->resetSubStates()V

    .line 697
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    if-ge v0, v2, :cond_0

    .line 698
    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v3}, Lcom/android/internal/telephony/ModemStackController;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 699
    .local v1, "resp":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/android/internal/telephony/ModemStackController;->mPrefNwMode:[I

    aget v3, v3, v0

    invoke-interface {v2, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 697
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 701
    .end local v1    # "resp":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private syncPreferredNwModeFromDB()V
    .locals 5

    .prologue
    .line 776
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    if-ge v0, v2, :cond_0

    .line 778
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mPrefNwMode:[I

    iget-object v3, p0, Lcom/android/internal/telephony/ModemStackController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    invoke-static {v3, v4, v0}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    aput v3, v2, v0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 776
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 780
    :catch_0
    move-exception v1

    .line 781
    .local v1, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "getPreferredNetworkMode: Could not find PREFERRED_NETWORK_MODE!!!"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ModemStackController;->loge(Ljava/lang/String;)V

    .line 782
    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mPrefNwMode:[I

    sget v3, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    aput v3, v2, v0

    goto :goto_1

    .line 785
    .end local v1    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    return-void
.end method

.method private triggerBindingOnAllSubs()V
    .locals 3

    .prologue
    .line 683
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->resetSubStates()V

    .line 684
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    if-ge v0, v1, :cond_0

    .line 685
    const/4 v1, 0x5

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ModemStackController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ModemStackController;->sendMessage(Landroid/os/Message;)Z

    .line 684
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 687
    :cond_0
    return-void
.end method

.method private triggerDeactivationOnAllSubs()V
    .locals 1

    .prologue
    .line 690
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->resetSubStates()V

    .line 691
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ModemStackController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ModemStackController;->sendMessage(Landroid/os/Message;)Z

    .line 692
    return-void
.end method

.method private triggerUnBindingOnAllSubs()V
    .locals 3

    .prologue
    .line 676
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->resetSubStates()V

    .line 677
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    if-ge v0, v1, :cond_0

    .line 678
    const/4 v1, 0x3

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ModemStackController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ModemStackController;->sendMessage(Landroid/os/Message;)Z

    .line 677
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 680
    :cond_0
    return-void
.end method

.method private unbindStackOnSub(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    .line 526
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unbindStack "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mCurrentStackId:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " On phoneId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 527
    const/4 v1, 0x4

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {p0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 528
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mCurrentStackId:[I

    aget v2, v2, p1

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/CommandsInterface;->updateStackBinding(IILandroid/os/Message;)V

    .line 529
    return-void
.end method

.method private updateModemCapInfo(IIIII)V
    .locals 8
    .param p1, "phoneId"    # I
    .param p2, "stackId"    # I
    .param p3, "supportedRatBitMask"    # I
    .param p4, "voiceDataCap"    # I
    .param p5, "maxDataCap"    # I

    .prologue
    .line 731
    iget-object v0, p0, Lcom/android/internal/telephony/ModemStackController;->mCurrentStackId:[I

    aput p2, v0, p1

    .line 733
    iget-object v6, p0, Lcom/android/internal/telephony/ModemStackController;->mModemCapInfo:[Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;

    iget-object v0, p0, Lcom/android/internal/telephony/ModemStackController;->mCurrentStackId:[I

    aget v7, v0, p1

    new-instance v0, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;

    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mCurrentStackId:[I

    aget v2, v1, p1

    move-object v1, p0

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;-><init>(Lcom/android/internal/telephony/ModemStackController;IIII)V

    aput-object v0, v6, v7

    .line 735
    sget-boolean v0, Lcom/android/internal/telephony/ModemStackController;->DBG_HIGH:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateModemCapInfo: ModemCaps["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mModemCapInfo:[Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;

    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mCurrentStackId:[I

    aget v2, v2, p1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 739
    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentStackIdForPhoneId(I)I
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 822
    iget-object v0, p0, Lcom/android/internal/telephony/ModemStackController;->mCurrentStackId:[I

    aget v0, v0, p1

    return v0
.end method

.method public getMaxDataAllowed()I
    .locals 5

    .prologue
    .line 804
    const-string v4, "getMaxDataAllowed"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 805
    const/4 v2, 0x1

    .line 806
    .local v2, "ret":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 808
    .local v3, "unsortedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v4, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    if-ge v0, v4, :cond_1

    .line 809
    iget-object v4, p0, Lcom/android/internal/telephony/ModemStackController;->mModemCapInfo:[Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;

    aget-object v4, v4, v0

    if-eqz v4, :cond_0

    .line 810
    iget-object v4, p0, Lcom/android/internal/telephony/ModemStackController;->mModemCapInfo:[Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getMaxDataCap()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 808
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 813
    :cond_1
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 814
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 815
    .local v1, "listSize":I
    if-lez v1, :cond_2

    .line 816
    add-int/lit8 v4, v1, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 818
    :cond_2
    return v2
.end method

.method public getModemCaps()V
    .locals 2

    .prologue
    .line 587
    iget-boolean v1, p0, Lcom/android/internal/telephony/ModemStackController;->mGetModemCapInProgress:Z

    if-eqz v1, :cond_1

    .line 588
    const-string v1, "GetModemCaps is in progress!"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ModemStackController;->loge(Ljava/lang/String;)V

    .line 594
    :cond_0
    return-void

    .line 591
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    if-ge v0, v1, :cond_0

    .line 592
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/ModemStackController;->processRadioAvailable(Landroid/os/AsyncResult;I)V

    .line 591
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getModemRatCapsForPhoneId(I)Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 835
    iget-object v0, p0, Lcom/android/internal/telephony/ModemStackController;->mModemCapInfo:[Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;

    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mCurrentStackId:[I

    aget v1, v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getPrimarySub()I
    .locals 2

    .prologue
    .line 826
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    if-ge v0, v1, :cond_1

    .line 827
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ModemStackController;->getCurrentStackIdForPhoneId(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 831
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 826
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 831
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 324
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 418
    :goto_0
    :pswitch_0
    return-void

    .line 326
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 327
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 328
    .local v1, "phoneId":Ljava/lang/Integer;
    const-string v4, "EVENT_RADIO_AVAILABLE"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 329
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v0, v4}, Lcom/android/internal/telephony/ModemStackController;->processRadioAvailable(Landroid/os/AsyncResult;I)V

    goto :goto_0

    .line 333
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "phoneId":Ljava/lang/Integer;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 334
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 335
    .restart local v1    # "phoneId":Ljava/lang/Integer;
    const-string v4, "EVENT_GET_MODEM_CAPS_DONE"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 336
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    check-cast v4, [B

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v0, v4, v5}, Lcom/android/internal/telephony/ModemStackController;->onGetModemCapabilityDone(Landroid/os/AsyncResult;[BI)V

    goto :goto_0

    .line 340
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "phoneId":Ljava/lang/Integer;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 341
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    sget-boolean v4, Lcom/android/internal/telephony/ModemStackController;->DBG_HIGH:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_MODEM_CAPABILITY_CHANGED ar ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 342
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ModemStackController;->onUnsolModemCapabilityChanged(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 346
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_4
    const-string v4, "CMD_DEACTIVATE_ALL_SUBS"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 347
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->deactivateAllSubscriptions()V

    goto :goto_0

    .line 351
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 352
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 353
    .restart local v1    # "phoneId":Ljava/lang/Integer;
    const-string v4, "EVENT_SUB_DEACTIVATED"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 354
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v0, v4}, Lcom/android/internal/telephony/ModemStackController;->onSubDeactivated(Landroid/os/AsyncResult;I)V

    goto :goto_0

    .line 358
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "phoneId":Ljava/lang/Integer;
    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 359
    .restart local v1    # "phoneId":Ljava/lang/Integer;
    const-string v4, "CMD_TRIGGER_UNBIND"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 360
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ModemStackController;->unbindStackOnSub(I)V

    goto/16 :goto_0

    .line 364
    .end local v1    # "phoneId":Ljava/lang/Integer;
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 365
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 366
    .restart local v1    # "phoneId":Ljava/lang/Integer;
    const-string v4, "EVENT_UNBIND_DONE"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 367
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v0, v4}, Lcom/android/internal/telephony/ModemStackController;->onUnbindComplete(Landroid/os/AsyncResult;I)V

    goto/16 :goto_0

    .line 371
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "phoneId":Ljava/lang/Integer;
    :pswitch_8
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 372
    .restart local v1    # "phoneId":Ljava/lang/Integer;
    const-string v4, "CMD_TRIGGER_BIND"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 373
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ModemStackController;->bindStackOnSub(I)V

    goto/16 :goto_0

    .line 377
    .end local v1    # "phoneId":Ljava/lang/Integer;
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 378
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 379
    .restart local v1    # "phoneId":Ljava/lang/Integer;
    const-string v4, "EVENT_BIND_DONE"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 380
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v0, v4}, Lcom/android/internal/telephony/ModemStackController;->onBindComplete(Landroid/os/AsyncResult;I)V

    goto/16 :goto_0

    .line 384
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "phoneId":Ljava/lang/Integer;
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 385
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 386
    .restart local v1    # "phoneId":Ljava/lang/Integer;
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 387
    .local v3, "retryCount":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_SET_PREF_MODE(SUB"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") nwMode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/ModemStackController;->mPrefNwMode:[I

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", retryCount:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 388
    const/4 v4, 0x7

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v4, v5, v3}, Lcom/android/internal/telephony/ModemStackController;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 389
    .local v2, "resp":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/internal/telephony/ModemStackController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v4, v4, v5

    iget-object v5, p0, Lcom/android/internal/telephony/ModemStackController;->mPrefNwMode:[I

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget v5, v5, v6

    invoke-interface {v4, v5, v2}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 393
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "phoneId":Ljava/lang/Integer;
    .end local v2    # "resp":Landroid/os/Message;
    .end local v3    # "retryCount":I
    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 394
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 395
    .restart local v1    # "phoneId":Ljava/lang/Integer;
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 396
    .restart local v3    # "retryCount":I
    const-string v4, "EVENT_SET_PREF_MODE_DONE"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 397
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v0, v4, v3}, Lcom/android/internal/telephony/ModemStackController;->onSetPrefNwModeDone(Landroid/os/AsyncResult;II)V

    goto/16 :goto_0

    .line 401
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "phoneId":Ljava/lang/Integer;
    .end local v3    # "retryCount":I
    :pswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 402
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 403
    .restart local v1    # "phoneId":Ljava/lang/Integer;
    const-string v4, "EVENT_GET_NWSEL_MODE_DONE"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 404
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v0, v4}, Lcom/android/internal/telephony/ModemStackController;->getNwSelectionModeDone(Landroid/os/AsyncResult;I)V

    goto/16 :goto_0

    .line 408
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "phoneId":Ljava/lang/Integer;
    :pswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 409
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 410
    .restart local v1    # "phoneId":Ljava/lang/Integer;
    const-string v4, "EVENT_SET_NWSEL_MODE_DONE"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 411
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v0, v4}, Lcom/android/internal/telephony/ModemStackController;->onSetNwSelectionModeDone(Landroid/os/AsyncResult;I)V

    goto/16 :goto_0

    .line 324
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_5
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_a
    .end packed-switch
.end method

.method public isStackIdError()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 579
    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mCurrentStackId:[I

    aget v2, v2, v1

    iget-object v3, p0, Lcom/android/internal/telephony/ModemStackController;->mCurrentStackId:[I

    aget v3, v3, v0

    if-ne v2, v3, :cond_0

    .line 582
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isStackReady()Z
    .locals 1

    .prologue
    .line 800
    iget-boolean v0, p0, Lcom/android/internal/telephony/ModemStackController;->mIsStackReady:Z

    return v0
.end method

.method public registerForModemDataCapsUpdate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1007
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1009
    .local v0, "r":Landroid/os/Registrant;
    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mModemDataCapsAvailableRegistrants:Landroid/os/RegistrantList;

    monitor-enter v2

    .line 1010
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mModemDataCapsAvailableRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1011
    monitor-exit v2

    .line 1012
    return-void

    .line 1011
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForModemRatCapsAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 997
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 998
    .local v0, "r":Landroid/os/Registrant;
    iget-boolean v1, p0, Lcom/android/internal/telephony/ModemStackController;->mModemRatCapabilitiesAvailable:Z

    if-eqz v1, :cond_0

    .line 999
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 1001
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mModemRatCapsAvailableRegistrants:Landroid/os/RegistrantList;

    monitor-enter v2

    .line 1002
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mModemRatCapsAvailableRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1003
    monitor-exit v2

    .line 1004
    return-void

    .line 1003
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForStackReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 975
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 976
    .local v0, "r":Landroid/os/Registrant;
    iget-boolean v1, p0, Lcom/android/internal/telephony/ModemStackController;->mIsStackReady:Z

    if-eqz v1, :cond_0

    .line 977
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 979
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mStackReadyRegistrants:Landroid/os/RegistrantList;

    monitor-enter v2

    .line 980
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mStackReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 981
    monitor-exit v2

    .line 982
    return-void

    .line 981
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateStackBinding([IZLandroid/os/Message;)I
    .locals 7
    .param p1, "prefStackIds"    # [I
    .param p2, "isBootUp"    # Z
    .param p3, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 839
    const/4 v2, 0x0

    .line 840
    .local v2, "isUpdateRequired":Z
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->isAnyCallsInProgress()Z

    move-result v0

    .line 842
    .local v0, "callInProgress":Z
    iget v5, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    if-ne v5, v4, :cond_1

    .line 843
    const-string v4, "No need to update Stack Binding in case of Single Sim."

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ModemStackController;->loge(Ljava/lang/String;)V

    .line 887
    :cond_0
    :goto_0
    return v3

    .line 847
    :cond_1
    if-nez v0, :cond_2

    iget-boolean v5, p0, Lcom/android/internal/telephony/ModemStackController;->mIsPhoneInEcbmMode:Z

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcom/android/internal/telephony/ModemStackController;->mIsStackReady:Z

    if-nez v5, :cond_3

    if-nez p2, :cond_3

    .line 848
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateStackBinding: Calls is progress = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mIsPhoneInEcbmMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/ModemStackController;->mIsPhoneInEcbmMode:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mIsStackReady = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/ModemStackController;->mIsStackReady:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". So EXITING!!!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ModemStackController;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 853
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v5, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    if-ge v1, v5, :cond_4

    .line 854
    iget-object v5, p0, Lcom/android/internal/telephony/ModemStackController;->mPreferredStackId:[I

    aget v6, p1, v1

    aput v6, v5, v1

    .line 853
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 857
    :cond_4
    const/4 v1, 0x0

    :goto_2
    iget v5, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    if-ge v1, v5, :cond_5

    .line 858
    iget-object v5, p0, Lcom/android/internal/telephony/ModemStackController;->mPreferredStackId:[I

    aget v5, v5, v1

    iget-object v6, p0, Lcom/android/internal/telephony/ModemStackController;->mCurrentStackId:[I

    aget v6, v6, v1

    if-eq v5, v6, :cond_6

    .line 860
    const/4 v2, 0x1

    .line 865
    :cond_5
    if-eqz v2, :cond_9

    .line 867
    iput-boolean v4, p0, Lcom/android/internal/telephony/ModemStackController;->mIsCrossMappingRequired:Z

    .line 869
    iput-boolean v3, p0, Lcom/android/internal/telephony/ModemStackController;->mIsStackReady:Z

    .line 871
    iput-object p3, p0, Lcom/android/internal/telephony/ModemStackController;->mUpdateStackMsg:Landroid/os/Message;

    .line 873
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->syncPreferredNwModeFromDB()V

    .line 874
    if-eqz p2, :cond_7

    .line 875
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->triggerUnBindingOnAllSubs()V

    :goto_3
    move v3, v4

    .line 887
    goto :goto_0

    .line 857
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 876
    :cond_7
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v5, "CscFeature_RIL_Support75Mode"

    invoke-virtual {v3, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 878
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->getNwSelectionModeOnAllSubs()V

    goto :goto_3

    .line 880
    :cond_8
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->triggerDeactivationOnAllSubs()V

    goto :goto_3

    .line 884
    :cond_9
    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->notifyStackReady()V

    goto/16 :goto_0
.end method

.class public Lcom/android/internal/telephony/uicc/UiccCard;
.super Ljava/lang/Object;
.source "UiccCard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/UiccCard$UiccCardBroadcastReceiver;
    }
.end annotation


# static fields
.field protected static final DBG:Z = true

.field private static final EVENT_CARD_ADDED:I = 0xe

.field private static final EVENT_CARD_REMOVED:I = 0xd

.field private static final EVENT_CARD_SWAPED:I = 0xa

.field private static final EVENT_CARRIER_PRIVILIGES_LOADED:I = 0x14

.field private static final EVENT_CLOSE_LOGICAL_CHANNEL_DONE:I = 0x10

.field private static final EVENT_OPEN_LOGICAL_CHANNEL_DONE:I = 0xf

.field private static final EVENT_SHOW_CTC_POPUP:I = 0x15

.field private static final EVENT_SIM_IO_DONE:I = 0x13

.field private static final EVENT_TRANSMIT_APDU_BASIC_CHANNEL_DONE:I = 0x12

.field private static final EVENT_TRANSMIT_APDU_LOGICAL_CHANNEL_DONE:I = 0x11

.field protected static final LOG_TAG:Ljava/lang/String; = "UiccCard"

.field private static final OPERATOR_BRAND_OVERRIDE_PREFIX:Ljava/lang/String; = "operator_branding_"

.field static dialog:Landroid/app/AlertDialog;

.field static dialogCTCSim:Landroid/app/AlertDialog;

.field static dialogSim1:Landroid/app/AlertDialog;

.field static dialogSim2:Landroid/app/AlertDialog;

.field private static final mLocalLog:Landroid/util/LocalLog;


# instance fields
.field private NoSimNotyFlag:Z

.field private mAbsentRegistrants:Landroid/os/RegistrantList;

.field private mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

.field private mCarrierPrivilegeRegistrants:Landroid/os/RegistrantList;

.field private mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

.field private mCatService:Lcom/android/internal/telephony/cat/CatService;

.field private mCdmaSubscriptionAppIndex:I

.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mGsmUmtsSubscriptionAppIndex:I

.field protected mHandler:Landroid/os/Handler;

.field private mImsSubscriptionAppIndex:I

.field private mLastRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

.field private final mLock:Ljava/lang/Object;

.field public mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mPhoneId:I

.field private mReceivedCardSwap:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

.field private mUniversalPinState:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

.field private showCTCDialog:Z

.field private updateFlagInserted:Z

.field private updateFlagRemoved:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 121
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/UiccCard;->mLocalLog:Landroid/util/LocalLog;

    .line 137
    sput-object v2, Lcom/android/internal/telephony/uicc/UiccCard;->dialog:Landroid/app/AlertDialog;

    .line 138
    sput-object v2, Lcom/android/internal/telephony/uicc/UiccCard;->dialogSim1:Landroid/app/AlertDialog;

    .line 139
    sput-object v2, Lcom/android/internal/telephony/uicc/UiccCard;->dialogSim2:Landroid/app/AlertDialog;

    .line 141
    sput-object v2, Lcom/android/internal/telephony/uicc/UiccCard;->dialogCTCSim:Landroid/app/AlertDialog;

    return-void
.end method

.method protected constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    .line 99
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/internal/telephony/uicc/UiccCardApplication;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 104
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLastRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 107
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    .line 108
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRegistrants:Landroid/os/RegistrantList;

    .line 126
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->NoSimNotyFlag:Z

    .line 132
    new-instance v0, Lcom/android/internal/telephony/uicc/UiccCard$UiccCardBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/uicc/UiccCard$UiccCardBroadcastReceiver;-><init>(Lcom/android/internal/telephony/uicc/UiccCard;Lcom/android/internal/telephony/uicc/UiccCard$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 133
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->updateFlagRemoved:Z

    .line 134
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->updateFlagInserted:Z

    .line 135
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mReceivedCardSwap:Z

    .line 142
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->showCTCDialog:Z

    .line 711
    new-instance v0, Lcom/android/internal/telephony/uicc/UiccCard$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCard$2;-><init>(Lcom/android/internal/telephony/uicc/UiccCard;)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    .line 200
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;Lcom/android/internal/telephony/PhoneBase;)V
    .locals 5
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "ics"    # Lcom/android/internal/telephony/uicc/IccCardStatus;
    .param p4, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    .line 99
    const/16 v1, 0x8

    new-array v1, v1, [Lcom/android/internal/telephony/uicc/UiccCardApplication;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 104
    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLastRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 107
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    .line 108
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRegistrants:Landroid/os/RegistrantList;

    .line 126
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->NoSimNotyFlag:Z

    .line 132
    new-instance v1, Lcom/android/internal/telephony/uicc/UiccCard$UiccCardBroadcastReceiver;

    invoke-direct {v1, p0, v4}, Lcom/android/internal/telephony/uicc/UiccCard$UiccCardBroadcastReceiver;-><init>(Lcom/android/internal/telephony/uicc/UiccCard;Lcom/android/internal/telephony/uicc/UiccCard$1;)V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 133
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->updateFlagRemoved:Z

    .line 134
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->updateFlagInserted:Z

    .line 135
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mReceivedCardSwap:Z

    .line 142
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->showCTCDialog:Z

    .line 711
    new-instance v1, Lcom/android/internal/telephony/uicc/UiccCard$2;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/uicc/UiccCard$2;-><init>(Lcom/android/internal/telephony/uicc/UiccCard;)V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    .line 147
    const-string v1, "Creating"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 148
    iget-object v1, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 150
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 151
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/uicc/UiccCard;->update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;Lcom/android/internal/telephony/PhoneBase;)V

    .line 154
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 155
    .local v0, "iccCardIntentfilter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.intent.action.SIM_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 157
    const-string v1, "CTC"

    sget-object v2, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCard;->getPhoneId()I

    move-result v1

    if-nez v1, :cond_0

    .line 159
    const-string v1, "com.samsung.intent.action.IsNotCTC"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    const-string v1, "com.samsung.intent.action.ICC_CARD_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 165
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xa

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForSimSwaped(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 167
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;Lcom/android/internal/telephony/PhoneBase;I)V
    .locals 5
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "ics"    # Lcom/android/internal/telephony/uicc/IccCardStatus;
    .param p4, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p5, "phoneId"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    .line 99
    const/16 v1, 0x8

    new-array v1, v1, [Lcom/android/internal/telephony/uicc/UiccCardApplication;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 104
    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLastRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 107
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    .line 108
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRegistrants:Landroid/os/RegistrantList;

    .line 126
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->NoSimNotyFlag:Z

    .line 132
    new-instance v1, Lcom/android/internal/telephony/uicc/UiccCard$UiccCardBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/uicc/UiccCard$UiccCardBroadcastReceiver;-><init>(Lcom/android/internal/telephony/uicc/UiccCard;Lcom/android/internal/telephony/uicc/UiccCard$1;)V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 133
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->updateFlagRemoved:Z

    .line 134
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->updateFlagInserted:Z

    .line 135
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mReceivedCardSwap:Z

    .line 142
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->showCTCDialog:Z

    .line 711
    new-instance v1, Lcom/android/internal/telephony/uicc/UiccCard$2;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/uicc/UiccCard$2;-><init>(Lcom/android/internal/telephony/uicc/UiccCard;)V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    .line 173
    iget-object v1, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 174
    iput p5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mPhoneId:I

    .line 176
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 177
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/uicc/UiccCard;->update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;Lcom/android/internal/telephony/PhoneBase;)V

    .line 181
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 182
    .local v0, "iccCardIntentfilter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.intent.action.SIM_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 183
    const-string v1, "CTC"

    sget-object v2, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCard;->getPhoneId()I

    move-result v1

    if-nez v1, :cond_0

    .line 185
    const-string v1, "com.samsung.intent.action.IsNotCTC"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 186
    const-string v1, "com.samsung.intent.action.ICC_CARD_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 189
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 195
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xa

    iget v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mPhoneId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForSimSwaped(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 197
    return-void
.end method

.method private InitUiccCarrierPrivilegeRules()V
    .locals 4

    .prologue
    .line 1194
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1196
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Before privilege rules: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 1197
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v0, v2, :cond_1

    .line 1198
    new-instance v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;-><init>(Lcom/android/internal/telephony/uicc/UiccCard;Landroid/os/Message;)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    .line 1203
    :cond_0
    :goto_0
    monitor-exit v1

    .line 1204
    return-void

    .line 1200
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v0, v2, :cond_0

    .line 1201
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    goto :goto_0

    .line 1203
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/uicc/UiccCard;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/internal/telephony/uicc/UiccCard;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCard;
    .param p1, "x1"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->showCTCDialog:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCard;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/uicc/UiccCard;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/uicc/UiccCard;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    .line 87
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mPhoneId:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/uicc/UiccCard;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCard;
    .param p1, "x1"    # Z

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCard;->onIccSwap(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCard;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCard;->loglocal(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/uicc/UiccCard;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccCard;->onCarrierPriviligesLoadedMessage()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCard;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCard;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/uicc/UiccCard;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccCard;->InitUiccCarrierPrivilegeRules()V

    return-void
.end method

.method private checkIndex(ILcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)I
    .locals 3
    .param p1, "index"    # I
    .param p2, "expectedAppType"    # Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    .param p3, "altExpectedAppType"    # Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .prologue
    const/4 v0, -0x1

    .line 335
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v1, v1

    if-lt p1, v1, :cond_2

    .line 336
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is invalid since there are no applications"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->loge(Ljava/lang/String;)V

    move p1, v0

    .line 353
    .end local p1    # "index":I
    :cond_1
    :goto_0
    return p1

    .line 340
    .restart local p1    # "index":I
    :cond_2
    if-gez p1, :cond_3

    move p1, v0

    .line 342
    goto :goto_0

    .line 345
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v1

    if-eq v1, p2, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v1

    if-eq v1, p3, :cond_1

    .line 347
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is invalid since it\'s not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->loge(Ljava/lang/String;)V

    move p1, v0

    .line 349
    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1037
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    .line 1039
    const-string v0, "UiccCard"

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    :goto_0
    return-void

    .line 1041
    :cond_0
    const-string v0, "UiccCard"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private loge(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1046
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    .line 1048
    const-string v0, "UiccCard"

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    :goto_0
    return-void

    .line 1050
    :cond_0
    const-string v0, "UiccCard"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private loglocal(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1055
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccCard;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1056
    return-void
.end method

.method private onCarrierPriviligesLoadedMessage()V
    .locals 2

    .prologue
    .line 764
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 765
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 766
    monitor-exit v1

    .line 767
    return-void

    .line 766
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onIccSwap(Z)V
    .locals 22
    .param p1, "isAdded"    # Z

    .prologue
    .line 399
    if-eqz p1, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/uicc/UiccCard;->updateFlagInserted:Z

    move/from16 v18, v0

    if-eqz v18, :cond_3

    .line 400
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/uicc/UiccCard;->updateFlagInserted:Z

    .line 401
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/uicc/UiccCard;->updateFlagRemoved:Z

    .line 402
    const-string v18, "onIccSwap: ICC_CARD_STATE_CHANGED INSERTED"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 411
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/UiccCard;->mPhoneId:I

    move/from16 v18, v0

    const-string v19, "persist.sys.softsim.status"

    const-string v20, "default"

    invoke-static/range {v18 .. v20}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 412
    .local v15, "softSimState":Ljava/lang/String;
    const-string v18, "activating"

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_0

    const-string v18, "deactivating"

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 414
    :cond_0
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/uicc/UiccCard;->mReceivedCardSwap:Z

    .line 417
    :cond_1
    const-string v18, "CTC"

    sget-object v19, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 421
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isSimHotswapSupported()Z

    move-result v18

    if-nez v18, :cond_4

    if-nez p1, :cond_4

    .line 423
    const-string v18, "onIccSwap: donot prompt because ctc auto rebooting by simcardmagner"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 709
    .end local v15    # "softSimState":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 403
    :cond_3
    if-nez p1, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/uicc/UiccCard;->updateFlagRemoved:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 404
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/uicc/UiccCard;->updateFlagRemoved:Z

    .line 405
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/uicc/UiccCard;->updateFlagInserted:Z

    .line 406
    const-string v18, "onIccSwap: ICC_CARD_STATE_CHANGED REMOVED"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 428
    .restart local v15    # "softSimState":Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v18

    const-string v19, "CscFeature_RIL_BroadcastNoSIMnoti"

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 431
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isSimHotswapSupported()Z

    move-result v18

    if-eqz v18, :cond_c

    .line 432
    const-string v18, "onIccSwap: HotSwap is enabled, not broadcast no sim notification"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 445
    :cond_5
    const-string v18, "onIccSwap: isHotSwapSupported is false, prompt for rebooting"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 447
    if-eqz p1, :cond_6

    .line 448
    const-string v18, "ril.otasp_state"

    const-string v19, "0"

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    :cond_6
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isSimHotswapSupported()Z

    move-result v18

    if-eqz v18, :cond_e

    .line 452
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "support hot swap do not need rebooting = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 453
    new-instance v7, Landroid/content/Intent;

    const-string v18, "com.samsung.intent.action.QCOMHOTSWAP"

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 454
    .local v7, "intent":Landroid/content/Intent;
    const-string v18, "REASON"

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 455
    const-string v18, "SIMSLOT"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/UiccCard;->mPhoneId:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 456
    const-string v18, "CTC"

    sget-object v19, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 457
    const-string v18, "ril.CheckCTCCard"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 458
    .local v3, "CheckCTCCard":Ljava/lang/String;
    const-string v18, "1"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/UiccCard;->mPhoneId:I

    move/from16 v18, v0

    if-nez v18, :cond_7

    .line 459
    const-string v18, "ril.CheckSimLock"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 460
    .local v4, "CheckSimLock":Ljava/lang/String;
    const-string v18, "0"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 461
    const-string v18, "EXTRA"

    const-string v19, "SIMLOCK"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 462
    const-string v18, "ril.CheckSimLock"

    const-string v19, "1"

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    .end local v3    # "CheckCTCCard":Ljava/lang/String;
    .end local v4    # "CheckSimLock":Ljava/lang/String;
    :cond_7
    const/high16 v18, 0x10000000

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 469
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v18

    const-string v19, "CscFeature_RIL_SupportAllRat"

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 470
    if-nez p1, :cond_9

    .line 471
    const-string v8, "IS_CTC"

    .line 472
    .local v8, "isCTC":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/UiccCard;->mPhoneId:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 473
    const-string v8, "IS_CTC2"

    .line 475
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v0, v8, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 479
    .end local v8    # "isCTC":Ljava/lang/String;
    :cond_9
    const/16 v18, 0x1

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    .line 480
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_d

    const-string v18, "2"

    const-string v19, "1"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_a

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->getSimTrayCount()I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_d

    .line 482
    :cond_a
    sget-object v18, Lcom/android/internal/telephony/uicc/UiccCard;->dialogSim1:Landroid/app/AlertDialog;

    if-eqz v18, :cond_b

    .line 483
    sget-object v18, Lcom/android/internal/telephony/uicc/UiccCard;->dialogSim1:Landroid/app/AlertDialog;

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog;->dismiss()V

    .line 484
    const/16 v18, 0x0

    sput-object v18, Lcom/android/internal/telephony/uicc/UiccCard;->dialogSim1:Landroid/app/AlertDialog;

    .line 486
    :cond_b
    sget-object v18, Lcom/android/internal/telephony/uicc/UiccCard;->dialogSim2:Landroid/app/AlertDialog;

    if-eqz v18, :cond_2

    .line 487
    sget-object v18, Lcom/android/internal/telephony/uicc/UiccCard;->dialogSim2:Landroid/app/AlertDialog;

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog;->dismiss()V

    .line 488
    const/16 v18, 0x0

    sput-object v18, Lcom/android/internal/telephony/uicc/UiccCard;->dialogSim2:Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 434
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_c
    if-nez p1, :cond_5

    .line 435
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/uicc/UiccCard;->NoSimNotyFlag:Z

    move/from16 v18, v0

    if-nez v18, :cond_2

    .line 436
    new-instance v7, Landroid/content/Intent;

    const-string v18, "com.samsung.intent.action.NO_SIM_NOTY"

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 437
    .restart local v7    # "intent":Landroid/content/Intent;
    const/high16 v18, 0x10000000

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 439
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/uicc/UiccCard;->NoSimNotyFlag:Z

    goto/16 :goto_1

    .line 491
    :cond_d
    sget-object v18, Lcom/android/internal/telephony/uicc/UiccCard;->dialog:Landroid/app/AlertDialog;

    if-eqz v18, :cond_2

    .line 492
    sget-object v18, Lcom/android/internal/telephony/uicc/UiccCard;->dialog:Landroid/app/AlertDialog;

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog;->dismiss()V

    .line 493
    const/16 v18, 0x0

    sput-object v18, Lcom/android/internal/telephony/uicc/UiccCard;->dialog:Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 500
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/uicc/UiccCard;->mReceivedCardSwap:Z

    move/from16 v18, v0

    if-eqz v18, :cond_f

    .line 501
    const-string v18, "do not display icc swap dialog here for tray pop up"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 502
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/uicc/UiccCard;->mReceivedCardSwap:Z

    goto/16 :goto_1

    .line 506
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 511
    const/4 v9, 0x0

    .line 517
    .local v9, "listener":Landroid/content/DialogInterface$OnClickListener;
    :try_start_0
    new-instance v10, Lcom/android/internal/telephony/uicc/UiccCard$1;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/android/internal/telephony/uicc/UiccCard$1;-><init>(Lcom/android/internal/telephony/uicc/UiccCard;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 562
    .end local v9    # "listener":Landroid/content/DialogInterface$OnClickListener;
    .local v10, "listener":Landroid/content/DialogInterface$OnClickListener;
    :try_start_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v14

    .line 565
    .local v14, "r":Landroid/content/res/Resources;
    const/16 v16, 0x4

    .line 566
    .local v16, "theme":I
    const-string v18, "ro.build.scafe.cream"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v20, "white"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_10

    .line 567
    const/16 v16, 0x5

    .line 571
    :cond_10
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isSimHotswapSupported()Z

    move-result v18

    if-eqz v18, :cond_1c

    .line 572
    const v18, 0x1040983

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 573
    .local v17, "title":Ljava/lang/String;
    const v18, 0x1040984

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 575
    .local v11, "message":Ljava/lang/String;
    const-string v18, "CTC"

    sget-object v20, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_11

    .line 576
    const-string v18, "SIM"

    const-string v20, "UIM/SIM"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    .line 579
    :cond_11
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v18

    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-le v0, v1, :cond_19

    const-string v18, "2"

    const-string v20, "1"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_12

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->getSimTrayCount()I

    move-result v18

    const/16 v20, 0x2

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_19

    .line 581
    :cond_12
    const v18, 0x1040985

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 582
    .local v12, "messageSim1":Ljava/lang/String;
    const v18, 0x1040986

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 584
    .local v13, "messageSim2":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/UiccCard;->mPhoneId:I

    move/from16 v18, v0

    if-nez v18, :cond_16

    .line 585
    sget-object v18, Lcom/android/internal/telephony/uicc/UiccCard;->dialogSim2:Landroid/app/AlertDialog;

    if-eqz v18, :cond_13

    .line 586
    sget-object v18, Lcom/android/internal/telephony/uicc/UiccCard;->dialogSim2:Landroid/app/AlertDialog;

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog;->dismiss()V

    .line 587
    const/16 v18, 0x0

    sput-object v18, Lcom/android/internal/telephony/uicc/UiccCard;->dialogSim2:Landroid/app/AlertDialog;

    .line 590
    :cond_13
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, " "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 591
    new-instance v18, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    const v20, 0x104000a

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v18

    sput-object v18, Lcom/android/internal/telephony/uicc/UiccCard;->dialogSim1:Landroid/app/AlertDialog;

    .line 598
    sget-object v18, Lcom/android/internal/telephony/uicc/UiccCard;->dialogSim1:Landroid/app/AlertDialog;

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v18

    const/16 v20, 0x7de

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 600
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v18

    if-eqz v18, :cond_14

    .line 601
    sget-object v18, Lcom/android/internal/telephony/uicc/UiccCard;->dialogSim1:Landroid/app/AlertDialog;

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v18

    const/16 v20, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 604
    :cond_14
    sget-object v18, Lcom/android/internal/telephony/uicc/UiccCard;->dialogSim1:Landroid/app/AlertDialog;

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 605
    .local v5, "attrs":Landroid/view/WindowManager$LayoutParams;
    const/16 v18, 0x10

    move/from16 v0, v18

    iput v0, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 606
    sget-object v18, Lcom/android/internal/telephony/uicc/UiccCard;->dialogSim1:Landroid/app/AlertDialog;

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 608
    sget-object v18, Lcom/android/internal/telephony/uicc/UiccCard;->dialogSim1:Landroid/app/AlertDialog;

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog;->show()V

    .line 609
    const-string v18, "onIccSwap: dialog1.show()"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 637
    .end local v5    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_15
    :goto_2
    monitor-exit v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 708
    .end local v11    # "message":Ljava/lang/String;
    .end local v12    # "messageSim1":Ljava/lang/String;
    .end local v13    # "messageSim2":Ljava/lang/String;
    .end local v14    # "r":Landroid/content/res/Resources;
    .end local v16    # "theme":I
    .end local v17    # "title":Ljava/lang/String;
    :catchall_0
    move-exception v18

    move-object v9, v10

    .end local v10    # "listener":Landroid/content/DialogInterface$OnClickListener;
    .restart local v9    # "listener":Landroid/content/DialogInterface$OnClickListener;
    :goto_3
    :try_start_2
    monitor-exit v19
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v18

    .line 610
    .end local v9    # "listener":Landroid/content/DialogInterface$OnClickListener;
    .restart local v10    # "listener":Landroid/content/DialogInterface$OnClickListener;
    .restart local v11    # "message":Ljava/lang/String;
    .restart local v12    # "messageSim1":Ljava/lang/String;
    .restart local v13    # "messageSim2":Ljava/lang/String;
    .restart local v14    # "r":Landroid/content/res/Resources;
    .restart local v16    # "theme":I
    .restart local v17    # "title":Ljava/lang/String;
    :cond_16
    :try_start_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/UiccCard;->mPhoneId:I

    move/from16 v18, v0

    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_15

    .line 611
    sget-object v18, Lcom/android/internal/telephony/uicc/UiccCard;->dialogSim1:Landroid/app/AlertDialog;

    if-eqz v18, :cond_17

    .line 612
    sget-object v18, Lcom/android/internal/telephony/uicc/UiccCard;->dialogSim1:Landroid/app/AlertDialog;

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog;->dismiss()V

    .line 613
    const/16 v18, 0x0

    sput-object v18, Lcom/android/internal/telephony/uicc/UiccCard;->dialogSim1:Landroid/app/AlertDialog;

    .line 616
    :cond_17
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, " "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 617
    new-instance v18, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    const v20, 0x104000a

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v18

    sput-object v18, Lcom/android/internal/telephony/uicc/UiccCard;->dialogSim2:Landroid/app/AlertDialog;

    .line 624
    sget-object v18, Lcom/android/internal/telephony/uicc/UiccCard;->dialogSim2:Landroid/app/AlertDialog;

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v18

    const/16 v20, 0x7de

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 626
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v18

    if-eqz v18, :cond_18

    .line 627
    sget-object v18, Lcom/android/internal/telephony/uicc/UiccCard;->dialogSim2:Landroid/app/AlertDialog;

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v18

    const/16 v20, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 630
    :cond_18
    sget-object v18, Lcom/android/internal/telephony/uicc/UiccCard;->dialogSim2:Landroid/app/AlertDialog;

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 631
    .restart local v5    # "attrs":Landroid/view/WindowManager$LayoutParams;
    const/16 v18, 0x10

    move/from16 v0, v18

    iput v0, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 632
    sget-object v18, Lcom/android/internal/telephony/uicc/UiccCard;->dialogSim2:Landroid/app/AlertDialog;

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 634
    sget-object v18, Lcom/android/internal/telephony/uicc/UiccCard;->dialogSim2:Landroid/app/AlertDialog;

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog;->show()V

    .line 635
    const-string v18, "onIccSwap: dialog2.show()"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 641
    .end local v5    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v12    # "messageSim1":Ljava/lang/String;
    .end local v13    # "messageSim2":Ljava/lang/String;
    :cond_19
    sget-object v18, Lcom/android/internal/telephony/uicc/UiccCard;->dialog:Landroid/app/AlertDialog;

    if-eqz v18, :cond_1a

    .line 642
    const-string v18, "onIccSwap: HotSwap dialog is already displayed"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 643
    monitor-exit v19

    goto/16 :goto_1

    .line 645
    :cond_1a
    new-instance v18, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    const v20, 0x104000a

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v18

    sput-object v18, Lcom/android/internal/telephony/uicc/UiccCard;->dialog:Landroid/app/AlertDialog;

    .line 696
    .end local v11    # "message":Ljava/lang/String;
    .end local v17    # "title":Ljava/lang/String;
    :goto_4
    sget-object v18, Lcom/android/internal/telephony/uicc/UiccCard;->dialog:Landroid/app/AlertDialog;

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v18

    const/16 v20, 0x7de

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 698
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v18

    if-eqz v18, :cond_1b

    .line 699
    sget-object v18, Lcom/android/internal/telephony/uicc/UiccCard;->dialog:Landroid/app/AlertDialog;

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v18

    const/16 v20, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 702
    :cond_1b
    sget-object v18, Lcom/android/internal/telephony/uicc/UiccCard;->dialog:Landroid/app/AlertDialog;

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 703
    .restart local v5    # "attrs":Landroid/view/WindowManager$LayoutParams;
    const/16 v18, 0x10

    move/from16 v0, v18

    iput v0, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 704
    sget-object v18, Lcom/android/internal/telephony/uicc/UiccCard;->dialog:Landroid/app/AlertDialog;

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 706
    sget-object v18, Lcom/android/internal/telephony/uicc/UiccCard;->dialog:Landroid/app/AlertDialog;

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog;->show()V

    .line 707
    const-string v18, "onIccSwap: dialog.show()"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 708
    monitor-exit v19

    goto/16 :goto_1

    .line 652
    .end local v5    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_1c
    const-string v18, "NOT_RESTART"

    const-string v20, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1d

    const-string v18, "NOT_RESTART"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v20

    const-string v21, "CscFeature_RIL_ConfigOPstyleSIMdetectDialog"

    invoke-virtual/range {v20 .. v21}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_20

    .line 654
    :cond_1d
    if-eqz p1, :cond_1f

    .line 655
    const-string v18, "ro.build.characteristics"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v20, "tablet"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_1e

    const v18, 0x10407fd

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 658
    .restart local v11    # "message":Ljava/lang/String;
    :goto_5
    new-instance v18, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v20, 0x10403d5

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    const v20, 0x10403d7

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    const/high16 v20, 0x1040000

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v18

    sput-object v18, Lcom/android/internal/telephony/uicc/UiccCard;->dialog:Landroid/app/AlertDialog;

    goto/16 :goto_4

    .line 655
    .end local v11    # "message":Ljava/lang/String;
    :cond_1e
    const v18, 0x10407fc

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_5

    .line 666
    :cond_1f
    new-instance v18, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v20, 0x1040285

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    const v20, 0x10407fb

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    const v20, 0x104000a

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v18

    sput-object v18, Lcom/android/internal/telephony/uicc/UiccCard;->dialog:Landroid/app/AlertDialog;

    goto/16 :goto_4

    .line 675
    :cond_20
    sget-object v18, Lcom/android/internal/telephony/uicc/UiccCard;->dialog:Landroid/app/AlertDialog;

    if-eqz v18, :cond_21

    .line 676
    const-string v18, "onIccSwap: dialog is already displayed"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 677
    monitor-exit v19

    goto/16 :goto_1

    .line 679
    :cond_21
    if-eqz p1, :cond_22

    const v18, 0x10403d5

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 681
    .restart local v17    # "title":Ljava/lang/String;
    :goto_6
    if-eqz p1, :cond_23

    const v18, 0x10403d6

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 683
    .restart local v11    # "message":Ljava/lang/String;
    :goto_7
    const v18, 0x10403d7

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 685
    .local v6, "buttonTxt":Ljava/lang/String;
    new-instance v18, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v18

    sput-object v18, Lcom/android/internal/telephony/uicc/UiccCard;->dialog:Landroid/app/AlertDialog;

    goto/16 :goto_4

    .line 679
    .end local v6    # "buttonTxt":Ljava/lang/String;
    .end local v11    # "message":Ljava/lang/String;
    .end local v17    # "title":Ljava/lang/String;
    :cond_22
    const v18, 0x10403d2

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    goto :goto_6

    .line 681
    .restart local v17    # "title":Ljava/lang/String;
    :cond_23
    const v18, 0x10403d3

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v11

    goto :goto_7

    .line 708
    .end local v10    # "listener":Landroid/content/DialogInterface$OnClickListener;
    .end local v14    # "r":Landroid/content/res/Resources;
    .end local v16    # "theme":I
    .end local v17    # "title":Ljava/lang/String;
    .restart local v9    # "listener":Landroid/content/DialogInterface$OnClickListener;
    :catchall_1
    move-exception v18

    goto/16 :goto_3
.end method

.method private sanitizeApplicationIndexes()V
    .locals 3

    .prologue
    .line 326
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mGsmUmtsSubscriptionAppIndex:I

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->checkIndex(ILcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mGsmUmtsSubscriptionAppIndex:I

    .line 328
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCdmaSubscriptionAppIndex:I

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->checkIndex(ILcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCdmaSubscriptionAppIndex:I

    .line 330
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mImsSubscriptionAppIndex:I

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_ISIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->checkIndex(ILcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mImsSubscriptionAppIndex:I

    .line 332
    return-void
.end method


# virtual methods
.method public areCarrierPriviligeRulesLoaded()Z
    .locals 1

    .prologue
    .line 953
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->areCarrierPriviligeRulesLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkCTCPopup()V
    .locals 4

    .prologue
    .line 1260
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCard;->getPhoneId()I

    move-result v1

    const-string v2, "ril.CheckCTCCard"

    const-string v3, "0"

    invoke-static {v1, v2, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1261
    .local v0, "checkCTCCard":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkCTCCard : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 1262
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1263
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCard;->sendCTCPopupMsg()V

    .line 1265
    :cond_0
    return-void
.end method

.method protected createAndUpdateCatService(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v0, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    .line 295
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    if-nez v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mPhoneId:I

    invoke-static {v0, v1, p0, p1, v2}, Lcom/android/internal/telephony/cat/CatService;->getInstance(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccCard;Lcom/android/internal/telephony/PhoneBase;I)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    .line 306
    :goto_0
    return-void

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/internal/telephony/cat/CatService;->update(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccCard;)V

    goto :goto_0

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    if-eqz v0, :cond_2

    .line 302
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatService;->dispose()V

    .line 304
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    goto :goto_0
.end method

.method public dispose()V
    .locals 7

    .prologue
    .line 203
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 204
    :try_start_0
    const-string v4, "Disposing card"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 205
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/CatService;->dispose()V

    .line 206
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .local v1, "arr$":[Lcom/android/internal/telephony/uicc/UiccCardApplication;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v0, v1, v2

    .line 207
    .local v0, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_1

    .line 208
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->dispose()V

    .line 206
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 211
    .end local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_2
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    .line 212
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 213
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    .line 215
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v6}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 216
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    invoke-interface {v4, v6}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSimSwaped(Landroid/os/Handler;)V

    .line 218
    monitor-exit v5

    .line 219
    return-void

    .line 218
    .end local v1    # "arr$":[Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1059
    const-string v6, "UiccCard:"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1060
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mCi="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1061
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mLastRadioState="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLastRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1062
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mCatService="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1063
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mAbsentRegistrants: size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v7}, Landroid/os/RegistrantList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1064
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6}, Landroid/os/RegistrantList;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 1065
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mAbsentRegistrants["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6, v2}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Registrant;

    invoke-virtual {v6}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1064
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1068
    :cond_0
    const/4 v2, 0x0

    :goto_1
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6}, Landroid/os/RegistrantList;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 1069
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mCarrierPrivilegeRegistrants["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6, v2}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Registrant;

    invoke-virtual {v6}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1068
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1072
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mCardState="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1073
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mUniversalPinState="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUniversalPinState:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1074
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mGsmUmtsSubscriptionAppIndex="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mGsmUmtsSubscriptionAppIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1075
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mCdmaSubscriptionAppIndex="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCdmaSubscriptionAppIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1076
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mImsSubscriptionAppIndex="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mImsSubscriptionAppIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1077
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mImsSubscriptionAppIndex="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mImsSubscriptionAppIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1078
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mUiccApplications: length="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1079
    const/4 v2, 0x0

    :goto_2
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v6, v6

    if-ge v2, v6, :cond_3

    .line 1080
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v6, v6, v2

    if-nez v6, :cond_2

    .line 1081
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mUiccApplications["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1079
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1083
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mUiccApplications["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 1087
    :cond_3
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1089
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .local v1, "arr$":[Lcom/android/internal/telephony/uicc/UiccCardApplication;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_4
    if-ge v3, v5, :cond_5

    aget-object v0, v1, v3

    .line 1090
    .local v0, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_4

    .line 1091
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1092
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1089
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1096
    .end local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v5, v1

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v5, :cond_7

    aget-object v0, v1, v3

    .line 1097
    .restart local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_6

    .line 1098
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v4

    .line 1099
    .local v4, "ir":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v4, :cond_6

    .line 1100
    invoke-virtual {v4, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccRecords;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1101
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1096
    .end local v4    # "ir":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1106
    .end local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_7
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    if-nez v6, :cond_8

    .line 1107
    const-string v6, " mCarrierPrivilegeRules: null"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1112
    :goto_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mCarrierPrivilegeRegistrants: size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v7}, Landroid/os/RegistrantList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1113
    const/4 v2, 0x0

    :goto_7
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6}, Landroid/os/RegistrantList;->size()I

    move-result v6

    if-ge v2, v6, :cond_9

    .line 1114
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mCarrierPrivilegeRegistrants["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6, v2}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Registrant;

    invoke-virtual {v6}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1113
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1109
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mCarrierPrivilegeRules: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1110
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    invoke-virtual {v6, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_6

    .line 1117
    :cond_9
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 1118
    const-string v6, "mLocalLog:"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1119
    sget-object v6, Lcom/android/internal/telephony/uicc/UiccCard;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v6, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1120
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 1121
    return-void
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 317
    const-string v0, "UiccCard finalized"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 318
    return-void
.end method

.method public getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 3
    .param p1, "family"    # I

    .prologue
    .line 793
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 794
    const/16 v0, 0x8

    .line 795
    .local v0, "index":I
    packed-switch p1, :pswitch_data_0

    .line 806
    :goto_0
    if-ltz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 807
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v1, v1, v0

    monitor-exit v2

    .line 809
    :goto_1
    return-object v1

    .line 797
    :pswitch_0
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mGsmUmtsSubscriptionAppIndex:I

    .line 798
    goto :goto_0

    .line 800
    :pswitch_1
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCdmaSubscriptionAppIndex:I

    .line 801
    goto :goto_0

    .line 803
    :pswitch_2
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mImsSubscriptionAppIndex:I

    goto :goto_0

    .line 809
    :cond_0
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_1

    .line 810
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 795
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getApplication(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 3
    .param p1, "type"    # Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .prologue
    .line 1210
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 1211
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v0, v2, v1

    .line 1212
    .local v0, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 1216
    .end local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :goto_1
    return-object v0

    .line 1210
    .restart local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1216
    .end local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getApplicationByType(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 829
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 830
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 831
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->ordinal()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 833
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v1, v1, v0

    monitor-exit v2

    .line 836
    :goto_1
    return-object v1

    .line 830
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 836
    :cond_1
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_1

    .line 837
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 814
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 815
    if-ltz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 816
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v0, v0, p1

    monitor-exit v1

    .line 818
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 819
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    .locals 2

    .prologue
    .line 781
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 782
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    monitor-exit v1

    return-object v0

    .line 783
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCarrierPackageNamesForIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Ljava/util/List;
    .locals 1
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 989
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getCarrierPackageNamesForIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getCarrierPrivilegeStatus(Landroid/content/pm/PackageManager;Ljava/lang/String;)I
    .locals 1
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 970
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getCarrierPrivilegeStatus(Landroid/content/pm/PackageManager;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getCarrierPrivilegeStatus(Landroid/content/pm/Signature;Ljava/lang/String;)I
    .locals 1
    .param p1, "signature"    # Landroid/content/pm/Signature;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 961
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getCarrierPrivilegeStatus(Landroid/content/pm/Signature;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getCarrierPrivilegeStatusForCurrentTransaction(Landroid/content/pm/PackageManager;)I
    .locals 1
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 979
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getCarrierPrivilegeStatusForCurrentTransaction(Landroid/content/pm/PackageManager;)I

    move-result v0

    goto :goto_0
.end method

.method public getCatService()Lcom/android/internal/telephony/cat/CatService;
    .locals 4

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    if-nez v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mPhoneId:I

    invoke-static {v0, v1, p0, v2, v3}, Lcom/android/internal/telephony/cat/CatService;->getInstance(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccCard;Lcom/android/internal/telephony/PhoneBase;I)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    return-object v0
.end method

.method public getIccId()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1025
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .local v1, "arr$":[Lcom/android/internal/telephony/uicc/UiccCardApplication;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v1, v2

    .line 1026
    .local v0, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_0

    .line 1027
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v3

    .line 1028
    .local v3, "ir":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/IccRecords;->getIccId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1029
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/IccRecords;->getIccId()Ljava/lang/String;

    move-result-object v5

    .line 1033
    .end local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v3    # "ir":Lcom/android/internal/telephony/uicc/IccRecords;
    :goto_1
    return-object v5

    .line 1025
    .restart local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1033
    .end local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public getNumApplications()I
    .locals 5

    .prologue
    .line 936
    const/4 v2, 0x0

    .line 937
    .local v2, "count":I
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .local v1, "arr$":[Lcom/android/internal/telephony/uicc/UiccCardApplication;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v1, v3

    .line 938
    .local v0, "a":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_0

    .line 939
    add-int/lit8 v2, v2, 0x1

    .line 937
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 942
    .end local v0    # "a":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_1
    return v2
.end method

.method public getOperatorBrandOverride()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1015
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCard;->getIccId()Ljava/lang/String;

    move-result-object v0

    .line 1016
    .local v0, "iccId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1020
    :goto_0
    return-object v2

    .line 1019
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1020
    .local v1, "sp":Landroid/content/SharedPreferences;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "operator_branding_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getPhoneId()I
    .locals 1

    .prologue
    .line 946
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mPhoneId:I

    return v0
.end method

.method public getUniversalPinState()Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    .locals 2

    .prologue
    .line 787
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 788
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUniversalPinState:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    monitor-exit v1

    return-object v0

    .line 789
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public iccCloseLogicalChannel(ILandroid/os/Message;)V
    .locals 3
    .param p1, "channel"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 892
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Close Logical Channel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCard;->loglocal(Ljava/lang/String;)V

    .line 893
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x10

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->iccCloseLogicalChannel(ILandroid/os/Message;)V

    .line 895
    return-void
.end method

.method public iccExchangeSimIO(IIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 13
    .param p1, "fileID"    # I
    .param p2, "command"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "p3"    # I
    .param p6, "pathID"    # Ljava/lang/String;
    .param p7, "response"    # Landroid/os/Message;

    .prologue
    .line 920
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v12

    .line 921
    .local v12, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v12, :cond_0

    .line 922
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v12}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v10

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x13

    move-object/from16 v0, p7

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    move v2, p2

    move v3, p1

    move-object/from16 v4, p6

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-interface/range {v1 .. v11}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 925
    :cond_0
    return-void
.end method

.method public iccOpenLogicalChannel(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "AID"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 882
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Open Logical Channel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " by pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCard;->loglocal(Ljava/lang/String;)V

    .line 884
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xf

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->iccOpenLogicalChannel(Ljava/lang/String;Landroid/os/Message;)V

    .line 886
    return-void
.end method

.method public iccTransmitApduBasicChannel(IIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 8
    .param p1, "cla"    # I
    .param p2, "command"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "p3"    # I
    .param p6, "data"    # Ljava/lang/String;
    .param p7, "response"    # Landroid/os/Message;

    .prologue
    .line 911
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x12

    invoke-virtual {v1, v2, p7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/CommandsInterface;->iccTransmitApduBasicChannel(IIIIILjava/lang/String;Landroid/os/Message;)V

    .line 913
    return-void
.end method

.method public iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 10
    .param p1, "channel"    # I
    .param p2, "cla"    # I
    .param p3, "command"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;
    .param p8, "response"    # Landroid/os/Message;

    .prologue
    .line 902
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x11

    move-object/from16 v0, p8

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-interface/range {v1 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;Landroid/os/Message;)V

    .line 904
    return-void
.end method

.method public isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z
    .locals 3
    .param p1, "type"    # Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .prologue
    .line 770
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 771
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 772
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 773
    const/4 v1, 0x1

    monitor-exit v2

    .line 776
    :goto_1
    return v1

    .line 771
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 776
    :cond_1
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_1

    .line 777
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForAbsent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 360
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 361
    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 363
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 365
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v1, v3, :cond_0

    .line 366
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 368
    :cond_0
    monitor-exit v2

    .line 369
    return-void

    .line 368
    .end local v0    # "r":Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForCarrierPrivilegeRulesLoaded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 381
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 382
    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 384
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 386
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCard;->areCarrierPriviligeRulesLoaded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 387
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 389
    :cond_0
    monitor-exit v2

    .line 390
    return-void

    .line 389
    .end local v0    # "r":Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resetAppTypeSim()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 868
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 869
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCard;->getNumApplications()I

    move-result v3

    if-ne v3, v0, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v3, v4, :cond_0

    .line 870
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->dispose()V

    .line 871
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v4, v1, v3

    .line 872
    monitor-exit v2

    .line 874
    :goto_0
    return v0

    :cond_0
    monitor-exit v2

    move v0, v1

    goto :goto_0

    .line 875
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resetAppWithAid(Ljava/lang/String;)Z
    .locals 5
    .param p1, "aid"    # Ljava/lang/String;

    .prologue
    .line 846
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 847
    const/4 v0, 0x0

    .line 848
    .local v0, "changed":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 849
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 852
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->dispose()V

    .line 853
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/4 v4, 0x0

    aput-object v4, v2, v1

    .line 854
    const/4 v0, 0x1

    .line 848
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 857
    :cond_2
    monitor-exit v3

    return v0

    .line 858
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public sendCTCPopupMsg()V
    .locals 3

    .prologue
    .line 1268
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_EnableCdmaDsBySimCardManager"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1269
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1270
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1272
    .end local v0    # "message":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public sendEnvelopeWithStatus(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 931
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelopeWithStatus(Ljava/lang/String;Landroid/os/Message;)V

    .line 932
    return-void
.end method

.method public setOperatorBrandOverride(Ljava/lang/String;)Z
    .locals 5
    .param p1, "brand"    # Ljava/lang/String;

    .prologue
    .line 995
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setOperatorBrandOverride: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 996
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current iccId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCard;->getIccId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 998
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCard;->getIccId()Ljava/lang/String;

    move-result-object v0

    .line 999
    .local v0, "iccId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1000
    const/4 v3, 0x0

    .line 1011
    :goto_0
    return v3

    .line 1003
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1005
    .local v2, "spEditor":Landroid/content/SharedPreferences$Editor;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "operator_branding_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1006
    .local v1, "key":Ljava/lang/String;
    if-nez p1, :cond_1

    .line 1007
    invoke-interface {v2, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1011
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 1009
    :cond_1
    invoke-interface {v2, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1
.end method

.method public showCTCPopup()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 1221
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showCTCPopup:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->showCTCDialog:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 1222
    iget-boolean v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->showCTCDialog:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 1223
    iput-boolean v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->showCTCDialog:Z

    .line 1224
    sget-object v3, Lcom/android/internal/telephony/uicc/UiccCard;->dialogCTCSim:Landroid/app/AlertDialog;

    if-nez v3, :cond_2

    .line 1225
    const/4 v2, 0x4

    .line 1226
    .local v2, "theme":I
    const-string v3, "ro.build.scafe.cream"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "white"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1227
    const/4 v2, 0x5

    .line 1229
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 1230
    .local v1, "r":Landroid/content/res/Resources;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v4, 0x10405b5

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x10405b4

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    sput-object v3, Lcom/android/internal/telephony/uicc/UiccCard;->dialogCTCSim:Landroid/app/AlertDialog;

    .line 1235
    sget-object v3, Lcom/android/internal/telephony/uicc/UiccCard;->dialogCTCSim:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7de

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 1237
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1238
    sget-object v3, Lcom/android/internal/telephony/uicc/UiccCard;->dialogCTCSim:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 1241
    :cond_1
    sget-object v3, Lcom/android/internal/telephony/uicc/UiccCard;->dialogCTCSim:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1242
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 0x10

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1243
    sget-object v3, Lcom/android/internal/telephony/uicc/UiccCard;->dialogCTCSim:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1244
    sget-object v3, Lcom/android/internal/telephony/uicc/UiccCard;->dialogCTCSim:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 1246
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "r":Landroid/content/res/Resources;
    .end local v2    # "theme":I
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/internal/telephony/uicc/UiccCard$3;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/uicc/UiccCard$3;-><init>(Lcom/android/internal/telephony/uicc/UiccCard;)V

    const-wide/16 v6, 0x1b58

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1256
    :cond_3
    return-void
.end method

.method public unregisterForAbsent(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 372
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 373
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 374
    monitor-exit v1

    .line 375
    return-void

    .line 374
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForCarrierPrivilegeRulesLoaded(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 393
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 394
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 395
    monitor-exit v1

    .line 396
    return-void

    .line 395
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;Lcom/android/internal/telephony/PhoneBase;)V
    .locals 9
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "ics"    # Lcom/android/internal/telephony/uicc/IccCardStatus;
    .param p4, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 224
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 225
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 226
    .local v1, "oldState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    iget-object v3, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 227
    iget-object v3, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mUniversalPinState:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUniversalPinState:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 228
    iget v3, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    iput v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mGsmUmtsSubscriptionAppIndex:I

    .line 229
    iget v3, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    iput v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCdmaSubscriptionAppIndex:I

    .line 230
    iget v3, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mImsSubscriptionAppIndex:I

    iput v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mImsSubscriptionAppIndex:I

    .line 231
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    .line 232
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 234
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 238
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    array-length v5, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " applications"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 239
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 240
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v3, v3, v0

    if-nez v3, :cond_1

    .line 242
    iget-object v3, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 243
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    new-instance v5, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    iget-object v6, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    aget-object v6, v6, v0

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v5, p0, v6, v7, v8}, Lcom/android/internal/telephony/uicc/UiccCardApplication;-><init>(Lcom/android/internal/telephony/uicc/UiccCard;Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    aput-object v5, v3, v0

    .line 239
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 246
    :cond_1
    iget-object v3, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    array-length v3, v3

    if-lt v0, v3, :cond_2

    .line 248
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->dispose()V

    .line 249
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/4 v5, 0x0

    aput-object v5, v3, v0

    goto :goto_1

    .line 289
    .end local v0    # "i":I
    .end local v1    # "oldState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 252
    .restart local v0    # "i":I
    .restart local v1    # "oldState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v3, v3, v0

    iget-object v5, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    aget-object v5, v5, v0

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v3, v5, v6, v7}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->update(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_1

    .line 256
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->createAndUpdateCatService(Lcom/android/internal/telephony/PhoneBase;)V

    .line 258
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccCard;->sanitizeApplicationIndexes()V

    .line 260
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v2

    .line 261
    .local v2, "radioState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update: radioState="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " mLastRadioState="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLastRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 263
    const-string v3, "CTC"

    sget-object v5, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 265
    :cond_4
    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v1, v3, :cond_7

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v3, v5, :cond_7

    .line 267
    const-string v3, "update: notify card removed"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 268
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v3}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 269
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    const/16 v6, 0xd

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 281
    :cond_5
    :goto_2
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLastRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 283
    const-string v3, "CTC"

    sget-object v5, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 285
    iget v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mPhoneId:I

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v3, v5, :cond_6

    .line 286
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCard;->checkCTCPopup()V

    .line 289
    :cond_6
    monitor-exit v4

    .line 290
    return-void

    .line 273
    :cond_7
    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v2, v3, :cond_8

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLastRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    sget-object v5, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v3, v5, :cond_9

    :cond_8
    iget-boolean v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->updateFlagRemoved:Z

    if-nez v3, :cond_5

    .line 274
    :cond_9
    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v1, v3, :cond_5

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v3, v5, :cond_5

    .line 276
    const-string v3, "update: notify card added"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    .line 277
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    const/16 v6, 0xe

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

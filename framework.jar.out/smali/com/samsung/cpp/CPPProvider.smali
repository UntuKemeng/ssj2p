.class public Lcom/samsung/cpp/CPPProvider;
.super Ljava/lang/Object;
.source "CPPProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/cpp/CPPProvider$CPPEventHandler;
    }
.end annotation


# static fields
.field private static DEGREE_RESOLUTION:D = 0.0

.field public static final GEO_CB:Ljava/lang/String; = "geo_cb"

.field private static final INTENT_ACTION_SUBINFO_RECORD_UPDATED:Ljava/lang/String; = "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

.field private static final INTENT_BOOT_COMPLETED:Ljava/lang/String; = "android.intent.action.BOOT_COMPLETED"

.field private static final INTENT_CLM_TT_GEO_FENCE_UPDATE:Ljava/lang/String; = "android.intent.action.ACTION_CLM_TT_GEO_FENCE_UPDATE"

.field private static final INTENT_CLM_TT_START_BY_APP:Ljava/lang/String; = "android.intent.action.ACTION_CLM_TT_START_BY_APP"

.field private static final INTENT_CLM_TT_STOP_BY_APP:Ljava/lang/String; = "android.intent.action.ACTION_CLM_TT_STOP_BY_APP"

.field private static final INTENT_DIAGNOSTIC_REPORT_CHANGED:Ljava/lang/String; = "android.settings.DIAGNOSTIC_INFO_CHANGED"

.field private static final INTENT_DIAGNOSTIC_REPORT_DIALOG:Ljava/lang/String; = "sec.intent.action.DIAGNOSTIC_INFO_DIALOG"

.field private static final INTENT_UPDATE_POLICY:Ljava/lang/String; = "sec.intent.action.UPDATE_POLICY"

.field public static final MODE_CPP_ONLY:I = 0x0

.field public static final MODE_CPP_PLUS_WIFI:I = 0x1

.field private static final MSG_DEINIT:I = 0x2

.field public static final MSG_DEREGISTER_CP_GEO_FENCE:I = 0xa

.field public static final MSG_GEO_CALLBACK:I = 0xb

.field private static final MSG_INIT:I = 0x1

.field public static final MSG_POLICY_UPDATED:I = 0x8

.field public static final MSG_REGISTER_CP_GEO_FENCE:I = 0x9

.field private static final MSG_REPORT_CP_LOCATION:I = 0x5

.field public static final MSG_RESPONSE_FROM_SERVER:I = 0x6

.field private static final MSG_START_CP_LOCATION:I = 0x3

.field private static final MSG_STOP_CP_LOCATION:I = 0x4

.field public static final MSG_UPDATE_POLICY:I = 0x7

.field private static final TAG:Ljava/lang/String; = "CPProvider"

.field private static cellular:Z

.field private static mMobileConnected:Z

.field private static mWifiConnected:Z


# instance fields
.field private filter:Landroid/content/IntentFilter;

.field private flagEnableCLM:Z

.field private flagEnableCPP:Z

.field private flag_MSG_UPDATE_POLICY:Z

.field private mCPPInfoReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mCpLocListener:Lcom/samsung/cpp/ICPPLocationListener;

.field private mCurrentReqMode:I

.field private mDbAdapter:Lcom/samsung/cpp/CPPDbAdapter;

.field private mHandler:Lcom/samsung/cpp/CPPProvider$CPPEventHandler;

.field protected mMobileAlarmIntent:Landroid/app/PendingIntent;

.field private mMobilePolicyRetryCount:I

.field private mNeedUpdatePolicy:I

.field private mPolicyHandler:Lcom/samsung/cpp/CPPPolicyHandler;

.field private mReportLocationStatus:Z

.field private mServiceStatelistener1:Landroid/telephony/PhoneStateListener;

.field private mServiceStatelistener2:Landroid/telephony/PhoneStateListener;

.field private mSimSlotConnected:I

.field private mSimSlotCount:I

.field private mSrvComm:Lcom/samsung/cpp/CPPSrvCommunicator;

.field private mWifiScanning:Z

.field private wifi:Landroid/net/wifi/WifiManager;

.field private wifiResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 64
    const-wide v0, 0x40d3880000000000L    # 20000.0

    sput-wide v0, Lcom/samsung/cpp/CPPProvider;->DEGREE_RESOLUTION:D

    .line 81
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/cpp/CPPProvider;->cellular:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/cpp/CPPProvider;->mMobileAlarmIntent:Landroid/app/PendingIntent;

    .line 71
    iput-boolean v2, p0, Lcom/samsung/cpp/CPPProvider;->mReportLocationStatus:Z

    .line 105
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/cpp/CPPProvider;->mCurrentReqMode:I

    .line 286
    new-instance v0, Lcom/samsung/cpp/CPPProvider$1;

    invoke-direct {v0, p0}, Lcom/samsung/cpp/CPPProvider$1;-><init>(Lcom/samsung/cpp/CPPProvider;)V

    iput-object v0, p0, Lcom/samsung/cpp/CPPProvider;->mCPPInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 122
    const-string v0, "CPProvider"

    const-string v1, "CPPProvider Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iput-object p1, p0, Lcom/samsung/cpp/CPPProvider;->mContext:Landroid/content/Context;

    .line 124
    iput v2, p0, Lcom/samsung/cpp/CPPProvider;->mNeedUpdatePolicy:I

    .line 125
    iput v2, p0, Lcom/samsung/cpp/CPPProvider;->mMobilePolicyRetryCount:I

    .line 126
    iput-boolean v2, p0, Lcom/samsung/cpp/CPPProvider;->mWifiScanning:Z

    .line 127
    iput-boolean v2, p0, Lcom/samsung/cpp/CPPProvider;->flag_MSG_UPDATE_POLICY:Z

    .line 129
    sput-boolean v2, Lcom/samsung/cpp/CPPProvider;->mWifiConnected:Z

    .line 130
    sput-boolean v2, Lcom/samsung/cpp/CPPProvider;->mMobileConnected:Z

    .line 131
    iput-boolean v2, p0, Lcom/samsung/cpp/CPPProvider;->flagEnableCPP:Z

    .line 132
    iput-boolean v2, p0, Lcom/samsung/cpp/CPPProvider;->flagEnableCLM:Z

    .line 134
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/samsung/cpp/CPPProvider;->filter:Landroid/content/IntentFilter;

    .line 135
    iget-object v0, p0, Lcom/samsung/cpp/CPPProvider;->filter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_CLM_TT_START_BY_APP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/samsung/cpp/CPPProvider;->filter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_CLM_TT_STOP_BY_APP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/samsung/cpp/CPPProvider;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/cpp/CPPProvider;->mCPPInfoReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/cpp/CPPProvider;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 138
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 53
    sget-boolean v0, Lcom/samsung/cpp/CPPProvider;->mWifiConnected:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 53
    sput-boolean p0, Lcom/samsung/cpp/CPPProvider;->mWifiConnected:Z

    return p0
.end method

.method static synthetic access$100(Lcom/samsung/cpp/CPPProvider;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/cpp/CPPProvider;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/samsung/cpp/CPPProvider;->flagEnableCLM:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/samsung/cpp/CPPProvider;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/cpp/CPPProvider;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/samsung/cpp/CPPProvider;->wifi:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/cpp/CPPProvider;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/cpp/CPPProvider;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/samsung/cpp/CPPProvider;->flagEnableCLM:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/samsung/cpp/CPPProvider;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/cpp/CPPProvider;

    .prologue
    .line 53
    iget v0, p0, Lcom/samsung/cpp/CPPProvider;->mSimSlotCount:I

    return v0
.end method

.method static synthetic access$1200(Lcom/samsung/cpp/CPPProvider;)Landroid/telephony/PhoneStateListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/cpp/CPPProvider;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/samsung/cpp/CPPProvider;->mServiceStatelistener1:Landroid/telephony/PhoneStateListener;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/samsung/cpp/CPPProvider;Landroid/telephony/PhoneStateListener;)Landroid/telephony/PhoneStateListener;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/cpp/CPPProvider;
    .param p1, "x1"    # Landroid/telephony/PhoneStateListener;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/samsung/cpp/CPPProvider;->mServiceStatelistener1:Landroid/telephony/PhoneStateListener;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/samsung/cpp/CPPProvider;)Landroid/telephony/PhoneStateListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/cpp/CPPProvider;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/samsung/cpp/CPPProvider;->mServiceStatelistener2:Landroid/telephony/PhoneStateListener;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/samsung/cpp/CPPProvider;Landroid/telephony/PhoneStateListener;)Landroid/telephony/PhoneStateListener;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/cpp/CPPProvider;
    .param p1, "x1"    # Landroid/telephony/PhoneStateListener;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/samsung/cpp/CPPProvider;->mServiceStatelistener2:Landroid/telephony/PhoneStateListener;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/samsung/cpp/CPPProvider;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/cpp/CPPProvider;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/samsung/cpp/CPPProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/cpp/CPPProvider;[BII)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/cpp/CPPProvider;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/cpp/CPPProvider;->sendBytesToCp([BII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/samsung/cpp/CPPProvider;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/cpp/CPPProvider;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/samsung/cpp/CPPProvider;->startReportLocation(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/samsung/cpp/CPPProvider;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/cpp/CPPProvider;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/samsung/cpp/CPPProvider;->stopReportLocation()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/samsung/cpp/CPPProvider;)Lcom/samsung/cpp/ICPPLocationListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/cpp/CPPProvider;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/samsung/cpp/CPPProvider;->mCpLocListener:Lcom/samsung/cpp/ICPPLocationListener;

    return-object v0
.end method

.method static synthetic access$1900()D
    .locals 2

    .prologue
    .line 53
    sget-wide v0, Lcom/samsung/cpp/CPPProvider;->DEGREE_RESOLUTION:D

    return-wide v0
.end method

.method static synthetic access$200(Lcom/samsung/cpp/CPPProvider;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/cpp/CPPProvider;

    .prologue
    .line 53
    iget v0, p0, Lcom/samsung/cpp/CPPProvider;->mNeedUpdatePolicy:I

    return v0
.end method

.method static synthetic access$2000(Lcom/samsung/cpp/CPPProvider;IIIIII)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/cpp/CPPProvider;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I

    .prologue
    .line 53
    invoke-direct/range {p0 .. p6}, Lcom/samsung/cpp/CPPProvider;->registerGeoFence(IIIIII)I

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lcom/samsung/cpp/CPPProvider;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/cpp/CPPProvider;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/samsung/cpp/CPPProvider;->mNeedUpdatePolicy:I

    return p1
.end method

.method static synthetic access$2100(Lcom/samsung/cpp/CPPProvider;III)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/cpp/CPPProvider;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/cpp/CPPProvider;->deRegisterGeoFence(III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200()Z
    .locals 1

    .prologue
    .line 53
    sget-boolean v0, Lcom/samsung/cpp/CPPProvider;->cellular:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/samsung/cpp/CPPProvider;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/cpp/CPPProvider;

    .prologue
    .line 53
    iget v0, p0, Lcom/samsung/cpp/CPPProvider;->mMobilePolicyRetryCount:I

    return v0
.end method

.method static synthetic access$2302(Lcom/samsung/cpp/CPPProvider;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/cpp/CPPProvider;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/samsung/cpp/CPPProvider;->mMobilePolicyRetryCount:I

    return p1
.end method

.method static synthetic access$2308(Lcom/samsung/cpp/CPPProvider;)I
    .locals 2
    .param p0, "x0"    # Lcom/samsung/cpp/CPPProvider;

    .prologue
    .line 53
    iget v0, p0, Lcom/samsung/cpp/CPPProvider;->mMobilePolicyRetryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/cpp/CPPProvider;->mMobilePolicyRetryCount:I

    return v0
.end method

.method static synthetic access$2400(Lcom/samsung/cpp/CPPProvider;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/cpp/CPPProvider;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/samsung/cpp/CPPProvider;->flag_MSG_UPDATE_POLICY:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/samsung/cpp/CPPProvider;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/cpp/CPPProvider;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/samsung/cpp/CPPProvider;->flag_MSG_UPDATE_POLICY:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/samsung/cpp/CPPProvider;JI[B)V
    .locals 1
    .param p0, "x0"    # Lcom/samsung/cpp/CPPProvider;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # [B

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/cpp/CPPProvider;->parseGeoLoc(JI[B)V

    return-void
.end method

.method static synthetic access$2600(Lcom/samsung/cpp/CPPProvider;)Lcom/samsung/cpp/CPPSrvCommunicator;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/cpp/CPPProvider;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/samsung/cpp/CPPProvider;->mSrvComm:Lcom/samsung/cpp/CPPSrvCommunicator;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/samsung/cpp/CPPProvider;Z[B)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/cpp/CPPProvider;
    .param p1, "x1"    # Z
    .param p2, "x2"    # [B

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/samsung/cpp/CPPProvider;->makeJsonForGeo(Z[B)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/cpp/CPPProvider;)Lcom/samsung/cpp/CPPPolicyHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/cpp/CPPProvider;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/samsung/cpp/CPPProvider;->mPolicyHandler:Lcom/samsung/cpp/CPPPolicyHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/cpp/CPPProvider;)Lcom/samsung/cpp/CPPProvider$CPPEventHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/cpp/CPPProvider;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/samsung/cpp/CPPProvider;->mHandler:Lcom/samsung/cpp/CPPProvider$CPPEventHandler;

    return-object v0
.end method

.method static synthetic access$402(Lcom/samsung/cpp/CPPProvider;Lcom/samsung/cpp/CPPProvider$CPPEventHandler;)Lcom/samsung/cpp/CPPProvider$CPPEventHandler;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/cpp/CPPProvider;
    .param p1, "x1"    # Lcom/samsung/cpp/CPPProvider$CPPEventHandler;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/samsung/cpp/CPPProvider;->mHandler:Lcom/samsung/cpp/CPPProvider$CPPEventHandler;

    return-object p1
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 53
    sget-boolean v0, Lcom/samsung/cpp/CPPProvider;->mMobileConnected:Z

    return v0
.end method

.method static synthetic access$502(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 53
    sput-boolean p0, Lcom/samsung/cpp/CPPProvider;->mMobileConnected:Z

    return p0
.end method

.method static synthetic access$600(Lcom/samsung/cpp/CPPProvider;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/cpp/CPPProvider;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/samsung/cpp/CPPProvider;->flagEnableCPP:Z

    return v0
.end method

.method static synthetic access$602(Lcom/samsung/cpp/CPPProvider;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/cpp/CPPProvider;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/samsung/cpp/CPPProvider;->flagEnableCPP:Z

    return p1
.end method

.method static synthetic access$700(Lcom/samsung/cpp/CPPProvider;)Lcom/samsung/cpp/CPPDbAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/cpp/CPPProvider;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/samsung/cpp/CPPProvider;->mDbAdapter:Lcom/samsung/cpp/CPPDbAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/cpp/CPPProvider;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/cpp/CPPProvider;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/samsung/cpp/CPPProvider;->mWifiScanning:Z

    return v0
.end method

.method static synthetic access$802(Lcom/samsung/cpp/CPPProvider;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/cpp/CPPProvider;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/samsung/cpp/CPPProvider;->mWifiScanning:Z

    return p1
.end method

.method static synthetic access$900(Lcom/samsung/cpp/CPPProvider;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/cpp/CPPProvider;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/samsung/cpp/CPPProvider;->wifiResults:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$902(Lcom/samsung/cpp/CPPProvider;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/cpp/CPPProvider;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/samsung/cpp/CPPProvider;->wifiResults:Ljava/util/List;

    return-object p1
.end method

.method private cellHistoryCallBack([B)V
    .locals 3
    .param p1, "rawData"    # [B

    .prologue
    .line 873
    const-string v0, "CPProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cellHistoryCallBack() length : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    return-void
.end method

.method private native createJNIObject()V
.end method

.method private native deInitSamsungLocationEngine()V
.end method

.method private native deRegisterGeoFence(III)Z
.end method

.method private geoFenceCallBack([B)V
    .locals 18
    .param p1, "rawData"    # [B

    .prologue
    .line 878
    const-string v14, "CPProvider"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "geoFenceCallBack() length : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    :try_start_0
    invoke-static/range {p1 .. p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v14

    sget-object v15, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v14, v15}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 885
    .local v2, "bb":Ljava/nio/ByteBuffer;
    const-string v14, "CPProvider"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "geoFenceCallBack() ByteBuffer : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    .line 888
    .local v13, "type":B
    if-nez v13, :cond_1

    .line 889
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    .line 890
    .local v6, "clientID":I
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    .line 891
    .local v12, "result":B
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    .line 892
    .local v7, "errorCode":B
    const-string v14, "CPProvider"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "geoFenceCallBack() type : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", clientID : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", result : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", errorCode : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    if-eqz v12, :cond_0

    .line 896
    const-string v14, "CPProvider"

    const-string v15, "geoFenceCallBack onError cb null"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    .end local v2    # "bb":Ljava/nio/ByteBuffer;
    .end local v6    # "clientID":I
    .end local v7    # "errorCode":B
    .end local v12    # "result":B
    .end local v13    # "type":B
    :cond_0
    :goto_0
    return-void

    .line 899
    .restart local v2    # "bb":Ljava/nio/ByteBuffer;
    .restart local v13    # "type":B
    :cond_1
    const/4 v14, 0x1

    if-ne v13, v14, :cond_2

    .line 900
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    .line 901
    .restart local v6    # "clientID":I
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v8

    .line 902
    .local v8, "geoMode":B
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v14

    const v15, 0xffff

    and-int/2addr v14, v15

    int-to-long v4, v14

    .line 904
    .local v4, "cellId":J
    const-string v14, "CPProvider"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "geoFenceCallBack() type : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", clientID : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", geoMode : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", cellId : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    new-instance v10, Landroid/content/Intent;

    const-string v14, "android.intent.action.ACTION_CLM_TT_GEO_FENCE_UPDATE"

    invoke-direct {v10, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 908
    .local v10, "intent":Landroid/content/Intent;
    const-string v14, "clientID"

    invoke-virtual {v10, v14, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 909
    const-string v14, "geoMode"

    invoke-virtual {v10, v14, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 910
    const/16 v14, 0x20

    invoke-virtual {v10, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 911
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/cpp/CPPProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 923
    .end local v2    # "bb":Ljava/nio/ByteBuffer;
    .end local v4    # "cellId":J
    .end local v6    # "clientID":I
    .end local v8    # "geoMode":B
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v13    # "type":B
    :catch_0
    move-exception v9

    .line 924
    .local v9, "i":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 913
    .end local v9    # "i":Ljava/lang/Exception;
    .restart local v2    # "bb":Ljava/nio/ByteBuffer;
    .restart local v13    # "type":B
    :cond_2
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/samsung/cpp/CPPProvider;->startWifiScan()V

    .line 914
    const-string v14, "CPProvider"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "geoFenceCallBack() type : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v11

    .line 917
    .local v11, "msg":Landroid/os/Message;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 918
    .local v3, "cb":Landroid/os/Bundle;
    const-string v14, "geo_cb"

    move-object/from16 v0, p1

    invoke-virtual {v3, v14, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 919
    const/16 v14, 0xb

    iput v14, v11, Landroid/os/Message;->what:I

    .line 920
    invoke-virtual {v11, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 921
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/cpp/CPPProvider;->mHandler:Lcom/samsung/cpp/CPPProvider$CPPEventHandler;

    const-wide/16 v16, 0xfa0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v11, v0, v1}, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private getEncKey(IJLjava/lang/String;)J
    .locals 10
    .param p1, "tac"    # I
    .param p2, "utc"    # J
    .param p4, "plmn"    # Ljava/lang/String;

    .prologue
    .line 1278
    iget-object v4, p0, Lcom/samsung/cpp/CPPProvider;->mPolicyHandler:Lcom/samsung/cpp/CPPPolicyHandler;

    invoke-virtual {v4, p4}, Lcom/samsung/cpp/CPPPolicyHandler;->getPolicyId(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1280
    .local v2, "policyId":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_0

    .line 1281
    const-wide v4, 0xffffffffL

    int-to-long v6, p1

    const/16 v8, 0x10

    shl-long/2addr v6, v8

    xor-long/2addr v6, p2

    xor-long/2addr v6, v2

    and-long v0, v4, v6

    .line 1282
    .local v0, "encKey":J
    const-string v4, "CPProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getEncKey() tac: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "), utc : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", PolicyId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", EncKey : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    .end local v0    # "encKey":J
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method private getUtc()J
    .locals 4

    .prologue
    .line 1259
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private getUtcKey(J)I
    .locals 3
    .param p1, "utc"    # J

    .prologue
    .line 1291
    const-wide/32 v0, 0xffff

    and-long/2addr v0, p1

    long-to-int v0, v0

    return v0
.end method

.method private native initSamsungLocationEngine()V
.end method

.method private loadNativeLibrary()V
    .locals 4

    .prologue
    .line 948
    const-string v1, "CPProvider"

    const-string v2, "loadNativeLibrary.."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    :try_start_0
    const-string v1, "cppjni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 957
    return-void

    .line 951
    :catch_0
    move-exception v0

    .line 952
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load lib cppjni.so:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private makeJsonForGeo(Z[B)V
    .locals 30
    .param p1, "isGeo"    # Z
    .param p2, "data"    # [B

    .prologue
    .line 1151
    const/4 v7, 0x3

    .line 1153
    .local v7, "geoMode":B
    const/4 v4, -0x1

    .local v4, "clientID":I
    const/16 v22, 0x0

    .line 1156
    .local v22, "tac":I
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    .line 1159
    .local v14, "mJson":Lorg/json/JSONObject;
    :try_start_0
    invoke-static/range {p2 .. p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v26

    sget-object v27, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual/range {v26 .. v27}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 1160
    .local v3, "bb":Ljava/nio/ByteBuffer;
    const-string v26, "CPProvider"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "makeJsonForGeo() ByteBuffer "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v23

    .line 1162
    .local v23, "type":B
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 1163
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    .line 1164
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 1165
    .local v2, "accuracy":S
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v12

    .line 1166
    .local v12, "lat":I
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v13

    .line 1167
    .local v13, "lon":I
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v17

    .line 1168
    .local v17, "mcc":S
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v18

    .line 1169
    .local v18, "mnc":S
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v20

    .line 1170
    .local v20, "rat":B
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v26

    const v27, 0xffff

    and-int v22, v26, v27

    .line 1171
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v26

    const v27, 0xffff

    and-int v6, v26, v27

    .line 1172
    .local v6, "fcn":I
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v26

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    const-wide v28, 0xffffffffL

    and-long v8, v26, v28

    .line 1173
    .local v8, "gci":J
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v26

    const v27, 0xffff

    and-int v19, v26, v27

    .line 1175
    .local v19, "pci":I
    const-string v26, "type"

    const/16 v27, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1176
    const-string v26, "mcc"

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1177
    const-string v26, "mnc"

    move-object/from16 v0, v26

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1178
    const-string v26, "tac"

    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1179
    const-string v26, "cid"

    move-object/from16 v0, v26

    invoke-virtual {v14, v0, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1180
    const-string v26, "pci"

    move-object/from16 v0, v26

    move/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1181
    const-string v26, "fcn"

    move-object/from16 v0, v26

    invoke-virtual {v14, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider;->wifiResults:Ljava/util/List;

    move-object/from16 v26, v0

    if-eqz v26, :cond_1

    .line 1184
    const/16 v24, 0x0

    .line 1185
    .local v24, "wifiCount":I
    new-instance v16, Lorg/json/JSONArray;

    invoke-direct/range {v16 .. v16}, Lorg/json/JSONArray;-><init>()V

    .line 1188
    .local v16, "mJsonWifiArray":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider;->wifiResults:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    move/from16 v25, v24

    .end local v24    # "wifiCount":I
    .local v25, "wifiCount":I
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/net/wifi/ScanResult;

    .line 1189
    .local v21, "result":Landroid/net/wifi/ScanResult;
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    .line 1190
    .local v15, "mJsonWifi":Lorg/json/JSONObject;
    const-string v26, "macAddress"

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v15, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1191
    const-string v26, "rssi"

    move-object/from16 v0, v21

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v27, v0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v15, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1192
    add-int/lit8 v24, v25, 0x1

    .end local v25    # "wifiCount":I
    .restart local v24    # "wifiCount":I
    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1, v15}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    move/from16 v25, v24

    .line 1193
    .end local v24    # "wifiCount":I
    .restart local v25    # "wifiCount":I
    goto :goto_0

    .line 1195
    .end local v15    # "mJsonWifi":Lorg/json/JSONObject;
    .end local v21    # "result":Landroid/net/wifi/ScanResult;
    :cond_0
    const-string v26, "arrMacAddress"

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1205
    .end local v2    # "accuracy":S
    .end local v3    # "bb":Ljava/nio/ByteBuffer;
    .end local v6    # "fcn":I
    .end local v8    # "gci":J
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v12    # "lat":I
    .end local v13    # "lon":I
    .end local v16    # "mJsonWifiArray":Lorg/json/JSONArray;
    .end local v17    # "mcc":S
    .end local v18    # "mnc":S
    .end local v19    # "pci":I
    .end local v20    # "rat":B
    .end local v23    # "type":B
    .end local v25    # "wifiCount":I
    :cond_1
    :goto_1
    invoke-virtual {v14}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v26

    if-eqz v26, :cond_2

    .line 1206
    const-string v26, "CPProvider"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "makeJsonForGeo() JSON : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v14}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/cpp/CPPProvider;->mSrvComm:Lcom/samsung/cpp/CPPSrvCommunicator;

    move-object/from16 v26, v0

    invoke-virtual {v14}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v4, v7, v1}, Lcom/samsung/cpp/CPPSrvCommunicator;->sendToSrvForLoc(IBLjava/lang/String;)V

    .line 1209
    :cond_2
    return-void

    .line 1197
    :catch_0
    move-exception v11

    .line 1198
    .local v11, "jsonE":Lorg/json/JSONException;
    const-string v26, "CPProvider"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "makeJsonForCellHistory() JSONException : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    new-instance v26, Ljava/lang/RuntimeException;

    move-object/from16 v0, v26

    invoke-direct {v0, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v26

    .line 1200
    .end local v11    # "jsonE":Lorg/json/JSONException;
    :catch_1
    move-exception v5

    .line 1201
    .local v5, "e":Ljava/lang/Exception;
    const-string v26, "CPProvider"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "makeJsonForCellHistory() Exception : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private parseGeoLoc(JI[B)V
    .locals 15
    .param p1, "geoId"    # J
    .param p3, "geoMode"    # I
    .param p4, "bData"    # [B

    .prologue
    .line 1305
    const-string v10, "CPProvider"

    const-string v11, "parseGeoLoc()"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    new-instance v10, Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-direct {v10, v0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v3, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1308
    .local v3, "result":Lorg/json/JSONObject;
    const-string v10, "value"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 1309
    .local v9, "value":Lorg/json/JSONObject;
    const-string v10, "CPProvider"

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    const-string v10, "type"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 1312
    .local v8, "type":I
    const-string v10, "latitude"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 1313
    .local v4, "lat":D
    const-string v10, "longitude"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 1315
    .local v6, "lon":D
    const-string v10, "CPProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "parseGeoLoc() type : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", lat : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", lon : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    const-wide v10, 0x40d3880000000000L    # 20000.0

    mul-double/2addr v10, v4

    double-to-int v10, v10

    const-wide v12, 0x40d3880000000000L    # 20000.0

    mul-double/2addr v12, v6

    double-to-int v11, v12

    move-wide/from16 v0, p1

    long-to-int v12, v0

    move/from16 v0, p3

    invoke-direct {p0, v0, v10, v11, v12}, Lcom/samsung/cpp/CPPProvider;->sendWifiFeedback(IIII)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1321
    .end local v3    # "result":Lorg/json/JSONObject;
    .end local v4    # "lat":D
    .end local v6    # "lon":D
    .end local v8    # "type":I
    .end local v9    # "value":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 1318
    :catch_0
    move-exception v2

    .line 1319
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private native registerGeoFence(IIIIII)I
.end method

.method private reportLocation(IIIIIIIJ)V
    .locals 14
    .param p1, "flags"    # I
    .param p2, "latitude"    # I
    .param p3, "longitude"    # I
    .param p4, "altitude"    # I
    .param p5, "speed"    # I
    .param p6, "bearing"    # I
    .param p7, "accuracy"    # I
    .param p8, "timestamp"    # J

    .prologue
    .line 263
    move/from16 v0, p2

    int-to-double v10, v0

    sget-wide v12, Lcom/samsung/cpp/CPPProvider;->DEGREE_RESOLUTION:D

    div-double v4, v10, v12

    .line 264
    .local v4, "convLatitude":D
    move/from16 v0, p3

    int-to-double v10, v0

    sget-wide v12, Lcom/samsung/cpp/CPPProvider;->DEGREE_RESOLUTION:D

    div-double v6, v10, v12

    .line 265
    .local v6, "convLongitude":D
    move/from16 v0, p7

    int-to-float v2, v0

    .line 267
    .local v2, "convAccuracy":F
    const-string v9, "CPProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ReportLocation by native : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p4

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const-string v9, "CPProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ReportLocation by native : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p5

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p6

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, p8

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    new-instance v8, Landroid/location/Location;

    const-string v9, "CPPLocationProvider"

    invoke-direct {v8, v9}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 271
    .local v8, "location":Landroid/location/Location;
    invoke-virtual {v8, v4, v5}, Landroid/location/Location;->setLatitude(D)V

    .line 272
    invoke-virtual {v8, v6, v7}, Landroid/location/Location;->setLongitude(D)V

    .line 273
    invoke-virtual {v8, v2}, Landroid/location/Location;->setAccuracy(F)V

    .line 274
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Landroid/location/Location;->setTime(J)V

    .line 275
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    .line 276
    invoke-virtual {v8}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 278
    .local v3, "extras":Landroid/os/Bundle;
    if-nez v3, :cond_0

    .line 279
    new-instance v3, Landroid/os/Bundle;

    .end local v3    # "extras":Landroid/os/Bundle;
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 281
    .restart local v3    # "extras":Landroid/os/Bundle;
    :cond_0
    const-string v9, "CPP:source-CpLocation"

    const/4 v10, 0x1

    invoke-virtual {v3, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 282
    invoke-virtual {v8, v3}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 283
    iget-object v9, p0, Lcom/samsung/cpp/CPPProvider;->mHandler:Lcom/samsung/cpp/CPPProvider$CPPEventHandler;

    const/4 v10, 0x5

    invoke-virtual {v9, v10, v8}, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    .line 284
    return-void
.end method

.method private requestCellDBDownload([B)V
    .locals 5
    .param p1, "rawData"    # [B

    .prologue
    .line 930
    const-string v2, "CPProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestCellDBDownload() length : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    const-wide/16 v0, 0x0

    .line 934
    .local v0, "req_id":J
    array-length v2, p1

    if-lez v2, :cond_1

    .line 936
    iget-object v2, p0, Lcom/samsung/cpp/CPPProvider;->mDbAdapter:Lcom/samsung/cpp/CPPDbAdapter;

    invoke-virtual {v2, p1}, Lcom/samsung/cpp/CPPDbAdapter;->insertReq([B)J

    move-result-wide v0

    .line 941
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 942
    invoke-virtual {p0, v0, v1}, Lcom/samsung/cpp/CPPProvider;->sendRequest(J)V

    .line 945
    :cond_0
    return-void

    .line 938
    :cond_1
    const-string v2, "CPProvider"

    const-string v3, "requestCellDBDownload() Data received from Native layer is NULL or Empty "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private native requestCellHistory(BBBII)Z
.end method

.method private native sendBytesToCp([BII)Z
.end method

.method private native sendWifiFeedback(IIII)Z
.end method

.method private native startReportLocation(II)Z
.end method

.method private startWifiScan()V
    .locals 2

    .prologue
    .line 1295
    const-string v0, "CPProvider"

    const-string v1, "startWifiScan()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    iget-boolean v0, p0, Lcom/samsung/cpp/CPPProvider;->mWifiScanning:Z

    if-nez v0, :cond_0

    .line 1297
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/cpp/CPPProvider;->mWifiScanning:Z

    .line 1298
    iget-object v0, p0, Lcom/samsung/cpp/CPPProvider;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/samsung/cpp/CPPProvider;->wifi:Landroid/net/wifi/WifiManager;

    .line 1299
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/cpp/CPPProvider;->wifiResults:Ljava/util/List;

    .line 1300
    iget-object v0, p0, Lcom/samsung/cpp/CPPProvider;->wifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 1302
    :cond_0
    return-void
.end method

.method private native stopReportLocation()Z
.end method

.method private updateServiceState(II)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "currentState"    # I

    .prologue
    .line 472
    const-string v0, "CPProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Slot : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Service State Changed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    if-lez p1, :cond_0

    .line 494
    if-nez p2, :cond_1

    .line 495
    iget v0, p0, Lcom/samsung/cpp/CPPProvider;->mSimSlotConnected:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/samsung/cpp/CPPProvider;->mSimSlotConnected:I

    .line 496
    const-string v0, "CPProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current SIM connected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/cpp/CPPProvider;->mSimSlotConnected:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :cond_0
    :goto_0
    return-void

    .line 498
    :cond_1
    iget v0, p0, Lcom/samsung/cpp/CPPProvider;->mSimSlotConnected:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/cpp/CPPProvider;->mSimSlotConnected:I

    .line 499
    const-string v0, "CPProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current SIM connected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/cpp/CPPProvider;->mSimSlotConnected:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public deInitialiseCPLocationProvider()V
    .locals 3

    .prologue
    .line 182
    const-string v0, "CPProvider"

    const-string v1, "deInitialiseCPLocationProvider.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-boolean v0, p0, Lcom/samsung/cpp/CPPProvider;->mReportLocationStatus:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/cpp/CPPProvider;->flagEnableCLM:Z

    if-eqz v0, :cond_1

    .line 184
    :cond_0
    const-string v0, "CPProvider"

    const-string v1, "disable(): called before cp_stop so calling cp_stop first"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v0, p0, Lcom/samsung/cpp/CPPProvider;->mHandler:Lcom/samsung/cpp/CPPProvider$CPPEventHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->sendEmptyMessage(I)Z

    .line 186
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/cpp/CPPProvider;->mReportLocationStatus:Z

    .line 188
    :cond_1
    invoke-direct {p0}, Lcom/samsung/cpp/CPPProvider;->deInitSamsungLocationEngine()V

    .line 189
    iget-object v0, p0, Lcom/samsung/cpp/CPPProvider;->mDbAdapter:Lcom/samsung/cpp/CPPDbAdapter;

    invoke-virtual {v0}, Lcom/samsung/cpp/CPPDbAdapter;->close()V

    .line 190
    iget-object v0, p0, Lcom/samsung/cpp/CPPProvider;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/cpp/CPPProvider;->mCPPInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 192
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/samsung/cpp/CPPProvider;->filter:Landroid/content/IntentFilter;

    .line 193
    iget-object v0, p0, Lcom/samsung/cpp/CPPProvider;->filter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_CLM_TT_START_BY_APP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/samsung/cpp/CPPProvider;->filter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_CLM_TT_STOP_BY_APP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/samsung/cpp/CPPProvider;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/cpp/CPPProvider;->mCPPInfoReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/cpp/CPPProvider;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 197
    return-void
.end method

.method public deRegisterCPGeoFence(I)V
    .locals 3
    .param p1, "clientID"    # I

    .prologue
    .line 252
    const-string v1, "CPProvider"

    const-string v2, "deRegisterCPGeoFence().."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v1, p0, Lcom/samsung/cpp/CPPProvider;->mHandler:Lcom/samsung/cpp/CPPProvider$CPPEventHandler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 254
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 255
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 256
    return-void
.end method

.method public initialiseCPLocationProvider()V
    .locals 3

    .prologue
    .line 144
    const-string v0, "CPProvider"

    const-string v1, "initialiseCPLocationProvider.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-direct {p0}, Lcom/samsung/cpp/CPPProvider;->loadNativeLibrary()V

    .line 148
    invoke-direct {p0}, Lcom/samsung/cpp/CPPProvider;->createJNIObject()V

    .line 151
    new-instance v0, Lcom/samsung/cpp/CPPSrvCommunicator;

    iget-object v1, p0, Lcom/samsung/cpp/CPPProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/cpp/CPPProvider;->mHandler:Lcom/samsung/cpp/CPPProvider$CPPEventHandler;

    invoke-direct {v0, v1, v2}, Lcom/samsung/cpp/CPPSrvCommunicator;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/cpp/CPPProvider;->mSrvComm:Lcom/samsung/cpp/CPPSrvCommunicator;

    .line 152
    new-instance v0, Lcom/samsung/cpp/CPPPolicyHandler;

    iget-object v1, p0, Lcom/samsung/cpp/CPPProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/cpp/CPPProvider;->mHandler:Lcom/samsung/cpp/CPPProvider$CPPEventHandler;

    invoke-direct {v0, v1, v2}, Lcom/samsung/cpp/CPPPolicyHandler;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/cpp/CPPProvider;->mPolicyHandler:Lcom/samsung/cpp/CPPPolicyHandler;

    .line 153
    new-instance v0, Lcom/samsung/cpp/CPPDbAdapter;

    iget-object v1, p0, Lcom/samsung/cpp/CPPProvider;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/cpp/CPPDbAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/cpp/CPPProvider;->mDbAdapter:Lcom/samsung/cpp/CPPDbAdapter;

    .line 154
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v0

    iput v0, p0, Lcom/samsung/cpp/CPPProvider;->mSimSlotCount:I

    .line 157
    iget-object v0, p0, Lcom/samsung/cpp/CPPProvider;->mDbAdapter:Lcom/samsung/cpp/CPPDbAdapter;

    invoke-virtual {v0}, Lcom/samsung/cpp/CPPDbAdapter;->open()Lcom/samsung/cpp/CPPDbAdapter;

    .line 160
    invoke-direct {p0}, Lcom/samsung/cpp/CPPProvider;->initSamsungLocationEngine()V

    .line 163
    iget-object v0, p0, Lcom/samsung/cpp/CPPProvider;->mPolicyHandler:Lcom/samsung/cpp/CPPPolicyHandler;

    invoke-virtual {v0}, Lcom/samsung/cpp/CPPPolicyHandler;->init()V

    .line 166
    iget-object v0, p0, Lcom/samsung/cpp/CPPProvider;->filter:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/samsung/cpp/CPPProvider;->filter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/samsung/cpp/CPPProvider;->filter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/samsung/cpp/CPPProvider;->filter:Landroid/content/IntentFilter;

    const-string v1, "sec.intent.action.UPDATE_POLICY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/samsung/cpp/CPPProvider;->filter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/samsung/cpp/CPPProvider;->filter:Landroid/content/IntentFilter;

    const-string v1, "android.settings.DIAGNOSTIC_INFO_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/samsung/cpp/CPPProvider;->filter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/samsung/cpp/CPPProvider;->filter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/samsung/cpp/CPPProvider;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/cpp/CPPProvider;->mCPPInfoReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/cpp/CPPProvider;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 175
    return-void
.end method

.method public insertGeoFencePOI(Lcom/samsung/cpp/CPPositioningService$RequestCPGeoFenceRegister;)I
    .locals 2
    .param p1, "input"    # Lcom/samsung/cpp/CPPositioningService$RequestCPGeoFenceRegister;

    .prologue
    .line 866
    iget-object v1, p0, Lcom/samsung/cpp/CPPProvider;->mDbAdapter:Lcom/samsung/cpp/CPPDbAdapter;

    invoke-virtual {v1, p1}, Lcom/samsung/cpp/CPPDbAdapter;->insertGeoReq(Lcom/samsung/cpp/CPPositioningService$RequestCPGeoFenceRegister;)I

    move-result v0

    .line 868
    .local v0, "mKey":I
    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/samsung/cpp/CPPProvider;->flagEnableCPP:Z

    return v0
.end method

.method public makeJsonForDbRequest(Landroid/database/Cursor;I)Ljava/lang/String;
    .locals 44
    .param p1, "mCursor"    # Landroid/database/Cursor;
    .param p2, "mode"    # I

    .prologue
    .line 1031
    const/4 v15, 0x0

    .line 1032
    .local v15, "existCount":I
    const/16 v29, 0x0

    .line 1033
    .local v29, "numPatch":I
    new-instance v24, Lorg/json/JSONObject;

    invoke-direct/range {v24 .. v24}, Lorg/json/JSONObject;-><init>()V

    .line 1034
    .local v24, "mJson":Lorg/json/JSONObject;
    new-instance v25, Lorg/json/JSONArray;

    invoke-direct/range {v25 .. v25}, Lorg/json/JSONArray;-><init>()V

    .line 1039
    .local v25, "mJsonPatches":Lorg/json/JSONArray;
    :try_start_0
    const-string v4, "_req_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 1040
    .local v5, "reqId":J
    const-string v4, "RAT"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1041
    .local v7, "rat":I
    const-string v4, "db_req_sn"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 1042
    .local v8, "sN":I
    const-string v4, "sN"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1043
    const-string v4, "req_type"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    .line 1044
    .local v36, "reqType":I
    const-string v4, "d0"

    move-object/from16 v0, v24

    move/from16 v1, v36

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1045
    const-string v4, "d1"

    const-string v41, "db_type"

    move-object/from16 v0, p1

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v41

    move-object/from16 v0, p1

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v41

    move-object/from16 v0, v24

    move/from16 v1, v41

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1046
    const-string v4, "d2"

    const-string v41, "patch_class"

    move-object/from16 v0, p1

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v41

    move-object/from16 v0, p1

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v41

    move-object/from16 v0, v24

    move/from16 v1, v41

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1047
    const-string v4, "mcc"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 1048
    .local v26, "mcc":I
    const-string v4, "mnc"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 1049
    .local v27, "mnc":I
    const-string v4, "d3"

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1050
    const-string v4, "d4"

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1051
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/cpp/CPPProvider;->mPolicyHandler:Lcom/samsung/cpp/CPPPolicyHandler;

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Lcom/samsung/cpp/CPPPolicyHandler;->setPLMN(II)Ljava/lang/String;

    move-result-object v35

    .line 1052
    .local v35, "plmn":Ljava/lang/String;
    const-string v4, "tac"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v37

    .line 1053
    .local v37, "tac":I
    const-string v4, "d5"

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1054
    const-string v4, "gci"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 1056
    .local v20, "gci":J
    const/4 v4, 0x1

    move/from16 v0, p2

    if-ne v4, v0, :cond_0

    const-wide/16 v42, 0x0

    cmp-long v4, v20, v42

    if-lez v4, :cond_0

    .line 1057
    const-string v4, "pci"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v34

    .line 1058
    .local v34, "pci":I
    const-string v4, "fcn"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 1060
    .local v18, "fcn":I
    const-string v4, "d6"

    move-object/from16 v0, v24

    move-wide/from16 v1, v20

    invoke-virtual {v0, v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1061
    const-string v4, "d16"

    move-object/from16 v0, v24

    move/from16 v1, v34

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1062
    const-string v4, "d17"

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1066
    .end local v18    # "fcn":I
    .end local v34    # "pci":I
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/samsung/cpp/CPPProvider;->getUtc()J

    move-result-wide v38

    .line 1068
    .local v38, "utc":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/cpp/CPPProvider;->mPolicyHandler:Lcom/samsung/cpp/CPPPolicyHandler;

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Lcom/samsung/cpp/CPPPolicyHandler;->getPLMN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, v37

    move-wide/from16 v2, v38

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/cpp/CPPProvider;->getEncKey(IJLjava/lang/String;)J

    move-result-wide v16

    .line 1069
    .local v16, "encKey":J
    const-string v4, "CPProvider"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "makeJsonForDbRequest() : encKey = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    const-wide/16 v42, 0x0

    cmp-long v4, v16, v42

    if-gez v4, :cond_2

    .line 1071
    const-string v4, "CPProvider"

    const-string v41, "makeJsonForDbRequest() : encKey < 0 --> JSON return null + sendMessage(MSG_UPDATE_POLICY)"

    move-object/from16 v0, v41

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    const/4 v4, 0x1

    sput-boolean v4, Lcom/samsung/cpp/CPPPolicyHandler;->mInvalidPolicyID:Z

    .line 1076
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v28

    .line 1077
    .local v28, "msg":Landroid/os/Message;
    const/4 v4, 0x7

    move-object/from16 v0, v28

    iput v4, v0, Landroid/os/Message;->what:I

    .line 1078
    const/4 v4, 0x1

    move-object/from16 v0, v28

    iput v4, v0, Landroid/os/Message;->arg1:I

    .line 1079
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/cpp/CPPProvider;->mHandler:Lcom/samsung/cpp/CPPProvider$CPPEventHandler;

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1082
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/cpp/CPPProvider;->mDbAdapter:Lcom/samsung/cpp/CPPDbAdapter;

    invoke-virtual {v4, v5, v6}, Lcom/samsung/cpp/CPPDbAdapter;->deleteReqById(J)V

    .line 1084
    const/4 v4, 0x0

    .line 1147
    .end local v28    # "msg":Landroid/os/Message;
    :cond_1
    :goto_0
    return-object v4

    .line 1086
    :cond_2
    move-object/from16 v0, p0

    move-wide/from16 v1, v38

    invoke-direct {v0, v1, v2}, Lcom/samsung/cpp/CPPProvider;->getUtcKey(J)I

    move-result v40

    .line 1087
    .local v40, "utcKey":I
    const-string v4, "d9"

    move-object/from16 v0, v24

    move-wide/from16 v1, v16

    invoke-virtual {v0, v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1089
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/cpp/CPPProvider;->mDbAdapter:Lcom/samsung/cpp/CPPDbAdapter;

    iget-object v4, v4, Lcom/samsung/cpp/CPPDbAdapter;->arrayUtc:Landroid/util/LongSparseArray;

    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v4, v5, v6, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1090
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/cpp/CPPProvider;->mDbAdapter:Lcom/samsung/cpp/CPPDbAdapter;

    iget-object v4, v4, Lcom/samsung/cpp/CPPDbAdapter;->arrayUtcKey:Landroid/util/LongSparseArray;

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v4, v5, v6, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1092
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/cpp/CPPProvider;->mDbAdapter:Lcom/samsung/cpp/CPPDbAdapter;

    invoke-virtual {v4, v5, v6}, Lcom/samsung/cpp/CPPDbAdapter;->getPatch(J)Landroid/database/Cursor;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v23

    .line 1095
    .local v23, "mC1":Landroid/database/Cursor;
    if-eqz v23, :cond_7

    :try_start_1
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1096
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->getCount()I

    move-result v29

    .line 1097
    const-string v4, "CPProvider"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "makeJsonForDbRequest() reqId : "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, ", numPatch = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    if-lez v29, :cond_7

    .line 1101
    const/16 v32, 0x0

    .line 1103
    .local v32, "patchCount":I
    const/16 v19, 0x0

    .local v19, "i":I
    move/from16 v33, v32

    .end local v32    # "patchCount":I
    .local v33, "patchCount":I
    :goto_1
    move/from16 v0, v19

    move/from16 v1, v29

    if-ge v0, v1, :cond_6

    .line 1104
    const-string v4, "latIndex"

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1105
    .local v9, "latIndex":I
    const-string v4, "lonIndex"

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 1106
    .local v10, "lonIndex":I
    const-string v4, "patch_fcn"

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 1107
    .local v11, "patch_fcn":I
    const-string v4, "version"

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 1109
    .local v12, "version":J
    const/4 v4, 0x1

    move/from16 v0, p2

    if-eq v4, v0, :cond_3

    const/4 v4, 0x3

    move/from16 v0, p2

    if-ne v4, v0, :cond_4

    .line 1110
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/cpp/CPPProvider;->mDbAdapter:Lcom/samsung/cpp/CPPDbAdapter;

    invoke-virtual/range {v4 .. v13}, Lcom/samsung/cpp/CPPDbAdapter;->checkExistedPatchResp(JIIIIIJ)J

    move-result-wide v30

    .line 1114
    .local v30, "newVersion":J
    :goto_2
    const-wide/16 v42, 0x0

    cmp-long v4, v30, v42

    if-lez v4, :cond_5

    .line 1116
    const-string v4, "CPProvider"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "makeJsonForDbRequest() patch["

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "] is NOT EXIST in DB, version : "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, ", latIndex : "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, ", lonIndex : "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, ", patch_fcn : "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    .line 1118
    .local v14, "_mJsonPatch":Lorg/json/JSONObject;
    const-string v4, "d11"

    move-wide/from16 v0, v30

    invoke-virtual {v14, v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1119
    const-string v4, "d12"

    xor-int v41, v9, v40

    move/from16 v0, v41

    invoke-virtual {v14, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1120
    const-string v4, "d13"

    xor-int v41, v10, v40

    move/from16 v0, v41

    invoke-virtual {v14, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1121
    const-string v4, "d14"

    invoke-virtual {v14, v4, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1122
    add-int/lit8 v32, v33, 0x1

    .end local v33    # "patchCount":I
    .restart local v32    # "patchCount":I
    move-object/from16 v0, v25

    move/from16 v1, v33

    invoke-virtual {v0, v1, v14}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 1133
    .end local v14    # "_mJsonPatch":Lorg/json/JSONObject;
    :goto_3
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToNext()Z

    .line 1103
    add-int/lit8 v19, v19, 0x1

    move/from16 v33, v32

    .end local v32    # "patchCount":I
    .restart local v33    # "patchCount":I
    goto/16 :goto_1

    .line 1112
    .end local v30    # "newVersion":J
    :cond_4
    move-wide/from16 v30, v12

    .restart local v30    # "newVersion":J
    goto/16 :goto_2

    .line 1124
    :cond_5
    add-int/lit8 v15, v15, 0x1

    .line 1125
    const-string v4, "CPProvider"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "makeJsonForDbRequest() patch["

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "] is EXIST in DB, version : "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, ", latIndex : "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, ", lonIndex : "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, ", patch_fcn : "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    move/from16 v0, v29

    if-ne v0, v15, :cond_a

    .line 1128
    const-string v4, "CPProvider"

    const-string v41, "makeJsonForDbRequest() Every Patches are in local DB"

    move-object/from16 v0, v41

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 1130
    const-string v4, "exist"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1139
    if-eqz v23, :cond_1

    .line 1140
    :try_start_2
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 1142
    .end local v5    # "reqId":J
    .end local v7    # "rat":I
    .end local v8    # "sN":I
    .end local v9    # "latIndex":I
    .end local v10    # "lonIndex":I
    .end local v11    # "patch_fcn":I
    .end local v12    # "version":J
    .end local v16    # "encKey":J
    .end local v19    # "i":I
    .end local v20    # "gci":J
    .end local v23    # "mC1":Landroid/database/Cursor;
    .end local v26    # "mcc":I
    .end local v27    # "mnc":I
    .end local v30    # "newVersion":J
    .end local v33    # "patchCount":I
    .end local v35    # "plmn":Ljava/lang/String;
    .end local v36    # "reqType":I
    .end local v37    # "tac":I
    .end local v38    # "utc":J
    .end local v40    # "utcKey":I
    :catch_0
    move-exception v22

    .line 1143
    .local v22, "jsonE":Lorg/json/JSONException;
    const-string v4, "CPProvider"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "makeJsonForDbRequest() JSONException : "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    new-instance v4, Ljava/lang/RuntimeException;

    move-object/from16 v0, v22

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 1135
    .end local v22    # "jsonE":Lorg/json/JSONException;
    .restart local v5    # "reqId":J
    .restart local v7    # "rat":I
    .restart local v8    # "sN":I
    .restart local v16    # "encKey":J
    .restart local v19    # "i":I
    .restart local v20    # "gci":J
    .restart local v23    # "mC1":Landroid/database/Cursor;
    .restart local v26    # "mcc":I
    .restart local v27    # "mnc":I
    .restart local v33    # "patchCount":I
    .restart local v35    # "plmn":Ljava/lang/String;
    .restart local v36    # "reqType":I
    .restart local v37    # "tac":I
    .restart local v38    # "utc":J
    .restart local v40    # "utcKey":I
    :cond_6
    :try_start_3
    const-string v4, "d10"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1139
    .end local v19    # "i":I
    .end local v33    # "patchCount":I
    :cond_7
    if-eqz v23, :cond_8

    .line 1140
    :try_start_4
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1146
    :cond_8
    const-string v4, "CPProvider"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "makeJsonForDbRequest() FINAL JSON : "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v24 .. v24}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    invoke-virtual/range {v24 .. v24}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 1139
    :catchall_0
    move-exception v4

    if-eqz v23, :cond_9

    .line 1140
    :try_start_5
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v4
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    .restart local v9    # "latIndex":I
    .restart local v10    # "lonIndex":I
    .restart local v11    # "patch_fcn":I
    .restart local v12    # "version":J
    .restart local v19    # "i":I
    .restart local v30    # "newVersion":J
    .restart local v33    # "patchCount":I
    :cond_a
    move/from16 v32, v33

    .end local v33    # "patchCount":I
    .restart local v32    # "patchCount":I
    goto/16 :goto_3
.end method

.method public registerCPGeoFence(Lcom/samsung/cpp/CPPositioningService$RequestCPGeoFenceRegister;)V
    .locals 4
    .param p1, "input"    # Lcom/samsung/cpp/CPPositioningService$RequestCPGeoFenceRegister;

    .prologue
    .line 243
    const-string v0, "CPProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerCPGeoFence() latitude : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/samsung/cpp/CPPositioningService$RequestCPGeoFenceRegister;->mLatitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", longitude : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/samsung/cpp/CPPositioningService$RequestCPGeoFenceRegister;->mLongitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", geoMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/samsung/cpp/CPPositioningService$RequestCPGeoFenceRegister;->mGeoMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", radius : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/samsung/cpp/CPPositioningService$RequestCPGeoFenceRegister;->mRadius:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", period : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/samsung/cpp/CPPositioningService$RequestCPGeoFenceRegister;->mPeriod:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v0, p0, Lcom/samsung/cpp/CPPProvider;->mHandler:Lcom/samsung/cpp/CPPProvider$CPPEventHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1}, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 246
    return-void
.end method

.method public requestCPLocationUpdates(Lcom/samsung/cpp/CPPositioningService$RequestLocationInput;)V
    .locals 4
    .param p1, "input"    # Lcom/samsung/cpp/CPPositioningService$RequestLocationInput;

    .prologue
    .line 207
    const-string v0, "CPProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestCPLocationUpdate:  Interval is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/samsung/cpp/CPPositioningService$RequestLocationInput;->mInterval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "msec / Displacement is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/samsung/cpp/CPPositioningService$RequestLocationInput;->mMinDist:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mtrs / mode :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/samsung/cpp/CPPositioningService$RequestLocationInput;->mMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v0, p1, Lcom/samsung/cpp/CPPositioningService$RequestLocationInput;->mCppLocListener:Lcom/samsung/cpp/ICPPLocationListener;

    if-nez v0, :cond_0

    .line 210
    const-string v0, "CPProvider"

    const-string v1, "parameters are not valid.Listener is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/cpp/CPPProvider;->mReportLocationStatus:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/samsung/cpp/CPPProvider;->mCurrentReqMode:I

    iget v1, p1, Lcom/samsung/cpp/CPPositioningService$RequestLocationInput;->mMode:I

    if-eq v0, v1, :cond_1

    .line 213
    const-string v0, "CPProvider"

    const-string v1, "CP Location session all ready running"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :goto_0
    return-void

    .line 216
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/cpp/CPPProvider;->mReportLocationStatus:Z

    .line 218
    iget-object v0, p1, Lcom/samsung/cpp/CPPositioningService$RequestLocationInput;->mCppLocListener:Lcom/samsung/cpp/ICPPLocationListener;

    iput-object v0, p0, Lcom/samsung/cpp/CPPProvider;->mCpLocListener:Lcom/samsung/cpp/ICPPLocationListener;

    .line 219
    iget v0, p1, Lcom/samsung/cpp/CPPositioningService$RequestLocationInput;->mMode:I

    iput v0, p0, Lcom/samsung/cpp/CPPProvider;->mCurrentReqMode:I

    .line 221
    iget-object v0, p0, Lcom/samsung/cpp/CPPProvider;->mHandler:Lcom/samsung/cpp/CPPProvider$CPPEventHandler;

    const/4 v1, 0x3

    iget v2, p1, Lcom/samsung/cpp/CPPositioningService$RequestLocationInput;->mInterval:I

    iget v3, p1, Lcom/samsung/cpp/CPPositioningService$RequestLocationInput;->mMinDist:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public sendLargeRequest()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 998
    iget-object v1, p0, Lcom/samsung/cpp/CPPProvider;->mDbAdapter:Lcom/samsung/cpp/CPPDbAdapter;

    const-string v2, "MODE"

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Lcom/samsung/cpp/CPPDbAdapter;->getReq(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1001
    .local v9, "mC1":Landroid/database/Cursor;
    :try_start_0
    sget-boolean v1, Lcom/samsung/cpp/CPPProvider;->mWifiConnected:Z

    if-eqz v1, :cond_0

    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1002
    const-string v1, "CPProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendLargeRequest() Large Scale Request Count in Req DB : "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    const-string v1, "_req_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1005
    .local v4, "req_id":J
    const-string v1, "RAT"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 1006
    .local v6, "rat":I
    const-string v1, "is_sending"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1007
    .local v0, "isSending":I
    const-string v1, "db_type"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 1008
    .local v8, "dbType":I
    const-string v1, "CPProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendLargeRequest() Large Scale req_id : "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    if-nez v0, :cond_0

    .line 1011
    const/4 v1, 0x0

    invoke-virtual {p0, v9, v1}, Lcom/samsung/cpp/CPPProvider;->makeJsonForDbRequest(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v3

    .line 1013
    .local v3, "jsonString":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1014
    const-string v1, "exist"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1015
    const-string v1, "CPProvider"

    const-string v2, "sendLargeRequest() Send Large Request to Server"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    iget-object v1, p0, Lcom/samsung/cpp/CPPProvider;->mDbAdapter:Lcom/samsung/cpp/CPPDbAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v4, v5, v2}, Lcom/samsung/cpp/CPPDbAdapter;->updateSending(JZ)V

    .line 1017
    iget-object v1, p0, Lcom/samsung/cpp/CPPProvider;->mSrvComm:Lcom/samsung/cpp/CPPSrvCommunicator;

    const/16 v2, 0x4e20

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/cpp/CPPSrvCommunicator;->sendToSrv(ILjava/lang/String;JIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1023
    .end local v0    # "isSending":I
    .end local v3    # "jsonString":Ljava/lang/String;
    .end local v4    # "req_id":J
    .end local v6    # "rat":I
    .end local v8    # "dbType":I
    :cond_0
    if-eqz v9, :cond_1

    .line 1024
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1026
    :cond_1
    return-void

    .line 1023
    :catchall_0
    move-exception v1

    if-eqz v9, :cond_2

    .line 1024
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method public sendRequest(J)V
    .locals 11
    .param p1, "reqId"    # J

    .prologue
    const/4 v10, 0x3

    const/4 v5, 0x1

    .line 960
    iget-object v1, p0, Lcom/samsung/cpp/CPPProvider;->mDbAdapter:Lcom/samsung/cpp/CPPDbAdapter;

    const-string v2, "_req_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/samsung/cpp/CPPDbAdapter;->getReq(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 963
    .local v9, "mC1":Landroid/database/Cursor;
    if-eqz v9, :cond_3

    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 964
    const-string v1, "CPProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendRequest() Request Count in Req DB : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    const-string v1, "RAT"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 967
    .local v6, "rat":I
    const-string v1, "MODE"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 968
    .local v7, "mode":I
    const-string v1, "is_sending"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 969
    .local v0, "isSending":I
    const-string v1, "db_type"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 970
    .local v8, "dbType":I
    const-string v1, "CPProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendRequest() reqId : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    if-nez v0, :cond_3

    .line 973
    if-nez v7, :cond_0

    sget-boolean v1, Lcom/samsung/cpp/CPPProvider;->mWifiConnected:Z

    if-eqz v1, :cond_3

    .line 974
    :cond_0
    invoke-virtual {p0, v9, v7}, Lcom/samsung/cpp/CPPProvider;->makeJsonForDbRequest(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v3

    .line 976
    .local v3, "jsonString":Ljava/lang/String;
    if-eq v5, v7, :cond_1

    if-ne v10, v7, :cond_2

    .line 977
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/cpp/CPPProvider;->sendRespToCp(J)V

    .line 979
    :cond_2
    if-eqz v3, :cond_3

    .line 980
    if-eq v10, v7, :cond_5

    const-string v1, "exist"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 981
    const-string v1, "CPProvider"

    const-string v2, "sendRequest() Not exist in local DB"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    iget-object v1, p0, Lcom/samsung/cpp/CPPProvider;->mDbAdapter:Lcom/samsung/cpp/CPPDbAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, p2, v2}, Lcom/samsung/cpp/CPPDbAdapter;->updateSending(JZ)V

    .line 983
    iget-object v1, p0, Lcom/samsung/cpp/CPPProvider;->mSrvComm:Lcom/samsung/cpp/CPPSrvCommunicator;

    const/16 v2, 0x4e20

    move-wide v4, p1

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/cpp/CPPSrvCommunicator;->sendToSrv(ILjava/lang/String;JIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 992
    .end local v0    # "isSending":I
    .end local v3    # "jsonString":Ljava/lang/String;
    .end local v6    # "rat":I
    .end local v7    # "mode":I
    .end local v8    # "dbType":I
    :cond_3
    :goto_0
    if-eqz v9, :cond_4

    .line 993
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 995
    :cond_4
    return-void

    .line 985
    .restart local v0    # "isSending":I
    .restart local v3    # "jsonString":Ljava/lang/String;
    .restart local v6    # "rat":I
    .restart local v7    # "mode":I
    .restart local v8    # "dbType":I
    :cond_5
    :try_start_1
    iget-object v1, p0, Lcom/samsung/cpp/CPPProvider;->mDbAdapter:Lcom/samsung/cpp/CPPDbAdapter;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/cpp/CPPDbAdapter;->deleteReqById(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 992
    .end local v0    # "isSending":I
    .end local v3    # "jsonString":Ljava/lang/String;
    .end local v6    # "rat":I
    .end local v7    # "mode":I
    .end local v8    # "dbType":I
    :catchall_0
    move-exception v1

    if-eqz v9, :cond_6

    .line 993
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v1
.end method

.method public sendRespToCp(J)V
    .locals 5
    .param p1, "req_id"    # J

    .prologue
    .line 1216
    const-string v2, "CPProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendRespToCp() req_id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    :try_start_0
    iget-object v2, p0, Lcom/samsung/cpp/CPPProvider;->mDbAdapter:Lcom/samsung/cpp/CPPDbAdapter;

    invoke-virtual {v2, p1, p2}, Lcom/samsung/cpp/CPPDbAdapter;->getRespForCp(J)[B

    move-result-object v1

    .line 1219
    .local v1, "result":[B
    if-eqz v1, :cond_0

    .line 1220
    const-string v2, "CPProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendRespToCp() result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", result.length : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    array-length v2, v1

    const/4 v3, 0x2

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/cpp/CPPProvider;->sendBytesToCp([BII)Z

    .line 1223
    iget-object v2, p0, Lcom/samsung/cpp/CPPProvider;->mDbAdapter:Lcom/samsung/cpp/CPPDbAdapter;

    invoke-virtual {v2, p1, p2}, Lcom/samsung/cpp/CPPDbAdapter;->deleteReqId(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1229
    .end local v1    # "result":[B
    :cond_0
    :goto_0
    return-void

    .line 1225
    :catch_0
    move-exception v0

    .line 1227
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public sendRespToCpDirect([BJI)V
    .locals 8
    .param p1, "result"    # [B
    .param p2, "req_id"    # J
    .param p4, "rat"    # I

    .prologue
    .line 1232
    const-string v4, "CPProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendRespToCpDirect() req_id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    :try_start_0
    const-string v4, "CPProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendRespToCpDirect() result length : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    const/16 v4, 0x8

    new-array v2, v4, [B

    fill-array-data v2, :array_0

    .line 1236
    .local v2, "init":[B
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1237
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1238
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1239
    iget-object v4, p0, Lcom/samsung/cpp/CPPProvider;->mDbAdapter:Lcom/samsung/cpp/CPPDbAdapter;

    iget-object v4, v4, Lcom/samsung/cpp/CPPDbAdapter;->arrayUtcKey:Landroid/util/LongSparseArray;

    invoke-virtual {v4, p2, p3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1240
    .local v3, "utcKey":Ljava/lang/Integer;
    if-eqz v3, :cond_0

    .line 1241
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/samsung/cpp/CPPDbAdapter;->intToReverseByte(I)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1242
    int-to-byte v4, p4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1243
    const/4 v4, 0x0

    array-length v5, p1

    invoke-static {p1, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1244
    const-string v4, "CPProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendRespToCpDirect() - bos length : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    array-length v5, v5

    const/4 v6, 0x2

    invoke-direct {p0, v4, v5, v6}, Lcom/samsung/cpp/CPPProvider;->sendBytesToCp([BII)Z

    .line 1246
    iget-object v4, p0, Lcom/samsung/cpp/CPPProvider;->mDbAdapter:Lcom/samsung/cpp/CPPDbAdapter;

    invoke-virtual {v4, p2, p3}, Lcom/samsung/cpp/CPPDbAdapter;->deleteReqId(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1251
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "init":[B
    .end local v3    # "utcKey":Ljava/lang/Integer;
    :cond_0
    :goto_0
    return-void

    .line 1248
    :catch_0
    move-exception v1

    .line 1249
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1235
    nop

    :array_0
    .array-data 1
        0x22t
        0x56t
        0x61t
        0x6ct
        0x75t
        0x65t
        0x22t
        0x3at
    .end array-data
.end method

.method public stopCPLocationUpdates(Lcom/samsung/cpp/ICPPLocationListener;)V
    .locals 2
    .param p1, "cppLocListener"    # Lcom/samsung/cpp/ICPPLocationListener;

    .prologue
    .line 229
    const-string v0, "CPProvider"

    const-string v1, "stopCPLocationUpdates().."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-boolean v0, p0, Lcom/samsung/cpp/CPPProvider;->mReportLocationStatus:Z

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/samsung/cpp/CPPProvider;->mHandler:Lcom/samsung/cpp/CPPProvider$CPPEventHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 232
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/cpp/CPPProvider;->mReportLocationStatus:Z

    .line 233
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/cpp/CPPProvider;->mCpLocListener:Lcom/samsung/cpp/ICPPLocationListener;

    .line 237
    :goto_0
    return-void

    .line 235
    :cond_0
    const-string v0, "CPProvider"

    const-string v1, "stopCPLocationUpdates()- No Location updates ongoing."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

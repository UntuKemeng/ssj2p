.class public Lcom/android/server/enterprise/device/DeviceInfo;
.super Landroid/app/enterprise/IDeviceInfo$Stub;
.source "DeviceInfo.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static final ACTION_MSG_RECEIVED:Ljava/lang/String; = "com.samsung.mms.RECEIVED_MSG"

.field private static final ACTION_MSG_SENT:Ljava/lang/String; = "com.samsung.mms.SENT_MSG"

.field private static final ACTION_SYSSCOPESTATUS:Ljava/lang/String; = "com.sec.intent.action.SYSSCOPESTATUS"

.field private static final DATA_USAGE_MILISECS_HIGH:I = 0x3c

.field private static final DATA_USAGE_MILISECS_LOW:I = 0x1

.field private static final DATA_USAGE_TO_STORAGE_COUNTER:I = 0xa

.field private static final EVENT_SIGNAL_STRENGTH_CHANGED:I = 0xc8

.field private static final NOK:I = 0x1

.field private static final OK:I = 0x1

.field private static final PRODUCTCODE_LTN_MOVISTAR_LIST:Ljava/lang/String; = "TMM/UFN/UFU/COB/CHT/SAM/VMT/TGU/SAL/NBS/PBS/EBE/CRM"

.field private static final SALESCODE_CHINA_LIST:Ljava/lang/String; = "CTC/CHN/CHM/CHU/CHC"

.field private static final SALESCODE_DCM:Ljava/lang/String; = "DCM"

.field private static final SALESCODE_HKTW_LIST:Ljava/lang/String; = "TGY/BRI"

.field private static final SALESCODE_KOR_ALL_LIST:Ljava/lang/String; = "SKT/SKC/SKO/KT/KTC/KTO/LG/LUC/LUO/KOO"

.field private static final SALESCODE_KOR_ANY_ALL_LIST:Ljava/lang/String; = "ANY/KOO"

.field private static final SALESCODE_KOR_KTT_DEFAULT:Ljava/lang/String; = "KT"

.field private static final SALESCODE_KOR_KTT_UNUSED_LIST:Ljava/lang/String; = "MKT/KTT"

.field private static final SALESCODE_KOR_LGT_ALL_LIST:Ljava/lang/String; = "LG/LUC/LUO"

.field private static final SALESCODE_KOR_LGT_DEFAULT:Ljava/lang/String; = "LG"

.field private static final SALESCODE_KOR_LGT_UNUSED_LIST:Ljava/lang/String; = "MLG/LGT"

.field private static final SALESCODE_KOR_SKT_ALL_LIST:Ljava/lang/String; = "SKT/SKC/SKO"

.field private static final SALESCODE_KOR_SKT_DEFAULT:Ljava/lang/String; = "SKT"

.field private static final SALESCODE_KOR_SKT_UNUSED_LIST:Ljava/lang/String; = "MSK"

.field private static final SALESCODE_LTN_OPEN:Ljava/lang/String; = "TFG"

.field private static final SALESCODE_NA_SPR_DEFAULT:Ljava/lang/String; = "SPR"

.field private static final SALESCODE_NA_SPR_LIST:Ljava/lang/String; = "BST/SPR/VMU/XAS"

.field private static final SALESCODE_NA_TMK:Ljava/lang/String; = "TMK"

.field private static final SALESCODE_NA_TMO:Ljava/lang/String; = "TMB"

.field private static final SALESCODE_SBM:Ljava/lang/String; = "SBM"

.field private static final TAG:Ljava/lang/String; = "DeviceInfo"

.field public static final UNKNOWN:Ljava/lang/String; = "unknown"

.field private static mRooting:I

.field private static mSignalStrength:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataCallConnected:Z

.field private mDataCallLogLastNetType:Ljava/lang/String;

.field private mDataCallLogLastStatus:Ljava/lang/String;

.field private mDataCallLogLastTime:J

.field private mDataCallLogLastValue:J

.field mDataConnectionStateChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mDataLogEnabled:Z

.field mDataStatisticsReceiver:Landroid/content/BroadcastReceiver;

.field private mDataStatisticsUpdateRun:Ljava/lang/Runnable;

.field private mDataStatsCounter:I

.field private mDataStatsEnabled:Z

.field private mDataUsageEventsHandler:Landroid/os/Handler;

.field private mDataUsageTimer:I

.field private mDataUsageTimerActivated:Z

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mHandler:Landroid/os/Handler;

.field private mLastUpdateMobileRx:J

.field private mLastUpdateMobileTx:J

.field private mLastUpdateWifiRx:J

.field private mLastUpdateWifiTx:J

.field mMessagingReceiver:Landroid/content/BroadcastReceiver;

.field private mPhoneStateReceiver:Ljava/lang/Object;

.field private mStorageMobileRx:J

.field private mStorageMobileTx:J

.field private mStorageWifiRx:J

.field private mStorageWifiTx:J

.field mSysScopeReceiver:Landroid/content/BroadcastReceiver;

.field mTelMgr:Landroid/telephony/TelephonyManager;

.field mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiStatsEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 135
    const/16 v0, 0x63

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/device/DeviceInfo;->mSignalStrength:Ljava/lang/String;

    .line 154
    const/4 v0, -0x1

    sput v0, Lcom/android/server/enterprise/device/DeviceInfo;->mRooting:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    .line 196
    invoke-direct {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;-><init>()V

    .line 103
    iput-object v8, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 108
    iput-object v8, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 112
    iput-wide v6, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateWifiTx:J

    .line 113
    iput-wide v6, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateWifiRx:J

    .line 114
    iput-wide v6, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateMobileTx:J

    .line 115
    iput-wide v6, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateMobileRx:J

    .line 116
    iput-wide v6, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageWifiTx:J

    .line 117
    iput-wide v6, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageWifiRx:J

    .line 118
    iput-wide v6, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageMobileTx:J

    .line 119
    iput-wide v6, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageMobileRx:J

    .line 120
    iput v5, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatsCounter:I

    .line 121
    const/16 v4, 0xbb8

    iput v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageTimer:I

    .line 122
    iput-boolean v5, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageTimerActivated:Z

    .line 123
    iput-boolean v5, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mWifiStatsEnabled:Z

    .line 124
    iput-boolean v5, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatsEnabled:Z

    .line 125
    iput-boolean v5, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataLogEnabled:Z

    .line 126
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageEventsHandler:Landroid/os/Handler;

    .line 127
    iput-wide v6, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastTime:J

    .line 128
    const-string v4, ""

    iput-object v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastStatus:Ljava/lang/String;

    .line 129
    const-string v4, ""

    iput-object v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastNetType:Ljava/lang/String;

    .line 130
    iput-wide v6, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastValue:J

    .line 131
    iput-boolean v5, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallConnected:Z

    .line 138
    new-instance v4, Lcom/android/server/enterprise/device/DeviceInfo$1;

    invoke-direct {v4, p0}, Lcom/android/server/enterprise/device/DeviceInfo$1;-><init>(Lcom/android/server/enterprise/device/DeviceInfo;)V

    iput-object v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mHandler:Landroid/os/Handler;

    .line 234
    new-instance v4, Lcom/android/server/enterprise/device/DeviceInfo$2;

    invoke-direct {v4, p0}, Lcom/android/server/enterprise/device/DeviceInfo$2;-><init>(Lcom/android/server/enterprise/device/DeviceInfo;)V

    iput-object v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mSysScopeReceiver:Landroid/content/BroadcastReceiver;

    .line 242
    new-instance v4, Lcom/android/server/enterprise/device/DeviceInfo$3;

    invoke-direct {v4, p0}, Lcom/android/server/enterprise/device/DeviceInfo$3;-><init>(Lcom/android/server/enterprise/device/DeviceInfo;)V

    iput-object v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataConnectionStateChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 819
    new-instance v4, Lcom/android/server/enterprise/device/DeviceInfo$4;

    invoke-direct {v4, p0}, Lcom/android/server/enterprise/device/DeviceInfo$4;-><init>(Lcom/android/server/enterprise/device/DeviceInfo;)V

    iput-object v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatisticsReceiver:Landroid/content/BroadcastReceiver;

    .line 834
    new-instance v4, Lcom/android/server/enterprise/device/DeviceInfo$5;

    invoke-direct {v4, p0}, Lcom/android/server/enterprise/device/DeviceInfo$5;-><init>(Lcom/android/server/enterprise/device/DeviceInfo;)V

    iput-object v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatisticsUpdateRun:Ljava/lang/Runnable;

    .line 1155
    iput-object v8, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1731
    new-instance v4, Lcom/android/server/enterprise/device/DeviceInfo$6;

    invoke-direct {v4, p0}, Lcom/android/server/enterprise/device/DeviceInfo$6;-><init>(Lcom/android/server/enterprise/device/DeviceInfo;)V

    iput-object v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mMessagingReceiver:Landroid/content/BroadcastReceiver;

    .line 197
    iput-object p1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mContext:Landroid/content/Context;

    .line 198
    new-instance v4, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v5, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 201
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 202
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 203
    const-string v4, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 205
    iget-object v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iput-object v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 207
    iget-object v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatisticsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 210
    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/TelephonyManagerAdapter;->getInstance()Lcom/android/server/enterprise/adapterlayer/TelephonyManagerAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mHandler:Landroid/os/Handler;

    const/16 v7, 0xc8

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/enterprise/adapterlayer/TelephonyManagerAdapter;->initPhoneStateReceiver(Landroid/content/Context;Landroid/os/Handler;I)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mPhoneStateReceiver:Ljava/lang/Object;

    .line 213
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 214
    .local v3, "sysScopeFilter":Landroid/content/IntentFilter;
    const-string v4, "com.sec.intent.action.SYSSCOPESTATUS"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 215
    iget-object v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mSysScopeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 220
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 221
    .local v2, "msgFilter":Landroid/content/IntentFilter;
    const-string v4, "com.samsung.mms.RECEIVED_MSG"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 222
    const-string v4, "com.samsung.mms.SENT_MSG"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 223
    iget-object v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mMessagingReceiver:Landroid/content/BroadcastReceiver;

    const-string v6, "com.sec.mms.permission.RECEIVE_MESSAGES_INFORMATION"

    invoke-virtual {v4, v5, v2, v6, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 227
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 228
    .local v0, "dataConnectionFilter":Landroid/content/IntentFilter;
    const-string v4, "android.net.conn.DATA_ACTIVITY_CHANGE"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 229
    iget-object v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataConnectionStateChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 232
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/device/DeviceInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/device/DeviceInfo;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->updateSignalStrength()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/enterprise/device/DeviceInfo;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/enterprise/device/DeviceInfo;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->updateDataStatisticsUsage()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$102(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 96
    sput p0, Lcom/android/server/enterprise/device/DeviceInfo;->mRooting:I

    return p0
.end method

.method static synthetic access$1100(Lcom/android/server/enterprise/device/DeviceInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/device/DeviceInfo;

    .prologue
    .line 96
    iget v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageTimer:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/enterprise/device/DeviceInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/device/DeviceInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallConnected:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/server/enterprise/device/DeviceInfo;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/device/DeviceInfo;
    .param p1, "x1"    # J

    .prologue
    .line 96
    iput-wide p1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastTime:J

    return-wide p1
.end method

.method static synthetic access$402(Lcom/android/server/enterprise/device/DeviceInfo;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/device/DeviceInfo;
    .param p1, "x1"    # J

    .prologue
    .line 96
    iput-wide p1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastValue:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/device/DeviceInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/device/DeviceInfo;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->dataUsageValuesInit()V

    return-void
.end method

.method static synthetic access$602(Lcom/android/server/enterprise/device/DeviceInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/device/DeviceInfo;
    .param p1, "x1"    # I

    .prologue
    .line 96
    iput p1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatsCounter:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/enterprise/device/DeviceInfo;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/device/DeviceInfo;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatisticsUpdateRun:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/enterprise/device/DeviceInfo;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/device/DeviceInfo;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageEventsHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/enterprise/device/DeviceInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/device/DeviceInfo;

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageTimerActivated:Z

    return v0
.end method

.method private clearDatabasesOnAdminRemoval(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    const/4 v2, 0x1

    .line 1199
    const-string v0, "CallingLog"

    const-string v1, "callingCaptureAdmin"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/enterprise/device/DeviceInfo;->clearLog(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 1201
    const-string v0, "SMS"

    const-string/jumbo v1, "smsCaptureAdmin"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/enterprise/device/DeviceInfo;->clearLog(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 1202
    const-string v0, "MMS"

    const-string/jumbo v1, "mmsCaptureAdmin"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/enterprise/device/DeviceInfo;->clearLog(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 1203
    return-void
.end method

.method private clearLog(ILjava/lang/String;Ljava/lang/String;Z)Z
    .locals 16
    .param p1, "uid"    # I
    .param p2, "tableName"    # Ljava/lang/String;
    .param p3, "columnName"    # Ljava/lang/String;
    .param p4, "isAdminRemovedEvent"    # Z

    .prologue
    .line 1211
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v13, v0, v14, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v6

    .line 1213
    .local v6, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    .line 1214
    .local v5, "cv":Landroid/content/ContentValues;
    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_4

    .line 1215
    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1216
    .local v4, "captureAdmins":Ljava/lang/String;
    const-string v13, ";"

    invoke-virtual {v4, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 1217
    .local v11, "splittedAdmins":[Ljava/lang/String;
    array-length v13, v11

    const/4 v14, 0x1

    if-ne v13, v14, :cond_1

    const/4 v13, 0x0

    aget-object v13, v11, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    move/from16 v0, p1

    if-ne v0, v13, :cond_1

    .line 1218
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p2

    invoke-virtual {v13, v0, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v13

    if-gtz v13, :cond_0

    .line 1219
    const/4 v13, 0x0

    .line 1246
    .end local v4    # "captureAdmins":Ljava/lang/String;
    .end local v5    # "cv":Landroid/content/ContentValues;
    .end local v6    # "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v11    # "splittedAdmins":[Ljava/lang/String;
    :goto_0
    return v13

    .line 1221
    .restart local v4    # "captureAdmins":Ljava/lang/String;
    .restart local v5    # "cv":Landroid/content/ContentValues;
    .restart local v6    # "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v11    # "splittedAdmins":[Ljava/lang/String;
    :cond_1
    array-length v13, v11

    const/4 v14, 0x1

    if-le v13, v14, :cond_0

    .line 1222
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1223
    .local v2, "adminsConcatenated":Ljava/lang/StringBuilder;
    move-object v3, v11

    .local v3, "arr$":[Ljava/lang/String;
    array-length v10, v3

    .local v10, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_1
    if-ge v9, v10, :cond_3

    aget-object v1, v3, v9

    .line 1224
    .local v1, "admin":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    move/from16 v0, p1

    if-eq v0, v13, :cond_2

    .line 1225
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1226
    const-string v13, ";"

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1223
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1229
    .end local v1    # "admin":Ljava/lang/String;
    :cond_3
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 1230
    .local v12, "updatedCv":Landroid/content/ContentValues;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p2

    invoke-virtual {v13, v0, v12, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 1232
    const/4 v13, 0x0

    goto :goto_0

    .line 1235
    .end local v2    # "adminsConcatenated":Ljava/lang/StringBuilder;
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v4    # "captureAdmins":Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v10    # "len$":I
    .end local v11    # "splittedAdmins":[Ljava/lang/String;
    .end local v12    # "updatedCv":Landroid/content/ContentValues;
    :cond_4
    if-nez p4, :cond_0

    .line 1237
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p2

    invoke-virtual {v13, v0, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    if-gtz v13, :cond_0

    .line 1238
    const/4 v13, 0x0

    goto :goto_0

    .line 1242
    .end local v5    # "cv":Landroid/content/ContentValues;
    :cond_5
    const/4 v13, 0x1

    goto :goto_0

    .line 1243
    .end local v6    # "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :catch_0
    move-exception v7

    .line 1244
    .local v7, "e":Ljava/lang/Exception;
    const-string v13, "DeviceInfo"

    const-string v14, "could not write log edm database"

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    const/4 v13, 0x0

    goto :goto_0
.end method

.method private dataUsageValuesInit()V
    .locals 10

    .prologue
    const/4 v5, 0x3

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 845
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->dataUsageValuesUpdate()V

    .line 846
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getStrictDataUsageTimer()I

    move-result v3

    .line 847
    .local v3, "i":I
    if-eqz v3, :cond_1

    .end local v3    # "i":I
    :goto_0
    mul-int/lit16 v6, v3, 0x3e8

    iput v6, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageTimer:I

    .line 848
    invoke-virtual {p0, v8}, Lcom/android/server/enterprise/device/DeviceInfo;->getDataCallStatisticsEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatsEnabled:Z

    .line 849
    invoke-virtual {p0, v8}, Lcom/android/server/enterprise/device/DeviceInfo;->getDataCallLoggingEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataLogEnabled:Z

    .line 850
    invoke-virtual {p0, v8}, Lcom/android/server/enterprise/device/DeviceInfo;->getWifiStatisticEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mWifiStatsEnabled:Z

    .line 851
    const/4 v6, 0x4

    new-array v0, v6, [Ljava/lang/String;

    const-string v6, "deviceWifiSent"

    aput-object v6, v0, v9

    const/4 v6, 0x1

    const-string v7, "deviceWifiReceived"

    aput-object v7, v0, v6

    const/4 v6, 0x2

    const-string v7, "deviceNetworkSent"

    aput-object v7, v0, v6

    const-string v6, "deviceNetworkReceived"

    aput-object v6, v0, v5

    .line 853
    .local v0, "columns":[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "DEVICE"

    invoke-virtual {v5, v6, v8, v8, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 855
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 856
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 857
    .local v1, "cv":Landroid/content/ContentValues;
    if-eqz v1, :cond_0

    .line 859
    :try_start_0
    const-string v5, "deviceWifiSent"

    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageWifiTx:J

    .line 860
    const-string v5, "deviceWifiReceived"

    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageWifiRx:J

    .line 861
    const-string v5, "deviceNetworkSent"

    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageMobileTx:J

    .line 862
    const-string v5, "deviceNetworkReceived"

    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageMobileRx:J
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 869
    .end local v1    # "cv":Landroid/content/ContentValues;
    :cond_0
    :goto_1
    return-void

    .end local v0    # "columns":[Ljava/lang/String;
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v3    # "i":I
    :cond_1
    move v3, v5

    .line 847
    goto :goto_0

    .line 863
    .end local v3    # "i":I
    .restart local v0    # "columns":[Ljava/lang/String;
    .restart local v1    # "cv":Landroid/content/ContentValues;
    .restart local v4    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :catch_0
    move-exception v2

    .line 864
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string v5, "DeviceInfo"

    const-string/jumbo v6, "initializeStorageValues - Error reading from Device Storage"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    invoke-virtual {p0, v8}, Lcom/android/server/enterprise/device/DeviceInfo;->resetDataUsage(Landroid/app/enterprise/ContextInfo;)V

    goto :goto_1
.end method

.method private dataUsageValuesUpdate()V
    .locals 2

    .prologue
    .line 872
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getTrafficWifiTx()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateWifiTx:J

    .line 873
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getTrafficWifiRx()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateWifiRx:J

    .line 874
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getTrafficMobileTx()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateMobileTx:J

    .line 875
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getTrafficMobileRx()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateMobileRx:J

    .line 876
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastTime:J

    .line 877
    return-void
.end method

.method private enforceDeviceInventoryPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1170
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_INVENTORY"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceOwnerOnlyAndDeviceInventoryPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1175
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_INVENTORY"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforcePhone()V
    .locals 2

    .prologue
    .line 1180
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_0

    .line 1181
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can only be called by internal phone"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1183
    :cond_0
    return-void
.end method

.method private enforcePhoneAppOrAdmin(Landroid/app/enterprise/ContextInfo;)V
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1186
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_0

    .line 1187
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_INVENTORY"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    .line 1190
    :cond_0
    return-void
.end method

.method private enforcePhoneAppOrOwnerAndDeviceInventoryPermission(Landroid/app/enterprise/ContextInfo;)V
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1193
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_0

    .line 1194
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1196
    :cond_0
    return-void
.end method

.method private getCallsCount(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)I
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "callType"    # Ljava/lang/String;

    .prologue
    .line 443
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 444
    iget-object v3, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v3

    if-nez v3, :cond_0

    .line 445
    const/4 v0, -0x1

    .line 458
    :goto_0
    return v0

    .line 448
    :cond_0
    const/4 v0, -0x1

    .line 449
    .local v0, "count":I
    iget-object v3, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 450
    .local v2, "value":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 451
    const/4 v0, 0x0

    goto :goto_0

    .line 454
    :cond_1
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 455
    :catch_0
    move-exception v1

    .line 456
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v3, "DeviceInfo"

    const-string v4, "could not parse integer "

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 1158
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 1159
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1162
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getInt(Ljava/lang/String;)I
    .locals 4
    .param p1, "property"    # Ljava/lang/String;

    .prologue
    .line 629
    const/4 v1, -0x1

    .line 631
    .local v1, "value":I
    const/4 v2, -0x1

    :try_start_0
    invoke-static {p1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 636
    :goto_0
    return v1

    .line 632
    :catch_0
    move-exception v0

    .line 633
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, -0x1

    .line 634
    const-string v2, "DeviceInfo"

    const-string v3, "could not get property"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getProcessorTypeinLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    .line 503
    const-string v1, "(?i:model)\\s*(?i:name).*:.*[a-zA-Z].*"

    invoke-static {v1, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "(?i:processor).*:.*[a-zA-Z].*"

    invoke-static {v1, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 504
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 505
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ":"

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    .local v0, "tokener":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 508
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 511
    :cond_1
    const-string v1, "^[0-9]+$"

    invoke-static {v1, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    move-object v1, p1

    .line 515
    .end local v0    # "tokener":Ljava/util/StringTokenizer;
    :goto_1
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getStrictDataUsageTimer()I
    .locals 7

    .prologue
    .line 773
    const/4 v1, 0x0

    .line 774
    .local v1, "ret":I
    iget-object v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "MISC"

    const-string/jumbo v6, "miscDataStatisticTimer"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 776
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 777
    .local v2, "value":I
    if-eqz v1, :cond_1

    if-ge v2, v1, :cond_0

    .line 778
    :cond_1
    move v1, v2

    goto :goto_0

    .line 781
    .end local v2    # "value":I
    :cond_2
    if-nez v1, :cond_3

    .line 782
    const/4 v1, 0x3

    .line 784
    :cond_3
    return v1
.end method

.method private getString(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "fromVM"    # Z

    .prologue
    .line 610
    const/4 v1, 0x0

    .line 612
    .local v1, "value":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 613
    :try_start_0
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 622
    :goto_0
    return-object v1

    .line 615
    :cond_0
    const-string/jumbo v2, "unknown"

    invoke-static {p1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 616
    const-string/jumbo v2, "unknown"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :cond_1
    goto :goto_0

    .line 618
    :catch_0
    move-exception v0

    .line 619
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 620
    const-string v2, "DeviceInfo"

    const-string v3, "could not get property"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getTrafficMobileRx()J
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    .line 811
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v0

    .line 813
    .local v0, "mobileValue":J
    iget-wide v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateMobileRx:J

    cmp-long v4, v4, v2

    if-lez v4, :cond_0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 814
    iget-wide v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateMobileRx:J

    .line 816
    :cond_0
    const-wide/16 v4, -0x1

    cmp-long v4, v4, v0

    if-nez v4, :cond_1

    move-wide v0, v2

    .end local v0    # "mobileValue":J
    :cond_1
    return-wide v0
.end method

.method private getTrafficMobileTx()J
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    .line 802
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v0

    .line 804
    .local v0, "mobileValue":J
    iget-wide v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateMobileTx:J

    cmp-long v4, v4, v2

    if-lez v4, :cond_0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 805
    iget-wide v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateMobileTx:J

    .line 807
    :cond_0
    const-wide/16 v4, -0x1

    cmp-long v4, v4, v0

    if-nez v4, :cond_1

    move-wide v0, v2

    .end local v0    # "mobileValue":J
    :cond_1
    return-wide v0
.end method

.method private getTrafficWifiRx()J
    .locals 10

    .prologue
    const-wide/16 v4, 0x0

    const-wide/16 v8, -0x1

    .line 795
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v0

    .line 796
    .local v0, "mobileValue":J
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v2

    .line 797
    .local v2, "totalValue":J
    cmp-long v6, v8, v2

    if-nez v6, :cond_0

    move-wide v2, v4

    .end local v2    # "totalValue":J
    :cond_0
    cmp-long v6, v8, v0

    if-nez v6, :cond_1

    move-wide v0, v4

    .end local v0    # "mobileValue":J
    :cond_1
    sub-long v4, v2, v0

    return-wide v4
.end method

.method private getTrafficWifiTx()J
    .locals 10

    .prologue
    const-wide/16 v4, 0x0

    const-wide/16 v8, -0x1

    .line 788
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v0

    .line 789
    .local v0, "mobileValue":J
    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v2

    .line 790
    .local v2, "totalValue":J
    cmp-long v6, v8, v2

    if-nez v6, :cond_0

    move-wide v2, v4

    .end local v2    # "totalValue":J
    :cond_0
    cmp-long v6, v8, v0

    if-nez v6, :cond_1

    move-wide v0, v4

    .end local v0    # "mobileValue":J
    :cond_1
    sub-long v4, v2, v0

    return-wide v4
.end method

.method private isCorrectAdmin(ILandroid/content/ContentValues;Ljava/lang/String;)Z
    .locals 8
    .param p1, "uid"    # I
    .param p2, "cv"    # Landroid/content/ContentValues;
    .param p3, "columnName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 1252
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 1253
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1254
    .local v2, "captureAdmins":Ljava/lang/String;
    const-string v7, ";"

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1255
    .local v5, "splittedAdmins":[Ljava/lang/String;
    move-object v1, v5

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v0, v1, v3

    .line 1256
    .local v0, "admin":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-ne p1, v7, :cond_1

    .line 1263
    .end local v0    # "admin":Ljava/lang/String;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "captureAdmins":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "splittedAdmins":[Ljava/lang/String;
    :cond_0
    :goto_1
    return v6

    .line 1255
    .restart local v0    # "admin":Ljava/lang/String;
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v2    # "captureAdmins":Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v5    # "splittedAdmins":[Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1260
    .end local v0    # "admin":Ljava/lang/String;
    :cond_2
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private isWifiStateEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 880
    iget-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    .line 881
    iget-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 883
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_1

    .line 888
    :goto_0
    return v0

    .line 886
    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    .line 888
    .local v0, "ret":Z
    :cond_2
    goto :goto_0
.end method

.method private logDataCall(J)Z
    .locals 9
    .param p1, "bytes"    # J

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 1092
    iget-boolean v5, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataLogEnabled:Z

    if-nez v5, :cond_0

    .line 1093
    const-string v5, "DeviceInfo"

    const-string v6, "Logging disabled"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    :goto_0
    return v4

    .line 1096
    :cond_0
    iget-boolean v5, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallConnected:Z

    if-nez v5, :cond_1

    .line 1097
    const-string v5, "DeviceInfo"

    const-string v6, "Data Disconnected, don\'t log"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1100
    :cond_1
    cmp-long v5, p1, v6

    if-gtz v5, :cond_2

    .line 1101
    const-string v5, "DeviceInfo"

    const-string v6, "No bytes to log"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1107
    :cond_2
    iget-object v5, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    if-nez v5, :cond_3

    .line 1108
    const-string v5, "DeviceInfo"

    const-string/jumbo v6, "failed logDataCall because mTelMgr is null"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1112
    :cond_3
    iget-object v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1113
    const-string v3, "ROAMING"

    .line 1119
    .local v3, "status":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v2

    .line 1124
    .local v2, "netType":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastStatus:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastNetType:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1125
    :cond_4
    iput-wide v6, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastTime:J

    .line 1126
    iput-wide v6, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastValue:J

    .line 1130
    :cond_5
    iput-object v3, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastStatus:Ljava/lang/String;

    .line 1131
    const-string v4, "UNKNOWN"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1132
    iput-object v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastNetType:Ljava/lang/String;

    .line 1135
    :cond_6
    iget-wide v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastValue:J

    add-long/2addr v4, p1

    iput-wide v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastValue:J

    .line 1138
    const/4 v1, 0x0

    .line 1139
    .local v1, "cvWhere":Landroid/content/ContentValues;
    new-instance v1, Landroid/content/ContentValues;

    .end local v1    # "cvWhere":Landroid/content/ContentValues;
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1140
    .restart local v1    # "cvWhere":Landroid/content/ContentValues;
    const-string v4, "dataCallDate"

    iget-wide v6, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1141
    const-string v4, "dataCallStatus"

    iget-object v5, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastStatus:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    const-string v4, "dataCallNetType"

    iget-object v5, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastNetType:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastTime:J

    .line 1146
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1147
    .local v0, "cvUpdate":Landroid/content/ContentValues;
    const-string v4, "dataCallDate"

    iget-wide v6, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1148
    const-string v4, "dataCallStatus"

    iget-object v5, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastStatus:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    const-string v4, "dataCallNetType"

    iget-object v5, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastNetType:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    const-string v4, "dataCallBytes"

    iget-wide v6, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastValue:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1151
    iget-object v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "DATACALLLOG"

    invoke-virtual {v4, v5, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v4

    goto/16 :goto_0

    .line 1115
    .end local v0    # "cvUpdate":Landroid/content/ContentValues;
    .end local v1    # "cvWhere":Landroid/content/ContentValues;
    .end local v2    # "netType":Ljava/lang/String;
    .end local v3    # "status":Ljava/lang/String;
    :cond_7
    const-string v3, "NORMAL"

    .restart local v3    # "status":Ljava/lang/String;
    goto/16 :goto_1
.end method

.method private updateDataStatisticsUsage()J
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    .line 892
    const-wide/16 v8, 0x0

    .line 893
    .local v8, "wifiUsage":J
    const-wide/16 v4, 0x0

    .line 894
    .local v4, "mobileUsage":J
    const-wide/16 v2, 0x0

    .line 895
    .local v2, "delta":J
    const-wide/16 v6, 0x0

    .line 896
    .local v6, "valueNow":J
    iget v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatsCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatsCounter:I

    .line 899
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getTrafficWifiTx()J

    move-result-wide v6

    .line 900
    iget-wide v10, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateWifiTx:J

    cmp-long v1, v6, v10

    if-lez v1, :cond_0

    .line 901
    iget-wide v10, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateWifiTx:J

    sub-long v2, v6, v10

    .line 902
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->isWifiStateEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mWifiStatsEnabled:Z

    if-eqz v1, :cond_0

    .line 903
    iget-wide v10, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageWifiTx:J

    add-long/2addr v10, v2

    iput-wide v10, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageWifiTx:J

    .line 906
    :cond_0
    iput-wide v6, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateWifiTx:J

    .line 907
    add-long/2addr v8, v2

    .line 908
    const-wide/16 v2, 0x0

    .line 911
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getTrafficWifiRx()J

    move-result-wide v6

    .line 912
    iget-wide v10, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateWifiRx:J

    cmp-long v1, v6, v10

    if-lez v1, :cond_1

    .line 913
    iget-wide v10, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateWifiRx:J

    sub-long v2, v6, v10

    .line 914
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->isWifiStateEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mWifiStatsEnabled:Z

    if-eqz v1, :cond_1

    .line 915
    iget-wide v10, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageWifiRx:J

    add-long/2addr v10, v2

    iput-wide v10, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageWifiRx:J

    .line 918
    :cond_1
    iput-wide v6, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateWifiRx:J

    .line 919
    add-long/2addr v8, v2

    .line 920
    const-wide/16 v2, 0x0

    .line 923
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getTrafficMobileTx()J

    move-result-wide v6

    .line 924
    iget-wide v10, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateMobileTx:J

    cmp-long v1, v6, v10

    if-ltz v1, :cond_6

    .line 925
    iget-wide v10, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateMobileTx:J

    sub-long v2, v6, v10

    .line 926
    iget-boolean v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatsEnabled:Z

    if-eqz v1, :cond_2

    .line 927
    iget-wide v10, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageMobileTx:J

    add-long/2addr v10, v2

    iput-wide v10, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageMobileTx:J

    .line 933
    :cond_2
    :goto_0
    iput-wide v6, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateMobileTx:J

    .line 934
    add-long/2addr v4, v2

    .line 935
    const-wide/16 v2, 0x0

    .line 938
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getTrafficMobileRx()J

    move-result-wide v6

    .line 939
    iget-wide v10, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateMobileRx:J

    cmp-long v1, v6, v10

    if-ltz v1, :cond_7

    .line 940
    iget-wide v10, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateMobileRx:J

    sub-long v2, v6, v10

    .line 941
    iget-boolean v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatsEnabled:Z

    if-eqz v1, :cond_3

    .line 942
    iget-wide v10, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageMobileRx:J

    add-long/2addr v10, v2

    iput-wide v10, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageMobileRx:J

    .line 948
    :cond_3
    :goto_1
    iput-wide v6, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateMobileRx:J

    .line 949
    add-long/2addr v4, v2

    .line 950
    const-wide/16 v2, 0x0

    .line 952
    cmp-long v1, v4, v12

    if-lez v1, :cond_4

    .line 953
    invoke-direct {p0, v4, v5}, Lcom/android/server/enterprise/device/DeviceInfo;->logDataCall(J)Z

    .line 955
    :cond_4
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/app/enterprise/PhoneRestrictionPolicy;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/app/enterprise/PhoneRestrictionPolicy;->updateDateAndDataCallCounters(J)V

    .line 958
    iget v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatsCounter:I

    const/16 v10, 0xa

    if-lt v1, v10, :cond_5

    .line 959
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 960
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "deviceWifiSent"

    iget-wide v10, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageWifiTx:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 961
    const-string v1, "deviceWifiReceived"

    iget-wide v10, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageWifiRx:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 962
    const-string v1, "deviceNetworkSent"

    iget-wide v10, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageMobileTx:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 963
    const-string v1, "deviceNetworkReceived"

    iget-wide v10, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageMobileRx:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 964
    iget-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "DEVICE"

    invoke-virtual {v1, v10, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;)Z

    .line 965
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatsCounter:I

    .line 967
    .end local v0    # "cv":Landroid/content/ContentValues;
    :cond_5
    add-long v10, v8, v4

    return-wide v10

    .line 930
    :cond_6
    iput-wide v12, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastTime:J

    .line 931
    iput-wide v12, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastValue:J

    goto :goto_0

    .line 945
    :cond_7
    iput-wide v12, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastTime:J

    .line 946
    iput-wide v12, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastValue:J

    goto :goto_1
.end method

.method private updateDataUsageState()V
    .locals 2

    .prologue
    .line 989
    new-instance v0, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .line 990
    .local v0, "cxtInfo":Landroid/app/enterprise/ContextInfo;
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/device/DeviceInfo;->getWifiStatisticEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mWifiStatsEnabled:Z

    .line 991
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/device/DeviceInfo;->getDataCallStatisticsEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatsEnabled:Z

    .line 992
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/device/DeviceInfo;->getDataCallLoggingEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataLogEnabled:Z

    .line 993
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/device/DeviceInfo;->dataUsageTimerActivation(Landroid/app/enterprise/ContextInfo;)V

    .line 994
    return-void
.end method

.method private final updateSignalStrength()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 1590
    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/TelephonyManagerAdapter;->getInstance()Lcom/android/server/enterprise/adapterlayer/TelephonyManagerAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mPhoneStateReceiver:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/adapterlayer/TelephonyManagerAdapter;->getSignalStrengthDbm(Ljava/lang/Object;)I

    move-result v2

    .line 1591
    .local v2, "signalDbm":I
    if-ne v5, v2, :cond_0

    .line 1592
    const/4 v2, 0x0

    .line 1595
    :cond_0
    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/TelephonyManagerAdapter;->getInstance()Lcom/android/server/enterprise/adapterlayer/TelephonyManagerAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mPhoneStateReceiver:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/adapterlayer/TelephonyManagerAdapter;->getSignalStrengthLevelAsu(Ljava/lang/Object;)I

    move-result v1

    .line 1596
    .local v1, "signalAsu":I
    if-ne v5, v1, :cond_1

    .line 1597
    const/4 v1, 0x0

    .line 1600
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dBm "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " asu"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/server/enterprise/device/DeviceInfo;->mSignalStrength:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1605
    .end local v1    # "signalAsu":I
    .end local v2    # "signalDbm":I
    :goto_0
    return-void

    .line 1602
    :catch_0
    move-exception v0

    .line 1603
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v3, "DeviceInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateSignalStrength: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public addCallsCount(Ljava/lang/String;)V
    .locals 5
    .param p1, "callType"    # Ljava/lang/String;

    .prologue
    .line 487
    iget-object v3, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 488
    .local v2, "value":Ljava/lang/String;
    const/4 v0, 0x0

    .line 489
    .local v0, "count":I
    if-eqz v2, :cond_0

    .line 491
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 492
    if-gez v0, :cond_0

    .line 493
    const/4 v0, 0x0

    .line 499
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    add-int/lit8 v4, v0, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 500
    return-void

    .line 495
    :catch_0
    move-exception v1

    .line 496
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v3, "DeviceInfo"

    const-string v4, "could not parse integer "

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public clearCallingLog(Landroid/app/enterprise/ContextInfo;)Z
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v0, 0x0

    .line 1080
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1082
    iget-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1086
    :goto_0
    return v0

    :cond_0
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "CallingLog"

    const-string v3, "callingCaptureAdmin"

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/android/server/enterprise/device/DeviceInfo;->clearLog(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public clearMMSLog(Landroid/app/enterprise/ContextInfo;)Z
    .locals 4
    .param p1, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1723
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1724
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v1, "MMS"

    const-string/jumbo v2, "mmsCaptureAdmin"

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/enterprise/device/DeviceInfo;->clearLog(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public clearSMSLog(Landroid/app/enterprise/ContextInfo;)Z
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1367
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1368
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v1, "SMS"

    const-string/jumbo v2, "smsCaptureAdmin"

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/enterprise/device/DeviceInfo;->clearLog(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public dataUsageTimerActivation(Landroid/app/enterprise/ContextInfo;)V
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 974
    iget-boolean v3, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mWifiStatsEnabled:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatsEnabled:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataLogEnabled:Z

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/app/enterprise/PhoneRestrictionPolicy;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/enterprise/PhoneRestrictionPolicy;->getDataCallLimitEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    move v0, v2

    .line 976
    .local v0, "policiesActive":Z
    :goto_0
    if-eqz v0, :cond_3

    iget-boolean v3, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageTimerActivated:Z

    if-nez v3, :cond_3

    .line 978
    iput-boolean v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageTimerActivated:Z

    .line 979
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->dataUsageValuesUpdate()V

    .line 980
    iget-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageEventsHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatisticsUpdateRun:Ljava/lang/Runnable;

    iget v3, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageTimer:I

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 986
    :cond_1
    :goto_1
    return-void

    .end local v0    # "policiesActive":Z
    :cond_2
    move v0, v1

    .line 974
    goto :goto_0

    .line 981
    .restart local v0    # "policiesActive":Z
    :cond_3
    if-nez v0, :cond_1

    iget-boolean v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageTimerActivated:Z

    if-eqz v2, :cond_1

    .line 983
    iput-boolean v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageTimerActivated:Z

    .line 984
    iget-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageEventsHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatisticsUpdateRun:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method public enableCallingCapture(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 1377
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1378
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1379
    .local v0, "uid":I
    iget-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1380
    const/4 v1, 0x0

    .line 1383
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "MISC"

    const-string v3, "CallingLogEnabled"

    invoke-virtual {v1, v0, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public enableMMSCapture(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 5
    .param p1, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "status"    # Z

    .prologue
    .line 1623
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1624
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1626
    .local v1, "uId":I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "MISC"

    const-string/jumbo v4, "mmsLogEnabled"

    invoke-virtual {v2, v1, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1631
    :goto_0
    return v2

    .line 1628
    :catch_0
    move-exception v0

    .line 1629
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "DeviceInfo"

    const-string v3, "could not enable mms capture"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1631
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public enableSMSCapture(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "status"    # Z

    .prologue
    .line 1267
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1268
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1270
    .local v1, "uId":I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "MISC"

    const-string/jumbo v4, "smsLogEnabled"

    invoke-virtual {v2, v1, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1275
    :goto_0
    return v2

    .line 1272
    :catch_0
    move-exception v0

    .line 1273
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "DeviceInfo"

    const-string v3, "could not enable sms capture"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1275
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getAvailableCapacityExternal(Landroid/app/enterprise/ContextInfo;)J
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 309
    new-instance v0, Lcom/android/server/enterprise/device/DeviceStorageUtil;

    iget-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/device/DeviceStorageUtil;-><init>(Landroid/content/Context;)V

    .line 310
    .local v0, "devStorageUtil":Lcom/android/server/enterprise/device/DeviceStorageUtil;
    invoke-virtual {v0}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->getAvailableExternalMemorySize()J

    move-result-wide v2

    return-wide v2
.end method

.method public getAvailableCapacityInternal(Landroid/app/enterprise/ContextInfo;)J
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 329
    new-instance v0, Lcom/android/server/enterprise/device/DeviceStorageUtil;

    iget-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/device/DeviceStorageUtil;-><init>(Landroid/content/Context;)V

    .line 330
    .local v0, "devStorageUtil":Lcom/android/server/enterprise/device/DeviceStorageUtil;
    invoke-virtual {v0}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->getAvailableInternalMemorySize()J

    move-result-wide v2

    return-wide v2
.end method

.method public getAvailableRamMemory(Landroid/app/enterprise/ContextInfo;)J
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 592
    const/4 v3, 0x2

    new-array v1, v3, [Ljava/lang/String;

    const-string v3, "MemFree:"

    aput-object v3, v1, v8

    const-string v3, "Cached:"

    aput-object v3, v1, v9

    .line 593
    .local v1, "memInfoFields":[Ljava/lang/String;
    array-length v3, v1

    new-array v2, v3, [J

    .line 594
    .local v2, "memInfoSizes":[J
    const-string v3, "/proc/meminfo"

    invoke-static {v3, v1, v2}, Lcom/android/server/enterprise/adapterlayer/UtilsAdapter;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    .line 596
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 597
    aget-wide v4, v2, v0

    const-wide/16 v6, 0x400

    mul-long/2addr v4, v6

    aput-wide v4, v2, v0

    .line 596
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 600
    :cond_0
    aget-wide v4, v2, v8

    aget-wide v6, v2, v9

    add-long/2addr v4, v6

    return-wide v4
.end method

.method public getBytesReceivedNetwork(Landroid/app/enterprise/ContextInfo;)J
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 709
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 710
    iget-wide v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageMobileRx:J

    return-wide v0
.end method

.method public getBytesReceivedWiFi(Landroid/app/enterprise/ContextInfo;)J
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 699
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 700
    iget-wide v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageWifiRx:J

    return-wide v0
.end method

.method public getBytesSentNetwork(Landroid/app/enterprise/ContextInfo;)J
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 704
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 705
    iget-wide v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageMobileTx:J

    return-wide v0
.end method

.method public getBytesSentWiFi(Landroid/app/enterprise/ContextInfo;)J
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 694
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 695
    iget-wide v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageWifiTx:J

    return-wide v0
.end method

.method public getCellTowerCID(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1515
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1516
    const/4 v1, -0x1

    .line 1518
    .local v1, "ret":I
    iget-object v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_0

    .line 1519
    iget-object v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    .line 1520
    .local v0, "cellLocation":Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v0, :cond_0

    .line 1521
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    .line 1525
    .end local v0    # "cellLocation":Landroid/telephony/gsm/GsmCellLocation;
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getCellTowerLAC(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1529
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1530
    const/4 v1, -0x1

    .line 1532
    .local v1, "ret":I
    iget-object v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_0

    .line 1533
    iget-object v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    .line 1534
    .local v0, "cellLocation":Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v0, :cond_0

    .line 1535
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    .line 1539
    .end local v0    # "cellLocation":Landroid/telephony/gsm/GsmCellLocation;
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getCellTowerPSC(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1543
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1544
    const/4 v1, -0x1

    .line 1546
    .local v1, "ret":I
    iget-object v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_0

    .line 1547
    iget-object v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    .line 1548
    .local v0, "cellLocation":Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v0, :cond_0

    .line 1549
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getPsc()I

    move-result v1

    .line 1553
    .end local v0    # "cellLocation":Landroid/telephony/gsm/GsmCellLocation;
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getCellTowerRSSI(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1557
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1559
    const/16 v5, 0x63

    .line 1560
    .local v5, "ret":I
    iget-object v6, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    if-eqz v6, :cond_2

    .line 1561
    iget-object v6, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 1562
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->updateSignalStrength()V

    .line 1563
    sget-object v6, Lcom/android/server/enterprise/device/DeviceInfo;->mSignalStrength:Ljava/lang/String;

    .line 1585
    :goto_0
    return-object v6

    .line 1565
    :cond_0
    iget-object v6, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    .line 1566
    .local v0, "cellLocation":Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v0, :cond_2

    .line 1567
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    .line 1568
    .local v1, "cid":I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_2

    .line 1569
    iget-object v6, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v3

    .line 1570
    .local v3, "nCells":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 1571
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/NeighboringCellInfo;

    .line 1572
    .local v4, "nInfo":Landroid/telephony/NeighboringCellInfo;
    invoke-virtual {v4}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v6

    if-ne v6, v1, :cond_1

    .line 1573
    invoke-virtual {v4}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v5

    .line 1585
    .end local v0    # "cellLocation":Landroid/telephony/gsm/GsmCellLocation;
    .end local v1    # "cid":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "nCells":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    .end local v4    # "nInfo":Landroid/telephony/NeighboringCellInfo;
    :cond_2
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 1578
    .restart local v0    # "cellLocation":Landroid/telephony/gsm/GsmCellLocation;
    .restart local v1    # "cid":I
    .restart local v3    # "nCells":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    :cond_3
    const-string v6, "DeviceInfo"

    const-string v7, "Could not retrieve NeighboringCellInfo"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1579
    sget-object v6, Lcom/android/server/enterprise/device/DeviceInfo;->mSignalStrength:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDataCallLog(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "time"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1045
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1047
    const/4 v7, 0x4

    new-array v0, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "dataCallDate"

    aput-object v8, v0, v7

    const/4 v7, 0x1

    const-string v8, "dataCallStatus"

    aput-object v8, v0, v7

    const/4 v7, 0x2

    const-string v8, "dataCallNetType"

    aput-object v8, v0, v7

    const/4 v7, 0x3

    const-string v8, "dataCallBytes"

    aput-object v8, v0, v7

    .line 1050
    .local v0, "columns":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 1051
    .local v6, "where":Landroid/content/ContentValues;
    if-eqz p2, :cond_0

    .line 1052
    new-instance v6, Landroid/content/ContentValues;

    .end local v6    # "where":Landroid/content/ContentValues;
    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1053
    .restart local v6    # "where":Landroid/content/ContentValues;
    const-string v7, "dataCallDate>=?"

    invoke-virtual {v6, v7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    :cond_0
    iget-object v7, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "DATACALLLOG"

    invoke-virtual {v7, v8, v0, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v5

    .line 1058
    .local v5, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-nez v5, :cond_2

    .line 1059
    const/4 v4, 0x0

    .line 1076
    :cond_1
    return-object v4

    .line 1062
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1063
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1065
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 1066
    .local v1, "cv":Landroid/content/ContentValues;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dataCallDate"

    invoke-virtual {v1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "dataCallStatus"

    invoke-virtual {v1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "dataCallNetType"

    invoke-virtual {v1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "dataCallBytes"

    invoke-virtual {v1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1073
    .local v3, "line":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getDataCallLoggingEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1012
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1013
    const/4 v1, 0x0

    .line 1014
    .local v1, "ret":Z
    iget-object v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "enableDataCallLogging"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1017
    .local v3, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1018
    .local v2, "value":Z
    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 1019
    move v1, v2

    .line 1023
    .end local v2    # "value":Z
    :cond_1
    return v1
.end method

.method public getDataCallStatisticsEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 680
    const/4 v1, 0x0

    .line 681
    .local v1, "ret":Z
    iget-object v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "enableWifiDataCallDataStatistic"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 684
    .local v3, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 685
    .local v2, "value":Z
    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 686
    move v1, v2

    .line 690
    .end local v2    # "value":Z
    :cond_1
    return v1
.end method

.method public getDataUsageTimer(Landroid/app/enterprise/ContextInfo;)I
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 757
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 760
    .local v0, "callingUid":I
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "MISC"

    const-string/jumbo v5, "miscDataStatisticTimer"

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 767
    .local v2, "i":I
    :goto_0
    return v2

    .line 762
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 763
    .local v1, "e":Lcom/android/server/enterprise/storage/SettingNotFoundException;
    const-string v3, "DeviceInfo"

    const-string/jumbo v4, "getDataUsageTimer could not read database"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    invoke-virtual {v1}, Lcom/android/server/enterprise/storage/SettingNotFoundException;->printStackTrace()V

    .line 765
    const/4 v2, -0x1

    .restart local v2    # "i":I
    goto :goto_0
.end method

.method public getDeviceMaker(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 417
    const-string/jumbo v0, "ro.product.manufacturer"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/device/DeviceInfo;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceName(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 351
    iget-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_name"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 352
    .local v0, "deviceName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 353
    iget-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_name"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 355
    :cond_0
    return-object v0
.end method

.method public getDeviceOS(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 424
    const-string/jumbo v0, "os.name"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/device/DeviceInfo;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceOSVersion(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 431
    const-string/jumbo v0, "os.version"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/device/DeviceInfo;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDevicePlatform(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 438
    const-string/jumbo v1, "ro.build.version.release"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/device/DeviceInfo;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 439
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Android "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDeviceProcessorSpeed(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 545
    const-string v3, ""

    .line 546
    .local v3, "s":Ljava/lang/String;
    const/4 v0, 0x0

    .line 549
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 551
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 557
    if-eqz v1, :cond_0

    .line 559
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v3

    .line 565
    .end local v3    # "s":Ljava/lang/String;
    .local v4, "s":Ljava/lang/String;
    :goto_1
    return-object v4

    .line 560
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "s":Ljava/lang/String;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "s":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 561
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 554
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :catch_1
    move-exception v2

    .line 555
    .restart local v2    # "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 557
    if-eqz v0, :cond_1

    .line 559
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_1
    :goto_3
    move-object v4, v3

    .line 565
    .end local v3    # "s":Ljava/lang/String;
    .restart local v4    # "s":Ljava/lang/String;
    goto :goto_1

    .line 560
    .end local v4    # "s":Ljava/lang/String;
    .restart local v3    # "s":Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 561
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 557
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :goto_4
    if-eqz v0, :cond_2

    .line 559
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 562
    :cond_2
    :goto_5
    throw v5

    .line 560
    :catch_3
    move-exception v2

    .line 561
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 557
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_4

    .line 554
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method public getDeviceProcessorType(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 519
    const/4 v0, 0x0

    .line 522
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/proc/cpuinfo"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 523
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 524
    .local v4, "s":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 525
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/device/DeviceInfo;->getProcessorTypeinLine(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 526
    .local v3, "processorType":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 533
    if-eqz v1, :cond_1

    .line 535
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_0
    move-object v0, v1

    .line 541
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "processorType":Ljava/lang/String;
    .end local v4    # "s":Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :goto_1
    return-object v3

    .line 536
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "processorType":Ljava/lang/String;
    .restart local v4    # "s":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 537
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 533
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "processorType":Ljava/lang/String;
    :cond_2
    if-eqz v1, :cond_5

    .line 535
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v0, v1

    .line 541
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "s":Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_3
    :goto_2
    const-string v3, ""

    goto :goto_1

    .line 536
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "s":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 537
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    .line 538
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2

    .line 530
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "s":Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 531
    .restart local v2    # "e":Ljava/lang/Exception;
    :goto_3
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 533
    if-eqz v0, :cond_3

    .line 535
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    .line 536
    :catch_3
    move-exception v2

    .line 537
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 533
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :goto_4
    if-eqz v0, :cond_4

    .line 535
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 538
    :cond_4
    :goto_5
    throw v5

    .line 536
    :catch_4
    move-exception v2

    .line 537
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 533
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "s":Ljava/lang/String;
    :catchall_1
    move-exception v5

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_4

    .line 530
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_5
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_3

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :cond_5
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method public getDroppedCallsCount(Landroid/app/enterprise/ContextInfo;)I
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 462
    const-string v0, "dropped"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/device/DeviceInfo;->getCallsCount(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getInboundMMSCaptured(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 10
    .param p1, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1672
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1673
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1675
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x1

    :try_start_0
    new-array v5, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "mmsType"

    aput-object v8, v5, v7

    .line 1676
    .local v5, "sColumns":[Ljava/lang/String;
    const/4 v7, 0x1

    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "1"

    aput-object v8, v6, v7

    .line 1677
    .local v6, "sValues":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "MMS"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v5, v6, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1679
    .local v1, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1680
    .local v0, "cv":Landroid/content/ContentValues;
    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string/jumbo v8, "mmsCaptureAdmin"

    invoke-direct {p0, v7, v0, v8}, Lcom/android/server/enterprise/device/DeviceInfo;->isCorrectAdmin(ILandroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1681
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "From:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "mmsAddress"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - TimeStamp:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "mmsTimeStamp"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - Body:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "mmsBody"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1687
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "sColumns":[Ljava/lang/String;
    .end local v6    # "sValues":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1688
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "DeviceInfo"

    const-string v8, "could not open edm database"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1690
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    return-object v4
.end method

.method public getInboundSMSCaptured(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1317
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1318
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1320
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x1

    :try_start_0
    new-array v5, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "smsType"

    aput-object v8, v5, v7

    .line 1321
    .local v5, "sColumns":[Ljava/lang/String;
    const/4 v7, 0x1

    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "1"

    aput-object v8, v6, v7

    .line 1322
    .local v6, "sValues":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "SMS"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v5, v6, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1324
    .local v1, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1325
    .local v0, "cv":Landroid/content/ContentValues;
    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string/jumbo v8, "smsCaptureAdmin"

    invoke-direct {p0, v7, v0, v8}, Lcom/android/server/enterprise/device/DeviceInfo;->isCorrectAdmin(ILandroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1326
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "From:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "smsAddress"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - TimeStamp:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "smsTimeStamp"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - Body:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "smsBody"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1332
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "sColumns":[Ljava/lang/String;
    .end local v6    # "sValues":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1333
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "DeviceInfo"

    const-string v8, "could not open edm database"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1335
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    return-object v4
.end method

.method public getIncomingCallingCaptured(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1487
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1489
    iget-object v7, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1490
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1510
    :cond_0
    :goto_0
    return-object v4

    .line 1493
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1495
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x1

    :try_start_0
    new-array v5, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "callingType"

    aput-object v8, v5, v7

    .line 1496
    .local v5, "sColumns":[Ljava/lang/String;
    const/4 v7, 0x1

    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "1"

    aput-object v8, v6, v7

    .line 1497
    .local v6, "sValues":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "CallingLog"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v5, v6, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1499
    .local v1, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1500
    .local v0, "cv":Landroid/content/ContentValues;
    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v8, "callingCaptureAdmin"

    invoke-direct {p0, v7, v0, v8}, Lcom/android/server/enterprise/device/DeviceInfo;->isCorrectAdmin(ILandroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1501
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "From:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "callingAddress"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - TimeStamp:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "callingTimeStamp"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - Duration:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "callingDuration"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - Status:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "callingStatus"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1507
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "sColumns":[Ljava/lang/String;
    .end local v6    # "sValues":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1508
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "DeviceInfo"

    const-string v8, "could not open edm database"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getMissedCallsCount(Landroid/app/enterprise/ContextInfo;)I
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 466
    const-string/jumbo v0, "missed"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/device/DeviceInfo;->getCallsCount(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getModelName(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 337
    const-string/jumbo v0, "ro.product.name"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/device/DeviceInfo;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModelNumber(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 344
    const-string/jumbo v0, "ro.product.model"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/device/DeviceInfo;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModemFirmware(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 396
    const-string/jumbo v0, "gsm.version.baseband"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/device/DeviceInfo;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOutboundMMSCaptured(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 10
    .param p1, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1650
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1651
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1653
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x1

    :try_start_0
    new-array v5, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "mmsType"

    aput-object v8, v5, v7

    .line 1654
    .local v5, "sColumns":[Ljava/lang/String;
    const/4 v7, 0x1

    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "0"

    aput-object v8, v6, v7

    .line 1655
    .local v6, "sValues":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "MMS"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v5, v6, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1657
    .local v1, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1658
    .local v0, "cv":Landroid/content/ContentValues;
    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string/jumbo v8, "mmsCaptureAdmin"

    invoke-direct {p0, v7, v0, v8}, Lcom/android/server/enterprise/device/DeviceInfo;->isCorrectAdmin(ILandroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1659
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "To:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "mmsAddress"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - TimeStamp:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "mmsTimeStamp"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - Body:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "mmsBody"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1665
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "sColumns":[Ljava/lang/String;
    .end local v6    # "sValues":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1666
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "DeviceInfo"

    const-string v8, "could not open edm database"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1668
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    return-object v4
.end method

.method public getOutboundSMSCaptured(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1295
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1296
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1298
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x1

    :try_start_0
    new-array v5, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "smsType"

    aput-object v8, v5, v7

    .line 1299
    .local v5, "sColumns":[Ljava/lang/String;
    const/4 v7, 0x1

    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "0"

    aput-object v8, v6, v7

    .line 1300
    .local v6, "sValues":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "SMS"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v5, v6, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1302
    .local v1, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1303
    .local v0, "cv":Landroid/content/ContentValues;
    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string/jumbo v8, "smsCaptureAdmin"

    invoke-direct {p0, v7, v0, v8}, Lcom/android/server/enterprise/device/DeviceInfo;->isCorrectAdmin(ILandroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1304
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "To:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "smsAddress"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - TimeStamp:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "smsTimeStamp"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - Body:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "smsBody"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1310
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "sColumns":[Ljava/lang/String;
    .end local v6    # "sValues":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1311
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "DeviceInfo"

    const-string v8, "could not open edm database"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1313
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    return-object v4
.end method

.method public getOutgoingCallingCaptured(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1457
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1459
    iget-object v7, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1460
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1480
    :cond_0
    :goto_0
    return-object v4

    .line 1463
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1465
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x1

    :try_start_0
    new-array v5, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "callingType"

    aput-object v8, v5, v7

    .line 1466
    .local v5, "sColumns":[Ljava/lang/String;
    const/4 v7, 0x1

    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "0"

    aput-object v8, v6, v7

    .line 1467
    .local v6, "sValues":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "CallingLog"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v5, v6, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1469
    .local v1, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1470
    .local v0, "cv":Landroid/content/ContentValues;
    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v8, "callingCaptureAdmin"

    invoke-direct {p0, v7, v0, v8}, Lcom/android/server/enterprise/device/DeviceInfo;->isCorrectAdmin(ILandroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1471
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "To:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "callingAddress"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - TimeStamp:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "callingTimeStamp"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - Duration:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "callingDuration"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - Status:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "callingStatus"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1477
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "sColumns":[Ljava/lang/String;
    .end local v6    # "sValues":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1478
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "DeviceInfo"

    const-string v8, "could not log edm database"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getPlatformSDK(Landroid/app/enterprise/ContextInfo;)I
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 403
    const-string/jumbo v0, "ro.build.version.sdk"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/device/DeviceInfo;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getPlatformVersion(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 410
    const-string/jumbo v0, "ro.build.version.release"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/device/DeviceInfo;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlatformVersionName(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 373
    const-string v0, "UNKNOWN"

    .line 374
    .local v0, "platformName":Ljava/lang/String;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-gt v1, v2, :cond_1

    .line 375
    const-string v0, "GINGERBREAD"

    .line 389
    :cond_0
    :goto_0
    return-object v0

    .line 376
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xd

    if-gt v1, v2, :cond_2

    .line 377
    const-string v0, "HONEYCOMB"

    goto :goto_0

    .line 378
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-gt v1, v2, :cond_3

    .line 379
    const-string v0, "ICECREAM_SANDWICH"

    goto :goto_0

    .line 380
    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-gt v1, v2, :cond_4

    .line 381
    const-string v0, "JELLY_BEAN"

    goto :goto_0

    .line 382
    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-gt v1, v2, :cond_5

    .line 383
    const-string v0, "KITKAT"

    goto :goto_0

    .line 384
    :cond_5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-gt v1, v2, :cond_6

    .line 385
    const-string v0, "LOLLIPOP"

    goto :goto_0

    .line 386
    :cond_6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 387
    const-string v0, "MARSHMALLOW"

    goto :goto_0
.end method

.method public getSalesCode(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .locals 7
    .param p1, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1798
    const-string/jumbo v4, "ril.sales_code"

    const-string/jumbo v5, "none"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1799
    .local v3, "salesCode":Ljava/lang/String;
    const-string/jumbo v4, "none"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1800
    const-string/jumbo v4, "ro.csc.sales_code"

    const-string v5, "BTU"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1804
    :cond_0
    :try_start_0
    const-string v4, "MSK"

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1805
    const-string v3, "SKT"

    .line 1826
    :cond_1
    :goto_0
    const-string v4, "DeviceInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SalesCode : return ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1830
    :goto_1
    return-object v3

    .line 1806
    :cond_2
    const-string v4, "MKT/KTT"

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1807
    const-string v3, "KT"

    goto :goto_0

    .line 1808
    :cond_3
    const-string v4, "MLG/LGT"

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1809
    const-string v3, "LG"

    goto :goto_0

    .line 1812
    :cond_4
    const-string v4, "BST/SPR/VMU/XAS"

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    .line 1813
    const-string v3, "SPR"

    goto :goto_0

    .line 1816
    :cond_5
    const-string v4, "TFG"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1817
    const-string/jumbo v4, "ril.product_code"

    const-string/jumbo v5, "none"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1818
    .local v2, "productCode":Ljava/lang/String;
    const-string/jumbo v4, "none"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1819
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1820
    .local v1, "localCode":Ljava/lang/String;
    const-string v4, "TMM/UFN/UFU/COB/CHT/SAM/VMT/TGU/SAL/NBS/PBS/EBE/CRM"

    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1821
    move-object v3, v1

    .line 1822
    const-string v4, "DeviceInfo"

    const-string v5, "SalesCode : Use product code as customerCode for Movistar single binary(TFG)"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1827
    .end local v1    # "localCode":Ljava/lang/String;
    .end local v2    # "productCode":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1828
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v4, "DeviceInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getSalesCode : RuntimeException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getSerialNumber(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v2, 0x0

    .line 362
    const-string/jumbo v1, "ril.serialnumber"

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/device/DeviceInfo;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 363
    .local v0, "rilSerial":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "00000000000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 364
    :cond_0
    const-string/jumbo v1, "ro.serialno"

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/device/DeviceInfo;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 366
    .end local v0    # "rilSerial":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public getSuccessCallsCount(Landroid/app/enterprise/ContextInfo;)I
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 470
    const-string/jumbo v0, "success"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/device/DeviceInfo;->getCallsCount(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTotalCapacityExternal(Landroid/app/enterprise/ContextInfo;)J
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 299
    new-instance v0, Lcom/android/server/enterprise/device/DeviceStorageUtil;

    iget-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/device/DeviceStorageUtil;-><init>(Landroid/content/Context;)V

    .line 300
    .local v0, "devStorageUtil":Lcom/android/server/enterprise/device/DeviceStorageUtil;
    invoke-virtual {v0}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->getTotalExternalMemorySize()J

    move-result-wide v2

    return-wide v2
.end method

.method public getTotalCapacityInternal(Landroid/app/enterprise/ContextInfo;)J
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 319
    new-instance v0, Lcom/android/server/enterprise/device/DeviceStorageUtil;

    iget-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/device/DeviceStorageUtil;-><init>(Landroid/content/Context;)V

    .line 320
    .local v0, "devStorageUtil":Lcom/android/server/enterprise/device/DeviceStorageUtil;
    invoke-virtual {v0}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->getTotalInternalMemorySize()J

    move-result-wide v2

    return-wide v2
.end method

.method public getTotalRamMemory(Landroid/app/enterprise/ContextInfo;)J
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v8, 0x0

    .line 574
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    const-string v3, "MemTotal:"

    aput-object v3, v1, v8

    .line 575
    .local v1, "memInfoFields":[Ljava/lang/String;
    array-length v3, v1

    new-array v2, v3, [J

    .line 576
    .local v2, "memInfoSizes":[J
    const-string v3, "/proc/meminfo"

    invoke-static {v3, v1, v2}, Lcom/android/server/enterprise/adapterlayer/UtilsAdapter;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    .line 578
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 579
    aget-wide v4, v2, v0

    const-wide/16 v6, 0x400

    mul-long/2addr v4, v6

    aput-wide v4, v2, v0

    .line 578
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 582
    :cond_0
    aget-wide v4, v2, v8

    return-wide v4
.end method

.method public getWifiStatisticEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 654
    const/4 v1, 0x0

    .line 655
    .local v1, "ret":Z
    iget-object v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "MISC"

    const-string v6, "enableWifiDataStatistic"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 657
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 658
    .local v2, "value":Z
    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 659
    move v1, v2

    .line 663
    .end local v2    # "value":Z
    :cond_1
    return v1
.end method

.method public isCallingCaptureEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v5, 0x0

    .line 1391
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforcePhoneAppOrOwnerAndDeviceInventoryPermission(Landroid/app/enterprise/ContextInfo;)V

    .line 1392
    iget-object v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v5

    .line 1407
    :goto_0
    return v4

    .line 1397
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "MISC"

    const-string v7, "CallingLogEnabled"

    invoke-virtual {v4, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1399
    .local v3, "isEnabledList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1400
    .local v2, "isEnabled":Z
    if-eqz v2, :cond_1

    .line 1401
    const/4 v4, 0x1

    goto :goto_0

    .line 1404
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "isEnabled":Z
    .end local v3    # "isEnabledList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    :catch_0
    move-exception v0

    .line 1405
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "DeviceInfo"

    const-string v6, "could not open edm database"

    invoke-static {v4, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    move v4, v5

    .line 1407
    goto :goto_0
.end method

.method public isDeviceLocked(Landroid/app/enterprise/ContextInfo;)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 281
    const/4 v1, 0x0

    .line 283
    .local v1, "isLocked":Z
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "keyguard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    .line 285
    .local v2, "km":Landroid/app/KeyguardManager;
    invoke-virtual {v2}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 290
    .end local v2    # "km":Landroid/app/KeyguardManager;
    :goto_0
    return v1

    .line 286
    :catch_0
    move-exception v0

    .line 287
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 288
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public declared-synchronized isDeviceRooted(Landroid/app/enterprise/ContextInfo;)Z
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v0, 0x1

    .line 1608
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1609
    sget v1, Lcom/android/server/enterprise/device/DeviceInfo;->mRooting:I

    if-ne v1, v0, :cond_0

    .line 1610
    const-string v0, "DeviceInfo"

    const-string/jumbo v1, "isDeviceRooted : OK"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1611
    const/4 v0, 0x0

    .line 1615
    :goto_0
    monitor-exit p0

    return v0

    .line 1614
    :cond_0
    :try_start_1
    const-string v1, "DeviceInfo"

    const-string/jumbo v2, "isDeviceRooted : NOK"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1608
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isDeviceSecure(Landroid/app/enterprise/ContextInfo;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 259
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 260
    const/4 v1, 0x0

    .line 261
    .local v1, "isSecure":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 263
    .local v4, "psToken":J
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v6

    if-nez v6, :cond_0

    .line 264
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 265
    :cond_0
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v6, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-direct {v2, v6}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 266
    .local v2, "lu":Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 267
    .local v3, "userId":I
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 272
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 274
    .end local v2    # "lu":Lcom/android/internal/widget/LockPatternUtils;
    .end local v3    # "userId":I
    :goto_0
    return v1

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 270
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 272
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public isMMSCaptureEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .locals 7
    .param p1, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1636
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "MISC"

    const-string/jumbo v6, "mmsLogEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1638
    .local v3, "policyStatusList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 1639
    .local v2, "policyStatus":Ljava/lang/Boolean;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 1640
    const/4 v4, 0x1

    .line 1646
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "policyStatus":Ljava/lang/Boolean;
    .end local v3    # "policyStatusList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    :goto_0
    return v4

    .line 1643
    :catch_0
    move-exception v0

    .line 1644
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "DeviceInfo"

    const-string v5, "could not open edm database"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1646
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public isSMSCaptureEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1279
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforcePhoneAppOrOwnerAndDeviceInventoryPermission(Landroid/app/enterprise/ContextInfo;)V

    .line 1281
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "MISC"

    const-string/jumbo v6, "smsLogEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1283
    .local v3, "policyStatusList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 1284
    .local v2, "policyStatus":Ljava/lang/Boolean;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 1285
    const/4 v4, 0x1

    .line 1291
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "policyStatus":Ljava/lang/Boolean;
    .end local v3    # "policyStatusList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    :goto_0
    return v4

    .line 1288
    :catch_0
    move-exception v0

    .line 1289
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "DeviceInfo"

    const-string v5, "could not open edm database"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1291
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public onAdminAdded(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 1779
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 1783
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->updateDataUsageState()V

    .line 1784
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->clearDatabasesOnAdminRemoval(I)V

    .line 1785
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 1795
    return-void
.end method

.method public resetCallsCount(Landroid/app/enterprise/ContextInfo;)Z
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 474
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 475
    iget-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 476
    const/4 v0, 0x0

    .line 483
    :goto_0
    return v0

    .line 479
    :cond_0
    const/4 v0, 0x1

    .line 480
    .local v0, "status":Z
    iget-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v2, "success"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 481
    iget-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v2, "missed"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 482
    iget-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "dropped"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 483
    goto :goto_0
.end method

.method public resetDataCallLogging(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "time"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x0

    .line 1027
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1030
    iput-wide v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastTime:J

    .line 1031
    iput-wide v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastValue:J

    .line 1034
    const/4 v0, 0x0

    .line 1036
    .local v0, "where":Landroid/content/ContentValues;
    if-eqz p2, :cond_0

    .line 1037
    new-instance v0, Landroid/content/ContentValues;

    .end local v0    # "where":Landroid/content/ContentValues;
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1038
    .restart local v0    # "where":Landroid/content/ContentValues;
    const-string v1, "dataCallDate<=?"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "DATACALLLOG"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByFilterSmallerThan(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v1

    return v1
.end method

.method public resetDataUsage(Landroid/app/enterprise/ContextInfo;)V
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const-wide/16 v4, 0x0

    .line 714
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 715
    iget-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageEventsHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatisticsUpdateRun:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 717
    iput-wide v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageWifiTx:J

    .line 718
    iput-wide v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageWifiRx:J

    .line 719
    iput-wide v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageMobileTx:J

    .line 720
    iput-wide v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageMobileRx:J

    .line 721
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 722
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "deviceWifiSent"

    iget-wide v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageWifiTx:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 723
    const-string v1, "deviceWifiReceived"

    iget-wide v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageWifiRx:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 724
    const-string v1, "deviceNetworkSent"

    iget-wide v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageMobileTx:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 725
    const-string v1, "deviceNetworkReceived"

    iget-wide v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageMobileRx:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 726
    iget-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "DEVICE"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;)Z

    .line 728
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getTrafficWifiTx()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateWifiTx:J

    .line 729
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getTrafficWifiRx()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateWifiRx:J

    .line 730
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getTrafficMobileTx()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateMobileTx:J

    .line 731
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getTrafficMobileRx()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateMobileRx:J

    .line 732
    iget-boolean v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageTimerActivated:Z

    if-eqz v1, :cond_0

    .line 733
    iget-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageEventsHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatisticsUpdateRun:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 735
    :cond_0
    return-void
.end method

.method public setDataCallLoggingEnabled(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "status"    # Z

    .prologue
    .line 999
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1000
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1001
    .local v0, "callingUid":I
    const/4 v1, 0x0

    .line 1002
    .local v1, "ret":Z
    iget-object v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "PHONERESTRICTION"

    const-string v4, "enableDataCallLogging"

    invoke-virtual {v2, v0, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 1004
    if-eqz v1, :cond_0

    .line 1005
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->getDataCallLoggingEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataLogEnabled:Z

    .line 1006
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->dataUsageTimerActivation(Landroid/app/enterprise/ContextInfo;)V

    .line 1008
    :cond_0
    return v1
.end method

.method public setDataCallStatisticsEnabled(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "status"    # Z

    .prologue
    .line 667
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 668
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 669
    .local v0, "callingUid":I
    const/4 v1, 0x0

    .line 670
    .local v1, "ret":Z
    iget-object v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "PHONERESTRICTION"

    const-string v4, "enableWifiDataCallDataStatistic"

    invoke-virtual {v2, v0, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 672
    if-eqz v1, :cond_0

    .line 673
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->getDataCallStatisticsEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatsEnabled:Z

    .line 674
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->dataUsageTimerActivation(Landroid/app/enterprise/ContextInfo;)V

    .line 676
    :cond_0
    return v1
.end method

.method public setDataUsageTimer(Landroid/app/enterprise/ContextInfo;I)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "seconds"    # I

    .prologue
    .line 738
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 739
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 740
    .local v0, "callingUid":I
    iget-object v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageEventsHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatisticsUpdateRun:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 741
    const/4 v1, 0x0

    .line 742
    .local v1, "ret":Z
    const/4 v2, 0x1

    if-lt p2, v2, :cond_0

    const/16 v2, 0x3c

    if-le p2, v2, :cond_1

    .line 743
    :cond_0
    const/4 p2, 0x3

    .line 745
    :cond_1
    iget-object v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "MISC"

    const-string/jumbo v4, "miscDataStatisticTimer"

    invoke-virtual {v2, v0, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    .line 747
    if-eqz v1, :cond_2

    .line 748
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getStrictDataUsageTimer()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    iput v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageTimer:I

    .line 750
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageTimerActivated:Z

    if-eqz v2, :cond_3

    .line 751
    iget-object v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageEventsHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatisticsUpdateRun:Ljava/lang/Runnable;

    iget v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageTimer:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 753
    :cond_3
    return v1
.end method

.method public setWifiStatisticEnabled(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 641
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 642
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 643
    .local v0, "callingUid":I
    const/4 v1, 0x0

    .line 644
    .local v1, "ret":Z
    iget-object v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "MISC"

    const-string v4, "enableWifiDataStatistic"

    invoke-virtual {v2, v0, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 646
    if-eqz v1, :cond_0

    .line 647
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->getWifiStatisticEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mWifiStatsEnabled:Z

    .line 648
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->dataUsageTimerActivation(Landroid/app/enterprise/ContextInfo;)V

    .line 650
    :cond_0
    return v1
.end method

.method public storeCalling(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 13
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "timeStamp"    # Ljava/lang/String;
    .param p3, "duration"    # Ljava/lang/String;
    .param p4, "status"    # Ljava/lang/String;
    .param p5, "isIncoming"    # Z

    .prologue
    .line 1420
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->enforcePhone()V

    .line 1422
    iget-object v8, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1451
    :cond_0
    :goto_0
    return-void

    .line 1426
    :cond_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1427
    .local v2, "cv":Landroid/content/ContentValues;
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1428
    .local v6, "selection":Landroid/content/ContentValues;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1430
    .local v1, "adminsConcatenated":Ljava/lang/StringBuilder;
    :try_start_0
    const-string v8, "CallingLogEnabled"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1431
    iget-object v8, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "MISC"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "adminUid"

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v4

    .line 1435
    .local v4, "enabledList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    .line 1436
    .local v7, "value":Landroid/content/ContentValues;
    const-string v8, "adminUid"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1437
    const-string v8, ";"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1448
    .end local v4    # "enabledList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "value":Landroid/content/ContentValues;
    :catch_0
    move-exception v3

    .line 1449
    .local v3, "e":Ljava/lang/Exception;
    const-string v8, "DeviceInfo"

    const-string v9, "could not write log edm database"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1439
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v4    # "enabledList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1440
    const-string v9, "callingType"

    if-eqz p5, :cond_3

    const-string v8, "1"

    :goto_2
    invoke-virtual {v2, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1441
    const-string v8, "callingStatus"

    move-object/from16 v0, p4

    invoke-virtual {v2, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1442
    const-string v8, "callingAddress"

    invoke-virtual {v2, v8, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1443
    const-string v8, "callingTimeStamp"

    invoke-virtual {v2, v8, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1444
    const-string v8, "callingDuration"

    move-object/from16 v0, p3

    invoke-virtual {v2, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1445
    const-string v8, "callingCaptureAdmin"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1446
    iget-object v8, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "CallingLog"

    invoke-virtual {v8, v9, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->insertConfiguration(Ljava/lang/String;Landroid/content/ContentValues;)V

    goto/16 :goto_0

    .line 1440
    :cond_3
    const-string v8, "0"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public storeMMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 12
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "timeStamp"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "isInbound"    # Z

    .prologue
    .line 1694
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    if-ne v7, v8, :cond_0

    .line 1695
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1696
    .local v1, "cv":Landroid/content/ContentValues;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1697
    .local v5, "selection":Landroid/content/ContentValues;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1699
    .local v0, "adminsConcatenated":Ljava/lang/StringBuilder;
    :try_start_0
    const-string/jumbo v7, "mmsLogEnabled"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1700
    iget-object v7, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "MISC"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "adminUid"

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v3

    .line 1704
    .local v3, "enabledList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    .line 1705
    .local v6, "value":Landroid/content/ContentValues;
    const-string v7, "adminUid"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1706
    const-string v7, ";"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1716
    .end local v3    # "enabledList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "value":Landroid/content/ContentValues;
    :catch_0
    move-exception v2

    .line 1717
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "DeviceInfo"

    const-string v8, "could not write log edm database"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1720
    .end local v0    # "adminsConcatenated":Ljava/lang/StringBuilder;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "selection":Landroid/content/ContentValues;
    :cond_0
    :goto_1
    return-void

    .line 1708
    .restart local v0    # "adminsConcatenated":Ljava/lang/StringBuilder;
    .restart local v1    # "cv":Landroid/content/ContentValues;
    .restart local v3    # "enabledList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "selection":Landroid/content/ContentValues;
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1709
    const-string/jumbo v8, "mmsType"

    if-eqz p4, :cond_2

    const-string v7, "1"

    :goto_2
    invoke-virtual {v1, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1710
    const-string/jumbo v7, "mmsAddress"

    invoke-virtual {v1, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1711
    const-string/jumbo v7, "mmsTimeStamp"

    invoke-virtual {v1, v7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1712
    const-string/jumbo v7, "mmsBody"

    invoke-virtual {v1, v7, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1713
    const-string/jumbo v7, "mmsCaptureAdmin"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1714
    iget-object v7, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "MMS"

    invoke-virtual {v7, v8, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->insertConfiguration(Ljava/lang/String;Landroid/content/ContentValues;)V

    goto :goto_1

    .line 1709
    :cond_2
    const-string v7, "0"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 12
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "timeStamp"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "isInbound"    # Z

    .prologue
    .line 1339
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->enforcePhone()V

    .line 1340
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1341
    .local v1, "cv":Landroid/content/ContentValues;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1342
    .local v5, "selection":Landroid/content/ContentValues;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1344
    .local v0, "adminsConcatenated":Ljava/lang/StringBuilder;
    :try_start_0
    const-string/jumbo v7, "smsLogEnabled"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1345
    iget-object v7, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "MISC"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "adminUid"

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v3

    .line 1349
    .local v3, "enabledList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    .line 1350
    .local v6, "value":Landroid/content/ContentValues;
    const-string v7, "adminUid"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1351
    const-string v7, ";"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1361
    .end local v3    # "enabledList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "value":Landroid/content/ContentValues;
    :catch_0
    move-exception v2

    .line 1362
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "DeviceInfo"

    const-string v8, "could not write log edm database"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1364
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    return-void

    .line 1353
    .restart local v3    # "enabledList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1354
    const-string/jumbo v8, "smsType"

    if-eqz p4, :cond_2

    const-string v7, "1"

    :goto_2
    invoke-virtual {v1, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1355
    const-string/jumbo v7, "smsAddress"

    invoke-virtual {v1, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1356
    const-string/jumbo v7, "smsTimeStamp"

    invoke-virtual {v1, v7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1357
    const-string/jumbo v7, "smsBody"

    invoke-virtual {v1, v7, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1358
    const-string/jumbo v7, "smsCaptureAdmin"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1359
    iget-object v7, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "SMS"

    invoke-virtual {v7, v8, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->insertConfiguration(Ljava/lang/String;Landroid/content/ContentValues;)V

    goto :goto_1

    .line 1354
    :cond_2
    const-string v7, "0"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 1790
    return-void
.end method

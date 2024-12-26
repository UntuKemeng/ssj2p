.class public Lcom/android/server/wifi/WifiConfigStore;
.super Lcom/android/server/net/IpConfigStore;
.source "WifiConfigStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiConfigStore$4;,
        Lcom/android/server/wifi/WifiConfigStore$WpaConfigFileObserver;
    }
.end annotation


# static fields
.field private static final ALWAYS_ENABLE_SCAN_WHILE_ASSOCIATED_KEY:Ljava/lang/String; = "ALWAYS_ENABLE_SCAN_WHILE_ASSOCIATED"

.field private static final ASSOCIATED_FULL_SCAN_BACKOFF_KEY:Ljava/lang/String; = "ASSOCIATED_FULL_SCAN_BACKOFF_PERIOD"

.field private static final ASSOCIATED_PARTIAL_SCAN_PERIOD_KEY:Ljava/lang/String; = "ASSOCIATED_PARTIAL_SCAN_PERIOD"

.field private static final AUTH_KEY:Ljava/lang/String; = "AUTH"

.field private static final A_BAND_PREFERENCE_RSSI_THRESHOLD_KEY:Ljava/lang/String; = "A_BAND_PREFERENCE_RSSI_THRESHOLD"

.field private static final A_BAND_PREFERENCE_RSSI_THRESHOLD_LOW_KEY:Ljava/lang/String; = "A_BAND_PREFERENCE_RSSI_THRESHOLD_LOW"

.field private static final BLACKLIST_MILLI_KEY:Ljava/lang/String; = "BLACKLIST_MILLI"

.field private static final BSSID_KEY:Ljava/lang/String; = "BSSID"

.field private static final BSSID_KEY_END:Ljava/lang/String; = "/BSSID"

.field private static final BSSID_STATUS_KEY:Ljava/lang/String; = "BSSID_STATUS"

.field private static final CHOICE_KEY:Ljava/lang/String; = "CHOICE"

.field private static final CONFIG_KEY:Ljava/lang/String; = "CONFIG"

.field private static final CONNECT_UID_KEY:Ljava/lang/String; = "CONNECT_UID_KEY"

.field private static final CREATION_TIME_KEY:Ljava/lang/String; = "CREATION_TIME"

.field private static final CREATOR_NAME_KEY:Ljava/lang/String; = "CREATOR_NAME"

.field private static final CREATOR_UID_KEY:Ljava/lang/String; = "CREATOR_UID_KEY"

.field private static final DATE_KEY:Ljava/lang/String; = "DATE"

.field private static final DBG:Z = true

.field private static final DEFAULT_GW_KEY:Ljava/lang/String; = "DEFAULT_GW"

.field private static final DEFAULT_MAX_DHCP_RETRIES:I = 0x1

.field private static final DELETED_CONFIG_PSK:Ljava/lang/String; = "Mjkd86jEMGn79KhKll298Uu7-deleted"

.field private static final DELETED_CRC32_KEY:Ljava/lang/String; = "DELETED_CRC32"

.field private static final DELETED_EPHEMERAL_KEY:Ljava/lang/String; = "DELETED_EPHEMERAL"

.field private static final DID_SELF_ADD_KEY:Ljava/lang/String; = "DID_SELF_ADD"

.field static final EMPTY_VALUE:Ljava/lang/String; = "NULL"

.field private static final ENABLE_AUTOJOIN_WHILE_ASSOCIATED_KEY:Ljava/lang/String; = "ENABLE_AUTOJOIN_WHILE_ASSOCIATED:   "

.field private static final ENABLE_AUTO_JOIN_WHILE_ASSOCIATED_KEY:Ljava/lang/String; = "ENABLE_AUTO_JOIN_WHILE_ASSOCIATED"

.field private static final ENABLE_CHIP_WAKE_UP_WHILE_ASSOCIATED_KEY:Ljava/lang/String; = "ENABLE_CHIP_WAKE_UP_WHILE_ASSOCIATED"

.field private static final ENABLE_FULL_BAND_SCAN_WHEN_ASSOCIATED_KEY:Ljava/lang/String; = "ENABLE_FULL_BAND_SCAN_WHEN_ASSOCIATED"

.field private static final ENABLE_HAL_BASED_PNO:Ljava/lang/String; = "ENABLE_HAL_BASED_PNO"

.field private static final ENABLE_RSSI_POLL_WHILE_ASSOCIATED_KEY:Ljava/lang/String; = "ENABLE_RSSI_POLL_WHILE_ASSOCIATED_KEY"

.field private static final ENTERPRISE_CONFIG_SUPPLICANT_KEYS:[Ljava/lang/String;

.field private static final EPHEMERAL_KEY:Ljava/lang/String; = "EPHEMERAL"

.field private static final FAILURE_KEY:Ljava/lang/String; = "FAILURE"

.field private static final FQDN_KEY:Ljava/lang/String; = "FQDN"

.field private static final FREQ_KEY:Ljava/lang/String; = "FREQ"

.field private static final G_BAND_PREFERENCE_RSSI_THRESHOLD_KEY:Ljava/lang/String; = "G_BAND_PREFERENCE_RSSI_THRESHOLD"

.field private static final JOIN_ATTEMPT_BOOST_KEY:Ljava/lang/String; = "JOIN_ATTEMPT_BOOST"

.field private static final LINK_KEY:Ljava/lang/String; = "LINK"

.field private static final MAX_NUM_ACTIVE_CHANNELS_FOR_PARTIAL_SCANS_KEY:Ljava/lang/String; = "MAX_NUM_ACTIVE_CHANNELS_FOR_PARTIAL_SCANS"

.field private static final MAX_NUM_PASSIVE_CHANNELS_FOR_PARTIAL_SCANS_KEY:Ljava/lang/String; = "MAX_NUM_PASSIVE_CHANNELS_FOR_PARTIAL_SCANS"

.field private static final MILLI_KEY:Ljava/lang/String; = "MILLI"

.field private static final NETWORK_ID_KEY:Ljava/lang/String; = "ID"

.field private static final NL:Ljava/lang/String; = "\n"

.field private static final NO_INTERNET_ACCESS_REPORTS_KEY:Ljava/lang/String; = "NO_INTERNET_ACCESS_REPORTS"

.field private static final NUM_ASSOCIATION_KEY:Ljava/lang/String; = "NUM_ASSOCIATION"

.field private static final NUM_AUTH_FAILURES_KEY:Ljava/lang/String; = "AUTH_FAILURES"

.field private static final NUM_CONNECTION_FAILURES_KEY:Ljava/lang/String; = "CONNECT_FAILURES"

.field private static final NUM_IP_CONFIG_FAILURES_KEY:Ljava/lang/String; = "IP_CONFIG_FAILURES"

.field public static final OLD_PRIVATE_KEY_NAME:Ljava/lang/String; = "private_key"

.field private static final ONLY_LINK_SAME_CREDENTIAL_CONFIGURATIONS_KEY:Ljava/lang/String; = "ONLY_LINK_SAME_CREDENTIAL_CONFIGURATIONS"

.field private static final PEER_CONFIGURATION_KEY:Ljava/lang/String; = "PEER_CONFIGURATION"

.field private static final PPS_FILE:Ljava/lang/String; = "/data/misc/wifi/PerProviderSubscription.conf"

.field private static final PRIORITY_KEY:Ljava/lang/String; = "PRIORITY"

.field private static final RSSI_KEY:Ljava/lang/String; = "RSSI"

.field private static final SCORER_OVERRIDE_AND_SWITCH_KEY:Ljava/lang/String; = "SCORER_OVERRIDE_AND_SWITCH"

.field private static final SCORER_OVERRIDE_KEY:Ljava/lang/String; = "SCORER_OVERRIDE"

.field private static final SELF_ADDED_KEY:Ljava/lang/String; = "SELF_ADDED"

.field private static final SEPARATOR:Ljava/lang/String; = ":  "

.field private static final SSID_KEY:Ljava/lang/String; = "SSID"

.field private static final STATUS_KEY:Ljava/lang/String; = "AUTO_JOIN_STATUS"

.field private static final SUPPLICANT_CONFIG_FILE:Ljava/lang/String; = "/data/misc/wifi/wpa_supplicant.conf"

.field private static final SUPPLICANT_CONFIG_FILE_BACKUP:Ljava/lang/String; = "/data/misc/wifi/wpa_supplicant.conf.tmp"

.field private static final SUPPLICANT_DISABLE_REASON_KEY:Ljava/lang/String; = "SUP_DIS_REASON"

.field private static final SUPPLICANT_STATUS_KEY:Ljava/lang/String; = "SUP_STATUS"

.field public static final TAG:Ljava/lang/String; = "WifiConfigStore"

.field private static final THRESHOLD_BAD_RSSI_24_KEY:Ljava/lang/String; = "THRESHOLD_BAD_RSSI_24"

.field private static final THRESHOLD_BAD_RSSI_5_KEY:Ljava/lang/String; = "THRESHOLD_BAD_RSSI_5"

.field private static final THRESHOLD_GOOD_RSSI_24_KEY:Ljava/lang/String; = "THRESHOLD_GOOD_RSSI_24"

.field private static final THRESHOLD_GOOD_RSSI_5_KEY:Ljava/lang/String; = "THRESHOLD_GOOD_RSSI_5"

.field private static final THRESHOLD_INITIAL_AUTO_JOIN_ATTEMPT_RSSI_MIN_24G_KEY:Ljava/lang/String; = "THRESHOLD_INITIAL_AUTO_JOIN_ATTEMPT_RSSI_MIN_24G"

.field private static final THRESHOLD_INITIAL_AUTO_JOIN_ATTEMPT_RSSI_MIN_5G_KEY:Ljava/lang/String; = "THRESHOLD_INITIAL_AUTO_JOIN_ATTEMPT_RSSI_MIN_5G"

.field private static final THRESHOLD_LOW_RSSI_24_KEY:Ljava/lang/String; = "THRESHOLD_LOW_RSSI_24"

.field private static final THRESHOLD_LOW_RSSI_5_KEY:Ljava/lang/String; = "THRESHOLD_LOW_RSSI_5"

.field private static final THRESHOLD_MAX_RX_PACKETS_FOR_FULL_SCANS_KEY:Ljava/lang/String; = "THRESHOLD_MAX_RX_PACKETS_FOR_FULL_SCANS"

.field private static final THRESHOLD_MAX_RX_PACKETS_FOR_NETWORK_SWITCHING_KEY:Ljava/lang/String; = "THRESHOLD_MAX_RX_PACKETS_FOR_NETWORK_SWITCHING"

.field private static final THRESHOLD_MAX_RX_PACKETS_FOR_PARTIAL_SCANS_KEY:Ljava/lang/String; = "THRESHOLD_MAX_RX_PACKETS_FOR_PARTIAL_SCANS"

.field private static final THRESHOLD_MAX_TX_PACKETS_FOR_FULL_SCANS_KEY:Ljava/lang/String; = "THRESHOLD_MAX_TX_PACKETS_FOR_FULL_SCANS"

.field private static final THRESHOLD_MAX_TX_PACKETS_FOR_NETWORK_SWITCHING_KEY:Ljava/lang/String; = "THRESHOLD_MAX_TX_PACKETS_FOR_NETWORK_SWITCHING"

.field private static final THRESHOLD_MAX_TX_PACKETS_FOR_PARTIAL_SCANS_KEY:Ljava/lang/String; = "THRESHOLD_MAX_TX_PACKETS_FOR_PARTIAL_SCANS"

.field private static final THRESHOLD_UNBLACKLIST_HARD_24G_KEY:Ljava/lang/String; = "THRESHOLD_UNBLACKLIST_HARD_24G"

.field private static final THRESHOLD_UNBLACKLIST_HARD_5G_KEY:Ljava/lang/String; = "THRESHOLD_UNBLACKLIST_HARD_5G"

.field private static final THRESHOLD_UNBLACKLIST_SOFT_24G_KEY:Ljava/lang/String; = "THRESHOLD_UNBLACKLIST_SOFT_24G"

.field private static final THRESHOLD_UNBLACKLIST_SOFT_5G_KEY:Ljava/lang/String; = "THRESHOLD_UNBLACKLIST_SOFT_5G"

.field private static final UPDATE_NAME_KEY:Ljava/lang/String; = "UPDATE_NAME"

.field private static final UPDATE_TIME_KEY:Ljava/lang/String; = "UPDATE_TIME"

.field private static final UPDATE_UID_KEY:Ljava/lang/String; = "UPDATE_UID"

.field private static final USER_APPROVED_KEY:Ljava/lang/String; = "USER_APPROVED"

.field private static final VALIDATED_INTERNET_ACCESS_KEY:Ljava/lang/String; = "VALIDATED_INTERNET_ACCESS"

.field private static VDBG:Z = false

.field private static VVDBG:Z = false

.field private static final WIFI_ERRORCODE:Z

.field private static final WIFI_VERBOSE_LOGS_KEY:Ljava/lang/String; = "WIFI_VERBOSE_LOGS"

.field private static final autoJoinConfigFile:Ljava/lang/String;

.field public static final idStringVarName:Ljava/lang/String; = "id_str"

.field private static final ipConfigFile:Ljava/lang/String;

.field private static final is3LMAllowed:Z = false

.field private static mConnectChoice:Ljava/util/regex/Pattern; = null

.field private static final mCorpNetPriorityLimit:I = 0x2710

.field private static mLastCorporatePriority:I = 0x0

.field private static mLastOpenPriority:I = 0x0

.field private static final mOpenNetPriorityLimit:I = 0x1388

.field private static final mPriorityRuleAs:Ljava/lang/String;

.field private static final mReMovableDefaultAp:Z

.field public static final maxNumScanCacheEntries:I = 0x80

.field private static final networkHistoryConfigFile:Ljava/lang/String;

.field private static final sKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final alwaysEnableScansWhileAssociated:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final associatedFullScanBackoff:Ljava/util/concurrent/atomic/AtomicInteger;

.field public associatedFullScanMaxIntervalMilli:I

.field public associatedHysteresisHigh:I

.field public associatedHysteresisLow:I

.field public badLinkSpeed24:I

.field public badLinkSpeed5:I

.field public bandPreferenceBoostFactor5:I

.field public final bandPreferenceBoostThreshold5:Ljava/util/concurrent/atomic/AtomicInteger;

.field public bandPreferencePenaltyFactor5:I

.field public final bandPreferencePenaltyThreshold5:Ljava/util/concurrent/atomic/AtomicInteger;

.field public currentNetworkBoost:I

.field public enable5GHzPreference:Z

.field public final enableAutoJoinWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final enableChipWakeUpWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final enableFullBandScanWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final enableHalBasedPno:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public enableLinkDebouncing:Z

.field public final enableRssiPollWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final enableSsidWhitelist:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final enableVerboseLogging:Ljava/util/concurrent/atomic/AtomicInteger;

.field public enableWifiCellularHandoverUserTriggeredAdjustment:Z

.field public goodLinkSpeed24:I

.field public goodLinkSpeed5:I

.field private lastSelectedConfiguration:Ljava/lang/String;

.field public lastUnwantedNetworkDisconnectTimestamp:J

.field private final mAnqpCache:Lcom/android/server/wifi/hotspot2/AnqpCache;

.field mBssidBlacklist:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mCachedPnoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;",
            ">;"
        }
    .end annotation
.end field

.field private final mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

.field private mContext:Landroid/content/Context;

.field public mDeletedEphemeralSSIDs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDeletedSSIDs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mFileObserver:Lcom/android/server/wifi/WifiConfigStore$WpaConfigFileObserver;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mLastPriority:I

.field private final mLocalLog:Landroid/util/LocalLog;

.field mLostConfigsDbg:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mMOManager:Lcom/android/server/wifi/hotspot2/omadm/MOManager;

.field private final mSIMAccessor:Lcom/android/server/wifi/SIMAccessor;

.field private mScanDetailCaches:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/wifi/ScanDetailCache;",
            ">;"
        }
    .end annotation
.end field

.field private final mSupplicantBridge:Lcom/android/server/wifi/hotspot2/SupplicantBridge;

.field private mWifiNative:Lcom/android/server/wifi/WifiNative;

.field private mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

.field public maxAuthErrorsToBlacklist:I

.field public maxConnectionErrorsToBlacklist:I

.field public final maxNumActiveChannelsForPartialScans:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final maxNumPassiveChannelsForPartialScans:Ljava/util/concurrent/atomic/AtomicInteger;

.field public maxRxPacketForFullScans:I

.field public final maxRxPacketForNetworkSwitching:Ljava/util/concurrent/atomic/AtomicInteger;

.field public maxRxPacketForPartialScans:I

.field public maxTxPacketForFullScans:I

.field public final maxTxPacketForNetworkSwitching:Ljava/util/concurrent/atomic/AtomicInteger;

.field public maxTxPacketForPartialScans:I

.field public networkSwitchingBlackListPeriodMilli:I

.field public onlyLinkSameCredentialConfigurations:Z

.field public roamOnAny:Z

.field public scanResultRssiLevelPatchUp:I

.field showNetworks:Z

.field public final thresholdBadRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final thresholdBadRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final thresholdGoodRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final thresholdGoodRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final thresholdInitialAutoJoinAttemptMin24RSSI:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final thresholdInitialAutoJoinAttemptMin5RSSI:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final thresholdLowRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final thresholdLowRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final thresholdUnblacklistThreshold24Hard:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final thresholdUnblacklistThreshold24Soft:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final thresholdUnblacklistThreshold5Hard:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final thresholdUnblacklistThreshold5Soft:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final wifiAssociatedLongScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final wifiAssociatedShortScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

.field public wifiConfigBlacklistMinTimeMilli:I

.field public wifiConfigLastSelectionHysteresis:I

.field public final wifiDisconnectedLongScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final wifiDisconnectedShortScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 180
    sput-boolean v2, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    .line 181
    sput-boolean v2, Lcom/android/server/wifi/WifiConfigStore;->VVDBG:Z

    .line 219
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_PriorityRuleAs"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiConfigStore;->mPriorityRuleAs:Ljava/lang/String;

    .line 221
    sput v3, Lcom/android/server/wifi/WifiConfigStore;->mLastOpenPriority:I

    .line 223
    sput v3, Lcom/android/server/wifi/WifiConfigStore;->mLastCorporatePriority:I

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/misc/wifi/ipconfig.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiConfigStore;->ipConfigFile:Ljava/lang/String;

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/misc/wifi/networkHistory.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiConfigStore;->networkHistoryConfigFile:Ljava/lang/String;

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/misc/wifi/autojoinconfig.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiConfigStore;->autoJoinConfigFile:Ljava/lang/String;

    .line 467
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    .line 471
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_RemovableDefaultAP"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wifi/WifiConfigStore;->mReMovableDefaultAp:Z

    .line 478
    const-string v0, "(.*)=([0-9]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiConfigStore;->mConnectChoice:Ljava/util/regex/Pattern;

    .line 498
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "eap"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "phase2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "identity"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "anonymous_identity"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "password"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "client_cert"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ca_cert"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "subject_match"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "engine"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "engine_id"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "key_id"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "altsubject_match"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "domain_suffix_match"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "phase1"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "pac_file"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "wapi_as_cert"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "wapi_user_cert"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/wifi/WifiConfigStore;->ENTERPRISE_CONFIG_SUPPLICANT_KEYS:[Ljava/lang/String;

    .line 530
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EnableDetailEapErrorCodesAndState"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wifi/WifiConfigStore;->WIFI_ERRORCODE:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WifiNative;)V
    .locals 7
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "w"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p3, "wn"    # Lcom/android/server/wifi/WifiNative;

    .prologue
    const/4 v6, 0x6

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 566
    invoke-direct {p0}, Lcom/android/server/net/IpConfigStore;-><init>()V

    .line 188
    new-instance v1, Lcom/android/server/wifi/ConfigurationMap;

    invoke-direct {v1}, Lcom/android/server/wifi/ConfigurationMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    .line 205
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mDeletedSSIDs:Ljava/util/Set;

    .line 214
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mDeletedEphemeralSSIDs:Ljava/util/Set;

    .line 217
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mLastPriority:I

    .line 379
    const/16 v1, 0x8

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->maxTxPacketForFullScans:I

    .line 380
    const/16 v1, 0x10

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->maxRxPacketForFullScans:I

    .line 382
    const/16 v1, 0x28

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->maxTxPacketForPartialScans:I

    .line 383
    const/16 v1, 0x50

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->maxRxPacketForPartialScans:I

    .line 385
    const v1, 0x493e0

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->associatedFullScanMaxIntervalMilli:I

    .line 389
    const v1, 0xa4cb800

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->networkSwitchingBlackListPeriodMilli:I

    .line 391
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->bandPreferenceBoostFactor5:I

    .line 392
    iput v3, p0, Lcom/android/server/wifi/WifiConfigStore;->bandPreferencePenaltyFactor5:I

    .line 394
    iput v6, p0, Lcom/android/server/wifi/WifiConfigStore;->badLinkSpeed24:I

    .line 395
    const/16 v1, 0xc

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->badLinkSpeed5:I

    .line 396
    const/16 v1, 0x18

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->goodLinkSpeed24:I

    .line 397
    const/16 v1, 0x24

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->goodLinkSpeed5:I

    .line 399
    const/16 v1, 0x9

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->maxAuthErrorsToBlacklist:I

    .line 400
    const/16 v1, 0x9

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->maxConnectionErrorsToBlacklist:I

    .line 401
    const v1, 0x493e0

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->wifiConfigBlacklistMinTimeMilli:I

    .line 404
    const v1, 0x2bf20

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->wifiConfigLastSelectionHysteresis:I

    .line 407
    const/16 v1, 0xe

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->associatedHysteresisHigh:I

    .line 408
    const/16 v1, 0x8

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->associatedHysteresisLow:I

    .line 410
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiConfigStore;->showNetworks:Z

    .line 412
    iput-boolean v4, p0, Lcom/android/server/wifi/WifiConfigStore;->roamOnAny:Z

    .line 413
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiConfigStore;->onlyLinkSameCredentialConfigurations:Z

    .line 415
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiConfigStore;->enableLinkDebouncing:Z

    .line 416
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiConfigStore;->enable5GHzPreference:Z

    .line 417
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiConfigStore;->enableWifiCellularHandoverUserTriggeredAdjustment:Z

    .line 419
    const/16 v1, 0x19

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->currentNetworkBoost:I

    .line 420
    const/16 v1, -0x55

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->scanResultRssiLevelPatchUp:I

    .line 424
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->enableHalBasedPno:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 425
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->enableSsidWhitelist:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 426
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->enableAutoJoinWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 427
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->enableFullBandScanWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 428
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->enableChipWakeUpWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 429
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->enableRssiPollWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 430
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    sget v2, Landroid/net/wifi/WifiConfiguration;->INITIAL_AUTO_JOIN_ATTEMPT_MIN_5:I

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdInitialAutoJoinAttemptMin5RSSI:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 432
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    sget v2, Landroid/net/wifi/WifiConfiguration;->INITIAL_AUTO_JOIN_ATTEMPT_MIN_24:I

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdInitialAutoJoinAttemptMin24RSSI:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 434
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    sget v2, Landroid/net/wifi/WifiConfiguration;->UNBLACKLIST_THRESHOLD_5_HARD:I

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdUnblacklistThreshold5Hard:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 436
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    sget v2, Landroid/net/wifi/WifiConfiguration;->UNBLACKLIST_THRESHOLD_5_SOFT:I

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdUnblacklistThreshold5Soft:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 438
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    sget v2, Landroid/net/wifi/WifiConfiguration;->UNBLACKLIST_THRESHOLD_24_HARD:I

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdUnblacklistThreshold24Hard:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 440
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    sget v2, Landroid/net/wifi/WifiConfiguration;->UNBLACKLIST_THRESHOLD_24_SOFT:I

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdUnblacklistThreshold24Soft:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 442
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    sget v2, Landroid/net/wifi/WifiConfiguration;->GOOD_RSSI_5:I

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdGoodRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 444
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    sget v2, Landroid/net/wifi/WifiConfiguration;->LOW_RSSI_5:I

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdLowRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 445
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    sget v2, Landroid/net/wifi/WifiConfiguration;->BAD_RSSI_5:I

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdBadRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 446
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    sget v2, Landroid/net/wifi/WifiConfiguration;->GOOD_RSSI_24:I

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdGoodRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 448
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    sget v2, Landroid/net/wifi/WifiConfiguration;->LOW_RSSI_24:I

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdLowRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 449
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    sget v2, Landroid/net/wifi/WifiConfiguration;->BAD_RSSI_24:I

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdBadRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 450
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v2, 0x28

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->maxTxPacketForNetworkSwitching:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 451
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v2, 0x50

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->maxRxPacketForNetworkSwitching:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 452
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->enableVerboseLogging:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 453
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    sget v2, Landroid/net/wifi/WifiConfiguration;->A_BAND_PREFERENCE_RSSI_THRESHOLD:I

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->bandPreferenceBoostThreshold5:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 455
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->associatedFullScanBackoff:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 457
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    sget v2, Landroid/net/wifi/WifiConfiguration;->G_BAND_PREFERENCE_RSSI_THRESHOLD:I

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->bandPreferencePenaltyThreshold5:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 459
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->alwaysEnableScansWhileAssociated:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 460
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->maxNumPassiveChannelsForPartialScans:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 461
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v6}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->maxNumActiveChannelsForPartialScans:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 462
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v2, 0x3a98

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->wifiDisconnectedShortScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 463
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const v2, 0x1d4c0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->wifiDisconnectedLongScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 464
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v2, 0x4e20

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->wifiAssociatedShortScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 465
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const v2, 0x2bf20

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->wifiAssociatedLongScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 514
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/wifi/WifiConfigStore;->lastUnwantedNetworkDisconnectTimestamp:J

    .line 531
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    .line 540
    iput-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->lastSelectedConfiguration:Ljava/lang/String;

    .line 545
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mCachedPnoList:Ljava/util/ArrayList;

    .line 551
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mBssidBlacklist:Ljava/util/HashSet;

    .line 557
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mLostConfigsDbg:Ljava/util/HashSet;

    .line 567
    iput-object p1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    .line 568
    iput-object p3, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    .line 569
    iput-object p2, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 572
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "ENABLE_AUTO_JOIN_WHILE_ASSOCIATED"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->enableAutoJoinWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "ENABLE_FULL_BAND_SCAN_WHEN_ASSOCIATED"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->enableFullBandScanWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "ENABLE_CHIP_WAKE_UP_WHILE_ASSOCIATED"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->enableChipWakeUpWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "ENABLE_RSSI_POLL_WHILE_ASSOCIATED_KEY"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->enableRssiPollWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "THRESHOLD_INITIAL_AUTO_JOIN_ATTEMPT_RSSI_MIN_5G"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdInitialAutoJoinAttemptMin5RSSI:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "THRESHOLD_INITIAL_AUTO_JOIN_ATTEMPT_RSSI_MIN_24G"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdInitialAutoJoinAttemptMin24RSSI:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "THRESHOLD_UNBLACKLIST_HARD_5G"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdUnblacklistThreshold5Hard:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "THRESHOLD_UNBLACKLIST_SOFT_5G"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdUnblacklistThreshold5Soft:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "THRESHOLD_UNBLACKLIST_HARD_24G"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdUnblacklistThreshold24Hard:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "THRESHOLD_UNBLACKLIST_SOFT_24G"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdUnblacklistThreshold24Soft:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "THRESHOLD_GOOD_RSSI_5"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdGoodRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "THRESHOLD_LOW_RSSI_5"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdLowRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "THRESHOLD_BAD_RSSI_5"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdBadRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "THRESHOLD_GOOD_RSSI_24"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdGoodRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "THRESHOLD_LOW_RSSI_24"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdLowRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "THRESHOLD_BAD_RSSI_24"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdBadRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "THRESHOLD_MAX_TX_PACKETS_FOR_NETWORK_SWITCHING"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->maxTxPacketForNetworkSwitching:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "THRESHOLD_MAX_RX_PACKETS_FOR_NETWORK_SWITCHING"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->maxRxPacketForNetworkSwitching:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "THRESHOLD_MAX_TX_PACKETS_FOR_FULL_SCANS"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->maxTxPacketForNetworkSwitching:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "THRESHOLD_MAX_RX_PACKETS_FOR_FULL_SCANS"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->maxRxPacketForNetworkSwitching:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "THRESHOLD_MAX_TX_PACKETS_FOR_PARTIAL_SCANS"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->maxTxPacketForNetworkSwitching:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "THRESHOLD_MAX_RX_PACKETS_FOR_PARTIAL_SCANS"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->maxRxPacketForNetworkSwitching:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "WIFI_VERBOSE_LOGS"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->enableVerboseLogging:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "A_BAND_PREFERENCE_RSSI_THRESHOLD"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->bandPreferenceBoostThreshold5:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "ASSOCIATED_PARTIAL_SCAN_PERIOD"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->wifiAssociatedShortScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "ASSOCIATED_PARTIAL_SCAN_PERIOD"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->wifiAssociatedShortScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "ASSOCIATED_FULL_SCAN_BACKOFF_PERIOD"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->associatedFullScanBackoff:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "G_BAND_PREFERENCE_RSSI_THRESHOLD"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->bandPreferencePenaltyThreshold5:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "ALWAYS_ENABLE_SCAN_WHILE_ASSOCIATED"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->alwaysEnableScansWhileAssociated:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "MAX_NUM_PASSIVE_CHANNELS_FOR_PARTIAL_SCANS"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->maxNumPassiveChannelsForPartialScans:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "MAX_NUM_ACTIVE_CHANNELS_FOR_PARTIAL_SCANS"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->maxNumActiveChannelsForPartialScans:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "ENABLE_HAL_BASED_PNO"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->enableHalBasedPno:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "ENABLE_HAL_BASED_PNO"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->enableSsidWhitelist:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiConfigStore;->showNetworks:Z

    if-eqz v1, :cond_1

    .line 608
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getLocalLog()Landroid/util/LocalLog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    .line 609
    new-instance v1, Lcom/android/server/wifi/WifiConfigStore$WpaConfigFileObserver;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/WifiConfigStore$WpaConfigFileObserver;-><init>(Lcom/android/server/wifi/WifiConfigStore;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mFileObserver:Lcom/android/server/wifi/WifiConfigStore$WpaConfigFileObserver;

    .line 610
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mFileObserver:Lcom/android/server/wifi/WifiConfigStore$WpaConfigFileObserver;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiConfigStore$WpaConfigFileObserver;->startWatching()V

    .line 616
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->wifiAssociatedShortScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e002d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 618
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->wifiAssociatedLongScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e002d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 620
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->wifiDisconnectedShortScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e002b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 622
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->wifiDisconnectedLongScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e002c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 625
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1120024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiConfigStore;->onlyLinkSameCredentialConfigurations:Z

    .line 627
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->maxNumActiveChannelsForPartialScans:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0032

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 629
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->maxNumPassiveChannelsForPartialScans:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0033

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 631
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0030

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->associatedFullScanMaxIntervalMilli:I

    .line 633
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->associatedFullScanBackoff:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e002f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 635
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x112001e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiConfigStore;->enableLinkDebouncing:Z

    .line 638
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x112001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiConfigStore;->enable5GHzPreference:Z

    .line 641
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->bandPreferenceBoostFactor5:I

    .line 643
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->bandPreferencePenaltyFactor5:I

    .line 646
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->bandPreferencePenaltyThreshold5:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 648
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->bandPreferenceBoostThreshold5:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 651
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->associatedHysteresisHigh:I

    .line 653
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->associatedHysteresisLow:I

    .line 656
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdBadRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0016

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 658
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdLowRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0017

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 660
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdGoodRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0018

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 662
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdBadRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0019

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 664
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdLowRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 666
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdGoodRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 669
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1120022

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiConfigStore;->enableWifiCellularHandoverUserTriggeredAdjustment:Z

    .line 672
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->badLinkSpeed24:I

    .line 674
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e001d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->badLinkSpeed5:I

    .line 676
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e001e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->goodLinkSpeed24:I

    .line 678
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->goodLinkSpeed5:I

    .line 699
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0027

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->networkSwitchingBlackListPeriodMilli:I

    .line 702
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->enableHalBasedPno:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1120026

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 705
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->enableSsidWhitelist:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1120027

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 707
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->enableHalBasedPno:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->enableSsidWhitelist:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 708
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->enableSsidWhitelist:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 711
    :cond_0
    const/4 v0, 0x0

    .line 712
    .local v0, "hs2on":Z
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Passpoint is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_2

    const-string v1, "enabled"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    new-instance v1, Lcom/android/server/wifi/hotspot2/omadm/MOManager;

    new-instance v2, Ljava/io/File;

    const-string v3, "/data/misc/wifi/PerProviderSubscription.conf"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v0}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;-><init>(Ljava/io/File;Z)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mMOManager:Lcom/android/server/wifi/hotspot2/omadm/MOManager;

    .line 715
    new-instance v1, Lcom/android/server/wifi/hotspot2/AnqpCache;

    invoke-direct {v1}, Lcom/android/server/wifi/hotspot2/AnqpCache;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mAnqpCache:Lcom/android/server/wifi/hotspot2/AnqpCache;

    .line 716
    new-instance v1, Lcom/android/server/wifi/hotspot2/SupplicantBridge;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-direct {v1, v2, p0}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;-><init>(Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/WifiConfigStore;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mSupplicantBridge:Lcom/android/server/wifi/hotspot2/SupplicantBridge;

    .line 717
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mScanDetailCaches:Ljava/util/HashMap;

    .line 719
    new-instance v1, Lcom/android/server/wifi/SIMAccessor;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/wifi/SIMAccessor;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mSIMAccessor:Lcom/android/server/wifi/SIMAccessor;

    .line 720
    return-void

    .line 612
    .end local v0    # "hs2on":Z
    :cond_1
    iput-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    .line 613
    iput-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mFileObserver:Lcom/android/server/wifi/WifiConfigStore$WpaConfigFileObserver;

    goto/16 :goto_0

    .line 712
    .restart local v0    # "hs2on":Z
    :cond_2
    const-string v1, "disabled"

    goto :goto_1
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 175
    sget-boolean v0, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/wifi/WifiConfigStore;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiConfigStore;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wifi/WifiConfigStore;)Lcom/android/server/wifi/hotspot2/omadm/MOManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiConfigStore;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mMOManager:Lcom/android/server/wifi/hotspot2/omadm/MOManager;

    return-object v0
.end method

.method static synthetic access$300(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/util/BitSet;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 175
    invoke-static {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wifi/WifiConfigStore;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiConfigStore;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mDeletedSSIDs:Ljava/util/Set;

    return-object v0
.end method

.method private addOrUpdateNetworkNative(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;
    .locals 46
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "uid"    # I

    .prologue
    .line 3447
    sget-boolean v5, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addOrUpdateNetworkNative "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    .line 3448
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mMOManager:Lcom/android/server/wifi/hotspot2/omadm/MOManager;

    invoke-virtual {v5}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 3449
    const-string v5, "WifiConfigStore"

    const-string v6, "Passpoint is not enabled"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3450
    new-instance v37, Lcom/android/server/wifi/NetworkUpdateResult;

    const/4 v5, -0x1

    move-object/from16 v0, v37

    invoke-direct {v0, v5}, Lcom/android/server/wifi/NetworkUpdateResult;-><init>(I)V

    .line 4174
    :goto_0
    return-object v37

    .line 3453
    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v35, v0

    .line 3454
    .local v35, "netId":I
    const/16 v36, 0x0

    .line 3456
    .local v36, "newNetwork":Z
    const/4 v5, -0x1

    move/from16 v0, v35

    if-ne v0, v5, :cond_5

    .line 3460
    move-object/from16 v0, p1

    iget-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->isSpecialSsid:Z

    if-nez v5, :cond_3

    .line 3461
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiConfigStore;->getSpecialSsid()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v42

    .line 3462
    .local v42, "specialConfig":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v5, :cond_3

    if-eqz v42, :cond_3

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v0, v42

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3464
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    const-string v6, "wifi"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/net/wifi/WifiManager;

    .line 3465
    .local v33, "mWifiManager":Landroid/net/wifi/WifiManager;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v34

    .line 3466
    .local v34, "msg":Landroid/os/Message;
    const/16 v5, 0x104

    move-object/from16 v0, v34

    iput v5, v0, Landroid/os/Message;->what:I

    .line 3467
    if-eqz v33, :cond_2

    invoke-virtual/range {v33 .. v34}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    .line 3468
    const-string v5, "WifiConfigStore"

    const-string v6, "Failed to reset special ssid."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3470
    :cond_2
    invoke-virtual/range {v34 .. v34}, Landroid/os/Message;->recycle()V

    .line 3477
    .end local v33    # "mWifiManager":Landroid/net/wifi/WifiManager;
    .end local v34    # "msg":Landroid/os/Message;
    .end local v42    # "specialConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_3
    const/16 v40, 0x0

    .line 3478
    .local v40, "savedConfig":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v43, v0

    .line 3479
    .local v43, "ssid":Ljava/lang/String;
    if-eqz v43, :cond_4

    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    const/4 v5, 0x0

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x22

    if-eq v5, v6, :cond_4

    .line 3480
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v43

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 3482
    :cond_4
    move-object/from16 v0, p1

    iget-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->isVendorSpecificSsid:Z

    if-eqz v5, :cond_7

    .line 3483
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->configKeyWithHS20AP()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/ConfigurationMap;->getByConfigKeyWithHS20AP(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v40

    .line 3488
    :goto_1
    if-eqz v40, :cond_8

    .line 3489
    move-object/from16 v0, v40

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v35, v0

    .line 3506
    .end local v40    # "savedConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v43    # "ssid":Ljava/lang/String;
    :cond_5
    :goto_2
    const/16 v44, 0x1

    .line 3510
    .local v44, "updateFailed":Z
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v5, :cond_b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v6, "ssid"

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/server/wifi/WifiConfigStore;->encodeSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move/from16 v0, v35

    invoke-virtual {v5, v0, v6, v8}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 3515
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to set SSID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 4026
    :goto_3
    if-eqz v44, :cond_3f

    .line 4027
    if-eqz v36, :cond_6

    .line 4028
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move/from16 v0, v35

    invoke-virtual {v5, v0}, Lcom/android/server/wifi/WifiNative;->removeNetwork(I)Z

    .line 4029
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to set a network variable, removed network: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 4031
    :cond_6
    new-instance v37, Lcom/android/server/wifi/NetworkUpdateResult;

    const/4 v5, -0x1

    move-object/from16 v0, v37

    invoke-direct {v0, v5}, Lcom/android/server/wifi/NetworkUpdateResult;-><init>(I)V

    goto/16 :goto_0

    .line 3485
    .end local v44    # "updateFailed":Z
    .restart local v40    # "savedConfig":Landroid/net/wifi/WifiConfiguration;
    .restart local v43    # "ssid":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/ConfigurationMap;->getByConfigKey(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v40

    goto :goto_1

    .line 3491
    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mMOManager:Lcom/android/server/wifi/hotspot2/omadm/MOManager;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getHomeSP(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 3492
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addOrUpdateNetworkNative passpoint "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " was found, but no network Id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 3495
    :cond_9
    const/16 v36, 0x1

    .line 3496
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiNative;->addNetwork()I

    move-result v35

    .line 3497
    if-gez v35, :cond_a

    .line 3498
    const-string v5, "Failed to add a network!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 3499
    new-instance v37, Lcom/android/server/wifi/NetworkUpdateResult;

    const/4 v5, -0x1

    move-object/from16 v0, v37

    invoke-direct {v0, v5}, Lcom/android/server/wifi/NetworkUpdateResult;-><init>(I)V

    goto/16 :goto_0

    .line 3501
    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addOrUpdateNetworkNative created netId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3520
    .end local v40    # "savedConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v43    # "ssid":Ljava/lang/String;
    .restart local v44    # "updateFailed":Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v6, "autojoin"

    move-object/from16 v0, p1

    iget v8, v0, Landroid/net/wifi/WifiConfiguration;->autojoin:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    move/from16 v0, v35

    invoke-virtual {v5, v0, v6, v8}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 3525
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to set SSID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->autojoin:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3531
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 3532
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v6, "id_str"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v9, 0x22

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x22

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move/from16 v0, v35

    invoke-virtual {v5, v0, v6, v8}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 3536
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to set id_str: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3541
    :cond_d
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    if-eqz v5, :cond_e

    .line 3542
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Setting BSSID for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    .line 3543
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v6, "bssid"

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    move/from16 v0, v35

    invoke-virtual {v5, v0, v6, v8}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 3547
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to set BSSID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3551
    :cond_e
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->mode:Landroid/net/wifi/WifiConfiguration$OperationMode;

    sget-object v6, Landroid/net/wifi/WifiConfiguration$OperationMode;->IBSS:Landroid/net/wifi/WifiConfiguration$OperationMode;

    if-ne v5, v6, :cond_f

    .line 3553
    const-string v5, "failed to set adhoc mode. not supported"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3572
    :cond_f
    move-object/from16 v0, p1

    iget-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->isVendorSpecificSsid:Z

    if-eqz v5, :cond_10

    .line 3574
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v6, "vendor_spec_ssid"

    const-string v8, "1"

    move/from16 v0, v35

    invoke-virtual {v5, v0, v6, v8}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_10

    .line 3578
    const-string v5, "failed to set vendor_spec_ssid"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3583
    :cond_10
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    sget-object v6, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiConfigStore;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 3585
    .local v16, "allowedKeyManagementString":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5}, Ljava/util/BitSet;->cardinality()I

    move-result v5

    if-eqz v5, :cond_11

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v6, "key_mgmt"

    move/from16 v0, v35

    move-object/from16 v1, v16

    invoke-virtual {v5, v0, v6, v1}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_11

    .line 3590
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to set key_mgmt: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3595
    :cond_11
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    sget-object v6, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiConfigStore;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 3597
    .local v18, "allowedProtocolsString":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v5}, Ljava/util/BitSet;->cardinality()I

    move-result v5

    if-eqz v5, :cond_12

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v6, "proto"

    move/from16 v0, v35

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v6, v1}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_12

    .line 3602
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to set proto: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3609
    :cond_12
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 3610
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v6, "psk_key_type"

    move-object/from16 v0, p1

    iget v8, v0, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    move/from16 v0, v35

    invoke-virtual {v5, v0, v6, v8}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_13

    .line 3615
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": failed to set WAPI_PSK key type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3624
    :cond_13
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v5, :cond_1f

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v6, "psk"

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move/from16 v0, v35

    invoke-virtual {v5, v0, v6, v8}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1f

    .line 3629
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to set psk: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3634
    :cond_14
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 3635
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v6, "cert_index"

    move-object/from16 v0, p1

    iget v8, v0, Landroid/net/wifi/WifiConfiguration;->wapiCertIndex:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    move/from16 v0, v35

    invoke-virtual {v5, v0, v6, v8}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_15

    .line 3640
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": failed to set WAPI_CERT index: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->wapiCertIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3647
    :cond_15
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    if-eqz v5, :cond_16

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v6, "wapi_as_cert"

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    move/from16 v0, v35

    invoke-virtual {v5, v0, v6, v8}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_16

    .line 3652
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to set WAPI_CERT as cert: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3656
    :cond_16
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    if-eqz v5, :cond_1f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v6, "wapi_user_cert"

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    move/from16 v0, v35

    invoke-virtual {v5, v0, v6, v8}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1f

    .line 3661
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to set WAPI_CERT user cert: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3669
    :cond_17
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    sget-object v6, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiConfigStore;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 3671
    .local v14, "allowedAuthAlgorithmsString":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v5}, Ljava/util/BitSet;->cardinality()I

    move-result v5

    if-eqz v5, :cond_18

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v6, "auth_alg"

    move/from16 v0, v35

    invoke-virtual {v5, v0, v6, v14}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_18

    .line 3676
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to set auth_alg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3681
    :cond_18
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    sget-object v6, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiConfigStore;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 3684
    .local v17, "allowedPairwiseCiphersString":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v5}, Ljava/util/BitSet;->cardinality()I

    move-result v5

    if-eqz v5, :cond_19

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v6, "pairwise"

    move/from16 v0, v35

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v6, v1}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_19

    .line 3689
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to set pairwise: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3694
    :cond_19
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    sget-object v6, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiConfigStore;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 3696
    .local v15, "allowedGroupCiphersString":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v5}, Ljava/util/BitSet;->cardinality()I

    move-result v5

    if-eqz v5, :cond_1a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v6, "group"

    move/from16 v0, v35

    invoke-virtual {v5, v0, v6, v15}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1a

    .line 3701
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to set group: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3708
    :cond_1a
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v5, :cond_1b

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v6, "psk"

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move/from16 v0, v35

    invoke-virtual {v5, v0, v6, v8}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1b

    .line 3713
    const-string v5, "failed to set psk"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3717
    :cond_1b
    const/16 v25, 0x0

    .line 3718
    .local v25, "hasSetKey":Z
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    if-eqz v5, :cond_1e

    .line 3719
    const/16 v27, 0x0

    .local v27, "i":I
    :goto_4
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    array-length v5, v5

    move/from16 v0, v27

    if-ge v0, v5, :cond_1e

    .line 3722
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v5, v5, v27

    if-eqz v5, :cond_1d

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v5, v5, v27

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1d

    .line 3723
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    sget-object v6, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    aget-object v6, v6, v27

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v8, v8, v27

    move/from16 v0, v35

    invoke-virtual {v5, v0, v6, v8}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1c

    .line 3727
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to set wep_key"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v6, v6, v27

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3730
    :cond_1c
    const/16 v25, 0x1

    .line 3719
    :cond_1d
    add-int/lit8 v27, v27, 0x1

    goto :goto_4

    .line 3735
    .end local v27    # "i":I
    :cond_1e
    if-eqz v25, :cond_1f

    .line 3736
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v6, "wep_tx_keyidx"

    move-object/from16 v0, p1

    iget v8, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    move/from16 v0, v35

    invoke-virtual {v5, v0, v6, v8}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1f

    .line 3740
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to set wep_tx_keyidx: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3749
    .end local v14    # "allowedAuthAlgorithmsString":Ljava/lang/String;
    .end local v15    # "allowedGroupCiphersString":Ljava/lang/String;
    .end local v17    # "allowedPairwiseCiphersString":Ljava/lang/String;
    .end local v25    # "hasSetKey":Z
    :cond_1f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v6, "priority"

    move-object/from16 v0, p1

    iget v8, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    move/from16 v0, v35

    invoke-virtual {v5, v0, v6, v8}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_20

    .line 3753
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": failed to set priority: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3758
    :cond_20
    move-object/from16 v0, p1

    iget-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v5, :cond_22

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v8, "scan_ssid"

    move-object/from16 v0, p1

    iget-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v5, :cond_21

    const/4 v5, 0x1

    :goto_5
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    move/from16 v0, v35

    invoke-virtual {v6, v0, v8, v5}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_22

    .line 3762
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": failed to set hiddenSSID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-boolean v6, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3758
    :cond_21
    const/4 v5, 0x0

    goto :goto_5

    .line 3767
    :cond_22
    move-object/from16 v0, p1

    iget-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    if-eqz v5, :cond_23

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v6, "ieee80211w"

    const-string v8, "2"

    move/from16 v0, v35

    invoke-virtual {v5, v0, v6, v8}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_23

    .line 3771
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": failed to set requirePMF: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-boolean v6, v0, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3776
    :cond_23
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->updateIdentifier:Ljava/lang/String;

    if-eqz v5, :cond_24

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v6, "update_identifier"

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->updateIdentifier:Ljava/lang/String;

    move/from16 v0, v35

    invoke-virtual {v5, v0, v6, v8}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_24

    .line 3780
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": failed to set updateIdentifier: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->updateIdentifier:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3785
    :cond_24
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v5, :cond_2a

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_25

    move-object/from16 v0, p1

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->wapiCertIndex:I

    if-lez v5, :cond_2a

    .line 3788
    :cond_25
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v23, v0

    .line 3790
    .local v23, "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    invoke-static/range {v23 .. v23}, Lcom/android/server/wifi/WifiConfigStore;->needsKeyStore(Landroid/net/wifi/WifiEnterpriseConfig;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 3797
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v5}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-eq v5, v6, :cond_26

    .line 3798
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": key store is locked"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3807
    :cond_26
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    move/from16 v0, v35

    invoke-virtual {v5, v0}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v21

    .line 3808
    .local v21, "currentConfig":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->getKeyIdForCredentials(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v31

    .line 3810
    .local v31, "keyId":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->installKeys(Landroid/net/wifi/WifiEnterpriseConfig;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_27

    .line 3811
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": failed to install keys"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 3814
    .end local v21    # "currentConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v31    # "keyId":Ljava/lang/String;
    :catch_0
    move-exception v22

    .line 3815
    .local v22, "e":Ljava/lang/IllegalStateException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " invalid config for key installation"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3820
    .end local v22    # "e":Ljava/lang/IllegalStateException;
    :cond_27
    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiEnterpriseConfig;->getFields()Ljava/util/HashMap;

    move-result-object v24

    .line 3821
    .local v24, "enterpriseFields":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .local v28, "i$":Ljava/util/Iterator;
    :cond_28
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2a

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    .line 3822
    .local v30, "key":Ljava/lang/String;
    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Ljava/lang/String;

    .line 3823
    .local v45, "value":Ljava/lang/String;
    const-string v5, "wapi_as_cert"

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_28

    const-string v5, "wapi_user_cert"

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_28

    .line 3825
    const-string v5, "password"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    if-eqz v45, :cond_29

    const-string v5, "*"

    move-object/from16 v0, v45

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_28

    .line 3829
    :cond_29
    const-string v5, "realm"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_28

    const-string v5, "plmn"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_28

    .line 3834
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move/from16 v0, v35

    move-object/from16 v1, v30

    move-object/from16 v2, v45

    invoke-virtual {v5, v0, v1, v2}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_28

    .line 3838
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->removeKeys(Landroid/net/wifi/WifiEnterpriseConfig;)V

    .line 3839
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": failed to set "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v45

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3846
    .end local v23    # "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    .end local v24    # "enterpriseFields":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v28    # "i$":Ljava/util/Iterator;
    .end local v30    # "key":Ljava/lang/String;
    .end local v45    # "value":Ljava/lang/String;
    :cond_2a
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->samsungSpecificFlags:Ljava/util/BitSet;

    sget-object v6, Landroid/net/wifi/WifiConfiguration$SamsungFlag;->strings:[Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiConfigStore;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 3848
    .local v39, "samsungSpecificFlagsString":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->samsungSpecificFlags:Ljava/util/BitSet;

    invoke-virtual {v5}, Ljava/util/BitSet;->cardinality()I

    move-result v5

    if-eqz v5, :cond_2b

    .line 3849
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v6, "sec_flags"

    move/from16 v0, v35

    move-object/from16 v1, v39

    invoke-virtual {v5, v0, v6, v1}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2b

    .line 3853
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to set sec_flags: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3861
    :cond_2b
    move-object/from16 v0, p1

    iget-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->isCaptivePortal:Z

    if-eqz v5, :cond_30

    .line 3862
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v8, "captive_portal"

    move-object/from16 v0, p1

    iget-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->isCaptivePortal:Z

    if-eqz v5, :cond_2c

    const/4 v5, 0x1

    :goto_6
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    move/from16 v0, v35

    invoke-virtual {v6, v0, v8, v5}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2d

    .line 3867
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": failed to set isCaptivePortal: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-boolean v6, v0, Landroid/net/wifi/WifiConfiguration;->isCaptivePortal:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3862
    :cond_2c
    const/4 v5, 0x0

    goto :goto_6

    .line 3873
    :cond_2d
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v8, "authenticated"

    move-object/from16 v0, p1

    iget-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->isAuthenticated:Z

    if-eqz v5, :cond_2e

    const/4 v5, 0x1

    :goto_7
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    move/from16 v0, v35

    invoke-virtual {v6, v0, v8, v5}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2f

    .line 3878
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": failed to set isAuthenticated: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-boolean v6, v0, Landroid/net/wifi/WifiConfiguration;->isAuthenticated:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3873
    :cond_2e
    const/4 v5, 0x0

    goto :goto_7

    .line 3884
    :cond_2f
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->loginUrl:Ljava/lang/String;

    if-eqz v5, :cond_30

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v6, "login_url"

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->loginUrl:Ljava/lang/String;

    move/from16 v0, v35

    invoke-virtual {v5, v0, v6, v8}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_30

    .line 3890
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": failed to set loginUrl: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->loginUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3900
    :cond_30
    move-object/from16 v0, p1

    iget-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->isUsableInternet:Z

    if-eqz v5, :cond_32

    .line 3901
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v8, "usable_internet"

    move-object/from16 v0, p1

    iget-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->isUsableInternet:Z

    if-eqz v5, :cond_31

    const/4 v5, 0x1

    :goto_8
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    move/from16 v0, v35

    invoke-virtual {v6, v0, v8, v5}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_32

    .line 3906
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": failed to set isUsableInternet: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-boolean v6, v0, Landroid/net/wifi/WifiConfiguration;->isUsableInternet:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3901
    :cond_31
    const/4 v5, 0x0

    goto :goto_8

    .line 3916
    :cond_32
    const/4 v5, -0x1

    move/from16 v0, v35

    if-eq v0, v5, :cond_33

    .line 3917
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v6, "skip_internet_check"

    move/from16 v0, v35

    invoke-virtual {v5, v0, v6}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v45

    .line 3918
    .restart local v45    # "value":Ljava/lang/String;
    invoke-static/range {v45 .. v45}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_33

    .line 3920
    :try_start_1
    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p1

    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->skipInternetCheck:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3

    .line 3926
    .end local v45    # "value":Ljava/lang/String;
    :cond_33
    :goto_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v6, "skip_internet_check"

    move-object/from16 v0, p1

    iget v8, v0, Landroid/net/wifi/WifiConfiguration;->skipInternetCheck:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    move/from16 v0, v35

    invoke-virtual {v5, v0, v6, v8}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_34

    .line 3931
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": failed to set skipInternetCheck: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->skipInternetCheck:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3937
    :cond_34
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v6, "sns_next_target_rssi"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    iget v9, v0, Landroid/net/wifi/WifiConfiguration;->nextTargetRssi:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move/from16 v0, v35

    invoke-virtual {v5, v0, v6, v8}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_35

    .line 3942
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": failed to set nextTargetRssi: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->nextTargetRssi:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3951
    :cond_35
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Wifi_SupportSimSelectionForEapSimAka"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 3952
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WifiConfiguration.SIM_NUMBER : sim_numInteger.toString(config.sim_num) :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->sim_num:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 3954
    move-object/from16 v0, p1

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->sim_num:I

    if-eqz v5, :cond_36

    .line 3955
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v6, "sim_num"

    move-object/from16 v0, p1

    iget v8, v0, Landroid/net/wifi/WifiConfiguration;->sim_num:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    move/from16 v0, v35

    invoke-virtual {v5, v0, v6, v8}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_36

    .line 3959
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": failed to set SIM #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->sim_num:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3966
    :cond_36
    move-object/from16 v0, p1

    iget-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->isSharedAp:Z

    if-eqz v5, :cond_3b

    .line 3967
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v8, "shared"

    move-object/from16 v0, p1

    iget-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->isSharedAp:Z

    if-eqz v5, :cond_37

    const/4 v5, 0x1

    :goto_a
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    move/from16 v0, v35

    invoke-virtual {v6, v0, v8, v5}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_38

    .line 3972
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": failed to set isSharedAp: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-boolean v6, v0, Landroid/net/wifi/WifiConfiguration;->isSharedAp:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3967
    :cond_37
    const/4 v5, 0x0

    goto :goto_a

    .line 3978
    :cond_38
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v6, "expiration"

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->expiration:Ljava/lang/String;

    move/from16 v0, v35

    invoke-virtual {v5, v0, v6, v8}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_39

    .line 3982
    const-string v5, "failed to set expiration"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3985
    :cond_39
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v8, "verified_password"

    move-object/from16 v0, p1

    iget-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->isVerifiedPassword:Z

    if-eqz v5, :cond_3a

    const/4 v5, 0x1

    :goto_b
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    move/from16 v0, v35

    invoke-virtual {v6, v0, v8, v5}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3b

    .line 3990
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": failed to set isVerifiedPassword: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-boolean v6, v0, Landroid/net/wifi/WifiConfiguration;->isVerifiedPassword:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3985
    :cond_3a
    const/4 v5, 0x0

    goto :goto_b

    .line 3999
    :cond_3b
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v8, "s_ssid"

    move-object/from16 v0, p1

    iget-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->isSpecialSsid:Z

    if-eqz v5, :cond_3c

    const/4 v5, 0x1

    :goto_c
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    move/from16 v0, v35

    invoke-virtual {v6, v0, v8, v5}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3d

    .line 4004
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": failed to set isSpecialSsid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-boolean v6, v0, Landroid/net/wifi/WifiConfiguration;->isSpecialSsid:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3999
    :cond_3c
    const/4 v5, 0x0

    goto :goto_c

    .line 4013
    :cond_3d
    move-object/from16 v0, p1

    iget-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->isWeChatAp:Z

    if-eqz v5, :cond_3e

    .line 4014
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v6, "isWeChatAp"

    const-string v8, "1"

    move/from16 v0, v35

    invoke-virtual {v5, v0, v6, v8}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3e

    .line 4018
    const-string v5, "failed to set isWeChatAp"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 4023
    :cond_3e
    const/16 v44, 0x0

    goto/16 :goto_3

    .line 4041
    .end local v16    # "allowedKeyManagementString":Ljava/lang/String;
    .end local v18    # "allowedProtocolsString":Ljava/lang/String;
    .end local v39    # "samsungSpecificFlagsString":Ljava/lang/String;
    :cond_3f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    move/from16 v0, v35

    invoke-virtual {v5, v0}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v21

    .line 4042
    .restart local v21    # "currentConfig":Landroid/net/wifi/WifiConfiguration;
    if-nez v21, :cond_41

    .line 4043
    new-instance v21, Landroid/net/wifi/WifiConfiguration;

    .end local v21    # "currentConfig":Landroid/net/wifi/WifiConfiguration;
    invoke-direct/range {v21 .. v21}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 4044
    .restart local v21    # "currentConfig":Landroid/net/wifi/WifiConfiguration;
    sget-object v5, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/net/wifi/WifiConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    .line 4045
    sget-object v5, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/net/wifi/WifiConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    .line 4046
    move/from16 v0, v35

    move-object/from16 v1, v21

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 4047
    if-eqz p1, :cond_40

    .line 4049
    move-object/from16 v0, p1

    iget-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    move-object/from16 v0, v21

    iput-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    .line 4050
    move-object/from16 v0, p1

    iget-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->didSelfAdd:Z

    move-object/from16 v0, v21

    iput-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->didSelfAdd:Z

    .line 4051
    move-object/from16 v0, p1

    iget-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    move-object/from16 v0, v21

    iput-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    .line 4052
    move-object/from16 v0, p1

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinUseAggressiveJoinAttemptThreshold:I

    move-object/from16 v0, v21

    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinUseAggressiveJoinAttemptThreshold:I

    .line 4054
    move-object/from16 v0, p1

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    move-object/from16 v0, v21

    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    .line 4055
    move-object/from16 v0, p1

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    move-object/from16 v0, v21

    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    .line 4056
    move-object/from16 v0, p1

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    move-object/from16 v0, v21

    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    .line 4057
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    move-object/from16 v0, v21

    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    .line 4058
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    move-object/from16 v0, v21

    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    .line 4059
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->peerWifiConfiguration:Ljava/lang/String;

    move-object/from16 v0, v21

    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->peerWifiConfiguration:Ljava/lang/String;

    .line 4060
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    move-object/from16 v0, v21

    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    .line 4061
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    move-object/from16 v0, v21

    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    .line 4062
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    move-object/from16 v0, v21

    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    .line 4063
    move-object/from16 v0, p1

    iget-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    move-object/from16 v0, v21

    iput-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    .line 4064
    move-object/from16 v0, p1

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    move-object/from16 v0, v21

    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    .line 4065
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->updateTime:Ljava/lang/String;

    move-object/from16 v0, v21

    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->updateTime:Ljava/lang/String;

    .line 4066
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->creationTime:Ljava/lang/String;

    move-object/from16 v0, v21

    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->creationTime:Ljava/lang/String;

    .line 4069
    :cond_40
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "created new config netId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    .line 4076
    :cond_41
    const/16 v26, 0x0

    .line 4078
    .local v26, "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 4080
    :try_start_2
    new-instance v13, Lcom/android/server/wifi/hotspot2/pps/Credential;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    if-nez v36, :cond_42

    const/4 v5, 0x1

    :goto_d
    invoke-direct {v13, v6, v8, v5}, Lcom/android/server/wifi/hotspot2/pps/Credential;-><init>(Landroid/net/wifi/WifiEnterpriseConfig;Landroid/security/KeyStore;Z)V

    .line 4082
    .local v13, "credential":Lcom/android/server/wifi/hotspot2/pps/Credential;
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 4083
    .local v7, "roamingConsortiumIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    move-object/from16 v19, v0

    .local v19, "arr$":[J
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v32, v0

    .local v32, "len$":I
    const/16 v28, 0x0

    .local v28, "i$":I
    :goto_e
    move/from16 v0, v28

    move/from16 v1, v32

    if-ge v0, v1, :cond_43

    aget-wide v8, v19, v28

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v38

    .line 4084
    .local v38, "roamingConsortiumId":Ljava/lang/Long;
    move-object/from16 v0, v38

    invoke-virtual {v7, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4083
    add-int/lit8 v28, v28, 0x1

    goto :goto_e

    .line 4080
    .end local v7    # "roamingConsortiumIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .end local v13    # "credential":Lcom/android/server/wifi/hotspot2/pps/Credential;
    .end local v19    # "arr$":[J
    .end local v28    # "i$":I
    .end local v32    # "len$":I
    .end local v38    # "roamingConsortiumId":Ljava/lang/Long;
    :cond_42
    const/4 v5, 0x0

    goto :goto_d

    .line 4087
    .restart local v7    # "roamingConsortiumIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v13    # "credential":Lcom/android/server/wifi/hotspot2/pps/Credential;
    .restart local v19    # "arr$":[J
    .restart local v28    # "i$":I
    .restart local v32    # "len$":I
    :cond_43
    new-instance v4, Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v8

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v9

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v13}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/util/HashSet;Ljava/util/Set;Ljava/util/Set;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/wifi/hotspot2/pps/Credential;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 4092
    .end local v26    # "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .local v4, "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "created a homeSP object for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    .line 4095
    move-object/from16 v0, v21

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6}, Landroid/net/wifi/WifiEnterpriseConfig;->getRealm()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setRealm(Ljava/lang/String;)V

    .line 4096
    move-object/from16 v0, v21

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6}, Landroid/net/wifi/WifiEnterpriseConfig;->getPlmn()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setPlmn(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 4104
    .end local v7    # "roamingConsortiumIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .end local v13    # "credential":Lcom/android/server/wifi/hotspot2/pps/Credential;
    .end local v19    # "arr$":[J
    .end local v28    # "i$":I
    .end local v32    # "len$":I
    :goto_f
    const/4 v5, -0x1

    move/from16 v0, p2

    if-eq v0, v5, :cond_44

    .line 4105
    if-eqz v36, :cond_4c

    .line 4106
    move/from16 v0, p2

    move-object/from16 v1, v21

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    .line 4113
    :cond_44
    :goto_10
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    .line 4114
    .local v41, "sb":Ljava/lang/StringBuilder;
    const-string v5, "time="

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4115
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v20

    .line 4116
    .local v20, "c":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object/from16 v0, v20

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 4117
    const-string v5, "%tm-%td %tH:%tM:%tS.%tL"

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v20, v6, v8

    const/4 v8, 0x1

    aput-object v20, v6, v8

    const/4 v8, 0x2

    aput-object v20, v6, v8

    const/4 v8, 0x3

    aput-object v20, v6, v8

    const/4 v8, 0x4

    aput-object v20, v6, v8

    const/4 v8, 0x5

    aput-object v20, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4119
    if-eqz v36, :cond_4d

    .line 4120
    const/4 v5, 0x1

    move-object/from16 v0, v21

    iput-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->dirty:Z

    .line 4121
    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->creationTime:Ljava/lang/String;

    .line 4126
    :goto_11
    move-object/from16 v0, v21

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_45

    .line 4129
    const/4 v5, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    .line 4130
    const/4 v5, 0x0

    move-object/from16 v0, v21

    iput-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    .line 4131
    const/4 v5, 0x0

    move-object/from16 v0, v21

    iput-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->didSelfAdd:Z

    .line 4133
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remove deleted status netId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    .line 4138
    :cond_45
    move-object/from16 v0, v21

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_46

    .line 4140
    const/4 v5, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    .line 4143
    :cond_46
    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiConfigStore;->getLastSelectedConfiguration()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_47

    move-object/from16 v0, v21

    iget-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-eqz v5, :cond_47

    .line 4146
    const/4 v5, 0x0

    move-object/from16 v0, v21

    iput-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    .line 4147
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remove ephemeral status netId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    .line 4151
    :cond_47
    sget-boolean v5, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v5, :cond_48

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "will read network variables netId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    .line 4153
    :cond_48
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->readNetworkVariables(Landroid/net/wifi/WifiConfiguration;)V

    .line 4156
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    if-eqz v5, :cond_49

    .line 4157
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    move-object/from16 v0, v21

    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    .line 4159
    :cond_49
    move-object/from16 v0, p1

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4a

    .line 4160
    move-object/from16 v0, p1

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    move-object/from16 v0, v21

    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    .line 4163
    :cond_4a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    move/from16 v0, v35

    move-object/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Lcom/android/server/wifi/ConfigurationMap;->put(ILandroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 4165
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->writeIpAndProxyConfigurationsOnChange(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/NetworkUpdateResult;

    move-result-object v37

    .line 4166
    .local v37, "result":Lcom/android/server/wifi/NetworkUpdateResult;
    move-object/from16 v0, v37

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/NetworkUpdateResult;->setIsNewNetwork(Z)V

    .line 4167
    move-object/from16 v0, v37

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/NetworkUpdateResult;->setNetworkId(I)V

    .line 4169
    if-eqz v4, :cond_4b

    .line 4170
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4}, Lcom/android/server/wifi/WifiConfigStore;->writePasspointConfigs(Ljava/lang/String;Lcom/android/server/wifi/hotspot2/pps/HomeSP;)V

    .line 4172
    :cond_4b
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->writeKnownNetworkHistory(Z)V

    goto/16 :goto_0

    .line 4098
    .end local v4    # "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .end local v20    # "c":Ljava/util/Calendar;
    .end local v37    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    .end local v41    # "sb":Ljava/lang/StringBuilder;
    .restart local v26    # "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    :catch_1
    move-exception v29

    move-object/from16 v4, v26

    .line 4099
    .end local v26    # "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .restart local v4    # "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .local v29, "ioe":Ljava/io/IOException;
    :goto_12
    const-string v5, "WifiConfigStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to create Passpoint config: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4100
    new-instance v37, Lcom/android/server/wifi/NetworkUpdateResult;

    const/4 v5, -0x1

    move-object/from16 v0, v37

    invoke-direct {v0, v5}, Lcom/android/server/wifi/NetworkUpdateResult;-><init>(I)V

    goto/16 :goto_0

    .line 4108
    .end local v29    # "ioe":Ljava/io/IOException;
    :cond_4c
    move/from16 v0, p2

    move-object/from16 v1, v21

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    goto/16 :goto_10

    .line 4123
    .restart local v20    # "c":Ljava/util/Calendar;
    .restart local v41    # "sb":Ljava/lang/StringBuilder;
    :cond_4d
    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->updateTime:Ljava/lang/String;

    goto/16 :goto_11

    .line 4098
    .end local v20    # "c":Ljava/util/Calendar;
    .end local v41    # "sb":Ljava/lang/StringBuilder;
    .restart local v7    # "roamingConsortiumIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v13    # "credential":Lcom/android/server/wifi/hotspot2/pps/Credential;
    .restart local v19    # "arr$":[J
    .restart local v28    # "i$":I
    .restart local v32    # "len$":I
    :catch_2
    move-exception v29

    goto :goto_12

    .line 3921
    .end local v4    # "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .end local v7    # "roamingConsortiumIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .end local v13    # "credential":Lcom/android/server/wifi/hotspot2/pps/Credential;
    .end local v19    # "arr$":[J
    .end local v21    # "currentConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v28    # "i$":I
    .end local v32    # "len$":I
    .restart local v16    # "allowedKeyManagementString":Ljava/lang/String;
    .restart local v18    # "allowedProtocolsString":Ljava/lang/String;
    .restart local v39    # "samsungSpecificFlagsString":Ljava/lang/String;
    .restart local v45    # "value":Ljava/lang/String;
    :catch_3
    move-exception v5

    goto/16 :goto_9

    .end local v16    # "allowedKeyManagementString":Ljava/lang/String;
    .end local v18    # "allowedProtocolsString":Ljava/lang/String;
    .end local v39    # "samsungSpecificFlagsString":Ljava/lang/String;
    .end local v45    # "value":Ljava/lang/String;
    .restart local v21    # "currentConfig":Landroid/net/wifi/WifiConfiguration;
    .restart local v26    # "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    :cond_4e
    move-object/from16 v4, v26

    .end local v26    # "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .restart local v4    # "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    goto/16 :goto_f
.end method

.method private auditLog(ZLjava/lang/String;)V
    .locals 5
    .param p1, "flag"    # Z
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 6039
    :try_start_0
    const-string v3, "content://com.sec.knox.provider/AuditLog"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 6040
    .local v2, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 6041
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v3, "severity"

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6042
    const-string v3, "group"

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6043
    const-string v3, "outcome"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 6044
    const-string v3, "uid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6045
    const-string v3, "component"

    const-string v4, "WifiConfigStore"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6046
    const-string v3, "message"

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6047
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6051
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v2    # "uri":Landroid/net/Uri;
    :goto_0
    return-void

    .line 6048
    :catch_0
    move-exception v1

    .line 6049
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "WifiConfigStore"

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private buildPnoList()V
    .locals 8

    .prologue
    .line 1677
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mCachedPnoList:Ljava/util/ArrayList;

    .line 1679
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1681
    .local v3, "sortedWifiConfigurations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/wifi/WifiConfiguration;>;"
    const-string v5, "WifiConfigStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "buildPnoList sortedWifiConfigurations size "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1682
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_0

    .line 1684
    new-instance v5, Lcom/android/server/wifi/WifiConfigStore$1;

    invoke-direct {v5, p0}, Lcom/android/server/wifi/WifiConfigStore$1;-><init>(Lcom/android/server/wifi/WifiConfigStore;)V

    invoke-static {v3, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1694
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1699
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdInitialAutoJoinAttemptMin24RSSI:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    .line 1700
    .local v4, "threshold":I
    const-string v5, "WifiConfigStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "found sortedWifiConfigurations : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    new-instance v2, Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;

    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v5, v0, v4}, Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;-><init>(Lcom/android/server/wifi/WifiNative;Landroid/net/wifi/WifiConfiguration;I)V

    .line 1702
    .local v2, "network":Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;
    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mCachedPnoList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1704
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "network":Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;
    .end local v4    # "threshold":I
    :cond_1
    return-void
.end method

.method private cacheScanResultForConfig(Landroid/net/wifi/WifiConfiguration;Lcom/android/server/wifi/ScanDetail;Lcom/android/server/wifi/hotspot2/PasspointMatch;)V
    .locals 12
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "scanDetail"    # Lcom/android/server/wifi/ScanDetail;
    .param p3, "passpointMatch"    # Lcom/android/server/wifi/hotspot2/PasspointMatch;

    .prologue
    .line 4518
    invoke-virtual {p2}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v7

    .line 4520
    .local v7, "scanResult":Landroid/net/wifi/ScanResult;
    iget v9, p1, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    const/16 v10, 0xc8

    if-lt v9, v10, :cond_1

    .line 4521
    sget-boolean v9, Lcom/android/server/wifi/WifiConfigStore;->VVDBG:Z

    if-eqz v9, :cond_0

    .line 4522
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateSavedNetworkHistory(): found a deleted, skip it...  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 4587
    :cond_0
    :goto_0
    return-void

    .line 4532
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v6

    .line 4533
    .local v6, "scanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    if-nez v6, :cond_2

    .line 4534
    const-string v9, "WifiConfigStore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not allocate scan cache for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4539
    :cond_2
    iget-object v9, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/android/server/wifi/ScanDetailCache;->get(Ljava/lang/String;)Landroid/net/wifi/ScanResult;

    move-result-object v3

    .line 4540
    .local v3, "result":Landroid/net/wifi/ScanResult;
    if-eqz v3, :cond_3

    .line 4542
    iget v9, v3, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    iput v9, v7, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    .line 4543
    iget-wide v10, v3, Landroid/net/wifi/ScanResult;->blackListTimestamp:J

    iput-wide v10, v7, Landroid/net/wifi/ScanResult;->blackListTimestamp:J

    .line 4544
    iget v9, v3, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    iput v9, v7, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    .line 4545
    iget v9, v3, Landroid/net/wifi/ScanResult;->numConnection:I

    iput v9, v7, Landroid/net/wifi/ScanResult;->numConnection:I

    .line 4546
    iget v9, v3, Landroid/net/wifi/ScanResult;->isAutoJoinCandidate:I

    iput v9, v7, Landroid/net/wifi/ScanResult;->isAutoJoinCandidate:I

    .line 4549
    :cond_3
    iget-boolean v9, p1, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-eqz v9, :cond_4

    .line 4552
    const/4 v9, 0x1

    iput-boolean v9, v7, Landroid/net/wifi/ScanResult;->untrusted:Z

    .line 4555
    :cond_4
    invoke-virtual {v6}, Lcom/android/server/wifi/ScanDetailCache;->size()I

    move-result v9

    const/16 v10, 0xc0

    if-le v9, v10, :cond_7

    .line 4556
    const-wide/16 v4, 0x0

    .line 4557
    .local v4, "now_dbg":J
    sget-boolean v9, Lcom/android/server/wifi/WifiConfigStore;->VVDBG:Z

    if-eqz v9, :cond_6

    .line 4558
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " Will trim config "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " size "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Lcom/android/server/wifi/ScanDetailCache;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 4561
    invoke-virtual {v6}, Lcom/android/server/wifi/ScanDetailCache;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wifi/ScanDetail;

    .line 4562
    .local v8, "sd":Lcom/android/server/wifi/ScanDetail;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "     "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Lcom/android/server/wifi/ScanDetail;->getBSSIDString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Lcom/android/server/wifi/ScanDetail;->getSeen()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 4564
    .end local v8    # "sd":Lcom/android/server/wifi/ScanDetail;
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    .line 4569
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_6
    const/16 v9, 0x80

    invoke-virtual {v6, v9}, Lcom/android/server/wifi/ScanDetailCache;->trim(I)V

    .line 4570
    sget-boolean v9, Lcom/android/server/wifi/WifiConfigStore;->VVDBG:Z

    if-eqz v9, :cond_7

    .line 4571
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v10

    sub-long v0, v10, v4

    .line 4572
    .local v0, "diff":J
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " Finished trimming config, time(ns) "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 4573
    invoke-virtual {v6}, Lcom/android/server/wifi/ScanDetailCache;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wifi/ScanDetail;

    .line 4574
    .restart local v8    # "sd":Lcom/android/server/wifi/ScanDetail;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "     "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Lcom/android/server/wifi/ScanDetail;->getBSSIDString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Lcom/android/server/wifi/ScanDetail;->getSeen()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_2

    .line 4580
    .end local v0    # "diff":J
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "now_dbg":J
    .end local v8    # "sd":Lcom/android/server/wifi/ScanDetail;
    :cond_7
    if-eqz p3, :cond_8

    .line 4581
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->getHomeSPForConfig(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    move-result-object v9

    invoke-virtual {v6, p2, p3, v9}, Lcom/android/server/wifi/ScanDetailCache;->put(Lcom/android/server/wifi/ScanDetail;Lcom/android/server/wifi/hotspot2/PasspointMatch;Lcom/android/server/wifi/hotspot2/pps/HomeSP;)V

    .line 4586
    :goto_3
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->linkConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_0

    .line 4583
    :cond_8
    invoke-virtual {v6, p2}, Lcom/android/server/wifi/ScanDetailCache;->put(Lcom/android/server/wifi/ScanDetail;)V

    goto :goto_3
.end method

.method private cacheScanResultForPasspointConfigs(Lcom/android/server/wifi/ScanDetail;Ljava/util/Map;)V
    .locals 7
    .param p1, "scanDetail"    # Lcom/android/server/wifi/ScanDetail;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/ScanDetail;",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/hotspot2/pps/HomeSP;",
            "Lcom/android/server/wifi/hotspot2/PasspointMatch;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4500
    .local p2, "matches":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4501
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/hotspot2/PasspointMatch;

    .line 4502
    .local v3, "match":Lcom/android/server/wifi/hotspot2/PasspointMatch;
    sget-object v4, Lcom/android/server/wifi/hotspot2/PasspointMatch;->HomeProvider:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    if-eq v3, v4, :cond_1

    sget-object v4, Lcom/android/server/wifi/hotspot2/PasspointMatch;->RoamingProvider:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    if-ne v3, v4, :cond_0

    .line 4503
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfigForHomeSP(Lcom/android/server/wifi/hotspot2/pps/HomeSP;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 4504
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_2

    .line 4505
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wifi/hotspot2/PasspointMatch;

    invoke-direct {p0, v0, p1, v4}, Lcom/android/server/wifi/WifiConfigStore;->cacheScanResultForConfig(Landroid/net/wifi/WifiConfiguration;Lcom/android/server/wifi/ScanDetail;Lcom/android/server/wifi/hotspot2/PasspointMatch;)V

    goto :goto_0

    .line 4507
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to find config for \'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4513
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    .end local v3    # "match":Lcom/android/server/wifi/hotspot2/PasspointMatch;
    :cond_3
    return-void
.end method

.method private static configKey(Landroid/net/wifi/WifiConfiguration;)I
    .locals 2
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 5291
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v0

    .line 5292
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    return v1
.end method

.method private static decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "hex"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;

    .prologue
    .line 5296
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    new-array v0, v4, [B

    .line 5297
    .local v0, "bytes":[B
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 5298
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :cond_0
    :goto_0
    if-ge v2, v3, :cond_1

    .line 5299
    rem-int/lit8 v4, v2, 0x2

    if-nez v4, :cond_0

    add-int/lit8 v4, v2, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v4, v5, :cond_0

    .line 5300
    add-int/lit8 v4, v2, 0x2

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 5302
    .local v1, "hex_code":Ljava/lang/String;
    :try_start_0
    div-int/lit8 v4, v2, 0x2

    const/16 v5, 0x10

    invoke-static {v1, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v0, v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 5304
    :goto_1
    add-int/lit8 v2, v2, 0x2

    .line 5305
    goto :goto_0

    .line 5308
    .end local v1    # "hex_code":Ljava/lang/String;
    :cond_1
    :try_start_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5310
    :goto_2
    return-object v4

    .line 5309
    :catch_0
    move-exception v4

    .line 5310
    const-string v4, ""

    goto :goto_2

    .line 5303
    .restart local v1    # "hex_code":Ljava/lang/String;
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method private edmCanEnableNetwork(IZZ)Z
    .locals 3
    .param p1, "netId"    # I
    .param p2, "disableOthers"    # Z
    .param p3, "showMsg"    # Z

    .prologue
    const/4 v1, 0x1

    .line 794
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v2, p1}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 795
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/sec/enterprise/WifiPolicyCache;->getInstance(Landroid/content/Context;)Landroid/sec/enterprise/WifiPolicyCache;

    move-result-object v2

    invoke-virtual {v2, v0, p3}, Landroid/sec/enterprise/WifiPolicyCache;->isNetworkAllowed(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 796
    if-ltz p1, :cond_0

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-eq v2, v1, :cond_0

    .line 797
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->disableNetwork(I)Z

    .line 799
    :cond_0
    const/4 v1, 0x0

    .line 801
    :cond_1
    return v1
.end method

.method public static encodeSSID(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 3387
    invoke-static {p0}, Lcom/android/server/wifi/WifiConfigStore;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/Utils;->toHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private enterpriseConfigKeyShouldBeQuoted(Ljava/lang/String;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 4771
    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 4776
    :pswitch_0
    return v0

    .line 4771
    :sswitch_0
    const-string v3, "eap"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v0

    goto :goto_0

    :sswitch_1
    const-string v3, "engine"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4d6805be -> :sswitch_1
        0x18754 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getAllConfiguredNetworks()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 846
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 847
    .local v2, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    monitor-enter v5

    .line 848
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v4}, Lcom/android/server/wifi/ConfigurationMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 849
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    new-instance v3, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v3, v0}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    .line 850
    .local v3, "newConfig":Landroid/net/wifi/WifiConfiguration;
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 852
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "newConfig":Landroid/net/wifi/WifiConfiguration;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 853
    return-object v2
.end method

.method private static getChecksum(Ljava/lang/String;)Ljava/lang/Long;
    .locals 4
    .param p0, "source"    # Ljava/lang/String;

    .prologue
    .line 1790
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 1791
    .local v0, "csum":Ljava/util/zip/Checksum;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    invoke-interface {v0, v1, v2, v3}, Ljava/util/zip/Checksum;->update([BII)V

    .line 1792
    invoke-interface {v0}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method private getConfiguredNetworks(Ljava/util/Map;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 810
    .local p1, "pskMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 811
    .local v2, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    monitor-enter v5

    .line 812
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v4}, Lcom/android/server/wifi/ConfigurationMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 813
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    new-instance v3, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v3, v0}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    .line 816
    .local v3, "newConfig":Landroid/net/wifi/WifiConfiguration;
    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    const/16 v6, 0xc8

    if-eq v4, v6, :cond_0

    iget-boolean v4, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-nez v4, :cond_0

    .line 825
    iget-boolean v4, v0, Landroid/net/wifi/WifiConfiguration;->isSpecialSsid:Z

    if-nez v4, :cond_0

    .line 830
    if-eqz p1, :cond_1

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    if-eqz v4, :cond_1

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 833
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 835
    :cond_1
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 837
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "newConfig":Landroid/net/wifi/WifiConfiguration;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 838
    return-object v2
.end method

.method private getCredentialsBySsidMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 908
    const-string v0, "psk"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->readNetworkVariablesFromSupplicantFile(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static getCscPriorityRuleAs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6127
    sget-object v0, Lcom/android/server/wifi/WifiConfigStore;->mPriorityRuleAs:Ljava/lang/String;

    return-object v0
.end method

.method private getHomeSPForConfig(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 4186
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 4187
    .local v0, "storedConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mMOManager:Lcom/android/server/wifi/hotspot2/omadm/MOManager;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getHomeSP(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static hasHardwareBackedKey(Ljava/security/cert/Certificate;)Z
    .locals 1
    .param p0, "certificate"    # Ljava/security/cert/Certificate;

    .prologue
    .line 5414
    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/security/KeyChain;->isBoundKeyAlgorithm(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static isHardwareBackedKey(Ljava/security/PrivateKey;)Z
    .locals 1
    .param p0, "key"    # Ljava/security/PrivateKey;

    .prologue
    .line 5410
    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/security/KeyChain;->isBoundKeyAlgorithm(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private localLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 5372
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    if-eqz v0, :cond_0

    .line 5373
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 5375
    :cond_0
    return-void
.end method

.method private localLog(Ljava/lang/String;I)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "netId"    # I

    .prologue
    .line 5383
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    if-nez v1, :cond_0

    .line 5399
    :goto_0
    return-void

    .line 5388
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    monitor-enter v2

    .line 5389
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v1, p2}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 5390
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5392
    if-eqz v0, :cond_1

    .line 5393
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 5390
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 5397
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private localLog(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "force"    # Z

    .prologue
    .line 5378
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    .line 5379
    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 5380
    :cond_0
    return-void
.end method

.method private logContents(Ljava/lang/String;)V
    .locals 7
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 2656
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--- Begin "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ---"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v6}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;Z)V

    .line 2657
    const/4 v2, 0x0

    .line 2659
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2660
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_0

    .line 2661
    const/4 v4, 0x1

    invoke-direct {p0, v1, v4}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;Z)V

    .line 2660
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    goto :goto_0

    .line 2669
    :cond_0
    if-eqz v3, :cond_1

    .line 2670
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    move-object v2, v3

    .line 2676
    .end local v1    # "line":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :cond_2
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--- End "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Contents ---"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v6}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;Z)V

    .line 2677
    return-void

    .line 2672
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v4

    move-object v2, v3

    .line 2675
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_1

    .line 2663
    .end local v1    # "line":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 2664
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not open "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2669
    if-eqz v2, :cond_2

    .line 2670
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 2672
    :catch_2
    move-exception v4

    goto :goto_1

    .line 2665
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v0

    .line 2666
    .local v0, "e":Ljava/io/IOException;
    :goto_3
    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2669
    if-eqz v2, :cond_2

    .line 2670
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    .line 2672
    :catch_4
    move-exception v4

    goto :goto_1

    .line 2668
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 2669
    :goto_4
    if-eqz v2, :cond_3

    .line 2670
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 2674
    :cond_3
    :goto_5
    throw v4

    .line 2672
    :catch_5
    move-exception v5

    goto :goto_5

    .line 2668
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 2665
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_6
    move-exception v0

    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 2663
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_7
    move-exception v0

    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private logKernelTime()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x3e8

    .line 5360
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    const-wide/32 v6, 0xf4240

    div-long v2, v4, v6

    .line 5361
    .local v2, "kernelTimeMs":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5362
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "kernel time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    div-long v4, v2, v8

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    rem-long v4, v2, v8

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5364
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    .line 5365
    return-void
.end method

.method private lookupString(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "strings"    # [Ljava/lang/String;

    .prologue
    .line 5238
    array-length v1, p2

    .line 5240
    .local v1, "size":I
    const/16 v2, 0x2d

    const/16 v3, 0x5f

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 5242
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 5243
    aget-object v2, p2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5251
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 5242
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5249
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to look-up a string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 5251
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "set"    # Ljava/util/BitSet;
    .param p1, "strings"    # [Ljava/lang/String;

    .prologue
    .line 5218
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 5219
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v1, -0x1

    .line 5223
    .local v1, "nextSetBit":I
    const/4 v2, 0x0

    array-length v3, p1

    invoke-virtual {p0, v2, v3}, Ljava/util/BitSet;->get(II)Ljava/util/BitSet;

    move-result-object p0

    .line 5225
    :goto_0
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 5226
    aget-object v2, p1, v1

    const/16 v3, 0x5f

    const/16 v4, 0x2d

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 5230
    :cond_0
    invoke-virtual {p0}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    if-lez v2, :cond_1

    .line 5231
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 5234
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private markAllNetworksDisabled()V
    .locals 1

    .prologue
    .line 2767
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->markAllNetworksDisabledExcept(I)V

    .line 2768
    return-void
.end method

.method private markAllNetworksDisabledExcept(I)V
    .locals 5
    .param p1, "netId"    # I

    .prologue
    const/4 v4, 0x1

    .line 2754
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    monitor-enter v3

    .line 2755
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v2}, Lcom/android/server/wifi/ConfigurationMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 2756
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v2, p1, :cond_0

    .line 2757
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-eq v2, v4, :cond_0

    .line 2758
    const/4 v2, 0x1

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 2759
    const/4 v2, 0x0

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    goto :goto_0

    .line 2763
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2764
    return-void
.end method

.method private matchNetwork(Lcom/android/server/wifi/ScanDetail;Z)Ljava/util/Map;
    .locals 12
    .param p1, "scanDetail"    # Lcom/android/server/wifi/ScanDetail;
    .param p2, "query"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/ScanDetail;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/hotspot2/pps/HomeSP;",
            "Lcom/android/server/wifi/hotspot2/PasspointMatch;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4420
    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    move-result-object v7

    .line 4422
    .local v7, "networkDetail":Lcom/android/server/wifi/hotspot2/NetworkDetail;
    iget-object v9, p0, Lcom/android/server/wifi/WifiConfigStore;->mAnqpCache:Lcom/android/server/wifi/hotspot2/AnqpCache;

    invoke-virtual {v9, v7}, Lcom/android/server/wifi/hotspot2/AnqpCache;->getEntry(Lcom/android/server/wifi/hotspot2/NetworkDetail;)Lcom/android/server/wifi/hotspot2/ANQPData;

    move-result-object v0

    .line 4424
    .local v0, "anqpData":Lcom/android/server/wifi/hotspot2/ANQPData;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/ANQPData;->getANQPElements()Ljava/util/Map;

    move-result-object v1

    .line 4427
    .local v1, "anqpElements":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/anqp/ANQPElement;>;"
    :goto_0
    if-nez p2, :cond_3

    const/4 v8, 0x1

    .line 4428
    .local v8, "queried":Z
    :goto_1
    iget-object v9, p0, Lcom/android/server/wifi/WifiConfigStore;->mMOManager:Lcom/android/server/wifi/hotspot2/omadm/MOManager;

    invoke-virtual {v9}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getLoadedSPs()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    .line 4429
    .local v3, "homeSPs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v9

    invoke-direct {v6, v9}, Ljava/util/HashMap;-><init>(I)V

    .line 4430
    .local v6, "matches":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v10

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "match nwk "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->toKeyString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", anqp "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz v0, :cond_4

    const-string v9, "present"

    :goto_2
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", query "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", home sps: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4434
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    .line 4435
    .local v2, "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    iget-object v9, p0, Lcom/android/server/wifi/WifiConfigStore;->mSIMAccessor:Lcom/android/server/wifi/SIMAccessor;

    invoke-virtual {v2, v7, v1, v9}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->match(Lcom/android/server/wifi/hotspot2/NetworkDetail;Ljava/util/Map;Lcom/android/server/wifi/SIMAccessor;)Lcom/android/server/wifi/hotspot2/PasspointMatch;

    move-result-object v5

    .line 4437
    .local v5, "match":Lcom/android/server/wifi/hotspot2/PasspointMatch;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " -- "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": match "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", queried "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4440
    sget-object v9, Lcom/android/server/wifi/hotspot2/PasspointMatch;->Incomplete:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    if-ne v5, v9, :cond_1

    if-nez v8, :cond_1

    .line 4441
    iget-object v9, p0, Lcom/android/server/wifi/WifiConfigStore;->mAnqpCache:Lcom/android/server/wifi/hotspot2/AnqpCache;

    invoke-virtual {v9, v7}, Lcom/android/server/wifi/hotspot2/AnqpCache;->initiate(Lcom/android/server/wifi/hotspot2/NetworkDetail;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 4442
    iget-object v9, p0, Lcom/android/server/wifi/WifiConfigStore;->mSupplicantBridge:Lcom/android/server/wifi/hotspot2/SupplicantBridge;

    invoke-virtual {v9, p1}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->startANQP(Lcom/android/server/wifi/ScanDetail;)V

    .line 4444
    :cond_0
    const/4 v8, 0x1

    .line 4446
    :cond_1
    invoke-interface {v6, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 4424
    .end local v1    # "anqpElements":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/anqp/ANQPElement;>;"
    .end local v2    # "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .end local v3    # "homeSPs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "match":Lcom/android/server/wifi/hotspot2/PasspointMatch;
    .end local v6    # "matches":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    .end local v8    # "queried":Z
    :cond_2
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 4427
    .restart local v1    # "anqpElements":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/anqp/ANQPElement;>;"
    :cond_3
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 4430
    .restart local v3    # "homeSPs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    .restart local v6    # "matches":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    .restart local v8    # "queried":Z
    :cond_4
    const-string v9, "missing"

    goto/16 :goto_2

    .line 4448
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_5
    return-object v6
.end method

.method private matchPasspointNetworks(Lcom/android/server/wifi/ScanDetail;)Ljava/util/Map;
    .locals 5
    .param p1, "scanDetail"    # Lcom/android/server/wifi/ScanDetail;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/ScanDetail;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/hotspot2/pps/HomeSP;",
            "Lcom/android/server/wifi/hotspot2/PasspointMatch;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 4404
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mMOManager:Lcom/android/server/wifi/hotspot2/omadm/MOManager;

    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->isConfigured()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4416
    :cond_0
    :goto_0
    return-object v0

    .line 4407
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    move-result-object v1

    .line 4408
    .local v1, "networkDetail":Lcom/android/server/wifi/hotspot2/NetworkDetail;
    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->hasInterworking()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4411
    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getANQPElements()Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/WifiConfigStore;->updateAnqpCache(Lcom/android/server/wifi/ScanDetail;Ljava/util/Map;)V

    .line 4413
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/WifiConfigStore;->matchNetwork(Lcom/android/server/wifi/ScanDetail;Z)Ljava/util/Map;

    move-result-object v0

    .line 4414
    .local v0, "matches":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getSSID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pass 1 matches: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/android/server/wifi/WifiConfigStore;->toMatchString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static needsKeyStore(Landroid/net/wifi/WifiEnterpriseConfig;)Z
    .locals 1
    .param p0, "config"    # Landroid/net/wifi/WifiEnterpriseConfig;

    .prologue
    .line 5404
    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5405
    const/4 v0, 0x0

    .line 5406
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static needsSoftwareBackedKeyStore(Landroid/net/wifi/WifiEnterpriseConfig;)Z
    .locals 2
    .param p0, "config"    # Landroid/net/wifi/WifiEnterpriseConfig;

    .prologue
    .line 5418
    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v0

    .line 5419
    .local v0, "client":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5428
    const/4 v1, 0x1

    .line 5471
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private putCertInKeyStore(Ljava/lang/String;Ljava/security/cert/Certificate;)Z
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cert"    # Ljava/security/cert/Certificate;

    .prologue
    const/4 v3, 0x0

    .line 5896
    const/4 v4, 0x1

    :try_start_0
    new-array v4, v4, [Ljava/security/cert/Certificate;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-static {v4}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v0

    .line 5897
    .local v0, "certData":[B
    const-string v4, "WifiConfigStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "putting certificate "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in keystore"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5898
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    const/16 v5, 0x3f2

    const/4 v6, 0x0

    invoke-virtual {v4, p1, v0, v5, v6}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 5903
    .end local v0    # "certData":[B
    :goto_0
    return v3

    .line 5900
    :catch_0
    move-exception v1

    .line 5901
    .local v1, "e1":Ljava/io/IOException;
    goto :goto_0

    .line 5902
    .end local v1    # "e1":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 5903
    .local v2, "e2":Ljava/security/cert/CertificateException;
    goto :goto_0
.end method

.method private readAutoJoinConfig()V
    .locals 15

    .prologue
    const/4 v11, 0x0

    .line 3308
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    sget-object v10, Lcom/android/server/wifi/WifiConfigStore;->autoJoinConfigFile:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .local v4, "reader":Ljava/io/BufferedReader;
    const/4 v10, 0x0

    .line 3309
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "key":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_6

    .line 3310
    const-string v9, "WifiConfigStore"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "readAutoJoinConfig line: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3312
    const/16 v9, 0x3a

    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 3313
    .local v6, "split":I
    if-gez v6, :cond_1

    .line 3309
    :cond_0
    :goto_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 3317
    :cond_1
    const/4 v9, 0x0

    invoke-virtual {v1, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 3318
    .local v2, "name":Ljava/lang/String;
    sget-object v9, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v5

    .line 3319
    .local v5, "reference":Ljava/lang/Object;
    if-eqz v5, :cond_0

    .line 3324
    add-int/lit8 v9, v6, 0x1

    :try_start_2
    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 3325
    .local v7, "value":I
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-class v12, Ljava/util/concurrent/atomic/AtomicBoolean;

    if-ne v9, v12, :cond_5

    .line 3326
    check-cast v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    .end local v5    # "reference":Ljava/lang/Object;
    if-eqz v7, :cond_4

    const/4 v9, 0x1

    :goto_2
    invoke-virtual {v5, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3331
    :goto_3
    const-string v9, "WifiConfigStore"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "readAutoJoinConfig: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 3333
    .end local v7    # "value":I
    :catch_0
    move-exception v3

    .line 3334
    .local v3, "nfe":Ljava/lang/NumberFormatException;
    :try_start_3
    const-string v9, "WifiConfigStore"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "readAutoJoinConfig: incorrect format :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 3308
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "nfe":Ljava/lang/NumberFormatException;
    .end local v6    # "split":I
    :catch_1
    move-exception v9

    :try_start_4
    throw v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3337
    :catchall_0
    move-exception v10

    move-object v14, v10

    move-object v10, v9

    move-object v9, v14

    :goto_4
    if-eqz v4, :cond_2

    if-eqz v10, :cond_8

    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_2
    :goto_5
    :try_start_6
    throw v9
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .end local v4    # "reader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v0

    .line 3338
    .local v0, "e":Ljava/io/IOException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinStatus: Error parsing configuration"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 3340
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    :goto_6
    return-void

    .restart local v1    # "key":Ljava/lang/String;
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "split":I
    .restart local v7    # "value":I
    :cond_4
    move v9, v11

    .line 3326
    goto :goto_2

    .line 3329
    .restart local v5    # "reference":Ljava/lang/Object;
    :cond_5
    :try_start_7
    check-cast v5, Ljava/util/concurrent/atomic/AtomicInteger;

    .end local v5    # "reference":Ljava/lang/Object;
    invoke-virtual {v5, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    .line 3337
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    .end local v6    # "split":I
    .end local v7    # "value":I
    :catchall_1
    move-exception v9

    goto :goto_4

    .restart local v1    # "key":Ljava/lang/String;
    :cond_6
    if-eqz v4, :cond_3

    if-eqz v10, :cond_7

    :try_start_8
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_6

    :catch_3
    move-exception v8

    .local v8, "x2":Ljava/lang/Throwable;
    :try_start_9
    invoke-virtual {v10, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    .end local v8    # "x2":Ljava/lang/Throwable;
    :cond_7
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    goto :goto_6

    .end local v1    # "key":Ljava/lang/String;
    :catch_4
    move-exception v8

    .restart local v8    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v10, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    .end local v8    # "x2":Ljava/lang/Throwable;
    :cond_8
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_5
.end method

.method private readIpAndProxyConfigurations()V
    .locals 6

    .prologue
    .line 3357
    sget-object v4, Lcom/android/server/wifi/WifiConfigStore;->ipConfigFile:Ljava/lang/String;

    invoke-super {p0, v4}, Lcom/android/server/net/IpConfigStore;->readIpAndProxyConfigurations(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v3

    .line 3359
    .local v3, "networks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/net/IpConfiguration;>;"
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 3377
    :cond_0
    return-void

    .line 3364
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 3365
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 3366
    .local v2, "id":I
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v4, v2}, Lcom/android/server/wifi/ConfigurationMap;->getByConfigKeyID(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 3369
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_2

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    const/16 v5, 0xc8

    if-eq v4, v5, :cond_2

    iget-boolean v4, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-eqz v4, :cond_3

    .line 3371
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "configuration found for missing network, nid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ignored, networks.size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 3364
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3374
    :cond_3
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/IpConfiguration;

    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    goto :goto_1
.end method

.method private readNetworkBitsetVariable(ILjava/util/BitSet;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .param p1, "netId"    # I
    .param p2, "variable"    # Ljava/util/BitSet;
    .param p3, "varName"    # Ljava/lang/String;
    .param p4, "strings"    # [Ljava/lang/String;

    .prologue
    .line 6056
    iget-object v7, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v7, p1, p3}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 6057
    .local v6, "value":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 6058
    invoke-virtual {p2}, Ljava/util/BitSet;->clear()V

    .line 6059
    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 6060
    .local v5, "vals":[Ljava/lang/String;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v0, v1

    .line 6061
    .local v4, "val":Ljava/lang/String;
    invoke-direct {p0, v4, p4}, Lcom/android/server/wifi/WifiConfigStore;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 6062
    .local v2, "index":I
    if-ltz v2, :cond_0

    .line 6063
    invoke-virtual {p2, v2}, Ljava/util/BitSet;->set(I)V

    .line 6060
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6067
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "index":I
    .end local v3    # "len$":I
    .end local v4    # "val":Ljava/lang/String;
    .end local v5    # "vals":[Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private readNetworkHistory()V
    .locals 29

    .prologue
    .line 3063
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/server/wifi/WifiConfigStore;->showNetworks:Z

    if-eqz v8, :cond_0

    .line 3064
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "readNetworkHistory() path:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/server/wifi/WifiConfigStore;->networkHistoryConfigFile:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    .line 3067
    :cond_0
    :try_start_0
    new-instance v17, Ljava/io/DataInputStream;

    new-instance v8, Ljava/io/BufferedInputStream;

    new-instance v9, Ljava/io/FileInputStream;

    sget-object v25, Lcom/android/server/wifi/WifiConfigStore;->networkHistoryConfigFile:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v17

    invoke-direct {v0, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .local v17, "in":Ljava/io/DataInputStream;
    const/16 v25, 0x0

    .line 3071
    const/4 v4, 0x0

    .line 3072
    .local v4, "bssid":Ljava/lang/String;
    const/16 v21, 0x0

    .line 3074
    .local v21, "ssid":Ljava/lang/String;
    const/4 v7, 0x0

    .line 3075
    .local v7, "freq":I
    const/16 v22, 0x0

    .line 3076
    .local v22, "status":I
    const-wide/16 v10, 0x0

    .line 3077
    .local v10, "seen":J
    :try_start_1
    sget v6, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    .line 3078
    .local v6, "rssi":I
    const/4 v5, 0x0

    .line 3080
    .local v5, "caps":Ljava/lang/String;
    const/4 v14, 0x0

    .line 3082
    .local v14, "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    :goto_0
    :pswitch_0
    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v19

    .line 3083
    .local v19, "line":Ljava/lang/String;
    if-nez v19, :cond_3

    .line 3298
    if-eqz v17, :cond_2

    if-eqz v25, :cond_e

    :try_start_2
    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 3305
    .end local v4    # "bssid":Ljava/lang/String;
    .end local v5    # "caps":Ljava/lang/String;
    .end local v6    # "rssi":I
    .end local v7    # "freq":I
    .end local v10    # "seen":J
    .end local v14    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v17    # "in":Ljava/io/DataInputStream;
    .end local v19    # "line":Ljava/lang/String;
    .end local v21    # "ssid":Ljava/lang/String;
    .end local v22    # "status":I
    :cond_2
    :goto_1
    return-void

    .line 3086
    .restart local v4    # "bssid":Ljava/lang/String;
    .restart local v5    # "caps":Ljava/lang/String;
    .restart local v6    # "rssi":I
    .restart local v7    # "freq":I
    .restart local v10    # "seen":J
    .restart local v14    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v17    # "in":Ljava/io/DataInputStream;
    .restart local v19    # "line":Ljava/lang/String;
    .restart local v21    # "ssid":Ljava/lang/String;
    .restart local v22    # "status":I
    :cond_3
    const/16 v8, 0x3a

    :try_start_3
    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    .line 3087
    .local v13, "colon":I
    if-ltz v13, :cond_1

    .line 3091
    const/4 v8, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    .line 3092
    .local v18, "key":Ljava/lang/String;
    add-int/lit8 v8, v13, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v23

    .line 3094
    .local v23, "value":Ljava/lang/String;
    const-string v8, "CONFIG"

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 3096
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Lcom/android/server/wifi/ConfigurationMap;->getByConfigKey(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v14

    .line 3100
    if-nez v14, :cond_5

    .line 3101
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "readNetworkHistory didnt find netid for hash="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->hashCode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " key: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    .line 3104
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wifi/WifiConfigStore;->mLostConfigsDbg:Ljava/util/HashSet;

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 3067
    .end local v5    # "caps":Ljava/lang/String;
    .end local v6    # "rssi":I
    .end local v13    # "colon":I
    .end local v14    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v18    # "key":Ljava/lang/String;
    .end local v19    # "line":Ljava/lang/String;
    .end local v23    # "value":Ljava/lang/String;
    :catch_0
    move-exception v8

    :try_start_4
    throw v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3298
    :catchall_0
    move-exception v9

    move-object/from16 v28, v9

    move-object v9, v8

    move-object/from16 v8, v28

    :goto_2
    if-eqz v17, :cond_4

    if-eqz v9, :cond_f

    :try_start_5
    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/EOFException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    :cond_4
    :goto_3
    :try_start_6
    throw v8
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/EOFException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .end local v4    # "bssid":Ljava/lang/String;
    .end local v7    # "freq":I
    .end local v10    # "seen":J
    .end local v17    # "in":Ljava/io/DataInputStream;
    .end local v21    # "ssid":Ljava/lang/String;
    .end local v22    # "status":I
    :catch_1
    move-exception v16

    .line 3299
    .local v16, "e":Ljava/lang/NumberFormatException;
    const-string v8, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "readNetworkHistory: failed to read, revert to default, "

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v16

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 3108
    .end local v16    # "e":Ljava/lang/NumberFormatException;
    .restart local v4    # "bssid":Ljava/lang/String;
    .restart local v5    # "caps":Ljava/lang/String;
    .restart local v6    # "rssi":I
    .restart local v7    # "freq":I
    .restart local v10    # "seen":J
    .restart local v13    # "colon":I
    .restart local v14    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v17    # "in":Ljava/io/DataInputStream;
    .restart local v18    # "key":Ljava/lang/String;
    .restart local v19    # "line":Ljava/lang/String;
    .restart local v21    # "ssid":Ljava/lang/String;
    .restart local v22    # "status":I
    .restart local v23    # "value":Ljava/lang/String;
    :cond_5
    :try_start_7
    iget-object v8, v14, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    if-eqz v8, :cond_6

    iget-object v8, v14, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    if-nez v8, :cond_1

    .line 3109
    :cond_6
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/16 v9, 0x3e8

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v14, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    .line 3111
    iget-object v8, v14, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    iput-object v8, v14, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    .line 3113
    const-string v8, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Upgrading network "

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v0, v14, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v26, " to "

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v0, v14, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3298
    .end local v5    # "caps":Ljava/lang/String;
    .end local v6    # "rssi":I
    .end local v13    # "colon":I
    .end local v14    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v18    # "key":Ljava/lang/String;
    .end local v19    # "line":Ljava/lang/String;
    .end local v23    # "value":Ljava/lang/String;
    :catchall_1
    move-exception v8

    move-object/from16 v9, v25

    goto :goto_2

    .line 3117
    .restart local v5    # "caps":Ljava/lang/String;
    .restart local v6    # "rssi":I
    .restart local v13    # "colon":I
    .restart local v14    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v18    # "key":Ljava/lang/String;
    .restart local v19    # "line":Ljava/lang/String;
    .restart local v23    # "value":Ljava/lang/String;
    :cond_7
    if-eqz v14, :cond_1

    .line 3118
    const/4 v8, -0x1

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :cond_8
    :goto_4
    packed-switch v8, :pswitch_data_0

    goto/16 :goto_0

    .line 3120
    :pswitch_1
    invoke-virtual {v14}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v8

    if-nez v8, :cond_1

    .line 3123
    move-object/from16 v21, v23

    .line 3124
    iget-object v8, v14, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v8, :cond_9

    iget-object v8, v14, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 3125
    const-string v8, "Error parsing network history file, mismatched SSIDs"

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 3126
    const/4 v14, 0x0

    .line 3127
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 3118
    :sswitch_0
    const-string v9, "SSID"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/4 v8, 0x0

    goto :goto_4

    :sswitch_1
    const-string v9, "FQDN"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/4 v8, 0x1

    goto :goto_4

    :sswitch_2
    const-string v9, "DEFAULT_GW"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/4 v8, 0x2

    goto :goto_4

    :sswitch_3
    const-string v9, "AUTO_JOIN_STATUS"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/4 v8, 0x3

    goto :goto_4

    :sswitch_4
    const-string v9, "SUP_DIS_REASON"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/4 v8, 0x4

    goto :goto_4

    :sswitch_5
    const-string v9, "SELF_ADDED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/4 v8, 0x5

    goto :goto_4

    :sswitch_6
    const-string v9, "DID_SELF_ADD"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/4 v8, 0x6

    goto :goto_4

    :sswitch_7
    const-string v9, "NO_INTERNET_ACCESS_REPORTS"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/4 v8, 0x7

    goto/16 :goto_4

    :sswitch_8
    const-string v9, "VALIDATED_INTERNET_ACCESS"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/16 v8, 0x8

    goto/16 :goto_4

    :sswitch_9
    const-string v9, "CREATION_TIME"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/16 v8, 0x9

    goto/16 :goto_4

    :sswitch_a
    const-string v9, "UPDATE_TIME"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/16 v8, 0xa

    goto/16 :goto_4

    :sswitch_b
    const-string v9, "EPHEMERAL"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/16 v8, 0xb

    goto/16 :goto_4

    :sswitch_c
    const-string v9, "CREATOR_UID_KEY"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/16 v8, 0xc

    goto/16 :goto_4

    :sswitch_d
    const-string v9, "BLACKLIST_MILLI"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/16 v8, 0xd

    goto/16 :goto_4

    :sswitch_e
    const-string v9, "CONNECT_FAILURES"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/16 v8, 0xe

    goto/16 :goto_4

    :sswitch_f
    const-string v9, "IP_CONFIG_FAILURES"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/16 v8, 0xf

    goto/16 :goto_4

    :sswitch_10
    const-string v9, "AUTH_FAILURES"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/16 v8, 0x10

    goto/16 :goto_4

    :sswitch_11
    const-string v9, "SCORER_OVERRIDE"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/16 v8, 0x11

    goto/16 :goto_4

    :sswitch_12
    const-string v9, "SCORER_OVERRIDE_AND_SWITCH"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/16 v8, 0x12

    goto/16 :goto_4

    :sswitch_13
    const-string v9, "NUM_ASSOCIATION"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/16 v8, 0x13

    goto/16 :goto_4

    :sswitch_14
    const-string v9, "JOIN_ATTEMPT_BOOST"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/16 v8, 0x14

    goto/16 :goto_4

    :sswitch_15
    const-string v9, "CONNECT_UID_KEY"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/16 v8, 0x15

    goto/16 :goto_4

    :sswitch_16
    const-string v9, "UPDATE_UID"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/16 v8, 0x16

    goto/16 :goto_4

    :sswitch_17
    const-string v9, "FAILURE"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/16 v8, 0x17

    goto/16 :goto_4

    :sswitch_18
    const-string v9, "PEER_CONFIGURATION"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/16 v8, 0x18

    goto/16 :goto_4

    :sswitch_19
    const-string v9, "CHOICE"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/16 v8, 0x19

    goto/16 :goto_4

    :sswitch_1a
    const-string v9, "LINK"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/16 v8, 0x1a

    goto/16 :goto_4

    :sswitch_1b
    const-string v9, "BSSID"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/16 v8, 0x1b

    goto/16 :goto_4

    :sswitch_1c
    const-string v9, "RSSI"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/16 v8, 0x1c

    goto/16 :goto_4

    :sswitch_1d
    const-string v9, "BSSID_STATUS"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/16 v8, 0x1d

    goto/16 :goto_4

    :sswitch_1e
    const-string v9, "FREQ"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/16 v8, 0x1e

    goto/16 :goto_4

    :sswitch_1f
    const-string v9, "DATE"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/16 v8, 0x1f

    goto/16 :goto_4

    :sswitch_20
    const-string v9, "/BSSID"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/16 v8, 0x20

    goto/16 :goto_4

    :sswitch_21
    const-string v9, "DELETED_CRC32"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/16 v8, 0x21

    goto/16 :goto_4

    :sswitch_22
    const-string v9, "DELETED_EPHEMERAL"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/16 v8, 0x22

    goto/16 :goto_4

    :sswitch_23
    const-string v9, "CREATOR_NAME"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/16 v8, 0x23

    goto/16 :goto_4

    :sswitch_24
    const-string v9, "UPDATE_NAME"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/16 v8, 0x24

    goto/16 :goto_4

    :sswitch_25
    const-string v9, "USER_APPROVED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/16 v8, 0x25

    goto/16 :goto_4

    .line 3129
    :cond_9
    move-object/from16 v0, v21

    iput-object v0, v14, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto/16 :goto_0

    .line 3134
    :pswitch_2
    const-string v8, "null"

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    const/16 v23, 0x0

    .end local v23    # "value":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, v23

    iput-object v0, v14, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    goto/16 :goto_0

    .line 3137
    .restart local v23    # "value":Ljava/lang/String;
    :pswitch_3
    move-object/from16 v0, v23

    iput-object v0, v14, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    goto/16 :goto_0

    .line 3140
    :pswitch_4
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v14, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    goto/16 :goto_0

    .line 3147
    :pswitch_5
    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, v14, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    goto/16 :goto_0

    .line 3150
    :pswitch_6
    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, v14, Landroid/net/wifi/WifiConfiguration;->didSelfAdd:Z

    goto/16 :goto_0

    .line 3153
    :pswitch_7
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v14, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    goto/16 :goto_0

    .line 3156
    :pswitch_8
    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, v14, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    goto/16 :goto_0

    .line 3159
    :pswitch_9
    move-object/from16 v0, v23

    iput-object v0, v14, Landroid/net/wifi/WifiConfiguration;->creationTime:Ljava/lang/String;

    goto/16 :goto_0

    .line 3162
    :pswitch_a
    move-object/from16 v0, v23

    iput-object v0, v14, Landroid/net/wifi/WifiConfiguration;->updateTime:Ljava/lang/String;

    goto/16 :goto_0

    .line 3165
    :pswitch_b
    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, v14, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    goto/16 :goto_0

    .line 3168
    :pswitch_c
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v14, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    goto/16 :goto_0

    .line 3171
    :pswitch_d
    invoke-static/range {v23 .. v23}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v14, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    goto/16 :goto_0

    .line 3174
    :pswitch_e
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v14, Landroid/net/wifi/WifiConfiguration;->numConnectionFailures:I

    goto/16 :goto_0

    .line 3177
    :pswitch_f
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v14, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    goto/16 :goto_0

    .line 3180
    :pswitch_10
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v14, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    goto/16 :goto_0

    .line 3183
    :pswitch_11
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v14, Landroid/net/wifi/WifiConfiguration;->numScorerOverride:I

    goto/16 :goto_0

    .line 3186
    :pswitch_12
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v14, Landroid/net/wifi/WifiConfiguration;->numScorerOverrideAndSwitchedNetwork:I

    goto/16 :goto_0

    .line 3189
    :pswitch_13
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v14, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    goto/16 :goto_0

    .line 3192
    :pswitch_14
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v14, Landroid/net/wifi/WifiConfiguration;->autoJoinUseAggressiveJoinAttemptThreshold:I

    goto/16 :goto_0

    .line 3196
    :pswitch_15
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v14, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    goto/16 :goto_0

    .line 3199
    :pswitch_16
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v14, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    goto/16 :goto_0

    .line 3202
    :pswitch_17
    move-object/from16 v0, v23

    iput-object v0, v14, Landroid/net/wifi/WifiConfiguration;->lastFailure:Ljava/lang/String;

    goto/16 :goto_0

    .line 3205
    :pswitch_18
    move-object/from16 v0, v23

    iput-object v0, v14, Landroid/net/wifi/WifiConfiguration;->peerWifiConfiguration:Ljava/lang/String;

    goto/16 :goto_0

    .line 3208
    :pswitch_19
    const-string v15, ""

    .line 3209
    .local v15, "configKey":Ljava/lang/String;
    const/4 v12, 0x0

    .line 3210
    .local v12, "choice":I
    sget-object v8, Lcom/android/server/wifi/WifiConfigStore;->mConnectChoice:Ljava/util/regex/Pattern;

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v20

    .line 3211
    .local v20, "match":Ljava/util/regex/Matcher;
    invoke-virtual/range {v20 .. v20}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-nez v8, :cond_b

    .line 3212
    const-string v8, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "WifiConfigStore: connectChoice:  Couldnt match pattern : "

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3215
    :cond_b
    const/4 v8, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v15

    .line 3217
    const/4 v8, 0x2

    :try_start_8
    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result v12

    .line 3221
    :goto_5
    if-lez v12, :cond_1

    .line 3222
    :try_start_9
    iget-object v8, v14, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    if-nez v8, :cond_c

    .line 3223
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, v14, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    .line 3225
    :cond_c
    iget-object v8, v14, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v15, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3218
    :catch_2
    move-exception v16

    .line 3219
    .restart local v16    # "e":Ljava/lang/NumberFormatException;
    const/4 v12, 0x0

    goto :goto_5

    .line 3230
    .end local v12    # "choice":I
    .end local v15    # "configKey":Ljava/lang/String;
    .end local v16    # "e":Ljava/lang/NumberFormatException;
    .end local v20    # "match":Ljava/util/regex/Matcher;
    :pswitch_1a
    iget-object v8, v14, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-nez v8, :cond_d

    .line 3231
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, v14, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 3234
    :cond_d
    iget-object v8, v14, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    const/4 v9, -0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v0, v23

    invoke-virtual {v8, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3238
    :pswitch_1b
    const/16 v22, 0x0

    .line 3239
    const/16 v21, 0x0

    .line 3240
    const/4 v4, 0x0

    .line 3241
    const/4 v7, 0x0

    .line 3242
    const-wide/16 v10, 0x0

    .line 3243
    sget v6, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    .line 3244
    const-string v5, ""

    .line 3245
    goto/16 :goto_0

    .line 3247
    :pswitch_1c
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 3248
    goto/16 :goto_0

    .line 3250
    :pswitch_1d
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 3251
    goto/16 :goto_0

    .line 3253
    :pswitch_1e
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 3254
    goto/16 :goto_0

    .line 3267
    :pswitch_1f
    if-eqz v4, :cond_1

    if-eqz v21, :cond_1

    .line 3269
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 3270
    invoke-static/range {v21 .. v21}, Landroid/net/wifi/WifiSsid;->createFromAsciiEncoded(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    move-result-object v3

    .line 3271
    .local v3, "wssid":Landroid/net/wifi/WifiSsid;
    new-instance v2, Lcom/android/server/wifi/ScanDetail;

    const-wide/16 v8, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/android/server/wifi/ScanDetail;-><init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;IIJJ)V

    .line 3273
    .local v2, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/android/server/wifi/ScanDetailCache;->put(Lcom/android/server/wifi/ScanDetail;)V

    .line 3274
    invoke-virtual {v2}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v8

    move/from16 v0, v22

    iput v0, v8, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    goto/16 :goto_0

    .line 3279
    .end local v2    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .end local v3    # "wssid":Landroid/net/wifi/WifiSsid;
    :pswitch_20
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wifi/WifiConfigStore;->mDeletedSSIDs:Ljava/util/Set;

    invoke-static/range {v23 .. v23}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3282
    :pswitch_21
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 3283
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wifi/WifiConfigStore;->mDeletedEphemeralSSIDs:Ljava/util/Set;

    move-object/from16 v0, v23

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3287
    :pswitch_22
    move-object/from16 v0, v23

    iput-object v0, v14, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    goto/16 :goto_0

    .line 3290
    :pswitch_23
    move-object/from16 v0, v23

    iput-object v0, v14, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    goto/16 :goto_0

    .line 3293
    :pswitch_24
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v14, Landroid/net/wifi/WifiConfiguration;->userApproved:I
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_0

    .line 3298
    .end local v13    # "colon":I
    .end local v18    # "key":Ljava/lang/String;
    .end local v23    # "value":Ljava/lang/String;
    :catch_3
    move-exception v24

    .local v24, "x2":Ljava/lang/Throwable;
    :try_start_a
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 3300
    .end local v4    # "bssid":Ljava/lang/String;
    .end local v5    # "caps":Ljava/lang/String;
    .end local v6    # "rssi":I
    .end local v7    # "freq":I
    .end local v10    # "seen":J
    .end local v14    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v17    # "in":Ljava/io/DataInputStream;
    .end local v19    # "line":Ljava/lang/String;
    .end local v21    # "ssid":Ljava/lang/String;
    .end local v22    # "status":I
    .end local v24    # "x2":Ljava/lang/Throwable;
    :catch_4
    move-exception v8

    goto/16 :goto_1

    .line 3298
    .restart local v4    # "bssid":Ljava/lang/String;
    .restart local v5    # "caps":Ljava/lang/String;
    .restart local v6    # "rssi":I
    .restart local v7    # "freq":I
    .restart local v10    # "seen":J
    .restart local v14    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v17    # "in":Ljava/io/DataInputStream;
    .restart local v19    # "line":Ljava/lang/String;
    .restart local v21    # "ssid":Ljava/lang/String;
    .restart local v22    # "status":I
    :cond_e
    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/EOFException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto/16 :goto_1

    .line 3302
    .end local v4    # "bssid":Ljava/lang/String;
    .end local v5    # "caps":Ljava/lang/String;
    .end local v6    # "rssi":I
    .end local v7    # "freq":I
    .end local v10    # "seen":J
    .end local v14    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v17    # "in":Ljava/io/DataInputStream;
    .end local v19    # "line":Ljava/lang/String;
    .end local v21    # "ssid":Ljava/lang/String;
    .end local v22    # "status":I
    :catch_5
    move-exception v16

    .line 3303
    .local v16, "e":Ljava/io/IOException;
    const-string v8, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "readNetworkHistory: No config file, revert to default, "

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v16

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 3298
    .end local v16    # "e":Ljava/io/IOException;
    .restart local v4    # "bssid":Ljava/lang/String;
    .restart local v7    # "freq":I
    .restart local v10    # "seen":J
    .restart local v17    # "in":Ljava/io/DataInputStream;
    .restart local v21    # "ssid":Ljava/lang/String;
    .restart local v22    # "status":I
    :catch_6
    move-exception v24

    .restart local v24    # "x2":Ljava/lang/Throwable;
    :try_start_b
    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .end local v24    # "x2":Ljava/lang/Throwable;
    :cond_f
    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/io/EOFException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    goto/16 :goto_3

    .line 3118
    :sswitch_data_0
    .sparse-switch
        -0x77e81a92 -> :sswitch_f
        -0x7719684c -> :sswitch_1d
        -0x740b4755 -> :sswitch_25
        -0x6f46bcc5 -> :sswitch_15
        -0x6f2cb82f -> :sswitch_8
        -0x622b2dfc -> :sswitch_7
        -0x41c84b47 -> :sswitch_18
        -0x38535683 -> :sswitch_b
        -0x2f732002 -> :sswitch_e
        -0x2d6010b3 -> :sswitch_21
        -0x20eb6f12 -> :sswitch_6
        -0x18796e15 -> :sswitch_d
        -0x15f84296 -> :sswitch_17
        0x1fe7ae -> :sswitch_1f
        0x210a95 -> :sswitch_1
        0x210e78 -> :sswitch_1e
        0x23a7fa -> :sswitch_1a
        0x268857 -> :sswitch_1c
        0x26fb7b -> :sswitch_0
        0x3c90abd -> :sswitch_1b
        0x551d90b -> :sswitch_11
        0x94828e0 -> :sswitch_10
        0xb5a17ba -> :sswitch_16
        0x141ecd1c -> :sswitch_14
        0x18e77cb7 -> :sswitch_22
        0x1ddf6a2d -> :sswitch_5
        0x1f1b4de6 -> :sswitch_4
        0x2c26c6de -> :sswitch_23
        0x2eae182d -> :sswitch_9
        0x3cbace17 -> :sswitch_3
        0x455dcbce -> :sswitch_2
        0x53fccfee -> :sswitch_20
        0x580b1670 -> :sswitch_12
        0x5fe59441 -> :sswitch_24
        0x5fe86c83 -> :sswitch_a
        0x72f01508 -> :sswitch_13
        0x7400e87d -> :sswitch_c
        0x767051a1 -> :sswitch_19
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_0
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
    .end packed-switch
.end method

.method private readNetworkVariableFromSupplicantFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 2741
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    .line 2742
    .local v4, "start":J
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiConfigStore;->readNetworkVariablesFromSupplicantFile(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 2743
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    .line 2745
    .local v2, "end":J
    sget-boolean v1, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v1, :cond_0

    .line 2746
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readNetworkVariableFromSupplicantFile ssid=["

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "] key="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " duration="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-long v6, v2, v4

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 2749
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method private readNetworkVariables(Landroid/net/wifi/WifiConfiguration;)V
    .locals 23
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 4788
    move-object/from16 v0, p1

    iget v15, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 4789
    .local v15, "netId":I
    if-gez v15, :cond_1

    .line 5206
    :cond_0
    :goto_0
    return-void

    .line 4799
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v19, v0

    const-string v20, "ssid"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v15, v1}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 4800
    .local v18, "value":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_4

    .line 4801
    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v20, 0x22

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_3

    .line 4802
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "\""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static/range {v18 .. v18}, Landroid/net/wifi/WifiSsid;->createFromHex(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 4813
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v19, v0

    const-string v20, "hessid"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v15, v1}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 4814
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_5

    .line 4815
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->HESSID:Ljava/lang/String;

    .line 4820
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v19, v0

    const-string v20, "isHS20AP"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v15, v1}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 4821
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_6

    .line 4823
    :try_start_0
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->isHS20AP:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_12

    .line 4829
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v19, v0

    const-string v20, "isHS20Home"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v15, v1}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 4830
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_7

    .line 4832
    :try_start_1
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->isHS20Home:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_11

    .line 4838
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v19, v0

    const-string v20, "HS20CredId"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v15, v1}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 4839
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_8

    .line 4841
    :try_start_2
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->HS20CredId:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_10

    .line 4847
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v19, v0

    const-string v20, "HS20OperatorName"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v15, v1}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 4848
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_9

    .line 4849
    const-string v19, "UTF-8"

    invoke-static/range {v18 .. v19}, Lcom/android/server/wifi/WifiConfigStore;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->HS20OperatorName:Ljava/lang/String;

    .line 4854
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v19, v0

    const-string v20, "HS20VenueName"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v15, v1}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 4855
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_b

    .line 4856
    const-string v19, "UTF-8"

    invoke-static/range {v18 .. v19}, Lcom/android/server/wifi/WifiConfigStore;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4857
    .local v6, "VenueName":Ljava/lang/String;
    const-string v19, "$$$"

    move-object/from16 v0, v19

    invoke-static {v6, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v5

    .line 4858
    .local v5, "OPurl":I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v5, v0, :cond_a

    .line 4859
    add-int/lit8 v19, v5, 0x3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->HS20OpURL:Ljava/lang/String;

    .line 4860
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v6, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->HS20VenueName:Ljava/lang/String;

    .line 4872
    .end local v5    # "OPurl":I
    .end local v6    # "VenueName":Ljava/lang/String;
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v20, v0

    const-string v21, "sec_flags"

    invoke-virtual/range {v19 .. v21}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 4873
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->samsungSpecificFlags:Ljava/util/BitSet;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/BitSet;->clear()V

    .line 4874
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_c

    .line 4875
    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 4876
    .local v17, "vals":[Ljava/lang/String;
    move-object/from16 v7, v17

    .local v7, "arr$":[Ljava/lang/String;
    array-length v14, v7

    .local v14, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_8
    if-ge v10, v14, :cond_c

    aget-object v16, v7, v10

    .line 4877
    .local v16, "val":Ljava/lang/String;
    sget-object v19, Landroid/net/wifi/WifiConfiguration$SamsungFlag;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    .line 4878
    .local v12, "index":I
    if-ltz v12, :cond_2

    .line 4879
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->samsungSpecificFlags:Ljava/util/BitSet;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/util/BitSet;->set(I)V

    .line 4876
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 4806
    .end local v7    # "arr$":[Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v12    # "index":I
    .end local v14    # "len$":I
    .end local v16    # "val":Ljava/lang/String;
    .end local v17    # "vals":[Ljava/lang/String;
    :cond_3
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto/16 :goto_1

    .line 4809
    :cond_4
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto/16 :goto_1

    .line 4817
    :cond_5
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->HESSID:Ljava/lang/String;

    goto/16 :goto_2

    .line 4826
    :cond_6
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->isHS20AP:I

    goto/16 :goto_3

    .line 4835
    :cond_7
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->isHS20Home:I

    goto/16 :goto_4

    .line 4844
    :cond_8
    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->HS20CredId:I

    goto/16 :goto_5

    .line 4851
    :cond_9
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->HS20OperatorName:Ljava/lang/String;

    goto/16 :goto_6

    .line 4862
    .restart local v5    # "OPurl":I
    .restart local v6    # "VenueName":Ljava/lang/String;
    :cond_a
    const-string v19, "***$$$ is not in venue "

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 4863
    move-object/from16 v0, p1

    iput-object v6, v0, Landroid/net/wifi/WifiConfiguration;->HS20VenueName:Ljava/lang/String;

    .line 4864
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->HS20OpURL:Ljava/lang/String;

    goto/16 :goto_7

    .line 4867
    .end local v5    # "OPurl":I
    .end local v6    # "VenueName":Ljava/lang/String;
    :cond_b
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->HS20VenueName:Ljava/lang/String;

    .line 4868
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->HS20OpURL:Ljava/lang/String;

    goto/16 :goto_7

    .line 4908
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v19, v0

    const-string v20, "vendor_spec_ssid"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v15, v1}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 4909
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_d

    .line 4911
    :try_start_3
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_12

    const/16 v19, 0x1

    :goto_9
    move/from16 v0, v19

    move-object/from16 v1, p1

    iput-boolean v0, v1, Landroid/net/wifi/WifiConfiguration;->isVendorSpecificSsid:Z
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0

    .line 4918
    :cond_d
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v19, v0

    const-string v20, "bssid"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v15, v1}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 4919
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_13

    .line 4920
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 4926
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v19, v0

    const-string v20, "autojoin"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v15, v1}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 4927
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_14

    .line 4929
    :try_start_4
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->autojoin:I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_f

    .line 4936
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v19, v0

    const-string v20, "priority"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v15, v1}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 4937
    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 4938
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_e

    .line 4940
    :try_start_5
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->priority:I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_e

    .line 4945
    :cond_e
    :goto_d
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v19

    const-string v20, "CscFeature_Wifi_SupportSimSelectionForEapSimAka"

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_f

    .line 4946
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v19, v0

    const-string v20, "sim_num"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v15, v1}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 4947
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->sim_num:I

    .line 4948
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_f

    .line 4950
    :try_start_6
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->sim_num:I
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_d

    .line 4956
    :cond_f
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v19, v0

    const-string v20, "scan_ssid"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v15, v1}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 4957
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput-boolean v0, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 4958
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_10

    .line 4960
    :try_start_7
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    if-eqz v19, :cond_15

    const/16 v19, 0x1

    :goto_f
    move/from16 v0, v19

    move-object/from16 v1, p1

    iput-boolean v0, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_c

    .line 4965
    :cond_10
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v19, v0

    const-string v20, "wep_tx_keyidx"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v15, v1}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 4966
    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 4967
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_11

    .line 4969
    :try_start_8
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_b

    .line 4974
    :cond_11
    :goto_11
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_12
    const/16 v19, 0x4

    move/from16 v0, v19

    if-ge v9, v0, :cond_17

    .line 4975
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v19, v0

    sget-object v20, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    aget-object v20, v20, v9

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v15, v1}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 4977
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_16

    .line 4978
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v19, v0

    aput-object v18, v19, v9

    .line 4974
    :goto_13
    add-int/lit8 v9, v9, 0x1

    goto :goto_12

    .line 4911
    .end local v9    # "i":I
    :cond_12
    const/16 v19, 0x0

    goto/16 :goto_9

    .line 4912
    :catch_0
    move-exception v11

    .line 4913
    .local v11, "ignore":Ljava/lang/NumberFormatException;
    const-string v19, "WifiConfigStore"

    const-string v20, "vendor_spec_ssid number exception"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 4922
    .end local v11    # "ignore":Ljava/lang/NumberFormatException;
    :cond_13
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    goto/16 :goto_b

    .line 4933
    :cond_14
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->autojoin:I

    goto/16 :goto_c

    .line 4960
    :cond_15
    const/16 v19, 0x0

    goto :goto_f

    .line 4980
    .restart local v9    # "i":I
    :cond_16
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v20, v19, v9

    goto :goto_13

    .line 4984
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v19, v0

    const-string v20, "psk"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v15, v1}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 4985
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_1a

    .line 4986
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 4991
    :goto_14
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    move-object/from16 v20, v0

    const-string v21, "proto"

    sget-object v22, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/WifiConfigStore;->readNetworkBitsetVariable(ILjava/util/BitSet;Ljava/lang/String;[Ljava/lang/String;)V

    .line 4994
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v20, v0

    const-string v21, "key_mgmt"

    sget-object v22, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/WifiConfigStore;->readNetworkBitsetVariable(ILjava/util/BitSet;Ljava/lang/String;[Ljava/lang/String;)V

    .line 4997
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    move-object/from16 v20, v0

    const-string v21, "auth_alg"

    sget-object v22, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/WifiConfigStore;->readNetworkBitsetVariable(ILjava/util/BitSet;Ljava/lang/String;[Ljava/lang/String;)V

    .line 5000
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    move-object/from16 v20, v0

    const-string v21, "pairwise"

    sget-object v22, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/WifiConfigStore;->readNetworkBitsetVariable(ILjava/util/BitSet;Ljava/lang/String;[Ljava/lang/String;)V

    .line 5003
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    move-object/from16 v20, v0

    const-string v21, "group"

    sget-object v22, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/WifiConfigStore;->readNetworkBitsetVariable(ILjava/util/BitSet;Ljava/lang/String;[Ljava/lang/String;)V

    .line 5006
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v19, v0

    if-nez v19, :cond_18

    .line 5007
    new-instance v19, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct/range {v19 .. v19}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 5009
    :cond_18
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiEnterpriseConfig;->getFields()Ljava/util/HashMap;

    move-result-object v8

    .line 5010
    .local v8, "enterpriseFields":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v7, Lcom/android/server/wifi/WifiConfigStore;->ENTERPRISE_CONFIG_SUPPLICANT_KEYS:[Ljava/lang/String;

    .restart local v7    # "arr$":[Ljava/lang/String;
    array-length v14, v7

    .restart local v14    # "len$":I
    const/4 v10, 0x0

    .restart local v10    # "i$":I
    :goto_15
    if-ge v10, v14, :cond_1c

    aget-object v13, v7, v10

    .line 5011
    .local v13, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15, v13}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 5012
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_1b

    .line 5013
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/wifi/WifiConfigStore;->enterpriseConfigKeyShouldBeQuoted(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_19

    .line 5014
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/WifiConfigStore;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 5016
    :cond_19
    move-object/from16 v0, v18

    invoke-virtual {v8, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5010
    :goto_16
    add-int/lit8 v10, v10, 0x1

    goto :goto_15

    .line 4988
    .end local v7    # "arr$":[Ljava/lang/String;
    .end local v8    # "enterpriseFields":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "i$":I
    .end local v13    # "key":Ljava/lang/String;
    .end local v14    # "len$":I
    :cond_1a
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_14

    .line 5018
    .restart local v7    # "arr$":[Ljava/lang/String;
    .restart local v8    # "enterpriseFields":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v10    # "i$":I
    .restart local v13    # "key":Ljava/lang/String;
    .restart local v14    # "len$":I
    :cond_1b
    const-string v19, "NULL"

    move-object/from16 v0, v19

    invoke-virtual {v8, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    .line 5023
    .end local v13    # "key":Ljava/lang/String;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v19, v0

    const-string v20, "captive_portal"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v15, v1}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 5024
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput-boolean v0, v1, Landroid/net/wifi/WifiConfiguration;->isCaptivePortal:Z

    .line 5025
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_1d

    .line 5027
    :try_start_9
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    if-eqz v19, :cond_28

    const/16 v19, 0x1

    :goto_17
    move/from16 v0, v19

    move-object/from16 v1, p1

    iput-boolean v0, v1, Landroid/net/wifi/WifiConfiguration;->isCaptivePortal:Z
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_a

    .line 5032
    :cond_1d
    :goto_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v19, v0

    const-string v20, "authenticated"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v15, v1}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 5033
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput-boolean v0, v1, Landroid/net/wifi/WifiConfiguration;->isAuthenticated:Z

    .line 5034
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_1e

    .line 5036
    :try_start_a
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    if-eqz v19, :cond_29

    const/16 v19, 0x1

    :goto_19
    move/from16 v0, v19

    move-object/from16 v1, p1

    iput-boolean v0, v1, Landroid/net/wifi/WifiConfiguration;->isAuthenticated:Z
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_9

    .line 5041
    :cond_1e
    :goto_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v19, v0

    const-string v20, "login_url"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v15, v1}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 5042
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_2a

    .line 5043
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->loginUrl:Ljava/lang/String;

    .line 5049
    :goto_1b
    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->isCaptivePortal:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1f

    .line 5050
    const-string v19, "WifiConfigStore"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " is a captive portal!"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5051
    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->isAuthenticated:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2b

    .line 5052
    const-string v19, "WifiConfigStore"

    const-string v20, "authenticated on previous connection"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5056
    :goto_1c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->loginUrl:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1f

    .line 5057
    const-string v19, "WifiConfigStore"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "login url: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->loginUrl:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5064
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v19, v0

    const-string v20, "usable_internet"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v15, v1}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 5065
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput-boolean v0, v1, Landroid/net/wifi/WifiConfiguration;->isUsableInternet:Z

    .line 5066
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_20

    .line 5068
    :try_start_b
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    if-eqz v19, :cond_2c

    const/16 v19, 0x1

    :goto_1d
    move/from16 v0, v19

    move-object/from16 v1, p1

    iput-boolean v0, v1, Landroid/net/wifi/WifiConfiguration;->isUsableInternet:Z
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_8

    .line 5073
    :goto_1e
    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->isUsableInternet:Z

    move/from16 v19, v0

    if-eqz v19, :cond_20

    .line 5074
    const-string v19, "WifiConfigStore"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " is a Internet available AP!"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5080
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v19, v0

    const-string v20, "skip_internet_check"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v15, v1}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 5081
    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->skipInternetCheck:I

    .line 5082
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_21

    .line 5084
    :try_start_c
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->skipInternetCheck:I
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_7

    .line 5089
    :goto_1f
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->skipInternetCheck:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_21

    .line 5090
    const-string v19, "WifiConfigStore"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " is a AP excluded from network switch!"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5096
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v19, v0

    const-string v20, "sns_next_target_rssi"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v15, v1}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 5097
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_2d

    .line 5098
    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->nextTargetRssi:I

    .line 5105
    :goto_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v19, v0

    const-string v20, "shared"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v15, v1}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 5106
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput-boolean v0, v1, Landroid/net/wifi/WifiConfiguration;->isSharedAp:Z

    .line 5107
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_22

    .line 5109
    :try_start_d
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    if-eqz v19, :cond_2e

    const/16 v19, 0x1

    :goto_21
    move/from16 v0, v19

    move-object/from16 v1, p1

    iput-boolean v0, v1, Landroid/net/wifi/WifiConfiguration;->isSharedAp:Z
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_6

    .line 5113
    :cond_22
    :goto_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v19, v0

    const-string v20, "expiration"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v15, v1}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 5114
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_2f

    .line 5115
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->expiration:Ljava/lang/String;

    .line 5119
    :goto_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v19, v0

    const-string v20, "verified_password"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v15, v1}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 5120
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput-boolean v0, v1, Landroid/net/wifi/WifiConfiguration;->isVerifiedPassword:Z

    .line 5121
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_23

    .line 5123
    :try_start_e
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    if-eqz v19, :cond_30

    const/16 v19, 0x1

    :goto_24
    move/from16 v0, v19

    move-object/from16 v1, p1

    iput-boolean v0, v1, Landroid/net/wifi/WifiConfiguration;->isVerifiedPassword:Z
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_e} :catch_5

    .line 5128
    :cond_23
    :goto_25
    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->isSharedAp:Z

    move/from16 v19, v0

    if-eqz v19, :cond_24

    .line 5129
    const-string v19, "WifiConfigStore"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " is a shared AP!"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5130
    const-string v19, "WifiConfigStore"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\'s expiration is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->expiration:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5132
    :cond_24
    const-string v19, "WifiConfigStore"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " is a verified password AP: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->isVerifiedPassword:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v19, v0

    const-string v20, "s_ssid"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v15, v1}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 5137
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput-boolean v0, v1, Landroid/net/wifi/WifiConfiguration;->isSpecialSsid:Z

    .line 5138
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_25

    .line 5140
    :try_start_f
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    if-eqz v19, :cond_31

    const/16 v19, 0x1

    :goto_26
    move/from16 v0, v19

    move-object/from16 v1, p1

    iput-boolean v0, v1, Landroid/net/wifi/WifiConfiguration;->isSpecialSsid:Z
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_f} :catch_4

    .line 5146
    :cond_25
    :goto_27
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->isHS20AP:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_32

    .line 5147
    const-string v19, "WifiConfigStore"

    const-string v20, "Not a HS20"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5148
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v15}, Lcom/android/server/wifi/WifiConfigStore;->migrateOldEapTlsNative(Landroid/net/wifi/WifiEnterpriseConfig;I)Z

    move-result v19

    if-eqz v19, :cond_26

    .line 5149
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiConfigStore;->saveConfig()Z

    .line 5155
    :cond_26
    :goto_28
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->migrateCerts(Landroid/net/wifi/WifiEnterpriseConfig;)V

    .line 5160
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v19, v0

    const/16 v20, 0x5

    invoke-virtual/range {v19 .. v20}, Ljava/util/BitSet;->get(I)Z

    move-result v19

    if-eqz v19, :cond_33

    .line 5161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v19, v0

    const-string v20, "psk_key_type"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v15, v1}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 5162
    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    .line 5163
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "***WAPI : readNetworkVariables WAPI_PSK key type "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 5164
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_27

    .line 5166
    :try_start_10
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_10} :catch_3

    .line 5199
    :cond_27
    :goto_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v19, v0

    const-string v20, "isWeChatAp"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v15, v1}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 5200
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 5202
    :try_start_11
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    if-eqz v19, :cond_37

    const/16 v19, 0x1

    :goto_2a
    move/from16 v0, v19

    move-object/from16 v1, p1

    iput-boolean v0, v1, Landroid/net/wifi/WifiConfiguration;->isWeChatAp:Z
    :try_end_11
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_11} :catch_1

    goto/16 :goto_0

    .line 5203
    :catch_1
    move-exception v19

    goto/16 :goto_0

    .line 5027
    :cond_28
    const/16 v19, 0x0

    goto/16 :goto_17

    .line 5036
    :cond_29
    const/16 v19, 0x0

    goto/16 :goto_19

    .line 5045
    :cond_2a
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->loginUrl:Ljava/lang/String;

    goto/16 :goto_1b

    .line 5054
    :cond_2b
    const-string v19, "WifiConfigStore"

    const-string v20, "not authenticated yet"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c

    .line 5068
    :cond_2c
    const/16 v19, 0x0

    goto/16 :goto_1d

    .line 5100
    :cond_2d
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->nextTargetRssi:I

    goto/16 :goto_20

    .line 5109
    :cond_2e
    const/16 v19, 0x0

    goto/16 :goto_21

    .line 5117
    :cond_2f
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->expiration:Ljava/lang/String;

    goto/16 :goto_23

    .line 5123
    :cond_30
    const/16 v19, 0x0

    goto/16 :goto_24

    .line 5140
    :cond_31
    const/16 v19, 0x0

    goto/16 :goto_26

    .line 5152
    :cond_32
    const-string v19, "WifiConfigStore"

    const-string v20, "HS20 Ap: Don\'t Change"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_28

    .line 5171
    :cond_33
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v19, v0

    const/16 v20, 0x6

    invoke-virtual/range {v19 .. v20}, Ljava/util/BitSet;->get(I)Z

    move-result v19

    if-eqz v19, :cond_27

    .line 5172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v19, v0

    const-string v20, "cert_index"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v15, v1}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 5173
    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->wapiCertIndex:I

    .line 5174
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "***WAPI : readNetworkVariables WAPI_CERT index "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 5175
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_34

    .line 5177
    :try_start_12
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->wapiCertIndex:I
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_12} :catch_2

    .line 5181
    :cond_34
    :goto_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v19, v0

    const-string v20, "wapi_as_cert"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v15, v1}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 5182
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "***WAPI : readNetworkVariables WAPI_CERT as cert "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 5183
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_35

    .line 5184
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/WifiConfigStore;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    .line 5188
    :goto_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v19, v0

    const-string v20, "wapi_user_cert"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v15, v1}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 5189
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "***WAPI : readNetworkVariables WAPI_CERT user cert "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 5190
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_36

    .line 5191
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/WifiConfigStore;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    goto/16 :goto_29

    .line 5186
    :cond_35
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    goto :goto_2c

    .line 5193
    :cond_36
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    goto/16 :goto_29

    .line 5202
    :cond_37
    const/16 v19, 0x0

    goto/16 :goto_2a

    .line 5178
    :catch_2
    move-exception v19

    goto/16 :goto_2b

    .line 5167
    :catch_3
    move-exception v19

    goto/16 :goto_29

    .line 5141
    :catch_4
    move-exception v19

    goto/16 :goto_27

    .line 5124
    :catch_5
    move-exception v19

    goto/16 :goto_25

    .line 5110
    :catch_6
    move-exception v19

    goto/16 :goto_22

    .line 5085
    :catch_7
    move-exception v19

    goto/16 :goto_1f

    .line 5069
    :catch_8
    move-exception v19

    goto/16 :goto_1e

    .line 5037
    :catch_9
    move-exception v19

    goto/16 :goto_1a

    .line 5028
    :catch_a
    move-exception v19

    goto/16 :goto_18

    .line 4970
    .end local v7    # "arr$":[Ljava/lang/String;
    .end local v8    # "enterpriseFields":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "i":I
    .end local v10    # "i$":I
    .end local v14    # "len$":I
    :catch_b
    move-exception v19

    goto/16 :goto_11

    .line 4961
    :catch_c
    move-exception v19

    goto/16 :goto_10

    .line 4951
    :catch_d
    move-exception v19

    goto/16 :goto_e

    .line 4941
    :catch_e
    move-exception v19

    goto/16 :goto_d

    .line 4930
    :catch_f
    move-exception v19

    goto/16 :goto_c

    .line 4842
    :catch_10
    move-exception v19

    goto/16 :goto_5

    .line 4833
    :catch_11
    move-exception v19

    goto/16 :goto_4

    .line 4824
    :catch_12
    move-exception v19

    goto/16 :goto_3
.end method

.method private readNetworkVariablesFromSupplicantFile(Ljava/lang/String;)Ljava/util/Map;
    .locals 16
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2680
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 2681
    .local v9, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 2682
    .local v7, "reader":Ljava/io/BufferedReader;
    sget-boolean v12, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v12, :cond_0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "readNetworkVariablesFromSupplicantFile key="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 2685
    :cond_0
    :try_start_0
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/FileReader;

    const-string v13, "/data/misc/wifi/wpa_supplicant.conf"

    invoke-direct {v12, v13}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2686
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .local v8, "reader":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 2687
    .local v3, "found":Z
    const/4 v6, 0x0

    .line 2688
    .local v6, "networkSsid":Ljava/lang/String;
    const/4 v11, 0x0

    .line 2690
    .local v11, "value":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "line":Ljava/lang/String;
    :goto_0
    if-eqz v5, :cond_a

    .line 2692
    const-string v12, "[ \\t]*network=\\{"

    invoke-virtual {v5, v12}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 2693
    const/4 v3, 0x1

    .line 2694
    const/4 v6, 0x0

    .line 2695
    const/4 v11, 0x0

    .line 2702
    :cond_1
    :goto_1
    if-eqz v3, :cond_3

    .line 2703
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 2704
    .local v10, "trimmedLine":Ljava/lang/String;
    const-string v12, "ssid="

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 2705
    const/4 v12, 0x5

    invoke-virtual {v10, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 2718
    :cond_2
    :goto_2
    if-eqz v6, :cond_3

    if-eqz v11, :cond_3

    .line 2719
    invoke-interface {v9, v6, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2690
    .end local v10    # "trimmedLine":Ljava/lang/String;
    :cond_3
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 2696
    :cond_4
    const-string v12, "[ \\t]*\\}"

    invoke-virtual {v5, v12}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 2697
    const/4 v3, 0x0

    .line 2698
    const/4 v6, 0x0

    .line 2699
    const/4 v11, 0x0

    goto :goto_1

    .line 2706
    .restart local v10    # "trimmedLine":Ljava/lang/String;
    :cond_5
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 2708
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    monitor-enter v13
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2709
    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v12}, Lcom/android/server/wifi/ConfigurationMap;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 2710
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v6, :cond_6

    iget-object v12, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 2711
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget v14, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string v15, "psk"

    invoke-virtual {v12, v14, v15}, Lcom/android/server/wifi/WifiNative;->getSecuredNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    .line 2714
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_7
    monitor-exit v13

    goto :goto_2

    .end local v4    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v12
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2723
    .end local v5    # "line":Ljava/lang/String;
    .end local v10    # "trimmedLine":Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v7, v8

    .line 2724
    .end local v3    # "found":Z
    .end local v6    # "networkSsid":Ljava/lang/String;
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .end local v11    # "value":Ljava/lang/String;
    .local v2, "e":Ljava/io/FileNotFoundException;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :goto_4
    :try_start_4
    sget-boolean v12, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v12, :cond_8

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Could not open /data/misc/wifi/wpa_supplicant.conf, "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2729
    :cond_8
    if-eqz v7, :cond_9

    .line 2730
    :try_start_5
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 2737
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :cond_9
    :goto_5
    return-object v9

    .line 2729
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "found":Z
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v6    # "networkSsid":Ljava/lang/String;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v11    # "value":Ljava/lang/String;
    :cond_a
    if-eqz v8, :cond_b

    .line 2730
    :try_start_6
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_b
    move-object v7, v8

    .line 2734
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    goto :goto_5

    .line 2732
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v12

    move-object v7, v8

    .line 2735
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    goto :goto_5

    .line 2725
    .end local v3    # "found":Z
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "networkSsid":Ljava/lang/String;
    .end local v11    # "value":Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 2726
    .local v2, "e":Ljava/io/IOException;
    :goto_6
    :try_start_7
    sget-boolean v12, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v12, :cond_c

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Could not read /data/misc/wifi/wpa_supplicant.conf, "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 2729
    :cond_c
    if-eqz v7, :cond_9

    .line 2730
    :try_start_8
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_5

    .line 2732
    :catch_3
    move-exception v12

    goto :goto_5

    .line 2728
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v12

    .line 2729
    :goto_7
    if-eqz v7, :cond_d

    .line 2730
    :try_start_9
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 2734
    :cond_d
    :goto_8
    throw v12

    .line 2732
    .local v2, "e":Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v12

    goto :goto_5

    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_5
    move-exception v13

    goto :goto_8

    .line 2728
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "found":Z
    .restart local v6    # "networkSsid":Ljava/lang/String;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v11    # "value":Ljava/lang/String;
    :catchall_2
    move-exception v12

    move-object v7, v8

    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    goto :goto_7

    .line 2725
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    :catch_6
    move-exception v2

    move-object v7, v8

    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    goto :goto_6

    .line 2723
    .end local v3    # "found":Z
    .end local v6    # "networkSsid":Ljava/lang/String;
    .end local v11    # "value":Ljava/lang/String;
    :catch_7
    move-exception v2

    goto :goto_4
.end method

.method private removeConfigAndSendBroadcastIfNeeded(I)Z
    .locals 6
    .param p1, "netId"    # I

    .prologue
    const/4 v5, 0x1

    .line 1796
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v3, p1}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1797
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_5

    .line 1798
    sget-boolean v3, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v3, :cond_0

    .line 1799
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeNetwork "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " config.id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1804
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->lastSelectedConfiguration:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1805
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->lastSelectedConfiguration:Ljava/lang/String;

    .line 1809
    :cond_1
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v3, :cond_2

    .line 1810
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->isHS20AP:I

    if-ne v3, v5, :cond_6

    .line 1826
    :cond_2
    :goto_0
    iget-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    if-nez v3, :cond_3

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-nez v3, :cond_3

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1828
    :cond_3
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1830
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 1831
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/wifi/WifiConfigStore;->getChecksum(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 1832
    .local v2, "csum":Ljava/lang/Long;
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mDeletedSSIDs:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1833
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeNetwork "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " config.id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  crc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1845
    .end local v2    # "csum":Ljava/lang/Long;
    :cond_4
    :goto_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v3, p1}, Lcom/android/server/wifi/ConfigurationMap;->remove(I)Landroid/net/wifi/WifiConfiguration;

    .line 1846
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mScanDetailCaches:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1848
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->writeIpAndProxyConfigurations()V

    .line 1849
    invoke-direct {p0, v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V

    .line 1850
    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiConfigStore;->writeKnownNetworkHistory(Z)V

    .line 1852
    :cond_5
    return v5

    .line 1815
    :cond_6
    new-instance v1, Landroid/sec/enterprise/certificate/CertificatePolicy;

    invoke-direct {v1}, Landroid/sec/enterprise/certificate/CertificatePolicy;-><init>()V

    .line 1816
    .local v1, "cp":Landroid/sec/enterprise/certificate/CertificatePolicy;
    if-eqz v1, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/sec/enterprise/certificate/CertificatePolicy;->isUserRemoveCertificatesAllowedAsUser(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1817
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiConfigStore;->removeKeys(Landroid/net/wifi/WifiEnterpriseConfig;)V

    goto/16 :goto_0

    .line 1838
    .end local v1    # "cp":Landroid/sec/enterprise/certificate/CertificatePolicy;
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeNetwork "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " config.id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 5209
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 5210
    .local v0, "length":I
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 5212
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 5214
    .end local p0    # "string":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method private sendBroadcastFromWifiConfigStore(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2364
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 2372
    :goto_0
    return-void

    .line 2368
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2369
    :catch_0
    move-exception v0

    .line 2370
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send broadcast before boot - action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendConfiguredNetworkDisabledWithAuthFailBroadcast(Landroid/net/wifi/WifiConfiguration;)V
    .locals 3
    .param p1, "network"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 2396
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.net.wifi.AUTH_FAIL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2397
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2398
    const-string v1, "wifiConfiguration"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2399
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2401
    return-void
.end method

.method private sendConfiguredNetworksChangedBroadcast()V
    .locals 3

    .prologue
    .line 2407
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2408
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2409
    const-string v1, "multipleChanges"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2410
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2411
    return-void
.end method

.method private sendConfiguredNetworksChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V
    .locals 3
    .param p1, "network"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "reason"    # I

    .prologue
    .line 2382
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2383
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2384
    const-string v1, "multipleChanges"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2385
    const-string v1, "wifiConfiguration"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2386
    const-string v1, "changeReason"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2387
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2388
    return-void
.end method

.method private sendErrorBroadcast(II)V
    .locals 3
    .param p1, "errorCode"    # I
    .param p2, "netid"    # I

    .prologue
    .line 2355
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendErrorBroadcast code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 2356
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.ERROR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2357
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2358
    const-string v1, "errorCode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2359
    const-string v1, "netid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2360
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->sendBroadcastFromWifiConfigStore(Landroid/content/Intent;)V

    .line 2361
    return-void
.end method

.method private setNetworkPriorityDefault(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 6082
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 6092
    :goto_0
    return v0

    .line 6085
    :cond_0
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->isVendorSpecificSsid:Z

    if-eqz v1, :cond_1

    .line 6086
    iput v0, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 6091
    :goto_1
    const-string v0, "WifiConfigStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNetworkPriorityDefault: networkId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", priority = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6092
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->setNetworkPriorityNative(II)Z

    move-result v0

    goto :goto_0

    .line 6088
    :cond_1
    iput v3, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 6089
    iput v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mLastPriority:I

    goto :goto_1
.end method

.method private setNetworkPriorityNative(II)Z
    .locals 3
    .param p1, "netId"    # I
    .param p2, "priority"    # I

    .prologue
    .line 1163
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v1, "priority"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private setSSIDNative(ILjava/lang/String;)Z
    .locals 3
    .param p1, "netId"    # I
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v1, "ssid"

    invoke-static {p2}, Lcom/android/server/wifi/WifiConfigStore;->encodeSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static toMatchString(Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/hotspot2/pps/HomeSP;",
            "Lcom/android/server/wifi/hotspot2/PasspointMatch;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 4490
    .local p0, "matches":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 4491
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4492
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    invoke-virtual {v3}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4494
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private updateAnqpCache(Lcom/android/server/wifi/ScanDetail;Ljava/util/Map;)V
    .locals 3
    .param p1, "scanDetail"    # Lcom/android/server/wifi/ScanDetail;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/ScanDetail;",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/anqp/ANQPElement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4475
    .local p2, "anqpElements":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/anqp/ANQPElement;>;"
    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    move-result-object v1

    .line 4477
    .local v1, "networkDetail":Lcom/android/server/wifi/hotspot2/NetworkDetail;
    if-nez p2, :cond_1

    .line 4479
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mAnqpCache:Lcom/android/server/wifi/hotspot2/AnqpCache;

    invoke-virtual {v2, v1}, Lcom/android/server/wifi/hotspot2/AnqpCache;->getEntry(Lcom/android/server/wifi/hotspot2/NetworkDetail;)Lcom/android/server/wifi/hotspot2/ANQPData;

    move-result-object v0

    .line 4480
    .local v0, "data":Lcom/android/server/wifi/hotspot2/ANQPData;
    if-eqz v0, :cond_0

    .line 4481
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/ANQPData;->getANQPElements()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/server/wifi/ScanDetail;->propagateANQPInfo(Ljava/util/Map;)V

    .line 4487
    .end local v0    # "data":Lcom/android/server/wifi/hotspot2/ANQPData;
    :cond_0
    :goto_0
    return-void

    .line 4486
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mAnqpCache:Lcom/android/server/wifi/hotspot2/AnqpCache;

    invoke-virtual {v2, v1, p2}, Lcom/android/server/wifi/hotspot2/AnqpCache;->update(Lcom/android/server/wifi/hotspot2/NetworkDetail;Ljava/util/Map;)V

    goto :goto_0
.end method

.method private writeIpAndProxyConfigurations()V
    .locals 6

    .prologue
    .line 3344
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 3345
    .local v2, "networks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/net/IpConfiguration;>;"
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    monitor-enter v4

    .line 3346
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v3}, Lcom/android/server/wifi/ConfigurationMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 3347
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-nez v3, :cond_0

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    const/16 v5, 0xc8

    if-eq v3, v5, :cond_0

    .line 3348
    invoke-static {v0}, Lcom/android/server/wifi/WifiConfigStore;->configKey(Landroid/net/wifi/WifiConfiguration;)I

    move-result v3

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 3351
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3353
    sget-object v3, Lcom/android/server/wifi/WifiConfigStore;->ipConfigFile:Ljava/lang/String;

    invoke-super {p0, v3, v2}, Lcom/android/server/net/IpConfigStore;->writeIpAndProxyConfigurations(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 3354
    return-void
.end method

.method private writeIpAndProxyConfigurationsOnChange(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/NetworkUpdateResult;
    .locals 8
    .param p1, "currentConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "newConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 4685
    const/4 v1, 0x0

    .line 4686
    .local v1, "ipChanged":Z
    const/4 v3, 0x0

    .line 4688
    .local v3, "proxyChanged":Z
    sget-boolean v6, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v6, :cond_0

    .line 4689
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "writeIpAndProxyConfigurationsOnChange: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/server/wifi/WifiConfigStore;->ipConfigFile:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 4694
    :cond_0
    sget-object v6, Lcom/android/server/wifi/WifiConfigStore$4;->$SwitchMap$android$net$IpConfiguration$IpAssignment:[I

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/IpConfiguration$IpAssignment;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 4713
    const-string v6, "Ignore invalid ip assignment during write"

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 4717
    :cond_1
    :goto_0
    :pswitch_0
    sget-object v6, Lcom/android/server/wifi/WifiConfigStore$4;->$SwitchMap$android$net$IpConfiguration$ProxySettings:[I

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_1

    .line 4738
    const-string v4, "Ignore invalid proxy configuration during write"

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 4742
    :cond_2
    :goto_1
    :pswitch_1
    if-eqz v1, :cond_3

    .line 4743
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/net/wifi/WifiConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    .line 4744
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/net/wifi/WifiConfiguration;->setStaticIpConfiguration(Landroid/net/StaticIpConfiguration;)V

    .line 4745
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IP config changed SSID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    .line 4746
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 4747
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " static configuration: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/StaticIpConfiguration;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    .line 4752
    :cond_3
    if-eqz v3, :cond_4

    .line 4753
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/net/wifi/WifiConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    .line 4754
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/net/wifi/WifiConfiguration;->setHttpProxy(Landroid/net/ProxyInfo;)V

    .line 4755
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "proxy changed SSID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    .line 4756
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 4757
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " proxyProperties: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/ProxyInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    .line 4761
    :cond_4
    if-nez v1, :cond_5

    if-eqz v3, :cond_6

    .line 4762
    :cond_5
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->writeIpAndProxyConfigurations()V

    .line 4763
    const/4 v4, 0x2

    invoke-direct {p0, p1, v4}, Lcom/android/server/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V

    .line 4766
    :cond_6
    new-instance v4, Lcom/android/server/wifi/NetworkUpdateResult;

    invoke-direct {v4, v1, v3}, Lcom/android/server/wifi/NetworkUpdateResult;-><init>(ZZ)V

    return-object v4

    .line 4696
    :pswitch_2
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v6

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v7

    if-eq v6, v7, :cond_7

    .line 4697
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 4699
    :cond_7
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v6

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    move v1, v4

    .line 4703
    :goto_2
    goto/16 :goto_0

    :cond_8
    move v1, v5

    .line 4699
    goto :goto_2

    .line 4705
    :pswitch_3
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v6

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v7

    if-eq v6, v7, :cond_1

    .line 4706
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 4720
    :pswitch_4
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v2

    .line 4721
    .local v2, "newHttpProxy":Landroid/net/ProxyInfo;
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    .line 4723
    .local v0, "currentHttpProxy":Landroid/net/ProxyInfo;
    if-eqz v2, :cond_a

    .line 4724
    invoke-virtual {v2, v0}, Landroid/net/ProxyInfo;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    move v3, v4

    :goto_3
    goto/16 :goto_1

    :cond_9
    move v3, v5

    goto :goto_3

    .line 4726
    :cond_a
    if-eqz v0, :cond_b

    move v3, v4

    .line 4728
    :goto_4
    goto/16 :goto_1

    :cond_b
    move v3, v5

    .line 4726
    goto :goto_4

    .line 4730
    .end local v0    # "currentHttpProxy":Landroid/net/ProxyInfo;
    .end local v2    # "newHttpProxy":Landroid/net/ProxyInfo;
    :pswitch_5
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v4

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v5

    if-eq v4, v5, :cond_2

    .line 4731
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 4694
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch

    .line 4717
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method _enableAllNetworks(Z)V
    .locals 13
    .param p1, "enableRepeatedConnectionOrDhcpFailureNetwork"    # Z

    .prologue
    const/4 v12, 0x2

    .line 1064
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1065
    .local v4, "now":J
    const/4 v2, 0x0

    .line 1067
    .local v2, "networkEnabledStateChanged":Z
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    monitor-enter v6

    .line 1068
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v3}, Lcom/android/server/wifi/ConfigurationMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1070
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v7, 0x1

    if-ne v3, v7, :cond_0

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/16 v7, 0xb

    if-eq v3, v7, :cond_0

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/16 v7, 0xc

    if-eq v3, v7, :cond_0

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/16 v7, 0xd

    if-eq v3, v7, :cond_0

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/16 v7, 0xf

    if-eq v3, v7, :cond_0

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/16 v7, 0x10

    if-eq v3, v7, :cond_0

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/16 v7, 0x11

    if-eq v3, v7, :cond_0

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/16 v7, 0xe

    if-eq v3, v7, :cond_0

    .line 1081
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v3, v7, v8}, Lcom/android/server/wifi/WifiConfigStore;->edmCanEnableNetwork(IZZ)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1085
    sget-boolean v3, Lcom/android/server/wifi/WifiConfigStore;->WIFI_ERRORCODE:Z

    if-eqz v3, :cond_1

    .line 1086
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/16 v7, 0x8

    if-eq v3, v7, :cond_0

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/4 v7, 0x7

    if-eq v3, v7, :cond_0

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/16 v7, 0x9

    if-eq v3, v7, :cond_0

    .line 1094
    :cond_1
    if-nez p1, :cond_3

    .line 1095
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    if-eq v3, v12, :cond_2

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/4 v7, 0x4

    if-eq v3, v7, :cond_2

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/4 v7, 0x3

    if-ne v3, v7, :cond_3

    .line 1098
    :cond_2
    iget-wide v8, v0, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    if-eqz v3, :cond_3

    iget-wide v8, v0, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    cmp-long v3, v4, v8

    if-lez v3, :cond_3

    iget-wide v8, v0, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    sub-long v8, v4, v8

    iget v3, p0, Lcom/android/server/wifi/WifiConfigStore;->wifiConfigBlacklistMinTimeMilli:I

    int-to-long v10, v3

    cmp-long v3, v8, v10

    if-ltz v3, :cond_0

    .line 1106
    :cond_3
    iget-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->isSpecialSsid:Z

    if-nez v3, :cond_0

    .line 1111
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->isBasForAllNetwork()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1112
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->setNetworkPriorityDefault(Landroid/net/wifi/WifiConfiguration;)Z

    .line 1114
    :cond_4
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget v7, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Lcom/android/server/wifi/WifiNative;->enableNetwork(IZ)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1115
    const/4 v2, 0x1

    .line 1116
    const/4 v3, 0x2

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 1119
    const/4 v3, 0x0

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->numConnectionFailures:I

    .line 1120
    const/4 v3, 0x0

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    .line 1121
    const/4 v3, 0x0

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->numAuthFailures:I

    .line 1124
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    goto/16 :goto_0

    .line 1131
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1126
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_5
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Enable network failed on "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v7, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1131
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_6
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1133
    if-eqz v2, :cond_7

    .line 1134
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiNative;->saveConfig()Z

    .line 1135
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast()V

    .line 1137
    :cond_7
    return-void
.end method

.method addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;I)I
    .locals 6
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "uid"    # I

    .prologue
    .line 1644
    iget-boolean v3, p0, Lcom/android/server/wifi/WifiConfigStore;->showNetworks:Z

    if-eqz v3, :cond_0

    const-string v3, "addOrUpdateNetwork id="

    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-direct {p0, v3, v4}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;I)V

    .line 1646
    :cond_0
    const-string v3, "WifiConfigStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " key="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " netId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1652
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/wifi/WifiConfigStore;->getChecksum(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 1653
    .local v1, "csum":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1654
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setDomainSuffixMatch(Ljava/lang/String;)V

    .line 1657
    .end local v1    # "csum":Ljava/lang/Long;
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiConfigStore;->addOrUpdateNetworkNative(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    move-result-object v2

    .line 1658
    .local v2, "result":Lcom/android/server/wifi/NetworkUpdateResult;
    invoke-virtual {v2}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 1659
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v2}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1660
    .local v0, "conf":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_2

    .line 1661
    iget-boolean v3, v2, Lcom/android/server/wifi/NetworkUpdateResult;->isNewNetwork:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    :goto_0
    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V

    .line 1667
    .end local v0    # "conf":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    invoke-virtual {v2}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v3

    return v3

    .line 1661
    .restart local v0    # "conf":Landroid/net/wifi/WifiConfiguration;
    :cond_3
    const/4 v3, 0x2

    goto :goto_0
.end method

.method addToConfiguredNetworks()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x3

    const/4 v10, -0x1

    .line 2414
    iget-object v7, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiNative;->listNetworks()Ljava/lang/String;

    move-result-object v4

    .line 2415
    .local v4, "listStr":Ljava/lang/String;
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 2416
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    const/4 v5, -0x1

    .line 2418
    .local v5, "netID":I
    if-eqz v4, :cond_0

    if-nez v0, :cond_1

    .line 2460
    :cond_0
    return-void

    .line 2421
    :cond_1
    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2423
    .local v3, "lines":[Ljava/lang/String;
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v7, v3

    if-ge v2, v7, :cond_0

    .line 2424
    aget-object v7, v3, v2

    const-string v8, "\t"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 2427
    .local v6, "result":[Ljava/lang/String;
    const/4 v7, 0x0

    :try_start_0
    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 2432
    if-ne v5, v10, :cond_3

    .line 2423
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2428
    :catch_0
    move-exception v1

    .line 2429
    .local v1, "e":Ljava/lang/NumberFormatException;
    goto :goto_1

    .line 2435
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    iget-object v7, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v7, v5}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 2436
    if-nez v0, :cond_2

    .line 2440
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 2441
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 2442
    array-length v7, v6

    if-le v7, v11, :cond_6

    .line 2443
    aget-object v7, v6, v11

    const-string v8, "[CURRENT]"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v10, :cond_4

    .line 2444
    iput v12, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 2452
    :goto_2
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->readNetworkVariables(Landroid/net/wifi/WifiConfiguration;)V

    .line 2453
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AddToConfiguredNetworks adds ssid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    .line 2455
    iget-object v7, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    iget v8, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v7, v8, v0}, Lcom/android/server/wifi/ConfigurationMap;->put(ILandroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 2456
    iget-object v7, p0, Lcom/android/server/wifi/WifiConfigStore;->mScanDetailCaches:Ljava/util/HashMap;

    iget v8, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v9, Lcom/android/server/wifi/ScanDetailCache;

    invoke-direct {v9, v0}, Lcom/android/server/wifi/ScanDetailCache;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2457
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast()V

    goto :goto_1

    .line 2445
    :cond_4
    aget-object v7, v6, v11

    const-string v8, "[DISABLED]"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v10, :cond_5

    .line 2446
    const/4 v7, 0x1

    iput v7, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_2

    .line 2448
    :cond_5
    iput v13, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_2

    .line 2450
    :cond_6
    iput v13, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_2
.end method

.method blackListBssid(Ljava/lang/String;)V
    .locals 7
    .param p1, "BSSID"    # Ljava/lang/String;

    .prologue
    .line 5667
    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiStateMachine;->useHalBasedAutoJoinOffload()Z

    move-result v5

    if-nez v5, :cond_1

    .line 5669
    const-string v5, "WifiConfigStore"

    const-string v6, "No blacklist allowed without epno enabled"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5685
    :cond_0
    :goto_0
    return-void

    .line 5673
    :cond_1
    if-eqz p1, :cond_0

    .line 5675
    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mBssidBlacklist:Ljava/util/HashSet;

    invoke-virtual {v5, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5677
    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v5, p1}, Lcom/android/server/wifi/WifiNative;->addToBlacklist(Ljava/lang/String;)Z

    .line 5679
    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mBssidBlacklist:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    new-array v4, v5, [Ljava/lang/String;

    .line 5680
    .local v4, "list":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 5681
    .local v1, "count":I
    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mBssidBlacklist:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5682
    .local v0, "bssid":Ljava/lang/String;
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "count":I
    .local v2, "count":I
    aput-object v0, v4, v1

    move v1, v2

    .line 5683
    .end local v2    # "count":I
    .restart local v1    # "count":I
    goto :goto_1

    .line 5684
    .end local v0    # "bssid":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-static {v4}, Lcom/android/server/wifi/WifiNative;->setBssidBlacklist([Ljava/lang/String;)Z

    goto :goto_0
.end method

.method canModifyNetwork(IIZ)Z
    .locals 12
    .param p1, "uid"    # I
    .param p2, "networkId"    # I
    .param p3, "onlyAnnotate"    # Z

    .prologue
    const/4 v11, -0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 5500
    iget-object v9, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v9, p2}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 5502
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_1

    .line 5503
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "canModifyNetwork: cannot find config networkId "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 5554
    :cond_0
    :goto_0
    return v7

    .line 5507
    :cond_1
    const-class v9, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {v9}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 5510
    .local v1, "dpmi":Landroid/app/admin/DevicePolicyManagerInternal;
    if-eqz v1, :cond_2

    invoke-virtual {v1, p1, v11}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveAdminWithPolicy(II)Z

    move-result v9

    if-eqz v9, :cond_2

    move v5, v8

    .line 5513
    .local v5, "isUidDeviceOwner":Z
    :goto_1
    if-eqz v5, :cond_3

    move v7, v8

    .line 5515
    goto :goto_0

    .end local v5    # "isUidDeviceOwner":Z
    :cond_2
    move v5, v7

    .line 5510
    goto :goto_1

    .line 5530
    .restart local v5    # "isUidDeviceOwner":Z
    :cond_3
    iget v9, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    if-ne v9, p1, :cond_5

    move v3, v8

    .line 5532
    .local v3, "isCreator":Z
    :goto_2
    if-eqz p3, :cond_6

    .line 5533
    if-nez v3, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->checkConfigOverridePermission(I)Z

    move-result v9

    if-eqz v9, :cond_0

    :cond_4
    move v7, v8

    goto :goto_0

    .end local v3    # "isCreator":Z
    :cond_5
    move v3, v7

    .line 5530
    goto :goto_2

    .line 5538
    .restart local v3    # "isCreator":Z
    :cond_6
    iget-object v9, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string v10, "android.software.device_admin"

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    if-eqz v1, :cond_0

    .line 5545
    :cond_7
    if-eqz v1, :cond_9

    iget v9, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-virtual {v1, v9, v11}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveAdminWithPolicy(II)Z

    move-result v9

    if-eqz v9, :cond_9

    move v2, v8

    .line 5547
    .local v2, "isConfigEligibleForLockdown":Z
    :goto_3
    if-nez v2, :cond_a

    .line 5548
    if-nez v3, :cond_8

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->checkConfigOverridePermission(I)Z

    move-result v9

    if-eqz v9, :cond_0

    :cond_8
    move v7, v8

    goto :goto_0

    .end local v2    # "isConfigEligibleForLockdown":Z
    :cond_9
    move v2, v7

    .line 5545
    goto :goto_3

    .line 5551
    .restart local v2    # "isConfigEligibleForLockdown":Z
    :cond_a
    iget-object v9, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 5552
    .local v6, "resolver":Landroid/content/ContentResolver;
    const-string v9, "wifi_device_owner_configs_lockdown"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_b

    move v4, v8

    .line 5554
    .local v4, "isLockdownFeatureEnabled":Z
    :goto_4
    if-nez v4, :cond_c

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->checkConfigOverridePermission(I)Z

    move-result v9

    if-eqz v9, :cond_c

    :goto_5
    move v7, v8

    goto :goto_0

    .end local v4    # "isLockdownFeatureEnabled":Z
    :cond_b
    move v4, v7

    .line 5552
    goto :goto_4

    .restart local v4    # "isLockdownFeatureEnabled":Z
    :cond_c
    move v8, v7

    .line 5554
    goto :goto_5
.end method

.method canModifyNetwork(ILandroid/net/wifi/WifiConfiguration;Z)Z
    .locals 5
    .param p1, "uid"    # I
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p3, "onlyAnnotate"    # Z

    .prologue
    const/4 v2, 0x0

    .line 5561
    if-nez p2, :cond_1

    .line 5562
    const-string v3, "canModifyNetowrk recieved null configuration"

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 5579
    :cond_0
    :goto_0
    return v2

    .line 5568
    :cond_1
    iget v3, p2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 5569
    iget v0, p2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 5579
    .local v0, "netid":I
    :goto_1
    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/wifi/WifiConfigStore;->canModifyNetwork(IIZ)Z

    move-result v2

    goto :goto_0

    .line 5571
    .end local v0    # "netid":I
    :cond_2
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/ConfigurationMap;->getByConfigKey(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 5572
    .local v1, "test":Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_0

    .line 5575
    iget v0, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .restart local v0    # "netid":I
    goto :goto_1
.end method

.method checkConfigOverridePermission(I)Z
    .locals 4
    .param p1, "uid"    # I

    .prologue
    const/4 v1, 0x0

    .line 5584
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const-string v3, "android.permission.OVERRIDE_WIFI_CONFIG"

    invoke-interface {v2, v3, p1}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 5588
    :cond_0
    :goto_0
    return v1

    .line 5587
    :catch_0
    move-exception v0

    .line 5588
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method clearBssidBlacklist()V
    .locals 2

    .prologue
    .line 5655
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->useHalBasedAutoJoinOffload()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5657
    const-string v0, "WifiConfigStore"

    const-string v1, "No blacklist allowed without epno enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5664
    :goto_0
    return-void

    .line 5661
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mBssidBlacklist:Ljava/util/HashSet;

    .line 5662
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->clearBlacklist()Z

    .line 5663
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/wifi/WifiNative;->setBssidBlacklist([Ljava/lang/String;)Z

    goto :goto_0
.end method

.method containsVsieForSns(I)Z
    .locals 3
    .param p1, "netId"    # I

    .prologue
    .line 2277
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v2, "check_vsie_for_sns"

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2278
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2279
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2280
    const-string v1, "WifiConfigStore"

    const-string v2, "check_vsie_for_sns = 1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2281
    const/4 v1, 0x1

    .line 2284
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method disableAllNetworks()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 2026
    sget-boolean v3, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v3, :cond_0

    const-string v3, "disableAllNetworks"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    .line 2027
    :cond_0
    const/4 v2, 0x0

    .line 2028
    .local v2, "networkDisabled":Z
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v3}, Lcom/android/server/wifi/ConfigurationMap;->getEnabledNetworks()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 2030
    .local v0, "enabled":Landroid/net/wifi/WifiConfiguration;
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wifi/WifiNative;->disableNetworkWithReason(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2031
    const/4 v2, 0x1

    .line 2032
    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_0

    .line 2034
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disable network failed on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 2046
    .end local v0    # "enabled":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    if-eqz v2, :cond_3

    .line 2047
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast()V

    .line 2049
    :cond_3
    return-void
.end method

.method disableEphemeralNetwork(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 3
    .param p1, "SSID"    # Ljava/lang/String;

    .prologue
    .line 1579
    if-nez p1, :cond_0

    .line 1580
    const/4 v0, 0x0

    .line 1596
    :goto_0
    return-object v0

    .line 1583
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/ConfigurationMap;->getEphemeral(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1585
    .local v0, "foundConfig":Landroid/net/wifi/WifiConfiguration;
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mDeletedEphemeralSSIDs:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1586
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Forget ephemeral SSID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " num="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mDeletedEphemeralSSIDs:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1588
    if-eqz v0, :cond_1

    .line 1589
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found ephemeral config in disableEphemeralNetwork: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1594
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->writeKnownNetworkHistory(Z)V

    goto :goto_0
.end method

.method disableNetwork(I)Z
    .locals 2
    .param p1, "netId"    # I

    .prologue
    .line 2056
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wifi/WifiConfigStore;->disableNetwork(II)Z

    move-result v0

    .line 2057
    .local v0, "ret":Z
    if-eqz v0, :cond_0

    .line 2058
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->registerNetworkDisabled(I)V

    .line 2060
    :cond_0
    return v0
.end method

.method disableNetwork(II)Z
    .locals 11
    .param p1, "netId"    # I
    .param p2, "reason"    # I

    .prologue
    const/16 v10, 0xc

    const/16 v9, 0xb

    const/4 v8, 0x3

    const/4 v7, 0x5

    const/4 v4, 0x1

    .line 2070
    sget-boolean v3, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v3, :cond_0

    const-string v3, "disableNetwork"

    invoke-direct {p0, v3, p1}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;I)V

    .line 2073
    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/wifi/WifiNative;->disableNetworkWithReason(II)Z

    move-result v2

    .line 2077
    .local v2, "ret":Z
    const-string v3, "WifiConfigStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "disableNetwork:  netId  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ret   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2078
    const/4 v1, 0x0

    .line 2079
    .local v1, "network":Landroid/net/wifi/WifiConfiguration;
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v3, p1}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 2081
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    sget-boolean v3, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v3, :cond_1

    .line 2082
    if-eqz v0, :cond_1

    .line 2083
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disableNetwork netId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " SSID="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " disabled="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-ne v3, v4, :cond_5

    move v3, v4

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " reason="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 2092
    :cond_1
    if-eqz v0, :cond_3

    .line 2093
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-eq v3, v4, :cond_6

    if-eq p2, v9, :cond_2

    if-ne p2, v10, :cond_6

    .line 2097
    :cond_2
    iput v4, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 2098
    iput p2, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    .line 2099
    move-object v1, v0

    .line 2127
    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 2128
    const/4 v3, 0x2

    invoke-direct {p0, v1, v3}, Lcom/android/server/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V

    .line 2130
    const-string v3, "VZW"

    sget-object v5, Lcom/android/server/wifi/WifiStateMachine;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, v1, Landroid/net/wifi/WifiConfiguration;->status:I

    if-ne v3, v4, :cond_4

    iget v3, v1, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    if-ne v3, v8, :cond_4

    .line 2133
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->sendConfiguredNetworkDisabledWithAuthFailBroadcast(Landroid/net/wifi/WifiConfiguration;)V

    .line 2136
    :cond_4
    return v2

    .line 2083
    :cond_5
    const/4 v3, 0x0

    goto :goto_0

    .line 2100
    :cond_6
    if-ne p2, v7, :cond_7

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    if-eq v3, v9, :cond_3

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    if-eq v3, v10, :cond_3

    .line 2105
    :cond_7
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-eq v3, v4, :cond_9

    const/16 v3, 0x10

    if-eq p2, v3, :cond_8

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    if-eq v3, v7, :cond_9

    .line 2108
    :cond_8
    iput v4, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 2109
    iput p2, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    .line 2110
    move-object v1, v0

    .line 2113
    :cond_9
    if-ne p2, v8, :cond_a

    .line 2115
    iput p2, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    .line 2116
    move-object v1, v0

    .line 2119
    :cond_a
    if-ne p2, v7, :cond_3

    .line 2122
    iput v4, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 2123
    const/16 v3, 0xa1

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    goto :goto_1
.end method

.method disablePoorNetwork(IILjava/lang/String;Z)Z
    .locals 6
    .param p1, "netId"    # I
    .param p2, "rssi"    # I
    .param p3, "bssid"    # Ljava/lang/String;
    .param p4, "noInternet"    # Z

    .prologue
    const/4 v2, 0x0

    .line 2000
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v3, p1}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 2001
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    .line 2014
    :goto_0
    return v2

    .line 2002
    :cond_0
    add-int/lit8 v3, p2, 0x5

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->recoverableRSSI:I

    .line 2003
    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->inRecoverArea:Z

    .line 2004
    iput-object p3, v0, Landroid/net/wifi/WifiConfiguration;->poorBSSID:Ljava/lang/String;

    .line 2005
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroid/net/wifi/WifiConfiguration;->notInRangeTime:J

    .line 2007
    if-eqz p4, :cond_1

    const/16 v1, 0xc

    .line 2010
    .local v1, "reason":I
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/net/wifi/WifiConfiguration;->disabledTime:J

    .line 2011
    const-string v2, "WifiConfigStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] recoverableRSSI : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->recoverableRSSI:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " config.disabledTime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Landroid/net/wifi/WifiConfiguration;->disabledTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2013
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v2, p1, v0}, Lcom/android/server/wifi/ConfigurationMap;->put(ILandroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 2014
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wifi/WifiConfigStore;->disableNetwork(II)Z

    move-result v2

    goto :goto_0

    .line 2007
    .end local v1    # "reason":I
    :cond_1
    const/16 v1, 0xb

    goto :goto_1
.end method

.method driverRoamedFrom(Landroid/net/wifi/WifiInfo;)V
    .locals 4
    .param p1, "info"    # Landroid/net/wifi/WifiInfo;

    .prologue
    .line 1482
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v2

    invoke-static {v2}, Landroid/net/wifi/ScanResult;->is5GHz(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->bandPreferenceBoostThreshold5:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    if-le v2, v3, :cond_0

    .line 1486
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1487
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 1488
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1489
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/ScanDetailCache;->get(Ljava/lang/String;)Landroid/net/wifi/ScanResult;

    move-result-object v1

    .line 1490
    .local v1, "result":Landroid/net/wifi/ScanResult;
    if-eqz v1, :cond_0

    .line 1491
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/net/wifi/ScanResult;->setAutoJoinStatus(I)V

    .line 1496
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "result":Landroid/net/wifi/ScanResult;
    :cond_0
    return-void
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 5315
    const-string v3, "Dump of WifiConfigStore"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5316
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mLastPriority "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mLastPriority:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5317
    const-string v3, "Configured networks"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5318
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->getAllConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 5319
    .local v0, "conf":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_0

    .line 5321
    .end local v0    # "conf":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 5322
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mLostConfigsDbg:Ljava/util/HashSet;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mLostConfigsDbg:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 5323
    const-string v3, "LostConfigs: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5324
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mLostConfigsDbg:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5325
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 5328
    .end local v2    # "s":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    if-eqz v3, :cond_2

    .line 5329
    const-string v3, "WifiConfigStore - Log Begin ----"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5330
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v3, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 5331
    const-string v3, "WifiConfigStore - Log End ----"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5333
    :cond_2
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mMOManager:Lcom/android/server/wifi/hotspot2/omadm/MOManager;

    invoke-virtual {v3}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->isConfigured()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5334
    const-string v3, "Begin dump of ANQP Cache"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5335
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mAnqpCache:Lcom/android/server/wifi/hotspot2/AnqpCache;

    invoke-virtual {v3, p2}, Lcom/android/server/wifi/hotspot2/AnqpCache;->dump(Ljava/io/PrintWriter;)V

    .line 5336
    const-string v3, "End dump of ANQP Cache"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5338
    :cond_3
    return-void
.end method

.method enableAllNetworks()V
    .locals 1

    .prologue
    .line 1056
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->_enableAllNetworks(Z)V

    .line 1057
    return-void
.end method

.method enableAllNetworks(Z)V
    .locals 0
    .param p1, "isScreenOn"    # Z

    .prologue
    .line 1060
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->_enableAllNetworks(Z)V

    .line 1061
    return-void
.end method

.method enableDisabledPoorNetwork()V
    .locals 6

    .prologue
    .line 1960
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    monitor-enter v3

    .line 1961
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v2}, Lcom/android/server/wifi/ConfigurationMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1962
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/16 v4, 0xb

    if-eq v2, v4, :cond_1

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/16 v4, 0xc

    if-ne v2, v4, :cond_0

    :cond_1
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 1965
    const-string v2, "WifiConfigStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] enableDisabledPoorNetwork"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1966
    const/16 v2, -0xc8

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->recoverableRSSI:I

    .line 1967
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->inRecoverArea:Z

    .line 1968
    const-wide/16 v4, 0x0

    iput-wide v4, v0, Landroid/net/wifi/WifiConfiguration;->disabledTime:J

    .line 1969
    const-wide/16 v4, 0x0

    iput-wide v4, v0, Landroid/net/wifi/WifiConfiguration;->notInRangeTime:J

    .line 1970
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->poorBSSID:Ljava/lang/String;

    .line 1971
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v4, 0x0

    const/16 v5, 0x3e8

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/server/wifi/WifiConfigStore;->enableNetwork(IZI)Z

    goto :goto_0

    .line 1974
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1975
    return-void
.end method

.method enableNetwork(IZI)Z
    .locals 4
    .param p1, "netId"    # I
    .param p2, "disableOthers"    # Z
    .param p3, "uid"    # I

    .prologue
    .line 1916
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/WifiConfigStore;->enableNetworkWithoutBroadcast(IZ)Z

    move-result v1

    .line 1917
    .local v1, "ret":Z
    if-eqz p2, :cond_2

    .line 1918
    sget-boolean v2, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableNetwork(disableOthers=true, uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;I)V

    .line 1919
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {p0, v2, p3}, Lcom/android/server/wifi/WifiConfigStore;->updateLastConnectUid(Landroid/net/wifi/WifiConfiguration;I)Z

    .line 1920
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiConfigStore;->writeKnownNetworkHistory(Z)V

    .line 1921
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast()V

    .line 1934
    :cond_1
    :goto_0
    return v1

    .line 1923
    :cond_2
    sget-boolean v2, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v2, :cond_3

    const-string v2, "enableNetwork(disableOthers=false) "

    invoke-direct {p0, v2, p1}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;I)V

    .line 1925
    :cond_3
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    monitor-enter v3

    .line 1926
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v2, p1}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1927
    .local v0, "enabledNetwork":Landroid/net/wifi/WifiConfiguration;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1929
    if-eqz v0, :cond_1

    .line 1930
    const/4 v2, 0x2

    invoke-direct {p0, v0, v2}, Lcom/android/server/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V

    goto :goto_0

    .line 1927
    .end local v0    # "enabledNetwork":Landroid/net/wifi/WifiConfiguration;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method enableNetworkWithoutBroadcast(IZ)Z
    .locals 3
    .param p1, "netId"    # I
    .param p2, "disableOthers"    # Z

    .prologue
    .line 1939
    const/4 v2, 0x1

    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/wifi/WifiConfigStore;->edmCanEnableNetwork(IZZ)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1940
    const/4 v1, 0x0

    .line 1952
    :cond_0
    :goto_0
    return v1

    .line 1944
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wifi/WifiNative;->enableNetwork(IZ)Z

    move-result v1

    .line 1946
    .local v1, "ret":Z
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v2, p1}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1947
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_2

    const/4 v2, 0x2

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 1949
    :cond_2
    if-eqz p2, :cond_0

    .line 1950
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->markAllNetworksDisabledExcept(I)V

    goto :goto_0
.end method

.method enableNetworks(I)V
    .locals 7
    .param p1, "reason"    # I

    .prologue
    .line 1140
    const/4 v2, 0x0

    .line 1141
    .local v2, "networkEnabledStateChanged":Z
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    monitor-enter v4

    .line 1142
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v3}, Lcom/android/server/wifi/ConfigurationMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1143
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    .line 1144
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    if-ne v3, p1, :cond_0

    .line 1145
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lcom/android/server/wifi/WifiNative;->enableNetwork(IZ)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1146
    const/4 v2, 0x1

    .line 1147
    const/4 v3, 0x2

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_0

    .line 1154
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1149
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Enable network failed on "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 1154
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1156
    if-eqz v2, :cond_3

    .line 1157
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiNative;->saveConfig()Z

    .line 1158
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast()V

    .line 1160
    :cond_3
    return-void
.end method

.method enableVerboseLogging(I)V
    .locals 3
    .param p1, "verbose"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 727
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->enableVerboseLogging:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 728
    if-lez p1, :cond_1

    .line 729
    sput-boolean v2, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    .line 730
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiConfigStore;->showNetworks:Z

    .line 734
    :goto_0
    if-le p1, v2, :cond_2

    .line 735
    sput-boolean v2, Lcom/android/server/wifi/WifiConfigStore;->VVDBG:Z

    .line 739
    :goto_1
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 740
    sput-boolean v1, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    .line 741
    sput-boolean v1, Lcom/android/server/wifi/WifiConfigStore;->VVDBG:Z

    .line 743
    :cond_0
    return-void

    .line 732
    :cond_1
    sput-boolean v1, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    goto :goto_0

    .line 737
    :cond_2
    sput-boolean v1, Lcom/android/server/wifi/WifiConfigStore;->VVDBG:Z

    goto :goto_1
.end method

.method forgetNetwork(I)Z
    .locals 5
    .param p1, "netId"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1606
    iget-boolean v4, p0, Lcom/android/server/wifi/WifiConfigStore;->showNetworks:Z

    if-eqz v4, :cond_0

    const-string v4, "forgetNetwork"

    invoke-direct {p0, v4, p1}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;I)V

    .line 1608
    :cond_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v4, p1}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1610
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    sget-boolean v4, Lcom/android/server/wifi/WifiConfigStore;->mReMovableDefaultAp:Z

    if-nez v4, :cond_1

    if-eqz v0, :cond_1

    iget-boolean v4, v0, Landroid/net/wifi/WifiConfiguration;->isVendorSpecificSsid:Z

    if-eqz v4, :cond_1

    .line 1612
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to remove network ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], isVendorSpecificSsid - true"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1630
    :goto_0
    return v2

    .line 1616
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->removeConfigAndSendBroadcastIfNeeded(I)Z

    move-result v1

    .line 1617
    .local v1, "remove":Z
    if-nez v1, :cond_2

    move v2, v3

    .line 1619
    goto :goto_0

    .line 1621
    :cond_2
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v4, p1}, Lcom/android/server/wifi/WifiNative;->removeNetwork(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1622
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1623
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Lcom/android/server/wifi/WifiConfigStore;->writePasspointConfigs(Ljava/lang/String;Lcom/android/server/wifi/hotspot2/pps/HomeSP;)V

    .line 1625
    :cond_3
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiNative;->saveConfig()Z

    .line 1626
    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiConfigStore;->writeKnownNetworkHistory(Z)V

    move v2, v3

    .line 1627
    goto :goto_0

    .line 1629
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to remove network "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getConfigFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5341
    sget-object v0, Lcom/android/server/wifi/WifiConfigStore;->ipConfigFile:Ljava/lang/String;

    return-object v0
.end method

.method getConfiguredNetworks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 861
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->getConfiguredNetworks(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getConfiguredNetworksSize()I
    .locals 5

    .prologue
    .line 773
    const/4 v2, 0x0

    .line 774
    .local v2, "testSsidCount":I
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    monitor-enter v4

    .line 775
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v3}, Lcom/android/server/wifi/ConfigurationMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 776
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->isSpecialSsid:Z

    if-eqz v3, :cond_0

    .line 777
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 780
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 781
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v3}, Lcom/android/server/wifi/ConfigurationMap;->size()I

    move-result v3

    sub-int/2addr v3, v2

    return v3

    .line 780
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public getLastSelectedConfiguration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3053
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->lastSelectedConfiguration:Ljava/lang/String;

    return-object v0
.end method

.method getMatchingConfig(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;
    .locals 7
    .param p1, "scanResult"    # Landroid/net/wifi/ScanResult;

    .prologue
    const/4 v5, 0x0

    .line 886
    if-nez p1, :cond_0

    move-object v1, v5

    .line 900
    :goto_0
    return-object v1

    .line 889
    :cond_0
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigStore;->mScanDetailCaches:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 890
    .local v2, "entry":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 891
    .local v4, "netId":Ljava/lang/Integer;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/ScanDetailCache;

    .line 892
    .local v0, "cache":Lcom/android/server/wifi/ScanDetailCache;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 893
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_1

    .line 895
    iget-object v6, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/android/server/wifi/ScanDetailCache;->get(Ljava/lang/String;)Landroid/net/wifi/ScanResult;

    move-result-object v6

    if-eqz v6, :cond_1

    goto :goto_0

    .end local v0    # "cache":Lcom/android/server/wifi/ScanDetailCache;
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "entry":Ljava/util/Map$Entry;
    .end local v4    # "netId":Ljava/lang/Integer;
    :cond_2
    move-object v1, v5

    .line 900
    goto :goto_0
.end method

.method getMaxDhcpRetries()I
    .locals 3

    .prologue
    .line 5649
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_max_dhcp_retry_count"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method getNextTargetRssi(I)I
    .locals 3
    .param p1, "netId"    # I

    .prologue
    .line 2321
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 2322
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v2, "sns_next_target_rssi"

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2323
    .local v0, "value":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2325
    .end local v0    # "value":Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getPrivilegedConfiguredNetworks()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 878
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->getCredentialsBySsidMap()Ljava/util/Map;

    move-result-object v0

    .line 879
    .local v0, "pskMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->getConfiguredNetworks(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method getProxyProperties(I)Landroid/net/ProxyInfo;
    .locals 2
    .param p1, "netId"    # I

    .prologue
    .line 2242
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 2243
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 2244
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v1

    .line 2246
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getRecentConfiguredNetworks(IZ)Ljava/util/List;
    .locals 8
    .param p1, "milli"    # I
    .param p2, "copy"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 917
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 919
    .local v3, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    monitor-enter v5

    .line 920
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v4}, Lcom/android/server/wifi/ConfigurationMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 921
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    const/16 v6, 0xc8

    if-eq v4, v6, :cond_0

    iget-boolean v4, v1, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-nez v4, :cond_0

    .line 929
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v0

    .line 930
    .local v0, "cache":Lcom/android/server/wifi/ScanDetailCache;
    if-eqz v0, :cond_0

    .line 933
    int-to-long v6, p1

    invoke-virtual {v0, v6, v7}, Lcom/android/server/wifi/ScanDetailCache;->getVisibility(J)Landroid/net/wifi/WifiConfiguration$Visibility;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiConfiguration;->setVisibility(Landroid/net/wifi/WifiConfiguration$Visibility;)V

    .line 934
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    if-eqz v4, :cond_0

    .line 937
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iget v4, v4, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    sget v6, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    if-ne v4, v6, :cond_1

    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iget v4, v4, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    sget v6, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    if-eq v4, v6, :cond_0

    .line 941
    :cond_1
    if-eqz p2, :cond_2

    .line 942
    new-instance v4, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v4, v1}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 947
    .end local v0    # "cache":Lcom/android/server/wifi/ScanDetailCache;
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 944
    .restart local v0    # "cache":Lcom/android/server/wifi/ScanDetailCache;
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 947
    .end local v0    # "cache":Lcom/android/server/wifi/ScanDetailCache;
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_3
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 948
    return-object v3
.end method

.method public getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 4192
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 4198
    :cond_0
    :goto_0
    return-object v0

    .line 4193
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mScanDetailCaches:Ljava/util/HashMap;

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/ScanDetailCache;

    .line 4194
    .local v0, "cache":Lcom/android/server/wifi/ScanDetailCache;
    if-nez v0, :cond_0

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 4195
    new-instance v0, Lcom/android/server/wifi/ScanDetailCache;

    .end local v0    # "cache":Lcom/android/server/wifi/ScanDetailCache;
    invoke-direct {v0, p1}, Lcom/android/server/wifi/ScanDetailCache;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    .line 4196
    .restart local v0    # "cache":Lcom/android/server/wifi/ScanDetailCache;
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mScanDetailCaches:Ljava/util/HashMap;

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method getSecuredNetworkInfo(I)Ljava/lang/String;
    .locals 7
    .param p1, "netId"    # I

    .prologue
    .line 2329
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSecuredNetworkInfo nid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    .line 2330
    const/4 v4, -0x1

    if-ne p1, v4, :cond_1

    const-string v0, "\n"

    .line 2351
    :cond_0
    :goto_0
    return-object v0

    .line 2332
    :cond_1
    new-instance v0, Ljava/lang/String;

    const-string v4, ""

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 2334
    .local v0, "result":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v5, "ssid"

    invoke-virtual {v4, p1, v5}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2335
    .local v2, "value":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2336
    invoke-static {v2}, Landroid/net/wifi/WifiSsid;->createFromAsciiEncoded(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    move-result-object v3

    .line 2337
    .local v3, "wifiSsid":Landroid/net/wifi/WifiSsid;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2338
    .local v1, "ssid":Ljava/lang/String;
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2340
    .end local v1    # "ssid":Ljava/lang/String;
    .end local v3    # "wifiSsid":Landroid/net/wifi/WifiSsid;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2342
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v5, "psk"

    invoke-virtual {v4, p1, v5}, Lcom/android/server/wifi/WifiNative;->getSecuredNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2343
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 2344
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2337
    .restart local v3    # "wifiSsid":Landroid/net/wifi/WifiSsid;
    :cond_3
    const-string v1, "<unknown ssid>"

    goto :goto_1

    .line 2346
    .end local v3    # "wifiSsid":Landroid/net/wifi/WifiSsid;
    :cond_4
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    sget-object v5, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, p1, v5}, Lcom/android/server/wifi/WifiNative;->getSecuredNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2347
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2348
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method getSpecialSsid()I
    .locals 9

    .prologue
    .line 6098
    const/4 v4, -0x2

    .line 6099
    .local v4, "result":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6100
    .local v1, "extraList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    monitor-enter v6

    .line 6101
    :try_start_0
    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v5}, Lcom/android/server/wifi/ConfigurationMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 6102
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->isSpecialSsid:Z

    if-eqz v5, :cond_0

    .line 6103
    const/4 v5, -0x2

    if-ne v4, v5, :cond_1

    .line 6104
    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 6105
    const-string v5, "WifiConfigStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Special: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6122
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 6107
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6112
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 6113
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 6114
    .local v3, "id":I
    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiConfigStore;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 6115
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_3

    .line 6116
    const-string v5, "WifiConfigStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Special: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " (DELETE)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6118
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiConfigStore;->removeNetwork(I)Z

    goto :goto_1

    .line 6120
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "id":I
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigStore;->saveConfig()Z

    .line 6122
    :cond_5
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6123
    return v4
.end method

.method getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;
    .locals 2
    .param p1, "netId"    # I

    .prologue
    .line 867
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 868
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    .line 869
    const/4 v1, 0x0

    .line 870
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1, v0}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0
.end method

.method getStaticIpConfiguration(I)Landroid/net/StaticIpConfiguration;
    .locals 2
    .param p1, "netId"    # I

    .prologue
    .line 2207
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 2208
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 2209
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v1

    .line 2211
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getWhiteListedSsids(Landroid/net/wifi/WifiConfiguration;)[Ljava/lang/String;
    .locals 13
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/16 v9, 0x22

    .line 1707
    const/4 v6, 0x0

    .line 1710
    .local v6, "num_ssids":I
    iget-object v8, p0, Lcom/android/server/wifi/WifiConfigStore;->enableSsidWhitelist:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1763
    :cond_0
    :goto_0
    return-object v7

    .line 1712
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1713
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 1715
    iget-object v8, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-eqz v8, :cond_0

    .line 1718
    iget-object v8, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v8, :cond_0

    iget-object v8, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1721
    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1724
    .local v0, "configKey":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    .line 1725
    .local v3, "link":Landroid/net/wifi/WifiConfiguration;
    if-eqz v3, :cond_2

    .line 1729
    iget v7, v3, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    if-nez v7, :cond_2

    .line 1733
    iget-boolean v7, v3, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eq v7, v11, :cond_2

    .line 1737
    iget-object v7, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v7, :cond_2

    iget-object v7, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1741
    iget-object v7, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    .line 1742
    .local v2, "length":I
    if-le v2, v12, :cond_3

    iget-object v7, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v9, :cond_3

    iget-object v7, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    add-int/lit8 v8, v2, -0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v9, :cond_3

    .line 1743
    iget-object v7, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    add-int/lit8 v8, v2, -0x1

    invoke-virtual {v7, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1748
    .local v5, "nonQuoteSSID":Ljava/lang/String;
    :goto_2
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1745
    .end local v5    # "nonQuoteSSID":Ljava/lang/String;
    :cond_3
    iget-object v5, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .restart local v5    # "nonQuoteSSID":Ljava/lang/String;
    goto :goto_2

    .line 1751
    .end local v0    # "configKey":Ljava/lang/String;
    .end local v2    # "length":I
    .end local v3    # "link":Landroid/net/wifi/WifiConfiguration;
    .end local v5    # "nonQuoteSSID":Ljava/lang/String;
    :cond_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_5

    .line 1752
    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    .line 1753
    .restart local v2    # "length":I
    if-le v2, v12, :cond_6

    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v9, :cond_6

    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    add-int/lit8 v8, v2, -0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v9, :cond_6

    .line 1755
    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    add-int/lit8 v8, v2, -0x1

    invoke-virtual {v7, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1760
    .restart local v5    # "nonQuoteSSID":Ljava/lang/String;
    :goto_3
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1763
    .end local v2    # "length":I
    .end local v5    # "nonQuoteSSID":Ljava/lang/String;
    :cond_5
    new-array v7, v10, [Ljava/lang/String;

    invoke-interface {v4, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    check-cast v7, [Ljava/lang/String;

    goto/16 :goto_0

    .line 1757
    .restart local v2    # "length":I
    :cond_6
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .restart local v5    # "nonQuoteSSID":Ljava/lang/String;
    goto :goto_3
.end method

.method public getWifiConfigForHomeSP(Lcom/android/server/wifi/hotspot2/pps/HomeSP;)Landroid/net/wifi/WifiConfiguration;
    .locals 4
    .param p1, "homeSP"    # Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    .prologue
    .line 4178
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/ConfigurationMap;->getByFQDN(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 4179
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    .line 4180
    const-string v1, "WifiConfigStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find network for homeSP "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4182
    :cond_0
    return-object v0
.end method

.method getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .param p1, "netId"    # I

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method getWifiConfiguration(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/ConfigurationMap;->getByConfigKey(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method handleBSSIDBlackList(ILjava/lang/String;Z)Z
    .locals 9
    .param p1, "netId"    # I
    .param p2, "BSSID"    # Ljava/lang/String;
    .param p3, "enable"    # Z

    .prologue
    .line 5620
    const/4 v1, 0x0

    .line 5621
    .local v1, "found":Z
    if-nez p2, :cond_0

    move v2, v1

    .line 5645
    .end local v1    # "found":Z
    .local v2, "found":I
    :goto_0
    return v2

    .line 5625
    .end local v2    # "found":I
    .restart local v1    # "found":Z
    :cond_0
    iget-object v7, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    monitor-enter v7

    .line 5626
    :try_start_0
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v6}, Lcom/android/server/wifi/ConfigurationMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 5627
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 5628
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wifi/ScanDetailCache;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/ScanDetail;

    .line 5629
    .local v5, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual {v5}, Lcom/android/server/wifi/ScanDetail;->getBSSIDString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 5630
    if-eqz p3, :cond_3

    .line 5631
    invoke-virtual {v5}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/net/wifi/ScanResult;->setAutoJoinStatus(I)V

    goto :goto_1

    .line 5644
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 5636
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    :cond_3
    :try_start_1
    invoke-virtual {v5}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v6

    const/16 v8, 0x10

    invoke-virtual {v6, v8}, Landroid/net/wifi/ScanResult;->setAutoJoinStatus(I)V

    .line 5638
    const/4 v1, 0x1

    goto :goto_1

    .line 5644
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    :cond_4
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v1

    .line 5645
    .restart local v2    # "found":I
    goto :goto_0
.end method

.method handleBadNetworkDisconnectReport(ILandroid/net/wifi/WifiInfo;)V
    .locals 4
    .param p1, "netId"    # I
    .param p2, "info"    # Landroid/net/wifi/WifiInfo;

    .prologue
    .line 5597
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 5598
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_2

    .line 5599
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    sget v2, Landroid/net/wifi/WifiConfiguration;->UNWANTED_BLACKLIST_SOFT_RSSI_24:I

    if-ge v1, v2, :cond_0

    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->is24GHz()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    sget v2, Landroid/net/wifi/WifiConfiguration;->UNWANTED_BLACKLIST_SOFT_RSSI_5:I

    if-ge v1, v2, :cond_3

    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->is5GHz()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5603
    :cond_1
    sget v1, Landroid/net/wifi/WifiConfiguration;->UNWANTED_BLACKLIST_SOFT_BUMP:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    .line 5605
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleBadNetworkDisconnectReport (+4) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 5616
    :cond_2
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/wifi/WifiConfigStore;->lastUnwantedNetworkDisconnectTimestamp:J

    .line 5617
    return-void

    .line 5609
    :cond_3
    sget v1, Landroid/net/wifi/WifiConfiguration;->UNWANTED_BLACKLIST_HARD_BUMP:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    .line 5611
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleBadNetworkDisconnectReport (+8) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method handleSSIDStateChange(IZLjava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "netId"    # I
    .param p2, "enabled"    # Z
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "BSSID"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/16 v8, 0x80

    .line 5688
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v4, p1}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 5689
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_0

    .line 5690
    if-eqz p2, :cond_1

    .line 5691
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring SSID re-enabled from supplicant:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " had autoJoinStatus="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " self added "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v1, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ephemeral "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v1, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 5797
    :cond_0
    :goto_0
    return-void

    .line 5697
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SSID temp disabled for  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " had autoJoinStatus="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " self added "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v1, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ephemeral "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v1, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 5700
    if-eqz p3, :cond_2

    .line 5701
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " message="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 5703
    :cond_2
    iget-boolean v4, v1, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    if-eqz v4, :cond_3

    iget-wide v4, v1, Landroid/net/wifi/WifiConfiguration;->lastConnected:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 5707
    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->removeConfigAndSendBroadcastIfNeeded(I)Z

    goto :goto_0

    .line 5709
    :cond_3
    if-eqz p3, :cond_0

    .line 5710
    const-string v4, "no identity"

    invoke-virtual {p3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "no password"

    invoke-virtual {p3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 5711
    :cond_4
    const/16 v4, 0xa0

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    .line 5714
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no identity blacklisted "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 5790
    :cond_5
    :goto_1
    const-string v4, "\n"

    const-string v5, ""

    invoke-virtual {p3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 5791
    const-string v4, "\r"

    const-string v5, ""

    invoke-virtual {p3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 5792
    iput-object p3, v1, Landroid/net/wifi/WifiConfiguration;->lastFailure:Ljava/lang/String;

    goto/16 :goto_0

    .line 5717
    :cond_6
    const-string v4, "WRONG_KEY"

    invoke-virtual {p3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "AUTH_FAILED"

    invoke-virtual {p3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 5723
    :cond_7
    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->numAuthFailures:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v1, Landroid/net/wifi/WifiConfiguration;->numAuthFailures:I

    .line 5724
    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->numAuthFailures:I

    iget v5, p0, Lcom/android/server/wifi/WifiConfigStore;->maxAuthErrorsToBlacklist:I

    if-le v4, v5, :cond_5

    .line 5725
    invoke-virtual {v1, v8}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    .line 5727
    invoke-virtual {p0, p1, v10}, Lcom/android/server/wifi/WifiConfigStore;->disableNetwork(II)Z

    .line 5729
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Authentication failure, blacklist "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " num failures "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->numAuthFailures:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 5733
    :cond_8
    const-string v4, "DHCP FAILURE"

    invoke-virtual {p3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 5734
    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v1, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    .line 5735
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Landroid/net/wifi/WifiConfiguration;->lastConnectionFailure:J

    .line 5736
    const/4 v2, 0x1

    .line 5738
    .local v2, "maxRetries":I
    if-lez v2, :cond_9

    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    if-le v4, v2, :cond_9

    .line 5743
    invoke-virtual {v1, v8}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    .line 5745
    invoke-virtual {p0, p1, v9}, Lcom/android/server/wifi/WifiConfigStore;->disableNetwork(II)Z

    .line 5746
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DHCP failure, blacklist "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " num failures "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 5749
    invoke-direct {p0, v9, p1}, Lcom/android/server/wifi/WifiConfigStore;->sendErrorBroadcast(II)V

    .line 5753
    :cond_9
    const/4 v3, 0x0

    .line 5754
    .local v3, "result":Landroid/net/wifi/ScanResult;
    const-string v0, ""

    .line 5755
    .local v0, "bssidDbg":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v4

    if-eqz v4, :cond_a

    if-eqz p4, :cond_a

    .line 5756
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v4

    invoke-virtual {v4, p4}, Lcom/android/server/wifi/ScanDetailCache;->get(Ljava/lang/String;)Landroid/net/wifi/ScanResult;

    move-result-object v3

    .line 5758
    :cond_a
    if-eqz v3, :cond_c

    .line 5759
    iget v4, v3, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    .line 5760
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ipfail="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5761
    iget v4, v3, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    if-le v4, v10, :cond_b

    .line 5763
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v4, p4}, Lcom/android/server/wifi/WifiNative;->addToBlacklist(Ljava/lang/String;)Z

    .line 5764
    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Landroid/net/wifi/ScanResult;->setAutoJoinStatus(I)V

    .line 5771
    :cond_b
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "blacklisted "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " due to IP config failures, count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " disableReason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 5767
    :cond_c
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v4, p4}, Lcom/android/server/wifi/WifiNative;->addToBlacklist(Ljava/lang/String;)Z

    goto :goto_2

    .line 5778
    .end local v0    # "bssidDbg":Ljava/lang/String;
    .end local v2    # "maxRetries":I
    .end local v3    # "result":Landroid/net/wifi/ScanResult;
    :cond_d
    const-string v4, "CONN_FAILED"

    invoke-virtual {p3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 5779
    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->numConnectionFailures:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v1, Landroid/net/wifi/WifiConfiguration;->numConnectionFailures:I

    .line 5780
    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->numConnectionFailures:I

    iget v5, p0, Lcom/android/server/wifi/WifiConfigStore;->maxConnectionErrorsToBlacklist:I

    if-le v4, v5, :cond_5

    .line 5781
    invoke-virtual {v1, v8}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    .line 5783
    const/4 v4, 0x4

    invoke-virtual {p0, p1, v4}, Lcom/android/server/wifi/WifiConfigStore;->disableNetwork(II)Z

    .line 5785
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connection failure, blacklist "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " num failures "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->numConnectionFailures:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method installKeys(Landroid/net/wifi/WifiEnterpriseConfig;Ljava/lang/String;)Z
    .locals 12
    .param p1, "config"    # Landroid/net/wifi/WifiEnterpriseConfig;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/16 v11, 0x3f2

    .line 5800
    const/4 v3, 0x1

    .line 5801
    .local v3, "ret":Z
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "USRPKEY_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5802
    .local v2, "privKeyName":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "USRCERT_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5803
    .local v5, "userCertName":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CACERT_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5805
    .local v0, "caCertName":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "WAPIAS_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 5806
    .local v6, "wapiASCertName":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "WAPIUSR_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 5807
    .local v7, "wapiUserCertName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 5808
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientPrivateKey()Ljava/security/PrivateKey;

    move-result-object v8

    invoke-interface {v8}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v1

    .line 5809
    .local v1, "privKeyData":[B
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientPrivateKey()Ljava/security/PrivateKey;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/wifi/WifiConfigStore;->isHardwareBackedKey(Ljava/security/PrivateKey;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 5812
    const-string v8, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "importing keys "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " in hardware backed store"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5813
    iget-object v8, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    const/4 v9, 0x0

    invoke-virtual {v8, v2, v1, v11, v9}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;[BII)Z

    move-result v3

    .line 5824
    :goto_0
    if-nez v3, :cond_1

    move v4, v3

    .line 5891
    .end local v1    # "privKeyData":[B
    .end local v3    # "ret":Z
    .local v4, "ret":Z
    :goto_1
    return v4

    .line 5820
    .end local v4    # "ret":Z
    .restart local v1    # "privKeyData":[B
    .restart local v3    # "ret":Z
    :cond_0
    const-string v8, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "importing keys "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " in software backed store"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5821
    iget-object v8, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    const/4 v9, 0x1

    invoke-virtual {v8, v2, v1, v11, v9}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;[BII)Z

    move-result v3

    goto :goto_0

    .line 5828
    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v8

    invoke-direct {p0, v5, v8}, Lcom/android/server/wifi/WifiConfigStore;->putCertInKeyStore(Ljava/lang/String;Ljava/security/cert/Certificate;)Z

    move-result v3

    .line 5829
    if-nez v3, :cond_2

    .line 5831
    iget-object v8, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v8, v2, v11}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    move v4, v3

    .line 5832
    .end local v3    # "ret":Z
    .restart local v4    # "ret":Z
    goto :goto_1

    .line 5836
    .end local v1    # "privKeyData":[B
    .end local v4    # "ret":Z
    .restart local v3    # "ret":Z
    :cond_2
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 5837
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v8

    invoke-direct {p0, v0, v8}, Lcom/android/server/wifi/WifiConfigStore;->putCertInKeyStore(Ljava/lang/String;Ljava/security/cert/Certificate;)Z

    move-result v3

    .line 5838
    if-nez v3, :cond_4

    .line 5839
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 5841
    iget-object v8, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v8, v2, v11}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    .line 5842
    iget-object v8, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v8, v5, v11}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    :cond_3
    move v4, v3

    .line 5844
    .end local v3    # "ret":Z
    .restart local v4    # "ret":Z
    goto :goto_1

    .line 5849
    .end local v4    # "ret":Z
    .restart local v3    # "ret":Z
    :cond_4
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getWapiAsCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 5850
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getWapiAsCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v8

    invoke-direct {p0, v6, v8}, Lcom/android/server/wifi/WifiConfigStore;->putCertInKeyStore(Ljava/lang/String;Ljava/security/cert/Certificate;)Z

    move-result v3

    .line 5851
    if-nez v3, :cond_6

    .line 5852
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getWapiAsCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 5853
    iget-object v8, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v8, v6, v11}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    :cond_5
    move v4, v3

    .line 5855
    .end local v3    # "ret":Z
    .restart local v4    # "ret":Z
    goto :goto_1

    .line 5859
    .end local v4    # "ret":Z
    .restart local v3    # "ret":Z
    :cond_6
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getWapiUserCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 5860
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getWapiUserCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/WifiConfigStore;->putCertInKeyStore(Ljava/lang/String;Ljava/security/cert/Certificate;)Z

    move-result v3

    .line 5861
    if-nez v3, :cond_8

    .line 5862
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getWapiUserCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 5863
    iget-object v8, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v8, v7, v11}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    :cond_7
    move v4, v3

    .line 5865
    .end local v3    # "ret":Z
    .restart local v4    # "ret":Z
    goto/16 :goto_1

    .line 5870
    .end local v4    # "ret":Z
    .restart local v3    # "ret":Z
    :cond_8
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v8

    if-eqz v8, :cond_9

    .line 5871
    invoke-virtual {p1, p2}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    .line 5872
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->resetClientKeyEntry()V

    .line 5875
    :cond_9
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v8

    if-eqz v8, :cond_a

    .line 5876
    invoke-virtual {p1, p2}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAlias(Ljava/lang/String;)V

    .line 5877
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->resetCaCertificate()V

    .line 5881
    :cond_a
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getWapiAsCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v8

    if-eqz v8, :cond_b

    .line 5882
    invoke-virtual {p1, p2}, Landroid/net/wifi/WifiEnterpriseConfig;->setWapiASCertificateAlias(Ljava/lang/String;)V

    .line 5883
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->resetWapiAsCertificate()V

    .line 5886
    :cond_b
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getWapiUserCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v8

    if-eqz v8, :cond_c

    .line 5887
    invoke-virtual {p1, p2}, Landroid/net/wifi/WifiEnterpriseConfig;->setWapiUserCertificateAlias(Ljava/lang/String;)V

    .line 5888
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getWapiUserCertificate()Ljava/security/cert/X509Certificate;

    :cond_c
    move v4, v3

    .line 5891
    .end local v3    # "ret":Z
    .restart local v4    # "ret":Z
    goto/16 :goto_1
.end method

.method isEphemeral(I)Z
    .locals 2
    .param p1, "netId"    # I

    .prologue
    .line 2263
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 2264
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isIBSS(I)Z
    .locals 3
    .param p1, "netId"    # I

    .prologue
    .line 2288
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 2289
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->mode:Landroid/net/wifi/WifiConfiguration$OperationMode;

    sget-object v2, Landroid/net/wifi/WifiConfiguration$OperationMode;->IBSS:Landroid/net/wifi/WifiConfiguration$OperationMode;

    if-ne v1, v2, :cond_0

    .line 2290
    const/4 v1, 0x1

    .line 2292
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isLastSelectedConfiguration(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 3057
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->lastSelectedConfiguration:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->lastSelectedConfiguration:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isNetworkConfigured(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5478
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 5479
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5482
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 5479
    goto :goto_0

    .line 5482
    :cond_2
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/ConfigurationMap;->getByConfigKey(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method isSkipInternetCheck(I)Z
    .locals 4
    .param p1, "netId"    # I

    .prologue
    const/4 v0, 0x0

    .line 2308
    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    .line 2309
    const-string v1, "1"

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v3, "skip_internet_check"

    invoke-virtual {v2, p1, v3}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "2"

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v3, "skip_internet_check"

    invoke-virtual {v2, p1, v3}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 2313
    :cond_1
    return v0
.end method

.method isUsingSamsungFlag(II)Z
    .locals 2
    .param p1, "netId"    # I
    .param p2, "flagId"    # I

    .prologue
    .line 2269
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 2270
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->samsungSpecificFlags:Ljava/util/BitSet;

    invoke-virtual {v1, p2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2271
    const/4 v1, 0x1

    .line 2273
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isUsingStaticIp(I)Z
    .locals 3
    .param p1, "netId"    # I

    .prologue
    .line 2255
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 2256
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v1

    sget-object v2, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v1, v2, :cond_0

    .line 2257
    const/4 v1, 0x1

    .line 2259
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isVendorSpecificSsid(I)Z
    .locals 2
    .param p1, "netId"    # I

    .prologue
    .line 2296
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 2297
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 2298
    iget-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->isVendorSpecificSsid:Z

    .line 2300
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public linkConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 16
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 4207
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/ScanDetailCache;->size()I

    move-result v2

    const/4 v3, 0x6

    if-le v2, v3, :cond_1

    .line 4326
    :cond_0
    :goto_0
    return-void

    .line 4211
    :cond_1
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4215
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    monitor-enter v15

    .line 4216
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v2}, Lcom/android/server/wifi/ConfigurationMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/WifiConfiguration;

    .line 4217
    .local v13, "link":Landroid/net/wifi/WifiConfiguration;
    const/4 v9, 0x0

    .line 4219
    .local v9, "doLink":Z
    invoke-virtual {v13}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 4223
    iget v2, v13, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_2

    iget-boolean v2, v13, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-nez v2, :cond_2

    .line 4229
    iget-object v2, v13, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4233
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v14

    .line 4234
    .local v14, "linkedScanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    if-eqz v14, :cond_3

    invoke-virtual {v14}, Lcom/android/server/wifi/ScanDetailCache;->size()I

    move-result v2

    const/4 v3, 0x6

    if-gt v2, v3, :cond_2

    .line 4239
    :cond_3
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    if-eqz v2, :cond_c

    iget-object v2, v13, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    if-eqz v2, :cond_c

    .line 4241
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    iget-object v3, v13, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4242
    sget-boolean v2, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v2, :cond_4

    .line 4243
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "linkConfiguration link due to same gw "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v13, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " GW "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 4246
    :cond_4
    const/4 v9, 0x1

    .line 4274
    :cond_5
    const/4 v2, 0x1

    if-ne v9, v2, :cond_7

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wifi/WifiConfigStore;->onlyLinkSameCredentialConfigurations:Z

    if-eqz v2, :cond_7

    .line 4275
    iget-object v2, v13, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v3, "psk"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/wifi/WifiConfigStore;->readNetworkVariableFromSupplicantFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 4276
    .local v7, "apsk":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v3, "psk"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/wifi/WifiConfigStore;->readNetworkVariableFromSupplicantFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 4277
    .local v8, "bpsk":Ljava/lang/String;
    if-eqz v7, :cond_6

    if-eqz v8, :cond_6

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "*"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "Mjkd86jEMGn79KhKll298Uu7-deleted"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 4281
    :cond_6
    const/4 v9, 0x0

    .line 4285
    .end local v7    # "apsk":Ljava/lang/String;
    .end local v8    # "bpsk":Ljava/lang/String;
    :cond_7
    if-eqz v9, :cond_10

    .line 4286
    sget-boolean v2, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v2, :cond_8

    .line 4287
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "linkConfiguration: will link "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 4290
    :cond_8
    iget-object v2, v13, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-nez v2, :cond_9

    .line 4291
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v13, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    .line 4293
    :cond_9
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-nez v2, :cond_a

    .line 4294
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p1

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    .line 4296
    :cond_a
    iget-object v2, v13, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_b

    .line 4297
    iget-object v2, v13, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4298
    const/4 v2, 0x1

    iput-boolean v2, v13, Landroid/net/wifi/WifiConfiguration;->dirty:Z

    .line 4300
    :cond_b
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {v13}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 4301
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {v13}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4302
    const/4 v2, 0x1

    move-object/from16 v0, p1

    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->dirty:Z

    goto/16 :goto_1

    .line 4325
    .end local v9    # "doLink":Z
    .end local v13    # "link":Landroid/net/wifi/WifiConfiguration;
    .end local v14    # "linkedScanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    :catchall_0
    move-exception v2

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 4253
    .restart local v9    # "doLink":Z
    .restart local v13    # "link":Landroid/net/wifi/WifiConfiguration;
    .restart local v14    # "linkedScanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    :cond_c
    :try_start_1
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/ScanDetailCache;->size()I

    move-result v2

    const/4 v3, 0x6

    if-gt v2, v3, :cond_5

    .line 4256
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/ScanDetailCache;->keySet()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_d
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4257
    .local v1, "abssid":Ljava/lang/String;
    invoke-virtual {v14}, Lcom/android/server/wifi/ScanDetailCache;->keySet()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_e
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4258
    .local v4, "bbssid":Ljava/lang/String;
    sget-boolean v2, Lcom/android/server/wifi/WifiConfigStore;->VVDBG:Z

    if-eqz v2, :cond_f

    .line 4259
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "linkConfiguration try to link due to DBDC BSSID match "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v13, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bssida "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bssidb "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 4264
    :cond_f
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x10

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 4267
    const/4 v9, 0x1

    goto :goto_2

    .line 4305
    .end local v1    # "abssid":Ljava/lang/String;
    .end local v4    # "bbssid":Ljava/lang/String;
    .end local v12    # "i$":Ljava/util/Iterator;
    :cond_10
    iget-object v2, v13, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-eqz v2, :cond_12

    iget-object v2, v13, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 4307
    sget-boolean v2, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v2, :cond_11

    .line 4308
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "linkConfiguration: un-link "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 4311
    :cond_11
    const/4 v2, 0x1

    iput-boolean v2, v13, Landroid/net/wifi/WifiConfiguration;->dirty:Z

    .line 4312
    iget-object v2, v13, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4314
    :cond_12
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-eqz v2, :cond_2

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {v13}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 4316
    sget-boolean v2, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v2, :cond_13

    .line 4317
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "linkConfiguration: un-link "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 4320
    :cond_13
    const/4 v2, 0x1

    move-object/from16 v0, p1

    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->dirty:Z

    .line 4321
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {v13}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 4325
    .end local v9    # "doLink":Z
    .end local v13    # "link":Landroid/net/wifi/WifiConfiguration;
    .end local v14    # "linkedScanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    :cond_14
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method loadAndEnableAllNetworks()V
    .locals 1

    .prologue
    .line 766
    const-string v0, "Loading config and enabling all networks "

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    .line 767
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigStore;->loadConfiguredNetworks()V

    .line 768
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigStore;->enableAllNetworks()V

    .line 769
    return-void
.end method

.method loadConfiguredNetworks()V
    .locals 26

    .prologue
    .line 2480
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/WifiConfigStore;->mLastPriority:I

    .line 2481
    const-string v23, "PrivateFirst"

    sget-object v24, Lcom/android/server/wifi/WifiConfigStore;->mPriorityRuleAs:Ljava/lang/String;

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 2482
    const/16 v23, 0x0

    sput v23, Lcom/android/server/wifi/WifiConfigStore;->mLastOpenPriority:I

    .line 2483
    const/16 v23, 0x0

    sput v23, Lcom/android/server/wifi/WifiConfigStore;->mLastCorporatePriority:I

    .line 2485
    :cond_0
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 2486
    .local v20, "networkToDisable":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wifi/ConfigurationMap;->clear()V

    .line 2487
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2488
    .local v6, "configTlsResetList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const/4 v15, -0x1

    .line 2489
    .local v15, "last_id":I
    const/16 v21, -0x1

    .line 2490
    .local v21, "prev_id":I
    const/4 v10, 0x0

    .line 2491
    .local v10, "done":Z
    :cond_1
    :goto_0
    if-nez v10, :cond_1f

    .line 2493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Lcom/android/server/wifi/WifiNative;->listNetworks(I)Ljava/lang/String;

    move-result-object v18

    .line 2494
    .local v18, "listStr":Ljava/lang/String;
    if-nez v18, :cond_3

    .line 2653
    .end local v18    # "listStr":Ljava/lang/String;
    :cond_2
    return-void

    .line 2497
    .restart local v18    # "listStr":Ljava/lang/String;
    :cond_3
    const-string v23, "\n"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 2499
    .local v17, "lines":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiConfigStore;->showNetworks:Z

    move/from16 v23, v0

    if-eqz v23, :cond_4

    .line 2500
    const-string v23, "WifiConfigStore: loadConfiguredNetworks:  "

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    .line 2501
    move-object/from16 v4, v17

    .local v4, "arr$":[Ljava/lang/String;
    array-length v0, v4

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_1
    move/from16 v0, v16

    if-ge v13, v0, :cond_4

    aget-object v19, v4, v13

    .line 2502
    .local v19, "net":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    .line 2501
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 2507
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v13    # "i$":I
    .end local v16    # "len$":I
    .end local v19    # "net":Ljava/lang/String;
    :cond_4
    const/4 v12, 0x1

    .local v12, "i":I
    :goto_2
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v12, v0, :cond_1c

    .line 2508
    aget-object v23, v17, v12

    const-string v24, "\t"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .line 2510
    .local v22, "result":[Ljava/lang/String;
    new-instance v5, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v5}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 2512
    .local v5, "config":Landroid/net/wifi/WifiConfiguration;
    const/16 v23, 0x0

    :try_start_0
    aget-object v23, v22, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    iput v0, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 2513
    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    .line 2518
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_f

    .line 2519
    const/16 v23, 0x3

    aget-object v23, v22, v23

    const-string v24, "[CURRENT]"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v23

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_d

    .line 2520
    const/16 v23, 0x0

    move/from16 v0, v23

    iput v0, v5, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 2529
    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->readNetworkVariables(Landroid/net/wifi/WifiConfiguration;)V

    .line 2531
    new-instance v7, Ljava/util/zip/CRC32;

    invoke-direct {v7}, Ljava/util/zip/CRC32;-><init>()V

    .line 2532
    .local v7, "csum":Ljava/util/zip/Checksum;
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_5

    .line 2533
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->getBytes()[B

    move-result-object v23

    const/16 v24, 0x0

    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->getBytes()[B

    move-result-object v25

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-interface {v7, v0, v1, v2}, Ljava/util/zip/Checksum;->update([BII)V

    .line 2534
    invoke-interface {v7}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v8

    .line 2535
    .local v8, "d":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mDeletedSSIDs:Ljava/util/Set;

    move-object/from16 v23, v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_5

    .line 2536
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, " got CRC for SSID "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " -> "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", was deleted"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 2540
    .end local v8    # "d":J
    :cond_5
    const-string v23, "PrivateFirst"

    sget-object v24, Lcom/android/server/wifi/WifiConfigStore;->mPriorityRuleAs:Ljava/lang/String;

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_12

    .line 2541
    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v23, v0

    const/16 v24, 0x1388

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_10

    .line 2542
    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v23, v0

    sput v23, Lcom/android/server/wifi/WifiConfigStore;->mLastOpenPriority:I

    .line 2550
    :goto_4
    const-string v23, "WifiConfigStore"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "loadConfiguredNetworks config.priority= "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2556
    :cond_6
    :goto_5
    const-string v23, "PrivateFirst"

    sget-object v24, Lcom/android/server/wifi/WifiConfigStore;->mPriorityRuleAs:Ljava/lang/String;

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_9

    .line 2557
    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v23, v0

    if-nez v23, :cond_8

    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_8

    .line 2558
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    invoke-virtual/range {v23 .. v24}, Ljava/util/BitSet;->get(I)Z

    move-result v23

    if-nez v23, :cond_7

    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    invoke-virtual/range {v23 .. v24}, Ljava/util/BitSet;->get(I)Z

    move-result v23

    if-nez v23, :cond_7

    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v23, v0

    const/16 v24, 0x7

    invoke-virtual/range {v23 .. v24}, Ljava/util/BitSet;->get(I)Z

    move-result v23

    if-nez v23, :cond_7

    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v23, v0

    const/16 v24, 0x9

    invoke-virtual/range {v23 .. v24}, Ljava/util/BitSet;->get(I)Z

    move-result v23

    if-eqz v23, :cond_13

    .line 2560
    :cond_7
    const/16 v23, 0x1389

    move/from16 v0, v23

    iput v0, v5, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 2575
    :cond_8
    :goto_6
    const/16 v23, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v5, v1}, Lcom/android/server/wifi/WifiConfigStore;->addOrUpdateNetworkNative(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    .line 2576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wifi/WifiNative;->saveConfig()Z

    .line 2578
    :cond_9
    sget-object v23, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/net/wifi/WifiConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    .line 2579
    sget-object v23, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/net/wifi/WifiConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    .line 2581
    iget-boolean v0, v5, Landroid/net/wifi/WifiConfiguration;->isSpecialSsid:Z

    move/from16 v23, v0

    if-eqz v23, :cond_b

    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->status:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_a

    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    move/from16 v23, v0

    const/16 v24, 0x11

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_b

    .line 2584
    :cond_a
    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2587
    :cond_b
    const-string v23, "PrivateFirst"

    sget-object v24, Lcom/android/server/wifi/WifiConfigStore;->mPriorityRuleAs:Ljava/lang/String;

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_17

    .line 2588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    move-object/from16 v23, v0

    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v24, v0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v1, v5}, Lcom/android/server/wifi/ConfigurationMap;->put(ILandroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 2589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mScanDetailCaches:Ljava/util/HashMap;

    move-object/from16 v23, v0

    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    new-instance v25, Lcom/android/server/wifi/ScanDetailCache;

    move-object/from16 v0, v25

    invoke-direct {v0, v5}, Lcom/android/server/wifi/ScanDetailCache;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    invoke-virtual/range {v23 .. v25}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2507
    .end local v7    # "csum":Ljava/util/zip/Checksum;
    :cond_c
    :goto_7
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 2514
    :catch_0
    move-exception v11

    .line 2515
    .local v11, "e":Ljava/lang/NumberFormatException;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Failed to read network-id \'"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x0

    aget-object v24, v22, v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\'"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_7

    .line 2521
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    :cond_d
    const/16 v23, 0x3

    aget-object v23, v22, v23

    const-string v24, "[DISABLED]"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v23

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_e

    .line 2522
    const/16 v23, 0x1

    move/from16 v0, v23

    iput v0, v5, Landroid/net/wifi/WifiConfiguration;->status:I

    goto/16 :goto_3

    .line 2524
    :cond_e
    const/16 v23, 0x2

    move/from16 v0, v23

    iput v0, v5, Landroid/net/wifi/WifiConfiguration;->status:I

    goto/16 :goto_3

    .line 2526
    :cond_f
    const/16 v23, 0x2

    move/from16 v0, v23

    iput v0, v5, Landroid/net/wifi/WifiConfiguration;->status:I

    goto/16 :goto_3

    .line 2544
    .restart local v7    # "csum":Ljava/util/zip/Checksum;
    :cond_10
    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v23, v0

    const/16 v24, 0x1388

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_11

    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v23, v0

    const/16 v24, 0x2710

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_11

    .line 2545
    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v23, v0

    sput v23, Lcom/android/server/wifi/WifiConfigStore;->mLastCorporatePriority:I

    goto/16 :goto_4

    .line 2548
    :cond_11
    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/WifiConfigStore;->mLastPriority:I

    goto/16 :goto_4

    .line 2552
    :cond_12
    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mLastPriority:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_6

    .line 2553
    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/WifiConfigStore;->mLastPriority:I

    goto/16 :goto_5

    .line 2562
    :cond_13
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Ljava/util/BitSet;->get(I)Z

    move-result v23

    if-nez v23, :cond_14

    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v23, v0

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Ljava/util/BitSet;->get(I)Z

    move-result v23

    if-nez v23, :cond_14

    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v23, v0

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Ljava/util/BitSet;->get(I)Z

    move-result v23

    if-eqz v23, :cond_15

    .line 2565
    :cond_14
    const/16 v23, 0x2711

    move/from16 v0, v23

    iput v0, v5, Landroid/net/wifi/WifiConfiguration;->priority:I

    goto/16 :goto_6

    .line 2567
    :cond_15
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ljava/util/BitSet;->get(I)Z

    move-result v23

    if-eqz v23, :cond_8

    .line 2568
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    if-eqz v23, :cond_16

    .line 2569
    const/16 v23, 0x2711

    move/from16 v0, v23

    iput v0, v5, Landroid/net/wifi/WifiConfiguration;->priority:I

    goto/16 :goto_6

    .line 2571
    :cond_16
    const/16 v23, 0x1

    move/from16 v0, v23

    iput v0, v5, Landroid/net/wifi/WifiConfiguration;->priority:I

    goto/16 :goto_6

    .line 2591
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    move-object/from16 v23, v0

    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/android/server/wifi/ConfigurationMap;->getByConfigKey(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v23

    if-eqz v23, :cond_19

    .line 2593
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiConfigStore;->showNetworks:Z

    move/from16 v23, v0

    if-eqz v23, :cond_18

    const-string v23, "discarded duplicate network "

    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;I)V

    .line 2607
    :cond_18
    :goto_8
    if-eqz v5, :cond_c

    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v23, v0

    if-eqz v23, :cond_c

    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v23

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_c

    .line 2609
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiEnterpriseConfig;->getTls12Enable()Z

    move-result v23

    if-nez v23, :cond_c

    .line 2611
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 2594
    :cond_19
    invoke-static {v5}, Lcom/android/server/wifi/WifiServiceImpl;->isValid(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v23

    if-eqz v23, :cond_1a

    .line 2595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    move-object/from16 v23, v0

    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v24, v0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v1, v5}, Lcom/android/server/wifi/ConfigurationMap;->put(ILandroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 2596
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiConfigStore;->showNetworks:Z

    move/from16 v23, v0

    if-eqz v23, :cond_18

    const-string v23, "loaded configured network"

    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;I)V

    goto :goto_8

    .line 2597
    :cond_1a
    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->isHS20AP:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1b

    .line 2599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    move-object/from16 v23, v0

    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v24, v0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v1, v5}, Lcom/android/server/wifi/ConfigurationMap;->put(ILandroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 2600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mScanDetailCaches:Ljava/util/HashMap;

    move-object/from16 v23, v0

    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    new-instance v25, Lcom/android/server/wifi/ScanDetailCache;

    move-object/from16 v0, v25

    invoke-direct {v0, v5}, Lcom/android/server/wifi/ScanDetailCache;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    invoke-virtual/range {v23 .. v25}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2601
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiConfigStore;->showNetworks:Z

    move/from16 v23, v0

    if-eqz v23, :cond_18

    const-string v23, "loaded hs20 network"

    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 2603
    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiConfigStore;->showNetworks:Z

    move/from16 v23, v0

    if-eqz v23, :cond_18

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Ignoring loaded configured for network "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " because config are not valid"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 2617
    .end local v5    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v7    # "csum":Ljava/util/zip/Checksum;
    .end local v22    # "result":[Ljava/lang/String;
    :cond_1c
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1d

    const/4 v10, 0x1

    .line 2618
    :goto_9
    if-nez v10, :cond_1

    .line 2619
    move/from16 v0, v21

    if-ne v0, v15, :cond_1e

    const/4 v10, 0x1

    .line 2620
    :goto_a
    move/from16 v21, v15

    goto/16 :goto_0

    .line 2617
    :cond_1d
    const/4 v10, 0x0

    goto :goto_9

    .line 2619
    :cond_1e
    const/4 v10, 0x0

    goto :goto_a

    .line 2624
    .end local v12    # "i":I
    .end local v17    # "lines":[Ljava/lang/String;
    .end local v18    # "listStr":Ljava/lang/String;
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiConfigStore;->readPasspointConfig()V

    .line 2625
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiConfigStore;->readIpAndProxyConfigurations()V

    .line 2626
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiConfigStore;->readNetworkHistory()V

    .line 2629
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiConfigStore;->buildPnoList()V

    .line 2631
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast()V

    .line 2633
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiConfigStore;->showNetworks:Z

    move/from16 v23, v0

    if-eqz v23, :cond_20

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "loadConfiguredNetworks loaded "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wifi/ConfigurationMap;->size()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " networks"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    .line 2635
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wifi/ConfigurationMap;->isEmpty()Z

    move-result v23

    if-eqz v23, :cond_21

    .line 2637
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiConfigStore;->logKernelTime()V

    .line 2638
    const-string v23, "/data/misc/wifi/wpa_supplicant.conf"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->logContents(Ljava/lang/String;)V

    .line 2639
    const-string v23, "/data/misc/wifi/wpa_supplicant.conf.tmp"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->logContents(Ljava/lang/String;)V

    .line 2640
    sget-object v23, Lcom/android/server/wifi/WifiConfigStore;->networkHistoryConfigFile:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->logContents(Ljava/lang/String;)V

    .line 2642
    :cond_21
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_23

    .line 2643
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_22

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 2644
    .local v14, "id":I
    const/16 v23, 0x11

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v14, v1}, Lcom/android/server/wifi/WifiConfigStore;->disableNetwork(II)Z

    goto :goto_b

    .line 2646
    .end local v14    # "id":I
    :cond_22
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiConfigStore;->saveConfig()Z

    .line 2649
    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_23
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$":Ljava/util/Iterator;
    :goto_c
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiConfiguration;

    .line 2650
    .restart local v5    # "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/net/wifi/WifiEnterpriseConfig;->setTls12Enable(Z)V

    .line 2651
    const/16 v23, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v5, v1}, Lcom/android/server/wifi/WifiConfigStore;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;I)I

    goto :goto_c
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 5368
    const-string v0, "WifiConfigStore"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5369
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 5345
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;Z)V

    .line 5346
    return-void
.end method

.method protected loge(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "stack"    # Z

    .prologue
    .line 5349
    if-eqz p2, :cond_0

    .line 5350
    const-string v0, "WifiConfigStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " stack:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5357
    :goto_0
    return-void

    .line 5355
    :cond_0
    const-string v0, "WifiConfigStore"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public makeChannelList(Landroid/net/wifi/WifiConfiguration;IZ)Ljava/util/HashSet;
    .locals 18
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "age"    # I
    .param p3, "restrict"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiConfiguration;",
            "IZ)",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4329
    if-nez p1, :cond_1

    .line 4330
    const/4 v2, 0x0

    .line 4400
    :cond_0
    :goto_0
    return-object v2

    .line 4331
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 4333
    .local v8, "now_ms":J
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 4336
    .local v2, "channels":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v14

    if-nez v14, :cond_2

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-nez v14, :cond_2

    .line 4337
    const/4 v2, 0x0

    goto :goto_0

    .line 4340
    :cond_2
    sget-boolean v14, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v14, :cond_5

    .line 4341
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 4342
    .local v3, "dbg":Ljava/lang/StringBuilder;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "makeChannelList age="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " max="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiConfigStore;->maxNumActiveChannelsForPartialScans:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4345
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v14

    if-eqz v14, :cond_3

    .line 4346
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " bssids="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/wifi/ScanDetailCache;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4348
    :cond_3
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-eqz v14, :cond_4

    .line 4349
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " linked="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4351
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 4354
    .end local v3    # "dbg":Ljava/lang/StringBuilder;
    :cond_5
    const/4 v10, 0x0

    .line 4355
    .local v10, "numChannels":I
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v14

    if-eqz v14, :cond_7

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/server/wifi/ScanDetailCache;->size()I

    move-result v14

    if-lez v14, :cond_7

    .line 4356
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/server/wifi/ScanDetailCache;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wifi/ScanDetail;

    .line 4357
    .local v12, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual {v12}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v11

    .line 4359
    .local v11, "result":Landroid/net/wifi/ScanResult;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConfigStore;->maxNumActiveChannelsForPartialScans:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v14

    if-le v10, v14, :cond_b

    .line 4375
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v11    # "result":Landroid/net/wifi/ScanResult;
    .end local v12    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    :cond_7
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-eqz v14, :cond_0

    .line 4376
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 4377
    .local v6, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v7

    .line 4378
    .local v7, "linked":Landroid/net/wifi/WifiConfiguration;
    if-eqz v7, :cond_8

    .line 4380
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v14

    if-eqz v14, :cond_8

    .line 4383
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/server/wifi/ScanDetailCache;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_9
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wifi/ScanDetail;

    .line 4384
    .restart local v12    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual {v12}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v11

    .line 4385
    .restart local v11    # "result":Landroid/net/wifi/ScanResult;
    sget-boolean v14, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v14, :cond_a

    .line 4386
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "has link: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v11, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " freq="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v11, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " age="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-wide v0, v11, Landroid/net/wifi/ScanResult;->seen:J

    move-wide/from16 v16, v0

    sub-long v16, v8, v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 4390
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConfigStore;->maxNumActiveChannelsForPartialScans:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v14

    if-gt v10, v14, :cond_8

    .line 4393
    iget-wide v14, v11, Landroid/net/wifi/ScanResult;->seen:J

    sub-long v14, v8, v14

    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-gez v14, :cond_9

    .line 4394
    iget v14, v11, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4395
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 4362
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "linked":Landroid/net/wifi/WifiConfiguration;
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_b
    sget-boolean v14, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v14, :cond_c

    .line 4363
    iget-wide v14, v11, Landroid/net/wifi/ScanResult;->seen:J

    sub-long v14, v8, v14

    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-gez v14, :cond_d

    const/4 v13, 0x1

    .line 4364
    .local v13, "test":Z
    :goto_3
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "has "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v11, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " freq="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v11, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " age="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-wide v0, v11, Landroid/net/wifi/ScanResult;->seen:J

    move-wide/from16 v16, v0

    sub-long v16, v8, v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " ?="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 4367
    .end local v13    # "test":Z
    :cond_c
    iget-wide v14, v11, Landroid/net/wifi/ScanResult;->seen:J

    sub-long v14, v8, v14

    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-gez v14, :cond_6

    .line 4368
    iget v14, v11, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4369
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 4363
    :cond_d
    const/4 v13, 0x0

    goto :goto_3
.end method

.method migrateCerts(Landroid/net/wifi/WifiEnterpriseConfig;)V
    .locals 10
    .param p1, "config"    # Landroid/net/wifi/WifiEnterpriseConfig;

    .prologue
    const/4 v9, -0x1

    const/16 v8, 0x3f2

    .line 5996
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v1

    .line 5998
    .local v1, "client":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 5999
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "USRPKEY_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v8}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 6000
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "USRPKEY_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "USRPKEY_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v9, v6, v8}, Landroid/security/KeyStore;->duplicate(Ljava/lang/String;ILjava/lang/String;I)Z

    .line 6002
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "USRCERT_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "USRCERT_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v9, v6, v8}, Landroid/security/KeyStore;->duplicate(Ljava/lang/String;ILjava/lang/String;I)Z

    .line 6007
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v0

    .line 6009
    .local v0, "ca":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 6010
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CACERT_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v8}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 6011
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CACERT_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CACERT_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v9, v6, v8}, Landroid/security/KeyStore;->duplicate(Ljava/lang/String;ILjava/lang/String;I)Z

    .line 6017
    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getWapiASCertificateAlias()Ljava/lang/String;

    move-result-object v2

    .line 6019
    .local v2, "wapiAs":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 6020
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WAPIAS_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v8}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 6021
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WAPIAS_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WAPIAS_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v9, v6, v8}, Landroid/security/KeyStore;->duplicate(Ljava/lang/String;ILjava/lang/String;I)Z

    .line 6026
    :cond_2
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getWapiUserCertificateAlias()Ljava/lang/String;

    move-result-object v3

    .line 6028
    .local v3, "wapiUser":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 6029
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WAPIUSR_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v8}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 6030
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WAPIUSR_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WAPIUSR_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v9, v6, v8}, Landroid/security/KeyStore;->duplicate(Ljava/lang/String;ILjava/lang/String;I)Z

    .line 6034
    :cond_3
    return-void
.end method

.method migrateOldEapTlsNative(Landroid/net/wifi/WifiEnterpriseConfig;I)Z
    .locals 6
    .param p1, "config"    # Landroid/net/wifi/WifiEnterpriseConfig;
    .param p2, "netId"    # I

    .prologue
    const/4 v2, 0x0

    .line 5947
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v4, "private_key"

    invoke-virtual {v3, p2, v4}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5952
    .local v1, "oldPrivateKey":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5991
    :cond_0
    :goto_0
    return v2

    .line 5956
    :cond_1
    invoke-static {v1}, Lcom/android/server/wifi/WifiConfigStore;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5957
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 5962
    const-string v2, "engine"

    const-string v3, "1"

    invoke-virtual {p1, v2, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 5963
    const-string v2, "engine_id"

    const-string v3, "keystore"

    invoke-virtual {p1, v2, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 5971
    const-string v2, "keystore://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5972
    new-instance v0, Ljava/lang/String;

    const-string v2, "keystore://"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 5977
    .local v0, "keyName":Ljava/lang/String;
    :goto_1
    const-string v2, "key_id"

    invoke-virtual {p1, v2, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 5979
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v3, "engine"

    const-string v4, "engine"

    const-string v5, ""

    invoke-virtual {p1, v4, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p2, v3, v4}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    .line 5982
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v3, "engine_id"

    const-string v4, "engine_id"

    const-string v5, ""

    invoke-virtual {p1, v4, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p2, v3, v4}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    .line 5985
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v3, "key_id"

    const-string v4, "key_id"

    const-string v5, ""

    invoke-virtual {p1, v4, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p2, v3, v4}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    .line 5989
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v3, "private_key"

    const-string v4, "NULL"

    invoke-virtual {v2, p2, v3, v4}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    .line 5991
    const/4 v2, 0x1

    goto :goto_0

    .line 5975
    .end local v0    # "keyName":Ljava/lang/String;
    :cond_2
    move-object v0, v1

    .restart local v0    # "keyName":Ljava/lang/String;
    goto :goto_1
.end method

.method needsUnlockedKeyStore()Z
    .locals 5

    .prologue
    .line 2776
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    monitor-enter v3

    .line 2777
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v2}, Lcom/android/server/wifi/ConfigurationMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 2779
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2782
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConfigStore;->needsSoftwareBackedKeyStore(Landroid/net/wifi/WifiEnterpriseConfig;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2783
    const/4 v2, 0x1

    monitor-exit v3

    .line 2789
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :goto_0
    return v2

    .line 2787
    :cond_1
    monitor-exit v3

    .line 2789
    const/4 v2, 0x0

    goto :goto_0

    .line 2787
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method noteRoamingFailure(Landroid/net/wifi/WifiConfiguration;I)V
    .locals 6
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "reason"    # I

    .prologue
    .line 1499
    if-nez p1, :cond_0

    .line 1509
    :goto_0
    return-void

    .line 1500
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailure:J

    .line 1501
    const-wide/16 v0, 0x2

    iget-wide v2, p1, Landroid/net/wifi/WifiConfiguration;->roamingFailureBlackListTimeMilli:J

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    mul-long/2addr v0, v2

    iput-wide v0, p1, Landroid/net/wifi/WifiConfiguration;->roamingFailureBlackListTimeMilli:J

    .line 1503
    iget-wide v0, p1, Landroid/net/wifi/WifiConfiguration;->roamingFailureBlackListTimeMilli:J

    iget v2, p0, Lcom/android/server/wifi/WifiConfigStore;->networkSwitchingBlackListPeriodMilli:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 1505
    iget v0, p0, Lcom/android/server/wifi/WifiConfigStore;->networkSwitchingBlackListPeriodMilli:I

    int-to-long v0, v0

    iput-wide v0, p1, Landroid/net/wifi/WifiConfiguration;->roamingFailureBlackListTimeMilli:J

    .line 1508
    :cond_1
    iput p2, p1, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailureReason:I

    goto :goto_0
.end method

.method public notifyANQPDone(Ljava/lang/Long;Z)V
    .locals 1
    .param p1, "bssid"    # Ljava/lang/Long;
    .param p2, "success"    # Z

    .prologue
    .line 4452
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mSupplicantBridge:Lcom/android/server/wifi/hotspot2/SupplicantBridge;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->notifyANQPDone(Ljava/lang/Long;Z)V

    .line 4453
    return-void
.end method

.method public notifyANQPResponse(Lcom/android/server/wifi/ScanDetail;Ljava/util/Map;)V
    .locals 4
    .param p1, "scanDetail"    # Lcom/android/server/wifi/ScanDetail;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/ScanDetail;",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/anqp/ANQPElement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4458
    .local p2, "anqpElements":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/anqp/ANQPElement;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiConfigStore;->updateAnqpCache(Lcom/android/server/wifi/ScanDetail;Ljava/util/Map;)V

    .line 4459
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4469
    :cond_0
    :goto_0
    return-void

    .line 4462
    :cond_1
    invoke-virtual {p1, p2}, Lcom/android/server/wifi/ScanDetail;->propagateANQPInfo(Ljava/util/Map;)V

    .line 4464
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/WifiConfigStore;->matchNetwork(Lcom/android/server/wifi/ScanDetail;Z)Ljava/util/Map;

    move-result-object v0

    .line 4465
    .local v0, "matches":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pass 2 matches: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/android/server/wifi/WifiConfigStore;->toMatchString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4468
    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiConfigStore;->cacheScanResultForPasspointConfigs(Lcom/android/server/wifi/ScanDetail;Ljava/util/Map;)V

    goto :goto_0
.end method

.method readPasspointConfig()V
    .locals 4

    .prologue
    .line 2796
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mMOManager:Lcom/android/server/wifi/hotspot2/omadm/MOManager;

    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->loadAllSPs()Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2802
    .local v1, "homeSPs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v2, v1, v3}, Lcom/android/server/wifi/ConfigurationMap;->populatePasspointData(Ljava/util/Collection;Lcom/android/server/wifi/WifiNative;)V

    .line 2803
    .end local v1    # "homeSPs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    :goto_0
    return-void

    .line 2797
    :catch_0
    move-exception v0

    .line 2798
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not read /data/misc/wifi/PerProviderSubscription.conf : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method removeFromConfiguredNetworks()V
    .locals 7

    .prologue
    .line 2464
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    monitor-enter v4

    .line 2465
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v5}, Lcom/android/server/wifi/ConfigurationMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 2466
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string v6, "key_mgmt"

    invoke-virtual {v3, v5, v6}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2467
    .local v2, "value":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2469
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RemoveFromConfiguredNetworks removes ssid:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    .line 2470
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v5}, Lcom/android/server/wifi/ConfigurationMap;->remove(I)Landroid/net/wifi/WifiConfiguration;

    .line 2471
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mScanDetailCaches:Ljava/util/HashMap;

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2472
    const/4 v3, 0x1

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V

    goto :goto_0

    .line 2475
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2476
    return-void
.end method

.method removeKeys(Landroid/net/wifi/WifiEnterpriseConfig;)V
    .locals 8
    .param p1, "config"    # Landroid/net/wifi/WifiEnterpriseConfig;

    .prologue
    const/16 v7, 0x3f2

    .line 5908
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v1

    .line 5910
    .local v1, "client":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 5911
    const-string v4, "WifiConfigStore"

    const-string v5, "removing client private key and user cert"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5912
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "USRPKEY_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v7}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    .line 5913
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "USRCERT_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v7}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    .line 5916
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v0

    .line 5918
    .local v0, "ca":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 5919
    const-string v4, "WifiConfigStore"

    const-string v5, "removing CA cert"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5920
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CACERT_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v7}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    .line 5924
    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getWapiASCertificateAlias()Ljava/lang/String;

    move-result-object v2

    .line 5926
    .local v2, "wapiAs":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 5927
    const-string v4, "WifiConfigStore"

    const-string v5, "removing WAPI AS cert"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5928
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WAPIAS_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v7}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    .line 5931
    :cond_2
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getWapiUserCertificateAlias()Ljava/lang/String;

    move-result-object v3

    .line 5933
    .local v3, "wapiUser":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 5934
    const-string v4, "WifiConfigStore"

    const-string v5, "removing WAPI User cert"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5935
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WAPIUSR_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v7}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    .line 5937
    :cond_3
    return-void
.end method

.method removeNetwork(I)Z
    .locals 4
    .param p1, "netId"    # I

    .prologue
    .line 1776
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiConfigStore;->showNetworks:Z

    if-eqz v2, :cond_0

    const-string v2, "removeNetwork"

    invoke-direct {p0, v2, p1}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;I)V

    .line 1777
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v2, p1}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1778
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v2, p1}, Lcom/android/server/wifi/WifiNative;->removeNetwork(I)Z

    move-result v1

    .line 1779
    .local v1, "ret":Z
    if-eqz v1, :cond_1

    .line 1780
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->removeConfigAndSendBroadcastIfNeeded(I)Z

    .line 1781
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1782
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wifi/WifiConfigStore;->writePasspointConfigs(Ljava/lang/String;Lcom/android/server/wifi/hotspot2/pps/HomeSP;)V

    .line 1785
    :cond_1
    return v1
.end method

.method removeNetworksForApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 8
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const/4 v6, 0x0

    .line 1862
    if-eqz p1, :cond_0

    iget-object v7, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-nez v7, :cond_1

    :cond_0
    move v5, v6

    .line 1884
    :goto_0
    return v5

    .line 1866
    :cond_1
    const/4 v5, 0x1

    .line 1868
    .local v5, "success":Z
    iget-object v7, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v7}, Lcom/android/server/wifi/ConfigurationMap;->values()Ljava/util/Collection;

    move-result-object v7

    new-array v6, v6, [Landroid/net/wifi/WifiConfiguration;

    invoke-interface {v7, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/wifi/WifiConfiguration;

    .line 1870
    .local v2, "copiedConfigs":[Landroid/net/wifi/WifiConfiguration;
    move-object v0, v2

    .local v0, "arr$":[Landroid/net/wifi/WifiConfiguration;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_5

    aget-object v1, v0, v3

    .line 1871
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    iget v6, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v7, v1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    if-ne v6, v7, :cond_2

    iget-object v6, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v7, v1, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1870
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1874
    :cond_3
    iget-boolean v6, p0, Lcom/android/server/wifi/WifiConfigStore;->showNetworks:Z

    if-eqz v6, :cond_4

    .line 1875
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing network "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", application \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\" uninstalled"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    .line 1879
    :cond_4
    iget v6, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiConfigStore;->removeNetwork(I)Z

    move-result v6

    and-int/2addr v5, v6

    goto :goto_2

    .line 1882
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_5
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiNative;->saveConfig()Z

    goto :goto_0
.end method

.method removeNetworksForUser(I)Z
    .locals 8
    .param p1, "userId"    # I

    .prologue
    .line 1888
    const/4 v5, 0x1

    .line 1890
    .local v5, "success":Z
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v6}, Lcom/android/server/wifi/ConfigurationMap;->values()Ljava/util/Collection;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Landroid/net/wifi/WifiConfiguration;

    invoke-interface {v6, v7}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/wifi/WifiConfiguration;

    .line 1892
    .local v2, "copiedConfigs":[Landroid/net/wifi/WifiConfiguration;
    move-object v0, v2

    .local v0, "arr$":[Landroid/net/wifi/WifiConfiguration;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 1893
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    iget v6, v1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-eq p1, v6, :cond_1

    .line 1892
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1896
    :cond_1
    iget v6, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiConfigStore;->removeNetwork(I)Z

    move-result v6

    and-int/2addr v5, v6

    .line 1897
    iget-boolean v6, p0, Lcom/android/server/wifi/WifiConfigStore;->showNetworks:Z

    if-eqz v6, :cond_0

    .line 1898
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing network "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " removed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    goto :goto_1

    .line 1903
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    return v5
.end method

.method public resetDisableReason(I)V
    .locals 3
    .param p1, "netId"    # I

    .prologue
    .line 2018
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    monitor-enter v2

    .line 2019
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 2020
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    monitor-exit v2

    .line 2023
    :goto_0
    return-void

    .line 2021
    :cond_0
    const/4 v1, 0x0

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    .line 2022
    monitor-exit v2

    goto :goto_0

    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method saveConfig()Z
    .locals 1

    .prologue
    .line 2144
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->saveConfig()Z

    move-result v0

    return v0
.end method

.method saveNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;
    .locals 12
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "uid"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v6, 0x1

    const/4 v11, -0x1

    const/4 v7, 0x0

    .line 1381
    if-eqz p1, :cond_0

    iget v9, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v9, v11, :cond_1

    iget-object v9, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v9, :cond_1

    .line 1383
    :cond_0
    new-instance v5, Lcom/android/server/wifi/NetworkUpdateResult;

    invoke-direct {v5, v11}, Lcom/android/server/wifi/NetworkUpdateResult;-><init>(I)V

    .line 1468
    :goto_0
    return-object v5

    .line 1385
    :cond_1
    sget-boolean v9, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v9, :cond_2

    const-string v9, "WifiConfigStore: saveNetwork netId"

    iget v10, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-direct {p0, v9, v10}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;I)V

    .line 1386
    :cond_2
    sget-boolean v9, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v9, :cond_3

    .line 1387
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "WifiConfigStore saveNetwork, size="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v10}, Lcom/android/server/wifi/ConfigurationMap;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " SSID="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Uid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1393
    :cond_3
    iget-object v9, p0, Lcom/android/server/wifi/WifiConfigStore;->mDeletedEphemeralSSIDs:Ljava/util/Set;

    iget-object v10, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1394
    sget-boolean v9, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v9, :cond_4

    .line 1395
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "WifiConfigStore: removed from ephemeral blacklist: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1401
    :cond_4
    iget v9, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v9, v11, :cond_e

    move v4, v6

    .line 1402
    .local v4, "newNetwork":Z
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiConfigStore;->addOrUpdateNetworkNative(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    move-result-object v5

    .line 1403
    .local v5, "result":Lcom/android/server/wifi/NetworkUpdateResult;
    invoke-virtual {v5}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v3

    .line 1405
    .local v3, "netId":I
    sget-boolean v9, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v9, :cond_5

    const-string v9, "WifiConfigStore: saveNetwork got it back netId="

    invoke-direct {p0, v9, v3}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;I)V

    .line 1408
    :cond_5
    if-eqz v4, :cond_7

    if-eq v3, v11, :cond_7

    .line 1411
    iget v9, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-direct {p0, v9, v7, v6}, Lcom/android/server/wifi/WifiConfigStore;->edmCanEnableNetwork(IZZ)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1412
    sget-boolean v9, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v9, :cond_6

    const-string v9, "WifiConfigStore: will enable netId="

    invoke-direct {p0, v9, v3}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;I)V

    .line 1414
    :cond_6
    iget-object v9, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v9, v3, v7}, Lcom/android/server/wifi/WifiNative;->enableNetwork(IZ)Z

    .line 1415
    iget-object v9, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v9, v3}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1416
    .local v0, "conf":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_7

    .line 1417
    iput v8, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 1430
    .end local v0    # "conf":Landroid/net/wifi/WifiConfiguration;
    :cond_7
    iget-object v9, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v9, v3}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1431
    .restart local v0    # "conf":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_d

    .line 1432
    iget v9, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    if-eqz v9, :cond_9

    .line 1433
    sget-boolean v9, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v9, :cond_8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "WifiConfigStore: re-enabling: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    .line 1436
    :cond_8
    invoke-virtual {v0, v7}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    .line 1437
    iget v9, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p0, v9, v7}, Lcom/android/server/wifi/WifiConfigStore;->enableNetworkWithoutBroadcast(IZ)Z

    .line 1439
    :cond_9
    sget-boolean v9, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v9, :cond_a

    .line 1440
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "WifiConfigStore: saveNetwork got config back netId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " uid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1445
    :cond_a
    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v9, :cond_d

    iget-object v9, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v9, :cond_d

    .line 1446
    iget-object v9, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v9}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v9

    if-eq v9, v11, :cond_d

    .line 1447
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 1448
    .local v1, "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    const-string v2, "Configured security policy : "

    .line 1450
    .local v2, "msg":Ljava/lang/String;
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0, v0}, Landroid/net/wifi/WifiConfiguration;->getKeyIdForCredentials(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1453
    :goto_2
    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_b

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 1454
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "CaCertificate : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1456
    :cond_b
    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_c

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c

    .line 1457
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "ClientCertificate : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1459
    :cond_c
    invoke-direct {p0, v6, v2}, Lcom/android/server/wifi/WifiConfigStore;->auditLog(ZLjava/lang/String;)V

    .line 1465
    .end local v1    # "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    .end local v2    # "msg":Ljava/lang/String;
    :cond_d
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiNative;->saveConfig()Z

    .line 1466
    invoke-virtual {v5}, Lcom/android/server/wifi/NetworkUpdateResult;->isNewNetwork()Z

    move-result v6

    if-eqz v6, :cond_f

    :goto_3
    invoke-direct {p0, v0, v7}, Lcom/android/server/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V

    goto/16 :goto_0

    .end local v0    # "conf":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "netId":I
    .end local v4    # "newNetwork":Z
    .end local v5    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    :cond_e
    move v4, v7

    .line 1401
    goto/16 :goto_1

    .restart local v0    # "conf":Landroid/net/wifi/WifiConfiguration;
    .restart local v3    # "netId":I
    .restart local v4    # "newNetwork":Z
    .restart local v5    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    :cond_f
    move v7, v8

    .line 1466
    goto :goto_3

    .line 1451
    .restart local v1    # "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    .restart local v2    # "msg":Ljava/lang/String;
    :catch_0
    move-exception v9

    goto :goto_2
.end method

.method saveWifiConfigBSSID(Landroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 1513
    return-void
.end method

.method selectNetwork(Landroid/net/wifi/WifiConfiguration;ZI)Z
    .locals 11
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "updatePriorities"    # Z
    .param p3, "uid"    # I

    .prologue
    .line 1197
    sget-boolean v8, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v8, :cond_0

    const-string v8, "selectNetwork"

    iget v9, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-direct {p0, v8, v9}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;I)V

    .line 1198
    :cond_0
    iget v8, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    const/4 v8, 0x0

    .line 1368
    :goto_0
    return v8

    .line 1201
    :cond_1
    const-string v8, "PrivateFirst"

    sget-object v9, Lcom/android/server/wifi/WifiConfigStore;->mPriorityRuleAs:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 1202
    iget v8, p0, Lcom/android/server/wifi/WifiConfigStore;->mLastPriority:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    iget v8, p0, Lcom/android/server/wifi/WifiConfigStore;->mLastPriority:I

    const v9, 0xf4240

    if-gt v8, v9, :cond_2

    sget v8, Lcom/android/server/wifi/WifiConfigStore;->mLastCorporatePriority:I

    const/16 v9, 0x2710

    if-gt v8, v9, :cond_2

    sget v8, Lcom/android/server/wifi/WifiConfigStore;->mLastOpenPriority:I

    const/16 v9, 0x1388

    if-le v8, v9, :cond_5

    .line 1203
    :cond_2
    iget-object v9, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    monitor-enter v9

    .line 1204
    :try_start_0
    iget-object v8, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v8}, Lcom/android/server/wifi/ConfigurationMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1205
    .local v0, "config2":Landroid/net/wifi/WifiConfiguration;
    if-eqz p2, :cond_3

    .line 1206
    iget v8, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v10, -0x1

    if-eq v8, v10, :cond_3

    .line 1207
    const/4 v8, 0x0

    iput v8, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 1208
    iget v8, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget v10, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-direct {p0, v8, v10}, Lcom/android/server/wifi/WifiConfigStore;->setNetworkPriorityNative(II)Z

    goto :goto_1

    .line 1212
    .end local v0    # "config2":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_4
    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1213
    const/16 v8, 0x2711

    iput v8, p0, Lcom/android/server/wifi/WifiConfigStore;->mLastPriority:I

    .line 1214
    const/4 v8, 0x0

    sput v8, Lcom/android/server/wifi/WifiConfigStore;->mLastOpenPriority:I

    .line 1215
    const/16 v8, 0x1389

    sput v8, Lcom/android/server/wifi/WifiConfigStore;->mLastCorporatePriority:I

    .line 1233
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_5
    :goto_2
    if-eqz p2, :cond_e

    .line 1234
    iget-object v8, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    iget v9, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v8, v9}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    .line 1235
    .local v5, "savedConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v5, :cond_6

    .line 1236
    iget-object v8, v5, Landroid/net/wifi/WifiConfiguration;->samsungSpecificFlags:Ljava/util/BitSet;

    invoke-virtual {v8}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/BitSet;

    iput-object v8, p1, Landroid/net/wifi/WifiConfiguration;->samsungSpecificFlags:Ljava/util/BitSet;

    .line 1238
    iget v8, v5, Landroid/net/wifi/WifiConfiguration;->autojoin:I

    iput v8, p1, Landroid/net/wifi/WifiConfiguration;->autojoin:I

    .line 1241
    :cond_6
    const-string v8, "PrivateFirst"

    sget-object v9, Lcom/android/server/wifi/WifiConfigStore;->mPriorityRuleAs:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 1242
    const-string v8, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "tempconfig netid= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    iget-object v8, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    iget v9, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v8, v9}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    .line 1244
    .local v6, "tempconfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v6, :cond_d

    .line 1246
    iget-object v8, v6, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-nez v8, :cond_7

    iget-object v8, v6, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-nez v8, :cond_7

    iget-object v8, v6, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v9, 0x7

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-nez v8, :cond_7

    iget-object v8, v6, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v9, 0x9

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1248
    :cond_7
    sget v8, Lcom/android/server/wifi/WifiConfigStore;->mLastCorporatePriority:I

    const/16 v9, 0x1388

    if-lt v8, v9, :cond_8

    sget v8, Lcom/android/server/wifi/WifiConfigStore;->mLastCorporatePriority:I

    const/16 v9, 0x2710

    if-le v8, v9, :cond_14

    .line 1249
    :cond_8
    const/16 v8, 0x1389

    sput v8, Lcom/android/server/wifi/WifiConfigStore;->mLastCorporatePriority:I

    .line 1250
    sget v8, Lcom/android/server/wifi/WifiConfigStore;->mLastCorporatePriority:I

    iput v8, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 1256
    :cond_9
    :goto_3
    iget-object v8, v6, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-nez v8, :cond_a

    iget-object v8, v6, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-nez v8, :cond_a

    iget-object v8, v6, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 1259
    :cond_a
    iget v8, p0, Lcom/android/server/wifi/WifiConfigStore;->mLastPriority:I

    const/16 v9, 0x2711

    if-ge v8, v9, :cond_15

    .line 1260
    const/16 v8, 0x2711

    iput v8, p0, Lcom/android/server/wifi/WifiConfigStore;->mLastPriority:I

    .line 1261
    iget v8, p0, Lcom/android/server/wifi/WifiConfigStore;->mLastPriority:I

    iput v8, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 1267
    :cond_b
    :goto_4
    iget-object v8, v6, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 1268
    iget-object v8, v6, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    if-eqz v8, :cond_17

    .line 1270
    iget v8, p0, Lcom/android/server/wifi/WifiConfigStore;->mLastPriority:I

    const/16 v9, 0x2711

    if-ge v8, v9, :cond_16

    .line 1271
    const/16 v8, 0x2711

    iput v8, p0, Lcom/android/server/wifi/WifiConfigStore;->mLastPriority:I

    .line 1272
    iget v8, p0, Lcom/android/server/wifi/WifiConfigStore;->mLastPriority:I

    iput v8, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 1286
    :cond_c
    :goto_5
    const-string v8, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "written priority"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    .end local v6    # "tempconfig":Landroid/net/wifi/WifiConfiguration;
    :cond_d
    :goto_6
    iget v8, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget v9, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-direct {p0, v8, v9}, Lcom/android/server/wifi/WifiConfigStore;->setNetworkPriorityNative(II)Z

    .line 1293
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->buildPnoList()V

    .line 1296
    .end local v5    # "savedConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_e
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v8

    if-eqz v8, :cond_f

    .line 1298
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/wifi/ScanDetailCache;->size()I

    move-result v8

    if-eqz v8, :cond_1c

    .line 1299
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/wifi/ScanDetailCache;->getFirst()Lcom/android/server/wifi/ScanDetail;

    move-result-object v4

    .line 1300
    .local v4, "result":Lcom/android/server/wifi/ScanDetail;
    if-nez v4, :cond_1b

    .line 1301
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not find scan result for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1313
    .end local v4    # "result":Lcom/android/server/wifi/ScanDetail;
    :cond_f
    :goto_7
    iget-object v8, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/server/wifi/WifiNative;->setHs20(Z)V

    .line 1315
    if-eqz p2, :cond_1d

    .line 1316
    iget-object v8, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v8}, Lcom/android/server/wifi/WifiNative;->saveConfig()Z

    .line 1320
    :goto_8
    invoke-virtual {p0, p1, p3}, Lcom/android/server/wifi/WifiConfigStore;->updateLastConnectUid(Landroid/net/wifi/WifiConfiguration;I)Z

    .line 1321
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/server/wifi/WifiConfigStore;->writeKnownNetworkHistory(Z)V

    .line 1325
    iget v8, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v9, 0x1

    invoke-virtual {p0, v8, v9}, Lcom/android/server/wifi/WifiConfigStore;->enableNetworkWithoutBroadcast(IZ)Z

    move-result v4

    .line 1327
    .local v4, "result":Z
    if-eqz v4, :cond_1e

    .line 1332
    :try_start_2
    const-string v8, "content://com.sec.knox.provider/AuditLog"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 1333
    .local v7, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1334
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v8, "severity"

    const/4 v9, 0x5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1335
    const-string v8, "group"

    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1336
    const-string v8, "outcome"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1337
    const-string v8, "uid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1338
    const-string v8, "component"

    const-string v9, "WifiConfigStore"

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1339
    const-string v8, "message"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Connecting to Wi-Fi network whose ID is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " succeeded"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1340
    iget-object v8, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, v7, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1368
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v7    # "uri":Landroid/net/Uri;
    :goto_9
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 1218
    .end local v4    # "result":Z
    :cond_10
    iget v8, p0, Lcom/android/server/wifi/WifiConfigStore;->mLastPriority:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_11

    iget v8, p0, Lcom/android/server/wifi/WifiConfigStore;->mLastPriority:I

    const v9, 0xf4240

    if-le v8, v9, :cond_5

    .line 1219
    :cond_11
    iget-object v9, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    monitor-enter v9

    .line 1220
    :try_start_3
    iget-object v8, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v8}, Lcom/android/server/wifi/ConfigurationMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_12
    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_13

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1221
    .restart local v0    # "config2":Landroid/net/wifi/WifiConfiguration;
    if-eqz p2, :cond_12

    .line 1222
    iget v8, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v10, -0x1

    if-eq v8, v10, :cond_12

    .line 1223
    const/4 v8, 0x0

    iput v8, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 1224
    iget v8, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget v10, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-direct {p0, v8, v10}, Lcom/android/server/wifi/WifiConfigStore;->setNetworkPriorityNative(II)Z

    goto :goto_a

    .line 1228
    .end local v0    # "config2":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "i$":Ljava/util/Iterator;
    :catchall_1
    move-exception v8

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v8

    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_13
    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1229
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/wifi/WifiConfigStore;->mLastPriority:I

    goto/16 :goto_2

    .line 1252
    .end local v3    # "i$":Ljava/util/Iterator;
    .restart local v5    # "savedConfig":Landroid/net/wifi/WifiConfiguration;
    .restart local v6    # "tempconfig":Landroid/net/wifi/WifiConfiguration;
    :cond_14
    sget v8, Lcom/android/server/wifi/WifiConfigStore;->mLastCorporatePriority:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/android/server/wifi/WifiConfigStore;->mLastCorporatePriority:I

    iput v8, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    goto/16 :goto_3

    .line 1263
    :cond_15
    iget v8, p0, Lcom/android/server/wifi/WifiConfigStore;->mLastPriority:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/server/wifi/WifiConfigStore;->mLastPriority:I

    iput v8, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    goto/16 :goto_4

    .line 1274
    :cond_16
    iget v8, p0, Lcom/android/server/wifi/WifiConfigStore;->mLastPriority:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/server/wifi/WifiConfigStore;->mLastPriority:I

    iput v8, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    goto/16 :goto_5

    .line 1278
    :cond_17
    sget v8, Lcom/android/server/wifi/WifiConfigStore;->mLastOpenPriority:I

    if-eqz v8, :cond_18

    sget v8, Lcom/android/server/wifi/WifiConfigStore;->mLastOpenPriority:I

    const/16 v9, 0x1388

    if-le v8, v9, :cond_19

    .line 1279
    :cond_18
    const/4 v8, 0x1

    sput v8, Lcom/android/server/wifi/WifiConfigStore;->mLastOpenPriority:I

    .line 1280
    sget v8, Lcom/android/server/wifi/WifiConfigStore;->mLastOpenPriority:I

    iput v8, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    goto/16 :goto_5

    .line 1282
    :cond_19
    sget v8, Lcom/android/server/wifi/WifiConfigStore;->mLastOpenPriority:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/android/server/wifi/WifiConfigStore;->mLastOpenPriority:I

    iput v8, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    goto/16 :goto_5

    .line 1289
    .end local v6    # "tempconfig":Landroid/net/wifi/WifiConfiguration;
    :cond_1a
    iget v8, p0, Lcom/android/server/wifi/WifiConfigStore;->mLastPriority:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/server/wifi/WifiConfigStore;->mLastPriority:I

    iput v8, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    goto/16 :goto_6

    .line 1303
    .end local v5    # "savedConfig":Landroid/net/wifi/WifiConfiguration;
    .local v4, "result":Lcom/android/server/wifi/ScanDetail;
    :cond_1b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Setting SSID for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcom/android/server/wifi/ScanDetail;->getSSID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/server/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    .line 1304
    iget v8, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v4}, Lcom/android/server/wifi/ScanDetail;->getSSID()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/android/server/wifi/WifiConfigStore;->setSSIDNative(ILjava/lang/String;)Z

    .line 1305
    invoke-virtual {v4}, Lcom/android/server/wifi/ScanDetail;->getSSID()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto/16 :goto_7

    .line 1309
    .end local v4    # "result":Lcom/android/server/wifi/ScanDetail;
    :cond_1c
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not find bssid for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1318
    :cond_1d
    iget-object v8, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget v9, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v8, v9}, Lcom/android/server/wifi/WifiNative;->selectNetwork(I)Z

    goto/16 :goto_8

    .line 1341
    .local v4, "result":Z
    :catch_0
    move-exception v2

    .line 1342
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v8, "WifiConfigStore"

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 1349
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1e
    :try_start_5
    const-string v8, "content://com.sec.knox.provider/AuditLog"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 1350
    .restart local v7    # "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1351
    .restart local v1    # "cv":Landroid/content/ContentValues;
    const-string v8, "severity"

    const/4 v9, 0x5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1352
    const-string v8, "group"

    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1353
    const-string v8, "outcome"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1354
    const-string v8, "uid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1355
    const-string v8, "component"

    const-string v9, "WifiConfigStore"

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1356
    const-string v8, "message"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Connecting to Wi-Fi network whose ID is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " failed"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1357
    iget-object v8, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, v7, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_9

    .line 1358
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v7    # "uri":Landroid/net/Uri;
    :catch_1
    move-exception v2

    .line 1359
    .restart local v2    # "e":Ljava/lang/IllegalArgumentException;
    const-string v8, "WifiConfigStore"

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9
.end method

.method public setAllNetworkPriorityDefault()V
    .locals 4

    .prologue
    .line 6071
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mLastPriority:I

    .line 6072
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    monitor-enter v3

    .line 6073
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v2}, Lcom/android/server/wifi/ConfigurationMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 6074
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 6076
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->setNetworkPriorityDefault(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_0

    .line 6078
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6079
    return-void
.end method

.method setDefaultGwMacAddress(ILjava/lang/String;)V
    .locals 2
    .param p1, "netId"    # I
    .param p2, "macAddress"    # Ljava/lang/String;

    .prologue
    .line 2228
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 2229
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 2231
    iput-object p2, v0, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    .line 2233
    :cond_0
    return-void
.end method

.method public setLastSelectedConfiguration(I)V
    .locals 5
    .param p1, "netId"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 3030
    sget-boolean v1, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v1, :cond_0

    .line 3031
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLastSelectedConfiguration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 3033
    :cond_0
    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    .line 3034
    iput-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->lastSelectedConfiguration:Ljava/lang/String;

    .line 3050
    :cond_1
    :goto_0
    return-void

    .line 3036
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 3037
    .local v0, "selected":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_3

    .line 3038
    iput-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->lastSelectedConfiguration:Ljava/lang/String;

    goto :goto_0

    .line 3040
    :cond_3
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->lastSelectedConfiguration:Ljava/lang/String;

    .line 3041
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->numConnectionFailures:I

    .line 3042
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    .line 3043
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->numAuthFailures:I

    .line 3044
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    .line 3045
    sget-boolean v1, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v1, :cond_1

    .line 3046
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLastSelectedConfiguration now: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->lastSelectedConfiguration:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method setStaticIpConfiguration(ILandroid/net/StaticIpConfiguration;)V
    .locals 2
    .param p1, "netId"    # I
    .param p2, "staticIpConfiguration"    # Landroid/net/StaticIpConfiguration;

    .prologue
    .line 2218
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 2219
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 2220
    invoke-virtual {v0, p2}, Landroid/net/wifi/WifiConfiguration;->setStaticIpConfiguration(Landroid/net/StaticIpConfiguration;)V

    .line 2222
    :cond_0
    return-void
.end method

.method setWeChatWifiInfo(II)V
    .locals 5
    .param p1, "netId"    # I
    .param p2, "isWeChatAp"    # I

    .prologue
    const/4 v1, 0x1

    .line 3415
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v2, p1}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 3417
    .local v0, "currentConfig":Landroid/net/wifi/WifiConfiguration;
    const-string v2, "WifiConfigStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setWeChatWifiInfo, netID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isWweChatAp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3419
    if-eqz v0, :cond_1

    .line 3420
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v3, "isWeChatAp"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3425
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to set isWeChatAp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 3430
    :cond_0
    if-ne p2, v1, :cond_2

    :goto_0
    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->isWeChatAp:Z

    .line 3433
    const-string v1, "WifiConfigStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentConfig.isWeChatAp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->isWeChatAp:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3435
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/wifi/ConfigurationMap;->put(ILandroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 3436
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mScanDetailCaches:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/android/server/wifi/ScanDetailCache;

    invoke-direct {v3, v0}, Lcom/android/server/wifi/ScanDetailCache;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3438
    :cond_1
    return-void

    .line 3430
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method startWpsPbc(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WpsInfo;

    .prologue
    .line 2191
    new-instance v0, Landroid/net/wifi/WpsResult;

    invoke-direct {v0}, Landroid/net/wifi/WpsResult;-><init>()V

    .line 2192
    .local v0, "result":Landroid/net/wifi/WpsResult;
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v2, p1, Landroid/net/wifi/WpsInfo;->BSSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiNative;->startWpsPbc(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2194
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->markAllNetworksDisabled()V

    .line 2195
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    .line 2200
    :goto_0
    return-object v0

    .line 2197
    :cond_0
    const-string v1, "Failed to start WPS push button configuration"

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 2198
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    goto :goto_0
.end method

.method startWpsWithPinFromAccessPoint(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WpsInfo;

    .prologue
    .line 2154
    new-instance v0, Landroid/net/wifi/WpsResult;

    invoke-direct {v0}, Landroid/net/wifi/WpsResult;-><init>()V

    .line 2155
    .local v0, "result":Landroid/net/wifi/WpsResult;
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v2, p1, Landroid/net/wifi/WpsInfo;->BSSID:Ljava/lang/String;

    iget-object v3, p1, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wifi/WifiNative;->startWpsRegistrar(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2157
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->markAllNetworksDisabled()V

    .line 2158
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    .line 2163
    :goto_0
    return-object v0

    .line 2160
    :cond_0
    const-string v1, "Failed to start WPS pin method configuration"

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 2161
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    goto :goto_0
.end method

.method startWpsWithPinFromDevice(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WpsInfo;

    .prologue
    .line 2172
    new-instance v0, Landroid/net/wifi/WpsResult;

    invoke-direct {v0}, Landroid/net/wifi/WpsResult;-><init>()V

    .line 2173
    .local v0, "result":Landroid/net/wifi/WpsResult;
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v2, p1, Landroid/net/wifi/WpsInfo;->BSSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiNative;->startWpsPinDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->pin:Ljava/lang/String;

    .line 2175
    iget-object v1, v0, Landroid/net/wifi/WpsResult;->pin:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2176
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->markAllNetworksDisabled()V

    .line 2177
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    .line 2182
    :goto_0
    return-object v0

    .line 2179
    :cond_0
    const-string v1, "Failed to start WPS pin method configuration"

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 2180
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    goto :goto_0
.end method

.method public trimANQPCache(Z)V
    .locals 2
    .param p1, "all"    # Z

    .prologue
    .line 723
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mAnqpCache:Lcom/android/server/wifi/hotspot2/AnqpCache;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wifi/hotspot2/AnqpCache;->clear(ZZ)V

    .line 724
    return-void
.end method

.method updateAutojoin(II)V
    .locals 4
    .param p1, "netId"    # I
    .param p2, "autojoin"    # I

    .prologue
    .line 3392
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 3394
    .local v0, "currentConfig":Landroid/net/wifi/WifiConfiguration;
    const-string v1, "WifiConfigStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AUTOJOIN setup for netID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " val:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3395
    if-eqz v0, :cond_1

    .line 3396
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v2, "autojoin"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3401
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to set SSID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 3405
    :cond_0
    iput p2, v0, Landroid/net/wifi/WifiConfiguration;->autojoin:I

    .line 3407
    const-string v1, "WifiConfigStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AUTOJOIN readup val:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->autojoin:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3408
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/wifi/ConfigurationMap;->put(ILandroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 3409
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mScanDetailCaches:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/android/server/wifi/ScanDetailCache;

    invoke-direct {v3, v0}, Lcom/android/server/wifi/ScanDetailCache;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3411
    :cond_1
    return-void
.end method

.method updateConfiguration(Landroid/net/wifi/WifiInfo;)V
    .locals 8
    .param p1, "info"    # Landroid/net/wifi/WifiInfo;

    .prologue
    .line 1009
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1010
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1011
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/ScanDetailCache;->getScanDetail(Ljava/lang/String;)Lcom/android/server/wifi/ScanDetail;

    move-result-object v5

    .line 1012
    .local v5, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    if-eqz v5, :cond_0

    .line 1013
    invoke-virtual {v5}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v4

    .line 1014
    .local v4, "result":Landroid/net/wifi/ScanResult;
    iget-wide v2, v4, Landroid/net/wifi/ScanResult;->seen:J

    .line 1015
    .local v2, "previousSeen":J
    iget v1, v4, Landroid/net/wifi/ScanResult;->level:I

    .line 1018
    .local v1, "previousRssi":I
    invoke-virtual {v5}, Lcom/android/server/wifi/ScanDetail;->setSeen()J

    .line 1019
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v6

    iput v6, v4, Landroid/net/wifi/ScanResult;->level:I

    .line 1022
    sget v6, Lcom/android/server/wifi/WifiAutoJoinController;->mScanResultMaximumAge:I

    invoke-virtual {v4, v1, v2, v3, v6}, Landroid/net/wifi/ScanResult;->averageRssi(IJI)V

    .line 1024
    sget-boolean v6, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v6, :cond_0

    .line 1025
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateConfiguration freq="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " BSSID="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " RSSI="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1032
    .end local v1    # "previousRssi":I
    .end local v2    # "previousSeen":J
    .end local v4    # "result":Landroid/net/wifi/ScanResult;
    .end local v5    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    :cond_0
    return-void
.end method

.method updateDisabledPoorNetworkStatus(Landroid/net/wifi/WifiConfiguration;)V
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 1982
    const-string v1, "WifiConfigStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] updateDisabledPoorNetworkStatus"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1983
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1984
    .local v0, "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    iget-wide v2, p1, Landroid/net/wifi/WifiConfiguration;->disabledTime:J

    iput-wide v2, v0, Landroid/net/wifi/WifiConfiguration;->disabledTime:J

    .line 1985
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    .line 1986
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->inRecoverArea:Z

    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->inRecoverArea:Z

    .line 1987
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->recoverableRSSI:I

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->recoverableRSSI:I

    .line 1988
    iget-wide v2, p1, Landroid/net/wifi/WifiConfiguration;->notInRangeTime:J

    iput-wide v2, v0, Landroid/net/wifi/WifiConfiguration;->notInRangeTime:J

    .line 1989
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->poorBSSID:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->poorBSSID:Ljava/lang/String;

    .line 1990
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    monitor-enter v2

    .line 1991
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v1, v3, v0}, Lcom/android/server/wifi/ConfigurationMap;->put(ILandroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 1992
    monitor-exit v2

    .line 1993
    return-void

    .line 1992
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method updateHs20Network(Landroid/net/wifi/WifiConfiguration;)V
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 4670
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 4671
    .local v0, "netId":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4672
    const-string v1, "updateHs20Network"

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 4673
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->readNetworkVariables(Landroid/net/wifi/WifiConfiguration;)V

    .line 4674
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v1, v0, p1}, Lcom/android/server/wifi/ConfigurationMap;->put(ILandroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 4675
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mScanDetailCaches:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/android/server/wifi/ScanDetailCache;

    invoke-direct {v3, p1}, Lcom/android/server/wifi/ScanDetailCache;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4676
    const/4 v1, 0x2

    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V

    .line 4679
    :cond_0
    return-void
.end method

.method updateIsAuthenticated(IZ)V
    .locals 2
    .param p1, "netId"    # I
    .param p2, "isAuthenticated"    # Z

    .prologue
    .line 962
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 963
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    .line 967
    :goto_0
    return-void

    .line 966
    :cond_0
    iput-boolean p2, v0, Landroid/net/wifi/WifiConfiguration;->isAuthenticated:Z

    goto :goto_0
.end method

.method updateIsCaptivePortal(IZ)V
    .locals 2
    .param p1, "netId"    # I
    .param p2, "isCaptivePortal"    # Z

    .prologue
    .line 953
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 954
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    .line 958
    :goto_0
    return-void

    .line 957
    :cond_0
    iput-boolean p2, v0, Landroid/net/wifi/WifiConfiguration;->isCaptivePortal:Z

    goto :goto_0
.end method

.method public updateLastConnectUid(Landroid/net/wifi/WifiConfiguration;I)Z
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "uid"    # I

    .prologue
    const/4 v0, 0x1

    .line 1173
    if-eqz p1, :cond_0

    .line 1174
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    if-eq v1, p2, :cond_0

    .line 1175
    iput p2, p1, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    .line 1176
    iput-boolean v0, p1, Landroid/net/wifi/WifiConfiguration;->dirty:Z

    .line 1180
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method updateLoginUrl(ILjava/lang/String;)V
    .locals 2
    .param p1, "netId"    # I
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 971
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 972
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    .line 976
    :goto_0
    return-void

    .line 975
    :cond_0
    iput-object p2, v0, Landroid/net/wifi/WifiConfiguration;->loginUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method updateNextTargetRssi(II)V
    .locals 2
    .param p1, "netId"    # I
    .param p2, "nextTargetRssi"    # I

    .prologue
    .line 998
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 999
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    .line 1003
    :goto_0
    return-void

    .line 1002
    :cond_0
    iput p2, v0, Landroid/net/wifi/WifiConfiguration;->nextTargetRssi:I

    goto :goto_0
.end method

.method public updateSavedNetworkHistory(Lcom/android/server/wifi/ScanDetail;)Z
    .locals 14
    .param p1, "scanDetail"    # Lcom/android/server/wifi/ScanDetail;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 4594
    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v7

    .line 4595
    .local v7, "scanResult":Landroid/net/wifi/ScanResult;
    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    move-result-object v5

    .line 4597
    .local v5, "networkDetail":Lcom/android/server/wifi/hotspot2/NetworkDetail;
    const/4 v6, 0x0

    .line 4598
    .local v6, "numConfigFound":I
    if-nez v7, :cond_1

    move v9, v10

    .line 4667
    :cond_0
    :goto_0
    return v9

    .line 4601
    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4603
    .local v0, "SSID":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->hasInterworking()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 4604
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->matchPasspointNetworks(Lcom/android/server/wifi/ScanDetail;)Ljava/util/Map;

    move-result-object v4

    .line 4605
    .local v4, "matches":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    if-eqz v4, :cond_2

    .line 4606
    invoke-direct {p0, p1, v4}, Lcom/android/server/wifi/WifiConfigStore;->cacheScanResultForPasspointConfigs(Lcom/android/server/wifi/ScanDetail;Ljava/util/Map;)V

    .line 4607
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v11

    if-nez v11, :cond_0

    move v9, v10

    goto :goto_0

    .line 4611
    .end local v4    # "matches":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    :cond_2
    iget-object v11, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    monitor-enter v11

    .line 4612
    :try_start_0
    iget-object v12, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v12}, Lcom/android/server/wifi/ConfigurationMap;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 4613
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    const/4 v2, 0x0

    .line 4615
    .local v2, "found":Z
    iget-object v12, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v12, :cond_4

    iget-object v12, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 4617
    :cond_4
    sget-boolean v12, Lcom/android/server/wifi/WifiConfigStore;->VVDBG:Z

    if-eqz v12, :cond_3

    .line 4618
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateSavedNetworkHistory(): SSID mismatch "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " SSID="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 4666
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "found":Z
    .end local v3    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v9

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 4623
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v2    # "found":Z
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_5
    :try_start_1
    sget-boolean v12, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v12, :cond_6

    .line 4624
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateSavedNetworkHistory(): try "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " SSID="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v7, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ajst="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v1, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 4629
    :cond_6
    iget-object v12, v7, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v13, "WEP"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v12

    const-string v13, "WEP"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 4631
    const/4 v2, 0x1

    .line 4647
    :cond_7
    :goto_2
    if-eqz v2, :cond_8

    .line 4648
    add-int/lit8 v6, v6, 0x1

    .line 4649
    const/4 v12, 0x0

    invoke-direct {p0, v1, p1, v12}, Lcom/android/server/wifi/WifiConfigStore;->cacheScanResultForConfig(Landroid/net/wifi/WifiConfiguration;Lcom/android/server/wifi/ScanDetail;Lcom/android/server/wifi/hotspot2/PasspointMatch;)V

    .line 4652
    :cond_8
    sget-boolean v12, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v12, :cond_3

    if-eqz v2, :cond_3

    .line 4653
    const-string v8, ""

    .line 4654
    .local v8, "status":Ljava/lang/String;
    iget v12, v7, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    if-lez v12, :cond_9

    .line 4655
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " status="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v7, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 4657
    :cond_9
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "        got known scan result "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " key : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " num: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/wifi/ScanDetailCache;->size()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " rssi="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v7, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " freq="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v7, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4632
    .end local v8    # "status":Ljava/lang/String;
    :cond_a
    iget-object v12, v7, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v13, "PSK"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v12

    const-string v13, "PSK"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 4634
    const/4 v2, 0x1

    goto/16 :goto_2

    .line 4635
    :cond_b
    iget-object v12, v7, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v13, "EAP"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v12

    const-string v13, "EAP"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 4637
    const/4 v2, 0x1

    goto/16 :goto_2

    .line 4638
    :cond_c
    iget-object v12, v7, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v13, "WEP"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_7

    iget-object v12, v7, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v13, "PSK"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_7

    iget-object v12, v7, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v13, "EAP"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_7

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v12

    const-string v13, "WEP"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_7

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v12

    const-string v13, "PSK"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_7

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v12

    const-string v13, "EAP"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_7

    .line 4644
    const/4 v2, 0x1

    goto/16 :goto_2

    .line 4666
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "found":Z
    :cond_d
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4667
    if-nez v6, :cond_0

    move v9, v10

    goto/16 :goto_0
.end method

.method updateSkipInternetCheck(IZ)V
    .locals 2
    .param p1, "netId"    # I
    .param p2, "skipInternetCheck"    # Z

    .prologue
    .line 989
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 990
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    .line 994
    :goto_0
    return-void

    .line 993
    :cond_0
    if-eqz p2, :cond_1

    const/4 v1, 0x1

    :goto_1
    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->skipInternetCheck:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method updateStatus(ILandroid/net/NetworkInfo$DetailedState;)V
    .locals 4
    .param p1, "netId"    # I
    .param p2, "state"    # Landroid/net/NetworkInfo$DetailedState;

    .prologue
    const/4 v3, 0x0

    .line 1544
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 1545
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1546
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_1

    .line 1564
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    :goto_0
    return-void

    .line 1547
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore$4;->$SwitchMap$android$net$NetworkInfo$DetailedState:[I

    invoke-virtual {p2}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1549
    :pswitch_0
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 1551
    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    goto :goto_0

    .line 1555
    :pswitch_1
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-nez v1, :cond_0

    .line 1556
    const/4 v1, 0x2

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_0

    .line 1547
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method updateUsableInternet(IZ)V
    .locals 2
    .param p1, "netId"    # I
    .param p2, "isUsableInternet"    # Z

    .prologue
    .line 980
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 981
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    .line 985
    :goto_0
    return-void

    .line 984
    :cond_0
    iput-boolean p2, v0, Landroid/net/wifi/WifiConfiguration;->isUsableInternet:Z

    goto :goto_0
.end method

.method public wifiConfigurationFromScanResult(Lcom/android/server/wifi/ScanDetail;)Landroid/net/wifi/WifiConfiguration;
    .locals 6
    .param p1, "scanDetail"    # Lcom/android/server/wifi/ScanDetail;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 5258
    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v1

    .line 5259
    .local v1, "result":Landroid/net/wifi/ScanResult;
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 5261
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 5263
    sget-boolean v2, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v2, :cond_0

    .line 5264
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiConfiguration from scan results "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cap "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 5267
    :cond_0
    iget-object v2, v1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "WEP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5268
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 5269
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 5270
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->set(I)V

    .line 5273
    :cond_1
    iget-object v2, v1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5274
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->set(I)V

    .line 5277
    :cond_2
    iget-object v2, v1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "EAP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5279
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 5280
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 5285
    :cond_3
    return-object v0
.end method

.method public writeKnownNetworkHistory(Z)V
    .locals 7
    .param p1, "force"    # Z

    .prologue
    .line 2824
    move v2, p1

    .line 2827
    .local v2, "needUpdate":Z
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2828
    .local v3, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    monitor-enter v5

    .line 2829
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v4}, Lcom/android/server/wifi/ConfigurationMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 2830
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    new-instance v4, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v4, v0}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2831
    iget-boolean v4, v0, Landroid/net/wifi/WifiConfiguration;->dirty:Z

    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    .line 2832
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " rewrite network history for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 2833
    const/4 v4, 0x0

    iput-boolean v4, v0, Landroid/net/wifi/WifiConfiguration;->dirty:Z

    .line 2834
    const/4 v2, 0x1

    goto :goto_0

    .line 2837
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2838
    sget-boolean v4, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v4, :cond_2

    .line 2839
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " writeKnownNetworkHistory() num networks:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v5}, Lcom/android/server/wifi/ConfigurationMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " needWrite="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 2842
    :cond_2
    if-nez v2, :cond_3

    .line 3027
    :goto_1
    return-void

    .line 2837
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 2845
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mWriter:Lcom/android/server/net/DelayedDiskWrite;

    sget-object v5, Lcom/android/server/wifi/WifiConfigStore;->networkHistoryConfigFile:Ljava/lang/String;

    new-instance v6, Lcom/android/server/wifi/WifiConfigStore$3;

    invoke-direct {v6, p0, v3}, Lcom/android/server/wifi/WifiConfigStore$3;-><init>(Lcom/android/server/wifi/WifiConfigStore;Ljava/util/List;)V

    invoke-virtual {v4, v5, v6}, Lcom/android/server/net/DelayedDiskWrite;->write(Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;)V

    goto :goto_1
.end method

.method public writePasspointConfigs(Ljava/lang/String;Lcom/android/server/wifi/hotspot2/pps/HomeSP;)V
    .locals 4
    .param p1, "fqdn"    # Ljava/lang/String;
    .param p2, "homeSP"    # Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    .prologue
    .line 2806
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mWriter:Lcom/android/server/net/DelayedDiskWrite;

    const-string v1, "/data/misc/wifi/PerProviderSubscription.conf"

    new-instance v2, Lcom/android/server/wifi/WifiConfigStore$2;

    invoke-direct {v2, p0, p2, p1}, Lcom/android/server/wifi/WifiConfigStore$2;-><init>(Lcom/android/server/wifi/WifiConfigStore;Lcom/android/server/wifi/hotspot2/pps/HomeSP;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/net/DelayedDiskWrite;->write(Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;Z)V

    .line 2821
    return-void
.end method

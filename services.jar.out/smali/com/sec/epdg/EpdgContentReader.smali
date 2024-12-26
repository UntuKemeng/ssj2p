.class public Lcom/sec/epdg/EpdgContentReader;
.super Ljava/lang/Object;
.source "EpdgContentReader.java"


# static fields
.field private static final COLUMN_ALWAYSON_APNTYPE:Ljava/lang/String; = "alwayson_apntype"

.field private static final COLUMN_ALWAYS_ON_APN_RETRY_ENABLED:Ljava/lang/String; = "retry_enabled_for_always_on_apn"

.field private static final COLUMN_APN:Ljava/lang/String; = "apnname"

.field private static final COLUMN_ATTACH_PDN:Ljava/lang/String; = "attach_pdn"

.field private static final COLUMN_AUTH_TYPE:Ljava/lang/String; = "authtype"

.field private static final COLUMN_BROADCAST_HO_RESULT:Ljava/lang/String; = "broadcast_ho_result"

.field private static final COLUMN_CERTI_PATH:Ljava/lang/String; = "certi_path"

.field private static final COLUMN_CONN_NAME:Ljava/lang/String; = "connname"

.field private static final COLUMN_DPD_ALLOWED_IN_CONNECTED_MODE:Ljava/lang/String; = "is_dpd_allowed_in_connected_mode"

.field private static final COLUMN_DYNAMIC_FQDN_ENABLED:Ljava/lang/String; = "dynamic_fqdn"

.field private static final COLUMN_DYNAMIC_USER_FQDN_ENABLED:Ljava/lang/String; = "dynamic_userfqdn"

.field private static final COLUMN_EMERGENCY_APNTYPE:Ljava/lang/String; = "emergency_apntype"

.field private static final COLUMN_EPDG_SERVER_IP:Ljava/lang/String; = "epdgserverip"

.field private static final COLUMN_HO_DELAY_TIMER:Ljava/lang/String; = "hodelaytimer"

.field private static final COLUMN_ID:Ljava/lang/String; = "_id"

.field private static final COLUMN_IDI_IMSI:Ljava/lang/String; = "idiimsi"

.field private static final COLUMN_IDI_MAC:Ljava/lang/String; = "idimac"

.field private static final COLUMN_IKE_CONNECTION_TIMEOUT:Ljava/lang/String; = "ikeconnectiontimeout"

.field private static final COLUMN_IKE_DPD_TIMEOUT:Ljava/lang/String; = "ikedpdtimeout"

.field private static final COLUMN_IKE_EAP_TYPE:Ljava/lang/String; = "ikeeaptype"

.field private static final COLUMN_IKE_ENCRYPTION:Ljava/lang/String; = "ikeencryption"

.field private static final COLUMN_IKE_GROUP:Ljava/lang/String; = "ikegroup"

.field private static final COLUMN_IKE_INTEGRITY:Ljava/lang/String; = "ikeintegrity"

.field private static final COLUMN_IKE_LIFE:Ljava/lang/String; = "ikelife"

.field private static final COLUMN_IKE_NAT_VALUE:Ljava/lang/String; = "ikenatvalue"

.field private static final COLUMN_IKE_VERSION:Ljava/lang/String; = "ikeversion"

.field private static final COLUMN_IKE_VIRTUAL_ADAPTER_NAME:Ljava/lang/String; = "ikevirtualadaptername"

.field private static final COLUMN_IKE_WINDOW_SIZE:Ljava/lang/String; = "ikewindowsize"

.field private static final COLUMN_IMEI_VENDOR_ATTRIBUTE:Ljava/lang/String; = "imei"

.field private static final COLUMN_IMEI_VENDOR_ATTR_TYPE:Ljava/lang/String; = "imeivendorattr"

.field private static final COLUMN_IPSEC_ENCRYPTION:Ljava/lang/String; = "ipsecencryption"

.field private static final COLUMN_IPSEC_GROUP:Ljava/lang/String; = "ipsecgroup"

.field private static final COLUMN_IPSEC_INTEGRITY:Ljava/lang/String; = "ipsecintegrity"

.field private static final COLUMN_IPSEC_LIFETYPE:Ljava/lang/String; = "ipseclifetime"

.field private static final COLUMN_IPSEC_LIFE_VALUE:Ljava/lang/String; = "ipseclifevalue"

.field private static final COLUMN_IS_IPV6_ENABLED:Ljava/lang/String; = "is_ipv6_enabled"

.field private static final COLUMN_IS_IPV6_PREFERRED:Ljava/lang/String; = "is_ipv6_preferred"

.field private static final COLUMN_IS_THROTTLE_ENABLED:Ljava/lang/String; = "is_throttle_enabled"

.field private static final COLUMN_IS_USING_CERTI:Ljava/lang/String; = "is_using_certi"

.field private static final COLUMN_KEEP_ALIVE_TIMER:Ljava/lang/String; = "internet_pdn_keep_alive_timer"

.field private static final COLUMN_MOBIKE:Ljava/lang/String; = "mobike"

.field private static final COLUMN_ON_DEMAND_PDN_HANDOFF:Ljava/lang/String; = "ondemand_pdn_handoff"

.field private static final COLUMN_OPERATOR_NUMERIC:Ljava/lang/String; = "operatornumeric"

.field private static final COLUMN_OWN_IDENTITY:Ljava/lang/String; = "ownidentity"

.field private static final COLUMN_OWN_URI_TYPE:Ljava/lang/String; = "ownuritype"

.field private static final COLUMN_PCSCFV4_VENDOR_ATTR:Ljava/lang/String; = "pcscfv4vendorattr"

.field private static final COLUMN_PCSCFV6_VENDOR_ATTR:Ljava/lang/String; = "pcscfv6vendorattr"

.field private static final COLUMN_PERIODIC_DPD_TIMER:Ljava/lang/String; = "periodicdpdtimer"

.field private static final COLUMN_PFS:Ljava/lang/String; = "pfs"

.field private static final COLUMN_REMOTE_IDENTITY:Ljava/lang/String; = "remoteidentity"

.field private static final COLUMN_REMOTE_URI_TYPE:Ljava/lang/String; = "remoteuritype"

.field private static final COLUMN_SMARTWIFI_CDMA_RSSI:Ljava/lang/String; = "smartwificdmarssi"

.field private static final COLUMN_SMARTWIFI_LTE_RSRP1:Ljava/lang/String; = "smartwifirsrp1"

.field private static final COLUMN_SMARTWIFI_LTE_RSRP2:Ljava/lang/String; = "smartwifirsrp2"

.field private static final COLUMN_SMARTWIFI_LTE_RSRP3:Ljava/lang/String; = "smartwifirsrp3"

.field private static final COLUMN_SMARTWIFI_PKT_LOSS_PERCENT:Ljava/lang/String; = "smartpktlosspercent"

.field private static final COLUMN_SMARTWIFI_RSSI_A:Ljava/lang/String; = "smartwifirssia"

.field private static final COLUMN_SMARTWIFI_RSSI_B:Ljava/lang/String; = "smartwifirssib"

.field private static final COLUMN_SMARTWIFI_RSSI_C:Ljava/lang/String; = "smartwifirssic"

.field private static final COLUMN_SMARTWIFI_RSSI_ROVEIN_VOICE:Ljava/lang/String; = "smartwifirssiroveinvoice"

.field private static final COLUMN_SMARTWIFI_RSSI_ROVEIN_WIFIONLY:Ljava/lang/String; = "smartwifirssiroveinwifionly"

.field private static final COLUMN_SMARTWIFI_RSSI_ROVEOUT_WIFIONLY:Ljava/lang/String; = "smartwifirssiroveoutwifionly"

.field private static final COLUMN_SMARTWIFI_TIMER:Ljava/lang/String; = "smartwifitimer"

.field private static final COLUMN_SMART_WIFI_ANS_INTEGRATION:Ljava/lang/String; = "smart_wifi_ans_integration"

.field private static final COLUMN_SMART_WIFI_RTCP_INTEGRATION:Ljava/lang/String; = "smart_wifi_rtcp_integration"

.field private static final COLUMN_SUBNET_TYPE:Ljava/lang/String; = "subnettype"

.field private static final COLUMN_SYS_SEL_TIMER:Ljava/lang/String; = "sysseltimer"

.field private static final COLUMN_TEPDG_1X_SCAN_TIMER:Ljava/lang/String; = "tepdg1xScantimer"

.field private static final COLUMN_TEPDG_1X_TIMER:Ljava/lang/String; = "tepdg1xtimer"

.field private static final COLUMN_TEPDG_LTE_TIMER:Ljava/lang/String; = "tepdgltetimer"

.field private static final COLUMN_TEST_NETWORK_INTERFACE_NUMBER:Ljava/lang/String; = "netinterfacenum"

.field private static final COLUMN_THRESHOLD_2G_ROVE_IN:Ljava/lang/String; = "threshold2grovein"

.field private static final COLUMN_THRESHOLD_2G_ROVE_OUT:Ljava/lang/String; = "threshold2groveout"

.field private static final COLUMN_THRESHOLD_3G_ROVE_IN:Ljava/lang/String; = "threshold3grovein"

.field private static final COLUMN_THRESHOLD_3G_ROVE_OUT:Ljava/lang/String; = "threshold3groveout"

.field private static final COLUMN_THRESHOLD_4G_ROVE_IN:Ljava/lang/String; = "threshold4grovein"

.field private static final COLUMN_THRESHOLD_4G_ROVE_OUT:Ljava/lang/String; = "threshold4groveout"

.field private static final COLUMN_TUNNEL_TYPE:Ljava/lang/String; = "tunneltype"

.field private static final COLUMN_USER_AUTH_TYPE:Ljava/lang/String; = "userauthtype"

.field private static final COLUMN_VENDOR_ATTRIBUTE:Ljava/lang/String; = "vendorattribute"

.field private static final COLUMN_VOWIFI_PREF:Ljava/lang/String; = "vowifi_pref"

.field private static final COLUMN_WIFI_IP_CONFIG_TIMER:Ljava/lang/String; = "wifiipconfigtimer"

.field private static final COLUMN_WIFI_RSSI_INTENT_DELAY_TIMER:Ljava/lang/String; = "wifirssiintentdelaytimer"

.field private static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/todo"

.field private static final TABLE_IWLANSETTINGS:Ljava/lang/String; = "iwlansetting"

.field private static final TAG:Ljava/lang/String; = "[DBREADER]"

.field private static mEpdgReadInstance:Lcom/sec/epdg/EpdgContentReader;


# instance fields
.field colName:Ljava/lang/String;

.field private epdgSettings:Lcom/sec/epdg/EpdgSettings;

.field private iWlanApns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/epdg/IWlanApnSetting;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/epdg/EpdgContentReader;->mEpdgReadInstance:Lcom/sec/epdg/EpdgContentReader;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/epdg/EpdgContentReader;->iWlanApns:Ljava/util/ArrayList;

    .line 24
    invoke-static {}, Lcom/sec/epdg/EpdgSettings;->getInstance()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgContentReader;->epdgSettings:Lcom/sec/epdg/EpdgSettings;

    .line 103
    return-void
.end method

.method private addEpdgSetting(Landroid/database/Cursor;)V
    .locals 100
    .param p1, "messagesCursor"    # Landroid/database/Cursor;

    .prologue
    .line 851
    const-string v97, "smartwifirssia"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v89

    .line 853
    .local v89, "strWifiRssiA":Ljava/lang/String;
    invoke-static/range {v89 .. v89}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 854
    .local v2, "wifiRssiA":I
    const-string v97, "smartwifirssib"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v90

    .line 856
    .local v90, "strWifiRssiB":Ljava/lang/String;
    invoke-static/range {v90 .. v90}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 857
    .local v3, "wifiRssiB":I
    const-string v97, "smartwifirssic"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v91

    .line 859
    .local v91, "strWifiRssiC":Ljava/lang/String;
    invoke-static/range {v91 .. v91}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 860
    .local v4, "wifiRssiC":I
    const-string v97, "smartwifirssiroveinwifionly"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v94

    .line 862
    .local v94, "strWifiRssiRoveInWifiOnly":Ljava/lang/String;
    invoke-static/range {v94 .. v94}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 863
    .local v5, "wifiRssiRoveInWifiOnly":I
    const-string v97, "smartwifirssiroveoutwifionly"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v95

    .line 865
    .local v95, "strWifiRssiRoveOutWifiOnly":Ljava/lang/String;
    invoke-static/range {v95 .. v95}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 866
    .local v6, "wifiRssiRoveOutWifiOnly":I
    const-string v97, "smartwifirssiroveinvoice"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v93

    .line 868
    .local v93, "strWifiRssiRoveInVoice":Ljava/lang/String;
    invoke-static/range {v93 .. v93}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 869
    .local v7, "wifiRssiRoveInVoice":I
    const-string v97, "smartwifirsrp1"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v71

    .line 871
    .local v71, "strLteRsrp1":Ljava/lang/String;
    invoke-static/range {v71 .. v71}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 872
    .local v8, "lteRsrp1":I
    const-string v97, "smartwifirsrp2"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v72

    .line 874
    .local v72, "strLteRsrp2":Ljava/lang/String;
    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 875
    .local v9, "lteRsrp2":I
    const-string v97, "smartwifirsrp3"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v73

    .line 877
    .local v73, "strLteRsrp3":Ljava/lang/String;
    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 878
    .local v10, "lteRsrp3":I
    const-string v97, "smartwificdmarssi"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v53

    .line 880
    .local v53, "strCdmaRssi":Ljava/lang/String;
    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 881
    .local v11, "cdmaRssi":I
    const-string v97, "smartpktlosspercent"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v76

    .line 883
    .local v76, "strPktLossPercent":Ljava/lang/String;
    invoke-static/range {v76 .. v76}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 884
    .local v12, "pktLossPercent":I
    const-string v97, "threshold4grovein"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v86

    .line 886
    .local v86, "strThreshold4gRoveIn":Ljava/lang/String;
    invoke-static/range {v86 .. v86}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 887
    .local v13, "threshold4gRoveIn":I
    const-string v97, "threshold4groveout"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v87

    .line 889
    .local v87, "strThreshold4gRoveOut":Ljava/lang/String;
    invoke-static/range {v87 .. v87}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 890
    .local v14, "threshold4gRoveOut":I
    const-string v97, "threshold3grovein"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v84

    .line 892
    .local v84, "strThreshold3gRoveIn":Ljava/lang/String;
    invoke-static/range {v84 .. v84}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 893
    .local v15, "threshold3gRoveIn":I
    const-string v97, "threshold3groveout"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v85

    .line 895
    .local v85, "strThreshold3gRoveOut":Ljava/lang/String;
    invoke-static/range {v85 .. v85}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 896
    .local v16, "threshold3gRoveOut":I
    const-string v97, "threshold2grovein"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v82

    .line 898
    .local v82, "strThreshold2gRoveIn":Ljava/lang/String;
    invoke-static/range {v82 .. v82}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 899
    .local v17, "threshold2gRoveIn":I
    const-string v97, "threshold2groveout"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v83

    .line 901
    .local v83, "strThreshold2gRoveOut":Ljava/lang/String;
    invoke-static/range {v83 .. v83}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 902
    .local v18, "threshold2gRoveOut":I
    const-string v97, "sysseltimer"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v78

    .line 904
    .local v78, "strSysSelTimer":Ljava/lang/String;
    invoke-static/range {v78 .. v78}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 905
    .local v19, "sysSelTimer":I
    const-string v97, "tepdgltetimer"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v81

    .line 907
    .local v81, "strTepdgLteTimer":Ljava/lang/String;
    invoke-static/range {v81 .. v81}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 908
    .local v20, "tepdgLteTimer":I
    const-string v97, "tepdg1xtimer"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v80

    .line 910
    .local v80, "strTepdg1xTimer":Ljava/lang/String;
    invoke-static/range {v80 .. v80}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 911
    .local v21, "tepdg1xTimer":I
    const-string v97, "tepdg1xScantimer"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v79

    .line 913
    .local v79, "strTepdg1xScanTimer":Ljava/lang/String;
    invoke-static/range {v79 .. v79}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 914
    .local v22, "tepdg1xScanTimer":I
    const-string v97, "hodelaytimer"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v54

    .line 916
    .local v54, "strHoDelayTimer":Ljava/lang/String;
    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 917
    .local v23, "hoDelayTimer":I
    const-string v97, "wifirssiintentdelaytimer"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v92

    .line 919
    .local v92, "strWifiRssiIntentDelayTimer":Ljava/lang/String;
    invoke-static/range {v92 .. v92}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    .line 920
    .local v24, "wifiRssiIntentDelayTimer":I
    const-string v97, "wifiipconfigtimer"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v88

    .line 922
    .local v88, "strWifiIpConfigTimer":Ljava/lang/String;
    invoke-static/range {v88 .. v88}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    .line 923
    .local v25, "wifiIpConfigTimer":I
    const-string v97, "idimac"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v56

    .line 925
    .local v56, "strIdiMac":Ljava/lang/String;
    invoke-static/range {v56 .. v56}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    .line 926
    .local v26, "idiMac":I
    const-string v97, "idiimsi"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v55

    .line 928
    .local v55, "strIdiImsi":Ljava/lang/String;
    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    .line 929
    .local v27, "idiImsi":I
    const-string v97, "retry_enabled_for_always_on_apn"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v61

    .line 931
    .local v61, "strIsDataRetryEnabled":Ljava/lang/String;
    invoke-static/range {v61 .. v61}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v97

    const/16 v98, 0x1

    move/from16 v0, v97

    move/from16 v1, v98

    if-ne v0, v1, :cond_1

    const/16 v28, 0x1

    .line 932
    .local v28, "isRetryEnabledForAlwaysOnApn":Z
    :goto_0
    const-string v97, "smartwifitimer"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v77

    .line 934
    .local v77, "strSmartWifiTimer":Ljava/lang/String;
    invoke-static/range {v77 .. v77}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    .line 935
    .local v29, "smartWifiTimer":I
    const-string v97, "internet_pdn_keep_alive_timer"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v96

    .line 937
    .local v96, "strkeepAliveTimer":Ljava/lang/String;
    invoke-static/range {v96 .. v96}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    .line 939
    .local v30, "keepAliveTimer":I
    const-string v97, "epdgserverip"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 941
    .local v31, "epdgServerIp":Ljava/lang/String;
    const-string v97, "dynamic_fqdn"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v62

    .line 943
    .local v62, "strIsDynamicFqdn":Ljava/lang/String;
    invoke-static/range {v62 .. v62}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v97

    const/16 v98, 0x1

    move/from16 v0, v97

    move/from16 v1, v98

    if-ne v0, v1, :cond_2

    const/16 v32, 0x1

    .line 945
    .local v32, "isDynamicFqdn":Z
    :goto_1
    const-string v97, "dynamic_userfqdn"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v63

    .line 947
    .local v63, "strIsDynamicUserFqdn":Ljava/lang/String;
    invoke-static/range {v63 .. v63}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v97

    const/16 v98, 0x1

    move/from16 v0, v97

    move/from16 v1, v98

    if-ne v0, v1, :cond_3

    const/16 v33, 0x1

    .line 949
    .local v33, "isDynamicUserFqdn":Z
    :goto_2
    const-string v97, "smart_wifi_ans_integration"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v58

    .line 951
    .local v58, "strIsAnsIntegrationEnabled":Ljava/lang/String;
    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v97

    const/16 v98, 0x1

    move/from16 v0, v97

    move/from16 v1, v98

    if-ne v0, v1, :cond_4

    const/16 v34, 0x1

    .line 953
    .local v34, "isAnsIntegrationEnabled":Z
    :goto_3
    const-string v97, "smart_wifi_rtcp_integration"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v67

    .line 955
    .local v67, "strIsRtcpIntegrationEnabled":Ljava/lang/String;
    invoke-static/range {v67 .. v67}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v97

    const/16 v98, 0x1

    move/from16 v0, v97

    move/from16 v1, v98

    if-ne v0, v1, :cond_5

    const/16 v35, 0x1

    .line 958
    .local v35, "isRtcpIntegrationEnabled":Z
    :goto_4
    const-string v97, "broadcast_ho_result"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v59

    .line 960
    .local v59, "strIsBroadcastHONotiEnabled":Ljava/lang/String;
    invoke-static/range {v59 .. v59}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v97

    const/16 v98, 0x1

    move/from16 v0, v97

    move/from16 v1, v98

    if-ne v0, v1, :cond_6

    const/16 v36, 0x1

    .line 962
    .local v36, "isBroadcastHONotiEnabled":Z
    :goto_5
    const-string v97, "attach_pdn"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v37

    .line 964
    .local v37, "attachPdn":Ljava/lang/String;
    const-string v97, "alwayson_apntype"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v38

    .line 967
    .local v38, "alwaysOnApn":Ljava/lang/String;
    const-string v97, "vowifi_pref"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v70

    .line 969
    .local v70, "strIsVowifiOn":Ljava/lang/String;
    invoke-static/range {v70 .. v70}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v97

    const/16 v98, 0x1

    move/from16 v0, v97

    move/from16 v1, v98

    if-ne v0, v1, :cond_7

    const/16 v39, 0x1

    .line 971
    .local v39, "isVowifiOn":Z
    :goto_6
    const-string v97, "ondemand_pdn_handoff"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v66

    .line 973
    .local v66, "strIsOnDemandPdnHandoff":Ljava/lang/String;
    invoke-static/range {v66 .. v66}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v97

    const/16 v98, 0x1

    move/from16 v0, v97

    move/from16 v1, v98

    if-ne v0, v1, :cond_8

    const/16 v40, 0x1

    .line 975
    .local v40, "isOnDemandPdnHandoff":Z
    :goto_7
    const-string v97, "is_throttle_enabled"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v68

    .line 977
    .local v68, "strIsThrottlingEnabled":Ljava/lang/String;
    invoke-static/range {v68 .. v68}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v97

    const/16 v98, 0x1

    move/from16 v0, v97

    move/from16 v1, v98

    if-ne v0, v1, :cond_9

    const/16 v41, 0x1

    .line 979
    .local v41, "isThrottlingEnabled":Z
    :goto_8
    const-string v97, "pcscfv4vendorattr"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v74

    .line 981
    .local v74, "strPcscfv4":Ljava/lang/String;
    invoke-static/range {v74 .. v74}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v42

    .line 983
    .local v42, "pcscfv4attr":I
    const-string v97, "pcscfv6vendorattr"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v75

    .line 985
    .local v75, "strPcscfv6":Ljava/lang/String;
    invoke-static/range {v75 .. v75}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v43

    .line 989
    .local v43, "pcscfv6attr":I
    const-string v97, "imeivendorattr"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v52

    .line 991
    .local v52, "imeiVendorAttrTypeStr":Ljava/lang/String;
    if-nez v52, :cond_a

    .line 992
    const/16 v44, 0x0

    .line 997
    .local v44, "imeiVendorAttrType":I
    :goto_9
    const-string v97, "netinterfacenum"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v57

    .line 999
    .local v57, "strInterfaceNum":Ljava/lang/String;
    invoke-static/range {v57 .. v57}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v45

    .line 1001
    .local v45, "interfaceNum":I
    const-string v97, "emergency_apntype"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v46

    .line 1004
    .local v46, "emergencyApnType":Ljava/lang/String;
    const-string v97, "is_dpd_allowed_in_connected_mode"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v60

    .line 1006
    .local v60, "strIsConnectedDpdAllow":Ljava/lang/String;
    invoke-static/range {v60 .. v60}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v97

    const/16 v98, 0x1

    move/from16 v0, v97

    move/from16 v1, v98

    if-ne v0, v1, :cond_b

    const/16 v47, 0x1

    .line 1008
    .local v47, "isConnectedModeDpdAllow":Z
    :goto_a
    const-string v97, "is_ipv6_enabled"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v64

    .line 1010
    .local v64, "strIsIpv6Enabled":Ljava/lang/String;
    invoke-static/range {v64 .. v64}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v97

    const/16 v98, 0x1

    move/from16 v0, v97

    move/from16 v1, v98

    if-ne v0, v1, :cond_c

    const/16 v48, 0x1

    .line 1012
    .local v48, "isIpv6Enabled":Z
    :goto_b
    const-string v97, "is_ipv6_preferred"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v65

    .line 1014
    .local v65, "strIsIpv6Preferred":Ljava/lang/String;
    invoke-static/range {v65 .. v65}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v97

    const/16 v98, 0x1

    move/from16 v0, v97

    move/from16 v1, v98

    if-ne v0, v1, :cond_d

    const/16 v49, 0x1

    .line 1016
    .local v49, "isIpv6Preferred":Z
    :goto_c
    const-string v97, "certi_path"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v50

    .line 1019
    .local v50, "certiPath":Ljava/lang/String;
    const-string v97, "is_using_certi"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v97

    move-object/from16 v0, p1

    move/from16 v1, v97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v69

    .line 1021
    .local v69, "strIsUsingCerti":Ljava/lang/String;
    invoke-static/range {v69 .. v69}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v97

    const/16 v98, 0x1

    move/from16 v0, v97

    move/from16 v1, v98

    if-ne v0, v1, :cond_e

    const/16 v51, 0x1

    .line 1023
    .local v51, "isUsingCerti":Z
    :goto_d
    invoke-static/range {v2 .. v51}, Lcom/sec/epdg/EpdgSettings;->getInstance(IIIIIIIIIIIIIIIIIIIIIIIIIIZIILjava/lang/String;ZZZZZLjava/lang/String;Ljava/lang/String;ZZZIIIILjava/lang/String;ZZZLjava/lang/String;Z)Lcom/sec/epdg/EpdgSettings;

    move-result-object v97

    move-object/from16 v0, v97

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/epdg/EpdgContentReader;->epdgSettings:Lcom/sec/epdg/EpdgSettings;

    .line 1033
    const-string v98, "[DBREADER]"

    new-instance v97, Ljava/lang/StringBuilder;

    invoke-direct/range {v97 .. v97}, Ljava/lang/StringBuilder;-><init>()V

    const-string v99, "epdgsettings read successfully :  Wifi Level : "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " Wifi RSSI B : "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " Wifi RSSI C : "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " Wifi RSSI Rove In (WifiOnly) : "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " Wifi RSSI Rove Out (WifiOnly) : "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " Wifi RSSI Rove In (Voice) : "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " Lte RSRP 1 : "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " Lte RSRP 2 : "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " Lte RSRP 3 : "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " Cdma Rssi : "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " Pkt Loss Percent : "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " 4G Rove In Out :"

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, ", "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " 3G Rove In Out :"

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, ", "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " 2G Rove In Out :"

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, ", "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " Sys Sel Timer : "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " TepdgLte timer : "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " Tepdg1x timer : "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " Tepdg1xScan timer : "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " IDi MAC : "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " HO Delay Timer : "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " Wifi Rssi Intent Delay Timer "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " Wifi IP Config Timer : "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v99

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUserBinary()Z

    move-result v97

    if-eqz v97, :cond_f

    const-string v97, "suppressed in user binary"

    :goto_e
    move-object/from16 v0, v99

    move-object/from16 v1, v97

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " IDi IMSI : "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v99

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUserBinary()Z

    move-result v97

    if-eqz v97, :cond_10

    const-string v97, "suppressed in user binary"

    :goto_f
    move-object/from16 v0, v99

    move-object/from16 v1, v97

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " Data retry enabled: "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " SmartWifi Timer : "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " Internet Keep-Alive Timer "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " EPDG Server IP "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUserBinary()Z

    move-result v99

    if-eqz v99, :cond_0

    const-string v31, "Suppressed in user binary"

    .end local v31    # "epdgServerIp":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, v97

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " dynamic_fqdn "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " dynamic_userfqdn "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " Smart WiFi ANS Integration "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " Smart WiFi RTCP Integration "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " Broadcast HO result "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " Attach PDN "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " alwaysOn Apn "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " Testing On demand PDN Handoff "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " Vowifi "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " IsThrottlingEnabled: "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " pcscfv4attr: "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " pcscfv6attr: "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " imeiVendorAttrType: "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " interfaceNum: rmnet"

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " emergencyApnType"

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " Dpd allow in connected mode"

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " IsIpv6Enabled: "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " IsIpv6Preferred: "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " certiPath: "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    const-string v99, " isUsingCerti "

    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v97

    move-object/from16 v0, v97

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v97

    invoke-virtual/range {v97 .. v97}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v97

    move-object/from16 v0, v98

    move-object/from16 v1, v97

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    return-void

    .line 931
    .end local v28    # "isRetryEnabledForAlwaysOnApn":Z
    .end local v29    # "smartWifiTimer":I
    .end local v30    # "keepAliveTimer":I
    .end local v32    # "isDynamicFqdn":Z
    .end local v33    # "isDynamicUserFqdn":Z
    .end local v34    # "isAnsIntegrationEnabled":Z
    .end local v35    # "isRtcpIntegrationEnabled":Z
    .end local v36    # "isBroadcastHONotiEnabled":Z
    .end local v37    # "attachPdn":Ljava/lang/String;
    .end local v38    # "alwaysOnApn":Ljava/lang/String;
    .end local v39    # "isVowifiOn":Z
    .end local v40    # "isOnDemandPdnHandoff":Z
    .end local v41    # "isThrottlingEnabled":Z
    .end local v42    # "pcscfv4attr":I
    .end local v43    # "pcscfv6attr":I
    .end local v44    # "imeiVendorAttrType":I
    .end local v45    # "interfaceNum":I
    .end local v46    # "emergencyApnType":Ljava/lang/String;
    .end local v47    # "isConnectedModeDpdAllow":Z
    .end local v48    # "isIpv6Enabled":Z
    .end local v49    # "isIpv6Preferred":Z
    .end local v50    # "certiPath":Ljava/lang/String;
    .end local v51    # "isUsingCerti":Z
    .end local v52    # "imeiVendorAttrTypeStr":Ljava/lang/String;
    .end local v57    # "strInterfaceNum":Ljava/lang/String;
    .end local v58    # "strIsAnsIntegrationEnabled":Ljava/lang/String;
    .end local v59    # "strIsBroadcastHONotiEnabled":Ljava/lang/String;
    .end local v60    # "strIsConnectedDpdAllow":Ljava/lang/String;
    .end local v62    # "strIsDynamicFqdn":Ljava/lang/String;
    .end local v63    # "strIsDynamicUserFqdn":Ljava/lang/String;
    .end local v64    # "strIsIpv6Enabled":Ljava/lang/String;
    .end local v65    # "strIsIpv6Preferred":Ljava/lang/String;
    .end local v66    # "strIsOnDemandPdnHandoff":Ljava/lang/String;
    .end local v67    # "strIsRtcpIntegrationEnabled":Ljava/lang/String;
    .end local v68    # "strIsThrottlingEnabled":Ljava/lang/String;
    .end local v69    # "strIsUsingCerti":Ljava/lang/String;
    .end local v70    # "strIsVowifiOn":Ljava/lang/String;
    .end local v74    # "strPcscfv4":Ljava/lang/String;
    .end local v75    # "strPcscfv6":Ljava/lang/String;
    .end local v77    # "strSmartWifiTimer":Ljava/lang/String;
    .end local v96    # "strkeepAliveTimer":Ljava/lang/String;
    :cond_1
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 943
    .restart local v28    # "isRetryEnabledForAlwaysOnApn":Z
    .restart local v29    # "smartWifiTimer":I
    .restart local v30    # "keepAliveTimer":I
    .restart local v31    # "epdgServerIp":Ljava/lang/String;
    .restart local v62    # "strIsDynamicFqdn":Ljava/lang/String;
    .restart local v77    # "strSmartWifiTimer":Ljava/lang/String;
    .restart local v96    # "strkeepAliveTimer":Ljava/lang/String;
    :cond_2
    const/16 v32, 0x0

    goto/16 :goto_1

    .line 947
    .restart local v32    # "isDynamicFqdn":Z
    .restart local v63    # "strIsDynamicUserFqdn":Ljava/lang/String;
    :cond_3
    const/16 v33, 0x0

    goto/16 :goto_2

    .line 951
    .restart local v33    # "isDynamicUserFqdn":Z
    .restart local v58    # "strIsAnsIntegrationEnabled":Ljava/lang/String;
    :cond_4
    const/16 v34, 0x0

    goto/16 :goto_3

    .line 955
    .restart local v34    # "isAnsIntegrationEnabled":Z
    .restart local v67    # "strIsRtcpIntegrationEnabled":Ljava/lang/String;
    :cond_5
    const/16 v35, 0x0

    goto/16 :goto_4

    .line 960
    .restart local v35    # "isRtcpIntegrationEnabled":Z
    .restart local v59    # "strIsBroadcastHONotiEnabled":Ljava/lang/String;
    :cond_6
    const/16 v36, 0x0

    goto/16 :goto_5

    .line 969
    .restart local v36    # "isBroadcastHONotiEnabled":Z
    .restart local v37    # "attachPdn":Ljava/lang/String;
    .restart local v38    # "alwaysOnApn":Ljava/lang/String;
    .restart local v70    # "strIsVowifiOn":Ljava/lang/String;
    :cond_7
    const/16 v39, 0x0

    goto/16 :goto_6

    .line 973
    .restart local v39    # "isVowifiOn":Z
    .restart local v66    # "strIsOnDemandPdnHandoff":Ljava/lang/String;
    :cond_8
    const/16 v40, 0x0

    goto/16 :goto_7

    .line 977
    .restart local v40    # "isOnDemandPdnHandoff":Z
    .restart local v68    # "strIsThrottlingEnabled":Ljava/lang/String;
    :cond_9
    const/16 v41, 0x0

    goto/16 :goto_8

    .line 994
    .restart local v41    # "isThrottlingEnabled":Z
    .restart local v42    # "pcscfv4attr":I
    .restart local v43    # "pcscfv6attr":I
    .restart local v52    # "imeiVendorAttrTypeStr":Ljava/lang/String;
    .restart local v74    # "strPcscfv4":Ljava/lang/String;
    .restart local v75    # "strPcscfv6":Ljava/lang/String;
    :cond_a
    invoke-static/range {v52 .. v52}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v44

    .restart local v44    # "imeiVendorAttrType":I
    goto/16 :goto_9

    .line 1006
    .restart local v45    # "interfaceNum":I
    .restart local v46    # "emergencyApnType":Ljava/lang/String;
    .restart local v57    # "strInterfaceNum":Ljava/lang/String;
    .restart local v60    # "strIsConnectedDpdAllow":Ljava/lang/String;
    :cond_b
    const/16 v47, 0x0

    goto/16 :goto_a

    .line 1010
    .restart local v47    # "isConnectedModeDpdAllow":Z
    .restart local v64    # "strIsIpv6Enabled":Ljava/lang/String;
    :cond_c
    const/16 v48, 0x0

    goto/16 :goto_b

    .line 1014
    .restart local v48    # "isIpv6Enabled":Z
    .restart local v65    # "strIsIpv6Preferred":Ljava/lang/String;
    :cond_d
    const/16 v49, 0x0

    goto/16 :goto_c

    .line 1021
    .restart local v49    # "isIpv6Preferred":Z
    .restart local v50    # "certiPath":Ljava/lang/String;
    .restart local v69    # "strIsUsingCerti":Ljava/lang/String;
    :cond_e
    const/16 v51, 0x0

    goto/16 :goto_d

    .line 1033
    .restart local v51    # "isUsingCerti":Z
    :cond_f
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v97

    goto/16 :goto_e

    :cond_10
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v97

    goto/16 :goto_f
.end method

.method private addIwlanApn(Landroid/database/Cursor;)V
    .locals 62
    .param p1, "messagesCursor"    # Landroid/database/Cursor;

    .prologue
    .line 223
    const/16 v52, 0x0

    .line 225
    .local v52, "iwlanapn":Lcom/sec/epdg/IWlanApnSetting;
    const-string v60, "connname"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 228
    .local v2, "iWlanSettingName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 229
    .local v3, "ipsecUserAuthval":Lcom/sec/epdg/IWlanEnum$IPSecUserAuthState;
    const-string v60, "userauthtype"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v44

    .line 231
    .local v44, "ipsecUserAuthvalStr":Ljava/lang/String;
    const-string v60, "true"

    move-object/from16 v0, v60

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    if-eqz v60, :cond_12

    .line 232
    sget-object v3, Lcom/sec/epdg/IWlanEnum$IPSecUserAuthState;->ENABLED:Lcom/sec/epdg/IWlanEnum$IPSecUserAuthState;

    .line 236
    :cond_0
    :goto_0
    const/4 v4, 0x0

    .line 237
    .local v4, "pfsval":Lcom/sec/epdg/IWlanEnum$PfsState;
    const-string v60, "pfs"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v56

    .line 239
    .local v56, "pfsvalStr":Ljava/lang/String;
    const-string v60, "true"

    move-object/from16 v0, v60

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    if-eqz v60, :cond_13

    .line 240
    sget-object v4, Lcom/sec/epdg/IWlanEnum$PfsState;->ENABLED:Lcom/sec/epdg/IWlanEnum$PfsState;

    .line 244
    :cond_1
    :goto_1
    const/4 v5, 0x0

    .line 245
    .local v5, "iptype":Lcom/sec/epdg/IWlanEnum$IPSecIpType;
    const-string v60, "subnettype"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v51

    .line 247
    .local v51, "iptypeStr":Ljava/lang/String;
    const-string v60, "IPV4"

    move-object/from16 v0, v51

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_14

    .line 248
    sget-object v5, Lcom/sec/epdg/IWlanEnum$IPSecIpType;->IP_VERSION_4:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    .line 254
    :goto_2
    const/4 v6, 0x0

    .line 255
    .local v6, "ownUriType":Lcom/sec/epdg/IWlanEnum$IdentityType;
    const-string v60, "ownuritype"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v54

    .line 257
    .local v54, "ownUriTypeStr":Ljava/lang/String;
    const-string v60, "IPV4_ADDR"

    move-object/from16 v0, v54

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_16

    .line 258
    sget-object v6, Lcom/sec/epdg/IWlanEnum$IdentityType;->IPV4_ADDR:Lcom/sec/epdg/IWlanEnum$IdentityType;

    .line 270
    :cond_2
    :goto_3
    const-string v60, "ownidentity"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 273
    .local v7, "ownUri":Ljava/lang/String;
    const/4 v8, 0x0

    .line 274
    .local v8, "remoteuritype":Lcom/sec/epdg/IWlanEnum$IdentityType;
    const-string v60, "remoteuritype"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v57

    .line 276
    .local v57, "remoteuritypeStr":Ljava/lang/String;
    const-string v60, "IPV4_ADDR"

    move-object/from16 v0, v57

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_1b

    .line 277
    sget-object v8, Lcom/sec/epdg/IWlanEnum$IdentityType;->IPV4_ADDR:Lcom/sec/epdg/IWlanEnum$IdentityType;

    .line 289
    :cond_3
    :goto_4
    const-string v60, "remoteidentity"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 292
    .local v9, "remoteUri":Ljava/lang/String;
    const-string v60, "apnname"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 295
    .local v10, "apnType":Ljava/lang/String;
    const/4 v11, 0x0

    .line 296
    .local v11, "ipsecauthtype":Lcom/sec/epdg/IWlanEnum$IPSecAuthType;
    const-string v60, "authtype"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v45

    .line 298
    .local v45, "ipsecauthtypeStr":Ljava/lang/String;
    const-string v60, "EAP"

    move-object/from16 v0, v45

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_20

    .line 299
    sget-object v11, Lcom/sec/epdg/IWlanEnum$IPSecAuthType;->EAP:Lcom/sec/epdg/IWlanEnum$IPSecAuthType;

    .line 305
    :cond_4
    :goto_5
    const/4 v12, 0x0

    .line 306
    .local v12, "adapterConf":Lcom/sec/epdg/IWlanEnum$AdapterConf;
    sget-object v12, Lcom/sec/epdg/IWlanEnum$AdapterConf;->VIRTUAL_ADAPTER_CONF_NONE_TUN:Lcom/sec/epdg/IWlanEnum$AdapterConf;

    .line 308
    const/4 v13, 0x0

    .line 309
    .local v13, "tunnelmode":Lcom/sec/epdg/IWlanEnum$TunnelModeType;
    const-string v60, "tunneltype"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v59

    .line 311
    .local v59, "tunnelmodeStr":Ljava/lang/String;
    const-string v60, "IPSEC_RAC"

    invoke-virtual/range {v59 .. v60}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_22

    .line 312
    sget-object v13, Lcom/sec/epdg/IWlanEnum$TunnelModeType;->IPSEC_RAC:Lcom/sec/epdg/IWlanEnum$TunnelModeType;

    .line 316
    :cond_5
    :goto_6
    const/4 v14, 0x0

    .line 317
    .local v14, "ipsecencryptiontype":Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;
    const-string v60, "ipsecencryption"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v47

    .line 319
    .local v47, "ipsecencryptiontypeStr":Ljava/lang/String;
    const-string v60, "IPSEC_ENCRYPTION_3DES_CBC"

    move-object/from16 v0, v47

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_23

    .line 320
    sget-object v14, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_3DES_CBC:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    .line 359
    :cond_6
    :goto_7
    const/4 v15, 0x0

    .line 360
    .local v15, "ipsecintegrity":Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;
    const-string v60, "ipsecintegrity"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v48

    .line 362
    .local v48, "ipsecintegrityStr":Ljava/lang/String;
    const-string v60, "IPSEC_INTEGRITY_HMAC_MD5_96"

    move-object/from16 v0, v48

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_30

    .line 363
    sget-object v15, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_HMAC_MD5_96:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    .line 391
    :cond_7
    :goto_8
    const/16 v16, 0x0

    .line 392
    .local v16, "ipsecdhgroup":Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;
    const-string v60, "ipsecgroup"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v46

    .line 394
    .local v46, "ipsecdhgroupStr":Ljava/lang/String;
    const-string v60, "IPSEC_GROUP_MODP_768"

    move-object/from16 v0, v46

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_3d

    .line 395
    sget-object v16, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_768:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    .line 431
    :cond_8
    :goto_9
    const/16 v17, 0x0

    .line 432
    .local v17, "ipseclifetype":Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;
    const-string v60, "ipseclifetime"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v49

    .line 434
    .local v49, "ipseclifetypeStr":Ljava/lang/String;
    const-string v60, "IPSEC_LIFE_TYPE_SECONDS"

    move-object/from16 v0, v49

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_4e

    .line 435
    sget-object v17, Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;->IPSEC_LIFE_TYPE_SECONDS:Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;

    .line 440
    :cond_9
    :goto_a
    const-string v60, "ipseclifevalue"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v50

    .line 442
    .local v50, "ipseclifevalStr":Ljava/lang/String;
    invoke-static/range {v50 .. v50}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 444
    .local v18, "ipseclifeval":I
    const/16 v19, 0x0

    .line 445
    .local v19, "ikeversion":Lcom/sec/epdg/IWlanEnum$Ikeversion;
    const-string v60, "ikeversion"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v41

    .line 447
    .local v41, "ikeversionStr":Ljava/lang/String;
    const-string v60, "IKE_VERSION_1"

    move-object/from16 v0, v41

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_4f

    .line 448
    sget-object v19, Lcom/sec/epdg/IWlanEnum$Ikeversion;->IKE_VERSION_1:Lcom/sec/epdg/IWlanEnum$Ikeversion;

    .line 452
    :cond_a
    :goto_b
    const/16 v20, 0x0

    .line 453
    .local v20, "ikeencryption":Lcom/sec/epdg/IWlanEnum$IkeEncryption;
    const-string v60, "ikeencryption"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v37

    .line 455
    .local v37, "ikeencryptionStr":Ljava/lang/String;
    const-string v60, "IKE_ENCRYPTION_3DES_CBC"

    move-object/from16 v0, v37

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_50

    .line 456
    sget-object v20, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_3DES_CBC:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    .line 484
    :cond_b
    :goto_c
    const/16 v21, 0x0

    .line 485
    .local v21, "ikeintegrity":Lcom/sec/epdg/IWlanEnum$IkeIntegrity;
    const-string v60, "ikeintegrity"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v38

    .line 487
    .local v38, "ikeintegrityStr":Ljava/lang/String;
    const-string v60, "IKE_INTEGRITY_HMAC_MD5_96"

    move-object/from16 v0, v38

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_5d

    .line 488
    sget-object v21, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_HMAC_MD5_96:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    .line 508
    :cond_c
    :goto_d
    const/16 v22, 0x0

    .line 509
    .local v22, "ikedhgroup":Lcom/sec/epdg/IWlanEnum$IkeDhGroup;
    const-string v60, "ikegroup"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    .line 511
    .local v35, "ikedhgroupStr":Ljava/lang/String;
    const-string v60, "IKE_GROUP_MODP_768"

    move-object/from16 v0, v35

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_66

    .line 512
    sget-object v22, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_768:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    .line 551
    :cond_d
    :goto_e
    const-string v60, "ikelife"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v39

    .line 553
    .local v39, "ikelifeStr":Ljava/lang/String;
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 556
    .local v23, "ikelife":I
    const-string v60, "ikewindowsize"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v42

    .line 558
    .local v42, "ikewindowStr":Ljava/lang/String;
    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    .line 561
    .local v24, "ikewindow":I
    const-string v60, "ikeconnectiontimeout"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    .line 563
    .local v34, "ikeconntimeoutStr":Ljava/lang/String;
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    .line 566
    .local v25, "ikeconntimeout":I
    const-string v60, "ikedpdtimeout"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    .line 568
    .local v36, "ikedpdtimeoutStr":Ljava/lang/String;
    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    .line 570
    .local v26, "ikedpdtimeout":I
    const/16 v27, 0x0

    .line 571
    .local v27, "eaptype":Lcom/sec/epdg/IWlanEnum$IkeEapType;
    const-string v60, "ikeeaptype"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 573
    .local v33, "eaptypeStr":Ljava/lang/String;
    const-string v60, "EAP_METHOD_MD5_CHALLENGE"

    move-object/from16 v0, v33

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_78

    .line 574
    sget-object v27, Lcom/sec/epdg/IWlanEnum$IkeEapType;->EAP_METHOD_MD5_CHALLENGE:Lcom/sec/epdg/IWlanEnum$IkeEapType;

    .line 583
    :cond_e
    :goto_f
    const-string v60, "ikenatvalue"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    .line 585
    .local v40, "ikenatvalStr":Ljava/lang/String;
    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    .line 587
    .local v28, "ikenatval":I
    const/16 v29, 0x0

    .line 588
    .local v29, "pcscfVendorAt":Lcom/sec/epdg/IWlanEnum$PcscfConf;
    const-string v60, "vendorattribute"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v55

    .line 590
    .local v55, "pcscfVendorAtStr":Ljava/lang/String;
    const-string v60, "NONE"

    move-object/from16 v0, v55

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_7b

    .line 591
    sget-object v29, Lcom/sec/epdg/IWlanEnum$PcscfConf;->PCSCF_CONF_NONE:Lcom/sec/epdg/IWlanEnum$PcscfConf;

    .line 599
    :cond_f
    :goto_10
    const/16 v31, 0x0

    .line 600
    .local v31, "mobikeval":Lcom/sec/epdg/IWlanEnum$Mobike;
    const-string v60, "mobike"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v53

    .line 602
    .local v53, "mobikevalStr":Ljava/lang/String;
    const-string v60, "true"

    move-object/from16 v0, v60

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    if-eqz v60, :cond_7e

    .line 603
    sget-object v31, Lcom/sec/epdg/IWlanEnum$Mobike;->ENABLED:Lcom/sec/epdg/IWlanEnum$Mobike;

    .line 607
    :cond_10
    :goto_11
    const/16 v32, 0x0

    .line 608
    .local v32, "imeiVendorAt":Lcom/sec/epdg/IWlanEnum$Imei;
    const-string v60, "imei"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v43

    .line 610
    .local v43, "imeiVendorAtStr":Ljava/lang/String;
    const-string v60, "NONE"

    move-object/from16 v0, v43

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_7f

    .line 611
    sget-object v32, Lcom/sec/epdg/IWlanEnum$Imei;->NONE:Lcom/sec/epdg/IWlanEnum$Imei;

    .line 615
    :cond_11
    :goto_12
    const-string v60, "periodicdpdtimer"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v58

    .line 618
    .local v58, "strPeriodicDpdTimer":Ljava/lang/String;
    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    .line 620
    .local v30, "periodicDpdTimer":I
    invoke-static/range {v2 .. v32}, Lcom/sec/epdg/IWlanApnSetting;->getIWlanApnSettingInstance(Ljava/lang/String;Lcom/sec/epdg/IWlanEnum$IPSecUserAuthState;Lcom/sec/epdg/IWlanEnum$PfsState;Lcom/sec/epdg/IWlanEnum$IPSecIpType;Lcom/sec/epdg/IWlanEnum$IdentityType;Ljava/lang/String;Lcom/sec/epdg/IWlanEnum$IdentityType;Ljava/lang/String;Ljava/lang/String;Lcom/sec/epdg/IWlanEnum$IPSecAuthType;Lcom/sec/epdg/IWlanEnum$AdapterConf;Lcom/sec/epdg/IWlanEnum$TunnelModeType;Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;ILcom/sec/epdg/IWlanEnum$Ikeversion;Lcom/sec/epdg/IWlanEnum$IkeEncryption;Lcom/sec/epdg/IWlanEnum$IkeIntegrity;Lcom/sec/epdg/IWlanEnum$IkeDhGroup;IIIILcom/sec/epdg/IWlanEnum$IkeEapType;ILcom/sec/epdg/IWlanEnum$PcscfConf;ILcom/sec/epdg/IWlanEnum$Mobike;Lcom/sec/epdg/IWlanEnum$Imei;)Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v52

    .line 628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/epdg/EpdgContentReader;->iWlanApns:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 629
    const-string v60, "[DBREADER]"

    const-string v61, "iwlanapn added successfully"

    invoke-static/range {v60 .. v61}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    return-void

    .line 233
    .end local v4    # "pfsval":Lcom/sec/epdg/IWlanEnum$PfsState;
    .end local v5    # "iptype":Lcom/sec/epdg/IWlanEnum$IPSecIpType;
    .end local v6    # "ownUriType":Lcom/sec/epdg/IWlanEnum$IdentityType;
    .end local v7    # "ownUri":Ljava/lang/String;
    .end local v8    # "remoteuritype":Lcom/sec/epdg/IWlanEnum$IdentityType;
    .end local v9    # "remoteUri":Ljava/lang/String;
    .end local v10    # "apnType":Ljava/lang/String;
    .end local v11    # "ipsecauthtype":Lcom/sec/epdg/IWlanEnum$IPSecAuthType;
    .end local v12    # "adapterConf":Lcom/sec/epdg/IWlanEnum$AdapterConf;
    .end local v13    # "tunnelmode":Lcom/sec/epdg/IWlanEnum$TunnelModeType;
    .end local v14    # "ipsecencryptiontype":Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;
    .end local v15    # "ipsecintegrity":Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;
    .end local v16    # "ipsecdhgroup":Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;
    .end local v17    # "ipseclifetype":Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;
    .end local v18    # "ipseclifeval":I
    .end local v19    # "ikeversion":Lcom/sec/epdg/IWlanEnum$Ikeversion;
    .end local v20    # "ikeencryption":Lcom/sec/epdg/IWlanEnum$IkeEncryption;
    .end local v21    # "ikeintegrity":Lcom/sec/epdg/IWlanEnum$IkeIntegrity;
    .end local v22    # "ikedhgroup":Lcom/sec/epdg/IWlanEnum$IkeDhGroup;
    .end local v23    # "ikelife":I
    .end local v24    # "ikewindow":I
    .end local v25    # "ikeconntimeout":I
    .end local v26    # "ikedpdtimeout":I
    .end local v27    # "eaptype":Lcom/sec/epdg/IWlanEnum$IkeEapType;
    .end local v28    # "ikenatval":I
    .end local v29    # "pcscfVendorAt":Lcom/sec/epdg/IWlanEnum$PcscfConf;
    .end local v30    # "periodicDpdTimer":I
    .end local v31    # "mobikeval":Lcom/sec/epdg/IWlanEnum$Mobike;
    .end local v32    # "imeiVendorAt":Lcom/sec/epdg/IWlanEnum$Imei;
    .end local v33    # "eaptypeStr":Ljava/lang/String;
    .end local v34    # "ikeconntimeoutStr":Ljava/lang/String;
    .end local v35    # "ikedhgroupStr":Ljava/lang/String;
    .end local v36    # "ikedpdtimeoutStr":Ljava/lang/String;
    .end local v37    # "ikeencryptionStr":Ljava/lang/String;
    .end local v38    # "ikeintegrityStr":Ljava/lang/String;
    .end local v39    # "ikelifeStr":Ljava/lang/String;
    .end local v40    # "ikenatvalStr":Ljava/lang/String;
    .end local v41    # "ikeversionStr":Ljava/lang/String;
    .end local v42    # "ikewindowStr":Ljava/lang/String;
    .end local v43    # "imeiVendorAtStr":Ljava/lang/String;
    .end local v45    # "ipsecauthtypeStr":Ljava/lang/String;
    .end local v46    # "ipsecdhgroupStr":Ljava/lang/String;
    .end local v47    # "ipsecencryptiontypeStr":Ljava/lang/String;
    .end local v48    # "ipsecintegrityStr":Ljava/lang/String;
    .end local v49    # "ipseclifetypeStr":Ljava/lang/String;
    .end local v50    # "ipseclifevalStr":Ljava/lang/String;
    .end local v51    # "iptypeStr":Ljava/lang/String;
    .end local v53    # "mobikevalStr":Ljava/lang/String;
    .end local v54    # "ownUriTypeStr":Ljava/lang/String;
    .end local v55    # "pcscfVendorAtStr":Ljava/lang/String;
    .end local v56    # "pfsvalStr":Ljava/lang/String;
    .end local v57    # "remoteuritypeStr":Ljava/lang/String;
    .end local v58    # "strPeriodicDpdTimer":Ljava/lang/String;
    .end local v59    # "tunnelmodeStr":Ljava/lang/String;
    :cond_12
    const-string v60, "false"

    move-object/from16 v0, v60

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    if-eqz v60, :cond_0

    .line 234
    sget-object v3, Lcom/sec/epdg/IWlanEnum$IPSecUserAuthState;->DISABLED:Lcom/sec/epdg/IWlanEnum$IPSecUserAuthState;

    goto/16 :goto_0

    .line 241
    .restart local v4    # "pfsval":Lcom/sec/epdg/IWlanEnum$PfsState;
    .restart local v56    # "pfsvalStr":Ljava/lang/String;
    :cond_13
    const-string v60, "false"

    move-object/from16 v0, v60

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    if-eqz v60, :cond_1

    .line 242
    sget-object v4, Lcom/sec/epdg/IWlanEnum$PfsState;->DISABLED:Lcom/sec/epdg/IWlanEnum$PfsState;

    goto/16 :goto_1

    .line 249
    .restart local v5    # "iptype":Lcom/sec/epdg/IWlanEnum$IPSecIpType;
    .restart local v51    # "iptypeStr":Ljava/lang/String;
    :cond_14
    const-string v60, "IPV6"

    move-object/from16 v0, v51

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_15

    .line 250
    sget-object v5, Lcom/sec/epdg/IWlanEnum$IPSecIpType;->IP_VERSION_6:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    goto/16 :goto_2

    .line 252
    :cond_15
    sget-object v5, Lcom/sec/epdg/IWlanEnum$IPSecIpType;->IP_VERSION_V4V6:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    goto/16 :goto_2

    .line 259
    .restart local v6    # "ownUriType":Lcom/sec/epdg/IWlanEnum$IdentityType;
    .restart local v54    # "ownUriTypeStr":Ljava/lang/String;
    :cond_16
    const-string v60, "IPV6_ADDR"

    move-object/from16 v0, v54

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_17

    .line 260
    sget-object v6, Lcom/sec/epdg/IWlanEnum$IdentityType;->IPV6_ADDR:Lcom/sec/epdg/IWlanEnum$IdentityType;

    goto/16 :goto_3

    .line 261
    :cond_17
    const-string v60, "FQDN"

    move-object/from16 v0, v54

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_18

    .line 262
    sget-object v6, Lcom/sec/epdg/IWlanEnum$IdentityType;->FQDN:Lcom/sec/epdg/IWlanEnum$IdentityType;

    goto/16 :goto_3

    .line 263
    :cond_18
    const-string v60, "USER_FQDN"

    move-object/from16 v0, v54

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_19

    .line 264
    sget-object v6, Lcom/sec/epdg/IWlanEnum$IdentityType;->USER_FQDN:Lcom/sec/epdg/IWlanEnum$IdentityType;

    goto/16 :goto_3

    .line 265
    :cond_19
    const-string v60, "DN"

    move-object/from16 v0, v54

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_1a

    .line 266
    sget-object v6, Lcom/sec/epdg/IWlanEnum$IdentityType;->DN:Lcom/sec/epdg/IWlanEnum$IdentityType;

    goto/16 :goto_3

    .line 267
    :cond_1a
    const-string v60, "KEY_ID"

    move-object/from16 v0, v54

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_2

    .line 268
    sget-object v6, Lcom/sec/epdg/IWlanEnum$IdentityType;->KEY_ID:Lcom/sec/epdg/IWlanEnum$IdentityType;

    goto/16 :goto_3

    .line 278
    .restart local v7    # "ownUri":Ljava/lang/String;
    .restart local v8    # "remoteuritype":Lcom/sec/epdg/IWlanEnum$IdentityType;
    .restart local v57    # "remoteuritypeStr":Ljava/lang/String;
    :cond_1b
    const-string v60, "IPV6_ADDR"

    move-object/from16 v0, v57

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_1c

    .line 279
    sget-object v8, Lcom/sec/epdg/IWlanEnum$IdentityType;->IPV6_ADDR:Lcom/sec/epdg/IWlanEnum$IdentityType;

    goto/16 :goto_4

    .line 280
    :cond_1c
    const-string v60, "FQDN"

    move-object/from16 v0, v57

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_1d

    .line 281
    sget-object v8, Lcom/sec/epdg/IWlanEnum$IdentityType;->FQDN:Lcom/sec/epdg/IWlanEnum$IdentityType;

    goto/16 :goto_4

    .line 282
    :cond_1d
    const-string v60, "USER_FQDN"

    move-object/from16 v0, v57

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_1e

    .line 283
    sget-object v8, Lcom/sec/epdg/IWlanEnum$IdentityType;->USER_FQDN:Lcom/sec/epdg/IWlanEnum$IdentityType;

    goto/16 :goto_4

    .line 284
    :cond_1e
    const-string v60, "DN"

    move-object/from16 v0, v57

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_1f

    .line 285
    sget-object v8, Lcom/sec/epdg/IWlanEnum$IdentityType;->DN:Lcom/sec/epdg/IWlanEnum$IdentityType;

    goto/16 :goto_4

    .line 286
    :cond_1f
    const-string v60, "KEY_ID"

    move-object/from16 v0, v57

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_3

    .line 287
    sget-object v8, Lcom/sec/epdg/IWlanEnum$IdentityType;->KEY_ID:Lcom/sec/epdg/IWlanEnum$IdentityType;

    goto/16 :goto_4

    .line 300
    .restart local v9    # "remoteUri":Ljava/lang/String;
    .restart local v10    # "apnType":Ljava/lang/String;
    .restart local v11    # "ipsecauthtype":Lcom/sec/epdg/IWlanEnum$IPSecAuthType;
    .restart local v45    # "ipsecauthtypeStr":Ljava/lang/String;
    :cond_20
    const-string v60, "Pre Shared"

    move-object/from16 v0, v45

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_21

    .line 301
    sget-object v11, Lcom/sec/epdg/IWlanEnum$IPSecAuthType;->PRE_SHARED:Lcom/sec/epdg/IWlanEnum$IPSecAuthType;

    goto/16 :goto_5

    .line 302
    :cond_21
    const-string v60, "Public Key"

    move-object/from16 v0, v45

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_4

    .line 303
    sget-object v11, Lcom/sec/epdg/IWlanEnum$IPSecAuthType;->PUBLIC_KEY:Lcom/sec/epdg/IWlanEnum$IPSecAuthType;

    goto/16 :goto_5

    .line 313
    .restart local v12    # "adapterConf":Lcom/sec/epdg/IWlanEnum$AdapterConf;
    .restart local v13    # "tunnelmode":Lcom/sec/epdg/IWlanEnum$TunnelModeType;
    .restart local v59    # "tunnelmodeStr":Ljava/lang/String;
    :cond_22
    const-string v60, "L2TP_OVER_IPSEC"

    invoke-virtual/range {v59 .. v60}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_5

    .line 314
    sget-object v13, Lcom/sec/epdg/IWlanEnum$TunnelModeType;->L2TP_OVER_IPSEC:Lcom/sec/epdg/IWlanEnum$TunnelModeType;

    goto/16 :goto_6

    .line 321
    .restart local v14    # "ipsecencryptiontype":Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;
    .restart local v47    # "ipsecencryptiontypeStr":Ljava/lang/String;
    :cond_23
    const-string v60, "IPSEC_ENCRYPTION_AES_CBC_128"

    move-object/from16 v0, v47

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_24

    .line 323
    sget-object v14, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_CBC_128:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    goto/16 :goto_7

    .line 324
    :cond_24
    const-string v60, "IPSEC_ENCRYPTION_AES_CBC_192"

    move-object/from16 v0, v47

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_25

    .line 326
    sget-object v14, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_CBC_192:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    goto/16 :goto_7

    .line 327
    :cond_25
    const-string v60, "IPSEC_ENCRYPTION_AES_CBC_256"

    move-object/from16 v0, v47

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_26

    .line 329
    sget-object v14, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_CBC_256:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    goto/16 :goto_7

    .line 330
    :cond_26
    const-string v60, "IPSEC_ENCRYPTION_AES_CTR_128"

    move-object/from16 v0, v47

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_27

    .line 332
    sget-object v14, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_CTR_128:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    goto/16 :goto_7

    .line 333
    :cond_27
    const-string v60, "IPSEC_ENCRYPTION_AES_CTR_192"

    move-object/from16 v0, v47

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_28

    .line 335
    sget-object v14, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_CTR_192:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    goto/16 :goto_7

    .line 336
    :cond_28
    const-string v60, "IPSEC_ENCRYPTION_AES_CTR_256"

    move-object/from16 v0, v47

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_29

    .line 338
    sget-object v14, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_CTR_256:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    goto/16 :goto_7

    .line 339
    :cond_29
    const-string v60, "IPSEC_ENCRYPTION_AES_GCM_128"

    move-object/from16 v0, v47

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_2a

    .line 341
    sget-object v14, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_GCM_128:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    goto/16 :goto_7

    .line 342
    :cond_2a
    const-string v60, "IPSEC_ENCRYPTION_AES_GCM_192"

    move-object/from16 v0, v47

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_2b

    .line 344
    sget-object v14, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_GCM_192:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    goto/16 :goto_7

    .line 345
    :cond_2b
    const-string v60, "IPSEC_ENCRYPTION_AES_GCM_256"

    move-object/from16 v0, v47

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_2c

    .line 347
    sget-object v14, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_GCM_256:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    goto/16 :goto_7

    .line 348
    :cond_2c
    const-string v60, "IPSEC_ENCRYPTION_BASIC"

    move-object/from16 v0, v47

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_2d

    .line 349
    sget-object v14, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_BASIC:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    goto/16 :goto_7

    .line 350
    :cond_2d
    const-string v60, "IPSEC_ENCRYPTION_ANY"

    move-object/from16 v0, v47

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_2e

    .line 351
    sget-object v14, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_ANY:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    goto/16 :goto_7

    .line 352
    :cond_2e
    const-string v60, "IPSEC_ENCRYPTION_SUITE_B_GCM_128"

    move-object/from16 v0, v47

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_2f

    .line 354
    sget-object v14, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_SUITE_B_GCM_128:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    goto/16 :goto_7

    .line 355
    :cond_2f
    const-string v60, "IPSEC_ENCRYPTION_SUITE_B_GCM_256"

    move-object/from16 v0, v47

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_6

    .line 357
    sget-object v14, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_SUITE_B_GCM_256:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    goto/16 :goto_7

    .line 364
    .restart local v15    # "ipsecintegrity":Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;
    .restart local v48    # "ipsecintegrityStr":Ljava/lang/String;
    :cond_30
    const-string v60, "IPSEC_INTEGRITY_HMAC_SHA1_96"

    move-object/from16 v0, v48

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_31

    .line 365
    sget-object v15, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_HMAC_SHA1_96:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    goto/16 :goto_8

    .line 366
    :cond_31
    const-string v60, "IPSEC_INTEGRITY_AES_XCBC_MAC_96"

    move-object/from16 v0, v48

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_32

    .line 367
    sget-object v15, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_AES_XCBC_MAC_96:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    goto/16 :goto_8

    .line 368
    :cond_32
    const-string v60, "IPSEC_INTEGRITY_HMAC_SHA_256_128"

    move-object/from16 v0, v48

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_33

    .line 369
    sget-object v15, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_HMAC_SHA_256_128:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    goto/16 :goto_8

    .line 370
    :cond_33
    const-string v60, "IPSEC_INTEGRITY_HMAC_SHA_384_192"

    move-object/from16 v0, v48

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_34

    .line 371
    sget-object v15, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_HMAC_SHA_384_192:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    goto/16 :goto_8

    .line 372
    :cond_34
    const-string v60, "IPSEC_INTEGRITY_HMAC_SHA_512_256"

    move-object/from16 v0, v48

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_35

    .line 373
    sget-object v15, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_HMAC_SHA_512_256:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    goto/16 :goto_8

    .line 374
    :cond_35
    const-string v60, "IPSEC_INTEGRITY_AES_GMAC_128"

    move-object/from16 v0, v48

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_36

    .line 375
    sget-object v15, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_AES_GMAC_128:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    goto/16 :goto_8

    .line 376
    :cond_36
    const-string v60, "IPSEC_INTEGRITY_AES_GMAC_192"

    move-object/from16 v0, v48

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_37

    .line 377
    sget-object v15, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_AES_GMAC_192:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    goto/16 :goto_8

    .line 378
    :cond_37
    const-string v60, "IPSEC_INTEGRITY_AES_GMAC_256"

    move-object/from16 v0, v48

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_38

    .line 379
    sget-object v15, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_AES_GMAC_256:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    goto/16 :goto_8

    .line 380
    :cond_38
    const-string v60, "IPSEC_INTEGRITY_BASIC"

    move-object/from16 v0, v48

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_39

    .line 381
    sget-object v15, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_BASIC:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    goto/16 :goto_8

    .line 382
    :cond_39
    const-string v60, "IPSEC_INTEGRITY_ANY"

    move-object/from16 v0, v48

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_3a

    .line 383
    sget-object v15, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_ANY:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    goto/16 :goto_8

    .line 384
    :cond_3a
    const-string v60, "IPSEC_INTEGRITY_NULL"

    move-object/from16 v0, v48

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_3b

    .line 385
    sget-object v15, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_NULL:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    goto/16 :goto_8

    .line 386
    :cond_3b
    const-string v60, "IPSEC_INTEGRITY_SUITE_B_GCM_128"

    move-object/from16 v0, v48

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_3c

    .line 387
    sget-object v15, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_SUITE_B_GCM_128:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    goto/16 :goto_8

    .line 388
    :cond_3c
    const-string v60, "IPSEC_INTEGRITY_SUITE_B_GCM_256"

    move-object/from16 v0, v48

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_7

    .line 389
    sget-object v15, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_SUITE_B_GCM_256:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    goto/16 :goto_8

    .line 396
    .restart local v16    # "ipsecdhgroup":Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;
    .restart local v46    # "ipsecdhgroupStr":Ljava/lang/String;
    :cond_3d
    const-string v60, "IPSEC_GROUP_MODP_1024"

    move-object/from16 v0, v46

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_3e

    .line 397
    sget-object v16, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_1024:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto/16 :goto_9

    .line 398
    :cond_3e
    const-string v60, "IPSEC_GROUP_MODP_1536"

    move-object/from16 v0, v46

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_3f

    .line 399
    sget-object v16, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_1536:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto/16 :goto_9

    .line 400
    :cond_3f
    const-string v60, "IPSEC_GROUP_MODP_2048"

    move-object/from16 v0, v46

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_40

    .line 401
    sget-object v16, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_2048:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto/16 :goto_9

    .line 402
    :cond_40
    const-string v60, "IPSEC_GROUP_MODP_3072"

    move-object/from16 v0, v46

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_41

    .line 403
    sget-object v16, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_3072:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto/16 :goto_9

    .line 404
    :cond_41
    const-string v60, "IPSEC_GROUP_MODP_4096"

    move-object/from16 v0, v46

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_42

    .line 405
    sget-object v16, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_4096:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto/16 :goto_9

    .line 406
    :cond_42
    const-string v60, "IPSEC_GROUP_MODP_6144"

    move-object/from16 v0, v46

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_43

    .line 407
    sget-object v16, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_6144:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto/16 :goto_9

    .line 408
    :cond_43
    const-string v60, "IPSEC_GROUP_MODP_8192"

    move-object/from16 v0, v46

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_44

    .line 409
    sget-object v16, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_8192:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto/16 :goto_9

    .line 410
    :cond_44
    const-string v60, "IPSEC_GROUP_ECP_256"

    move-object/from16 v0, v46

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_45

    .line 411
    sget-object v16, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_ECP_256:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto/16 :goto_9

    .line 412
    :cond_45
    const-string v60, "IPSEC_GROUP_ECP_384"

    move-object/from16 v0, v46

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_46

    .line 413
    sget-object v16, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_ECP_384:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto/16 :goto_9

    .line 414
    :cond_46
    const-string v60, "IPSEC_GROUP_ECP_521"

    move-object/from16 v0, v46

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_47

    .line 415
    sget-object v16, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_ECP_521:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto/16 :goto_9

    .line 416
    :cond_47
    const-string v60, "IPSEC_GROUP_MODP_1024_160"

    move-object/from16 v0, v46

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_48

    .line 417
    sget-object v16, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_1024_160:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto/16 :goto_9

    .line 418
    :cond_48
    const-string v60, "IPSEC_GROUP_MODP_2048_224"

    move-object/from16 v0, v46

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_49

    .line 419
    sget-object v16, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_2048_224:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto/16 :goto_9

    .line 420
    :cond_49
    const-string v60, "IPSEC_GROUP_MODP_2048_256"

    move-object/from16 v0, v46

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_4a

    .line 421
    sget-object v16, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_2048_256:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto/16 :goto_9

    .line 422
    :cond_4a
    const-string v60, "IPSEC_GROUP_ECP_192"

    move-object/from16 v0, v46

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_4b

    .line 423
    sget-object v16, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_ECP_192:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto/16 :goto_9

    .line 424
    :cond_4b
    const-string v60, "IPSEC_GROUP_ECP_224"

    move-object/from16 v0, v46

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_4c

    .line 425
    sget-object v16, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_ECP_224:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto/16 :goto_9

    .line 426
    :cond_4c
    const-string v60, "IPSEC_GROUP_ANY"

    move-object/from16 v0, v46

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_4d

    .line 427
    sget-object v16, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_ANY:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto/16 :goto_9

    .line 428
    :cond_4d
    const-string v60, "IPSEC_GROUP_ANY_OR_NONE"

    move-object/from16 v0, v46

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_8

    .line 429
    sget-object v16, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_ANY_OR_NONE:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto/16 :goto_9

    .line 436
    .restart local v17    # "ipseclifetype":Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;
    .restart local v49    # "ipseclifetypeStr":Ljava/lang/String;
    :cond_4e
    const-string v60, "IPSEC_LIFE_TYPE_KILOBYTES"

    move-object/from16 v0, v49

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_9

    .line 437
    sget-object v17, Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;->IPSEC_LIFE_TYPE_KILOBYTES:Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;

    goto/16 :goto_a

    .line 449
    .restart local v18    # "ipseclifeval":I
    .restart local v19    # "ikeversion":Lcom/sec/epdg/IWlanEnum$Ikeversion;
    .restart local v41    # "ikeversionStr":Ljava/lang/String;
    .restart local v50    # "ipseclifevalStr":Ljava/lang/String;
    :cond_4f
    const-string v60, "IKE_VERSION_2"

    move-object/from16 v0, v41

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_a

    .line 450
    sget-object v19, Lcom/sec/epdg/IWlanEnum$Ikeversion;->IKE_VERSION_2:Lcom/sec/epdg/IWlanEnum$Ikeversion;

    goto/16 :goto_b

    .line 457
    .restart local v20    # "ikeencryption":Lcom/sec/epdg/IWlanEnum$IkeEncryption;
    .restart local v37    # "ikeencryptionStr":Ljava/lang/String;
    :cond_50
    const-string v60, "IKE_ENCRYPTION_AES_CBC_128"

    move-object/from16 v0, v37

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_51

    .line 458
    sget-object v20, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_CBC_128:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    goto/16 :goto_c

    .line 459
    :cond_51
    const-string v60, "IKE_ENCRYPTION_AES_CBC_192"

    move-object/from16 v0, v37

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_52

    .line 460
    sget-object v20, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_CBC_192:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    goto/16 :goto_c

    .line 461
    :cond_52
    const-string v60, "IKE_ENCRYPTION_AES_CBC_256"

    move-object/from16 v0, v37

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_53

    .line 462
    sget-object v20, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_CBC_256:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    goto/16 :goto_c

    .line 463
    :cond_53
    const-string v60, "IKE_ENCRYPTION_AES_CTR_128"

    move-object/from16 v0, v37

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_54

    .line 464
    sget-object v20, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_CTR_128:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    goto/16 :goto_c

    .line 465
    :cond_54
    const-string v60, "IKE_ENCRYPTION_AES_CTR_192"

    move-object/from16 v0, v37

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_55

    .line 466
    sget-object v20, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_CTR_192:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    goto/16 :goto_c

    .line 467
    :cond_55
    const-string v60, "IKE_ENCRYPTION_AES_CTR_256"

    move-object/from16 v0, v37

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_56

    .line 468
    sget-object v20, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_CTR_256:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    goto/16 :goto_c

    .line 469
    :cond_56
    const-string v60, "IKE_ENCRYPTION_AES_GCM_128"

    move-object/from16 v0, v37

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_57

    .line 470
    sget-object v20, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_GCM_128:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    goto/16 :goto_c

    .line 471
    :cond_57
    const-string v60, "IKE_ENCRYPTION_AES_GCM_192"

    move-object/from16 v0, v37

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_58

    .line 472
    sget-object v20, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_GCM_192:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    goto/16 :goto_c

    .line 473
    :cond_58
    const-string v60, "IKE_ENCRYPTION_AES_GCM_256"

    move-object/from16 v0, v37

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_59

    .line 474
    sget-object v20, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_GCM_256:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    goto/16 :goto_c

    .line 475
    :cond_59
    const-string v60, "IKE_ENCRYPTION_BASIC"

    move-object/from16 v0, v37

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_5a

    .line 476
    sget-object v20, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_BASIC:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    goto/16 :goto_c

    .line 477
    :cond_5a
    const-string v60, "IKE_ENCRYPTION_ANY"

    move-object/from16 v0, v37

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_5b

    .line 478
    sget-object v20, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_ANY:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    goto/16 :goto_c

    .line 479
    :cond_5b
    const-string v60, "IKE_ENCRYPTION_SUITE_B_GCM_128"

    move-object/from16 v0, v37

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_5c

    .line 480
    sget-object v20, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_SUITE_B_GCM_128:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    goto/16 :goto_c

    .line 481
    :cond_5c
    const-string v60, "IKE_ENCRYPTION_SUITE_B_GCM_256"

    move-object/from16 v0, v37

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_b

    .line 482
    sget-object v20, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_SUITE_B_GCM_256:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    goto/16 :goto_c

    .line 489
    .restart local v21    # "ikeintegrity":Lcom/sec/epdg/IWlanEnum$IkeIntegrity;
    .restart local v38    # "ikeintegrityStr":Ljava/lang/String;
    :cond_5d
    const-string v60, "IKE_INTEGRITY_HMAC_SHA1_96"

    move-object/from16 v0, v38

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_5e

    .line 490
    sget-object v21, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_HMAC_SHA1_96:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    goto/16 :goto_d

    .line 491
    :cond_5e
    const-string v60, "IKE_INTEGRITY_AES_XCBC_MAC_96"

    move-object/from16 v0, v38

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_5f

    .line 492
    sget-object v21, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_AES_XCBC_MAC_96:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    goto/16 :goto_d

    .line 493
    :cond_5f
    const-string v60, "IKE_INTEGRITY_HMAC_SHA_256_128"

    move-object/from16 v0, v38

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_60

    .line 494
    sget-object v21, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_HMAC_SHA_256_128:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    goto/16 :goto_d

    .line 495
    :cond_60
    const-string v60, "IKE_INTEGRITY_HMAC_SHA_384_192"

    move-object/from16 v0, v38

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_61

    .line 496
    sget-object v21, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_HMAC_SHA_384_192:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    goto/16 :goto_d

    .line 497
    :cond_61
    const-string v60, "IKE_INTEGRITY_HMAC_SHA_512_256"

    move-object/from16 v0, v38

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_62

    .line 498
    sget-object v21, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_HMAC_SHA_512_256:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    goto/16 :goto_d

    .line 499
    :cond_62
    const-string v60, "IKE_INTEGRITY_BASIC"

    move-object/from16 v0, v38

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_63

    .line 500
    sget-object v21, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_BASIC:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    goto/16 :goto_d

    .line 501
    :cond_63
    const-string v60, "IKE_INTEGRITY_ANY"

    move-object/from16 v0, v38

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_64

    .line 502
    sget-object v21, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_ANY:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    goto/16 :goto_d

    .line 503
    :cond_64
    const-string v60, "IKE_INTEGRITY_SUITE_B_GCM_128"

    move-object/from16 v0, v38

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_65

    .line 504
    sget-object v21, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_SUITE_B_GCM_128:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    goto/16 :goto_d

    .line 505
    :cond_65
    const-string v60, "IPSEC_INTEGRITY_SUITE_B_GCM_256"

    move-object/from16 v0, v38

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_c

    .line 506
    sget-object v21, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_SUITE_B_GCM_256:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    goto/16 :goto_d

    .line 513
    .restart local v22    # "ikedhgroup":Lcom/sec/epdg/IWlanEnum$IkeDhGroup;
    .restart local v35    # "ikedhgroupStr":Ljava/lang/String;
    :cond_66
    const-string v60, "IKE_GROUP_MODP_1024"

    move-object/from16 v0, v35

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_67

    .line 514
    sget-object v22, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_1024:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto/16 :goto_e

    .line 515
    :cond_67
    const-string v60, "IKE_GROUP_MODP_1536"

    move-object/from16 v0, v35

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_68

    .line 516
    sget-object v22, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_1536:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto/16 :goto_e

    .line 517
    :cond_68
    const-string v60, "IKE_GROUP_MODP_2048"

    move-object/from16 v0, v35

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_69

    .line 518
    sget-object v22, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_2048:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto/16 :goto_e

    .line 519
    :cond_69
    const-string v60, "IKE_GROUP_MODP_3072"

    move-object/from16 v0, v35

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_6a

    .line 520
    sget-object v22, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_3072:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto/16 :goto_e

    .line 521
    :cond_6a
    const-string v60, "IKE_GROUP_MODP_4096"

    move-object/from16 v0, v35

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_6b

    .line 522
    sget-object v22, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_4096:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto/16 :goto_e

    .line 523
    :cond_6b
    const-string v60, "IKE_GROUP_MODP_6144"

    move-object/from16 v0, v35

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_6c

    .line 524
    sget-object v22, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_6144:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto/16 :goto_e

    .line 525
    :cond_6c
    const-string v60, "IKE_GROUP_MODP_8192"

    move-object/from16 v0, v35

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_6d

    .line 526
    sget-object v22, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_8192:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto/16 :goto_e

    .line 527
    :cond_6d
    const-string v60, "IKE_GROUP_ECP_256"

    move-object/from16 v0, v35

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_6e

    .line 528
    sget-object v22, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_ECP_256:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto/16 :goto_e

    .line 529
    :cond_6e
    const-string v60, "IKE_GROUP_ECP_384"

    move-object/from16 v0, v35

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_6f

    .line 530
    sget-object v22, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_ECP_384:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto/16 :goto_e

    .line 531
    :cond_6f
    const-string v60, "IKE_GROUP_ECP_521"

    move-object/from16 v0, v35

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_70

    .line 532
    sget-object v22, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_ECP_521:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto/16 :goto_e

    .line 533
    :cond_70
    const-string v60, "IKE_GROUP_MODP_1024_160"

    move-object/from16 v0, v35

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_71

    .line 534
    sget-object v22, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_1024_160:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto/16 :goto_e

    .line 535
    :cond_71
    const-string v60, "IKE_GROUP_MODP_2048_224"

    move-object/from16 v0, v35

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_72

    .line 536
    sget-object v22, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_2048_224:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto/16 :goto_e

    .line 537
    :cond_72
    const-string v60, "IKE_GROUP_MODP_2048_256"

    move-object/from16 v0, v35

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_73

    .line 538
    sget-object v22, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_2048_256:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto/16 :goto_e

    .line 539
    :cond_73
    const-string v60, "IKE_GROUP_ECP_192"

    move-object/from16 v0, v35

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_74

    .line 540
    sget-object v22, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_ECP_192:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto/16 :goto_e

    .line 541
    :cond_74
    const-string v60, "IKE_GROUP_ECP_224"

    move-object/from16 v0, v35

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_75

    .line 542
    sget-object v22, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_ECP_224:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto/16 :goto_e

    .line 543
    :cond_75
    const-string v60, "IKE_GROUP_ANY"

    move-object/from16 v0, v35

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_76

    .line 544
    sget-object v22, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_ANY:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto/16 :goto_e

    .line 545
    :cond_76
    const-string v60, "IKE_GROUP_SUITE_B_GCM_128"

    move-object/from16 v0, v35

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_77

    .line 546
    sget-object v22, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_SUITE_B_GCM_128:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto/16 :goto_e

    .line 547
    :cond_77
    const-string v60, "IKE_GROUP_SUITE_B_GCM_256"

    move-object/from16 v0, v35

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_d

    .line 548
    sget-object v22, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_SUITE_B_GCM_256:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto/16 :goto_e

    .line 575
    .restart local v23    # "ikelife":I
    .restart local v24    # "ikewindow":I
    .restart local v25    # "ikeconntimeout":I
    .restart local v26    # "ikedpdtimeout":I
    .restart local v27    # "eaptype":Lcom/sec/epdg/IWlanEnum$IkeEapType;
    .restart local v33    # "eaptypeStr":Ljava/lang/String;
    .restart local v34    # "ikeconntimeoutStr":Ljava/lang/String;
    .restart local v36    # "ikedpdtimeoutStr":Ljava/lang/String;
    .restart local v39    # "ikelifeStr":Ljava/lang/String;
    .restart local v42    # "ikewindowStr":Ljava/lang/String;
    :cond_78
    const-string v60, "EAP_METHOD_SIM"

    move-object/from16 v0, v33

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_79

    .line 576
    sget-object v27, Lcom/sec/epdg/IWlanEnum$IkeEapType;->EAP_METHOD_SIM:Lcom/sec/epdg/IWlanEnum$IkeEapType;

    goto/16 :goto_f

    .line 577
    :cond_79
    const-string v60, "EAP_METHOD_AKA"

    move-object/from16 v0, v33

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_7a

    .line 578
    sget-object v27, Lcom/sec/epdg/IWlanEnum$IkeEapType;->EAP_METHOD_AKA:Lcom/sec/epdg/IWlanEnum$IkeEapType;

    goto/16 :goto_f

    .line 579
    :cond_7a
    const-string v60, "EAP_METHOD_MSCHAPV2"

    move-object/from16 v0, v33

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_e

    .line 580
    sget-object v27, Lcom/sec/epdg/IWlanEnum$IkeEapType;->EAP_METHOD_MSCHAPV2:Lcom/sec/epdg/IWlanEnum$IkeEapType;

    goto/16 :goto_f

    .line 592
    .restart local v28    # "ikenatval":I
    .restart local v29    # "pcscfVendorAt":Lcom/sec/epdg/IWlanEnum$PcscfConf;
    .restart local v40    # "ikenatvalStr":Ljava/lang/String;
    .restart local v55    # "pcscfVendorAtStr":Ljava/lang/String;
    :cond_7b
    const-string v60, "P-CSCF-V4"

    move-object/from16 v0, v55

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_7c

    .line 593
    sget-object v29, Lcom/sec/epdg/IWlanEnum$PcscfConf;->PCSCF_CONF_V4:Lcom/sec/epdg/IWlanEnum$PcscfConf;

    goto/16 :goto_10

    .line 594
    :cond_7c
    const-string v60, "P-CSCF-V6"

    move-object/from16 v0, v55

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_7d

    .line 595
    sget-object v29, Lcom/sec/epdg/IWlanEnum$PcscfConf;->PCSCF_CONF_V6:Lcom/sec/epdg/IWlanEnum$PcscfConf;

    goto/16 :goto_10

    .line 596
    :cond_7d
    const-string v60, "P-CSCF-V4V6"

    move-object/from16 v0, v55

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_f

    .line 597
    sget-object v29, Lcom/sec/epdg/IWlanEnum$PcscfConf;->PCSCF_CONF_V4V6:Lcom/sec/epdg/IWlanEnum$PcscfConf;

    goto/16 :goto_10

    .line 604
    .restart local v31    # "mobikeval":Lcom/sec/epdg/IWlanEnum$Mobike;
    .restart local v53    # "mobikevalStr":Ljava/lang/String;
    :cond_7e
    const-string v60, "false"

    move-object/from16 v0, v60

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    if-eqz v60, :cond_10

    .line 605
    sget-object v31, Lcom/sec/epdg/IWlanEnum$Mobike;->DISABLED:Lcom/sec/epdg/IWlanEnum$Mobike;

    goto/16 :goto_11

    .line 612
    .restart local v32    # "imeiVendorAt":Lcom/sec/epdg/IWlanEnum$Imei;
    .restart local v43    # "imeiVendorAtStr":Ljava/lang/String;
    :cond_7f
    const-string v60, "DEVICEIMEI"

    move-object/from16 v0, v43

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_11

    .line 613
    sget-object v32, Lcom/sec/epdg/IWlanEnum$Imei;->DEVICE_IMEI:Lcom/sec/epdg/IWlanEnum$Imei;

    goto/16 :goto_12
.end method

.method public static declared-synchronized getInstance()Lcom/sec/epdg/EpdgContentReader;
    .locals 2

    .prologue
    .line 106
    const-class v1, Lcom/sec/epdg/EpdgContentReader;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/epdg/EpdgContentReader;->mEpdgReadInstance:Lcom/sec/epdg/EpdgContentReader;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Lcom/sec/epdg/EpdgContentReader;

    invoke-direct {v0}, Lcom/sec/epdg/EpdgContentReader;-><init>()V

    sput-object v0, Lcom/sec/epdg/EpdgContentReader;->mEpdgReadInstance:Lcom/sec/epdg/EpdgContentReader;

    .line 109
    :cond_0
    sget-object v0, Lcom/sec/epdg/EpdgContentReader;->mEpdgReadInstance:Lcom/sec/epdg/EpdgContentReader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized createIWlanApnList(Landroid/content/Context;)V
    .locals 13
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 114
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 115
    .local v0, "cr":Landroid/content/ContentResolver;
    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    const-string v4, "content"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "iwlansettings"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "todos"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 117
    .local v1, "uri":Landroid/net/Uri;
    const/16 v3, 0x20

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "operatornumeric"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "connname"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "apnname"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "authtype"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "subnettype"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "userauthtype"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "pfs"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "ownuritype"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "ownidentity"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "remoteuritype"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "remoteidentity"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "tunneltype"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "ipsecencryption"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "ipsecintegrity"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "ipsecgroup"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "ipseclifetime"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "ipseclifevalue"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "ikeversion"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "ikeencryption"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "ikeintegrity"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "ikegroup"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "ikeeaptype"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "ikelife"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "ikewindowsize"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "ikedpdtimeout"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "ikeconnectiontimeout"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "ikenatvalue"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "ikevirtualadaptername"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string v4, "vendorattribute"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string v4, "imei"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string v4, "mobike"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string v4, "periodicdpdtimer"

    aput-object v4, v2, v3

    .line 129
    .local v2, "projection":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 130
    .local v9, "operatorNumeric":Ljava/lang/String;
    const-string v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telephony/TelephonyManager;

    .line 132
    .local v11, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v11, :cond_a

    .line 133
    const/4 v7, 0x0

    .line 134
    .local v7, "imsi":Ljava/lang/String;
    const/4 v10, -0x1

    .line 135
    .local v10, "subscription":I
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isDualSimModel()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 136
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v3

    invoke-static {p1, v3}, Lcom/sec/epdg/EpdgUtils;->getImsi(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    .line 140
    :goto_0
    if-eqz v7, :cond_8

    const-string v3, ""

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x6

    if-le v3, v4, :cond_8

    .line 141
    const-string v3, "[DBREADER]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IMSI is correct, moving further for operator. IMSI is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUserBinary()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v7, "suppressed in user binary"

    .end local v7    # "imsi":Ljava/lang/String;
    :cond_0
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getSimOperator()Ljava/lang/String;

    move-result-object v9

    .line 144
    if-eqz v9, :cond_6

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_6

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x6

    if-gt v3, v4, :cond_6

    .line 146
    const-string v4, "[DBREADER]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "operatorNumeric is: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUserBinary()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "suppressed in user binary"

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v3, "311480"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 149
    const-string v3, "ril.epdg.simVZW"

    const-string v4, "true"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "operatornumeric=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 170
    .local v8, "messagesCursor":Landroid/database/Cursor;
    const/4 v12, 0x0

    .line 173
    .local v12, "useDummyDefault":Z
    if-eqz v8, :cond_b

    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_b

    .line 174
    :goto_3
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 175
    invoke-direct {p0, v8}, Lcom/sec/epdg/EpdgContentReader;->addIwlanApn(Landroid/database/Cursor;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    .line 181
    :catch_0
    move-exception v6

    .line 182
    .local v6, "e":Ljava/lang/NumberFormatException;
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 183
    const-string v3, "[DBREADER]"

    const-string v4, "iwlanapn settings corrupted"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 188
    if-eqz v8, :cond_1

    .line 189
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 190
    const/4 v8, 0x0

    .line 194
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    :goto_4
    const/4 v3, 0x1

    if-ne v12, v3, :cond_2

    .line 195
    const-string v9, "00101"

    .line 196
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "operatornumeric=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v8

    .line 199
    if-eqz v8, :cond_e

    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_e

    .line 200
    :goto_5
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 201
    invoke-direct {p0, v8}, Lcom/sec/epdg/EpdgContentReader;->addIwlanApn(Landroid/database/Cursor;)V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_5

    .line 207
    :catch_1
    move-exception v6

    .line 208
    .restart local v6    # "e":Ljava/lang/NumberFormatException;
    :try_start_5
    invoke-virtual {v6}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 209
    const-string v3, "[DBREADER]"

    const-string v4, "iwlanapn settings corrupted"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 214
    if-eqz v8, :cond_2

    .line 215
    :try_start_6
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 216
    const/4 v8, 0x0

    .line 220
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    :goto_6
    monitor-exit p0

    return-void

    .line 138
    .end local v8    # "messagesCursor":Landroid/database/Cursor;
    .end local v12    # "useDummyDefault":Z
    .restart local v7    # "imsi":Ljava/lang/String;
    :cond_3
    :try_start_7
    invoke-static {p1, v10}, Lcom/sec/epdg/EpdgUtils;->getImsi(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .end local v7    # "imsi":Ljava/lang/String;
    :cond_4
    move-object v3, v9

    .line 146
    goto/16 :goto_1

    .line 151
    :cond_5
    const-string v3, "ril.epdg.simVZW"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2

    .line 114
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v9    # "operatorNumeric":Ljava/lang/String;
    .end local v10    # "subscription":I
    .end local v11    # "tm":Landroid/telephony/TelephonyManager;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 154
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v2    # "projection":[Ljava/lang/String;
    .restart local v9    # "operatorNumeric":Ljava/lang/String;
    .restart local v10    # "subscription":I
    .restart local v11    # "tm":Landroid/telephony/TelephonyManager;
    :cond_6
    :try_start_8
    const-string v3, "[DBREADER]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "operatorNumeric is not correct, posting exception. operatorNumeric is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUserBinary()Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v9, "suppressed in user binary"

    .end local v9    # "operatorNumeric":Ljava/lang/String;
    :cond_7
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "operatorNumeric is not correct"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 159
    .restart local v7    # "imsi":Ljava/lang/String;
    .restart local v9    # "operatorNumeric":Ljava/lang/String;
    :cond_8
    const-string v3, "[DBREADER]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "imsi is not correct, posting exception. Imsi is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUserBinary()Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v7, "suppressed in user binary"

    .end local v7    # "imsi":Ljava/lang/String;
    :cond_9
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "imsi is not correct"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 164
    .end local v10    # "subscription":I
    :cond_a
    const-string v3, "[DBREADER]"

    const-string v4, "Telephony manager instance is null, posting exception"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Telephony manager instance is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 178
    .restart local v8    # "messagesCursor":Landroid/database/Cursor;
    .restart local v10    # "subscription":I
    .restart local v12    # "useDummyDefault":Z
    :cond_b
    :try_start_9
    const-string v3, "[DBREADER]"

    const-string v4, "iwlansettings - message cursor is null or entries returned <= 0"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 179
    const/4 v12, 0x1

    .line 188
    :cond_c
    if-eqz v8, :cond_1

    .line 189
    :try_start_a
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 190
    const/4 v8, 0x0

    goto/16 :goto_4

    .line 184
    :catch_2
    move-exception v6

    .line 185
    .local v6, "e":Ljava/lang/IllegalStateException;
    :try_start_b
    invoke-virtual {v6}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 186
    const-string v3, "[DBREADER]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "caught:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 188
    if-eqz v8, :cond_1

    .line 189
    :try_start_c
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 190
    const/4 v8, 0x0

    goto/16 :goto_4

    .line 188
    .end local v6    # "e":Ljava/lang/IllegalStateException;
    :catchall_1
    move-exception v3

    if-eqz v8, :cond_d

    .line 189
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 190
    const/4 v8, 0x0

    :cond_d
    throw v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 204
    :cond_e
    :try_start_d
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "iwlansettings - message cursor is null or entries returned <= 0"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 210
    :catch_3
    move-exception v6

    .line 211
    .restart local v6    # "e":Ljava/lang/IllegalStateException;
    :try_start_e
    invoke-virtual {v6}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 212
    const-string v3, "[DBREADER]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "caught:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 214
    if-eqz v8, :cond_2

    .line 215
    :try_start_f
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 216
    const/4 v8, 0x0

    goto/16 :goto_6

    .line 214
    .end local v6    # "e":Ljava/lang/IllegalStateException;
    :cond_f
    if-eqz v8, :cond_2

    .line 215
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 216
    const/4 v8, 0x0

    goto/16 :goto_6

    .line 214
    :catchall_2
    move-exception v3

    if-eqz v8, :cond_10

    .line 215
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 216
    const/4 v8, 0x0

    :cond_10
    throw v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
.end method

.method public getEpdgSettings()Lcom/sec/epdg/EpdgSettings;
    .locals 1

    .prologue
    .line 1075
    sget-object v0, Lcom/sec/epdg/EpdgContentReader;->mEpdgReadInstance:Lcom/sec/epdg/EpdgContentReader;

    iget-object v0, v0, Lcom/sec/epdg/EpdgContentReader;->epdgSettings:Lcom/sec/epdg/EpdgSettings;

    return-object v0
.end method

.method public getIWlanApnList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/epdg/IWlanApnSetting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 633
    sget-object v0, Lcom/sec/epdg/EpdgContentReader;->mEpdgReadInstance:Lcom/sec/epdg/EpdgContentReader;

    iget-object v0, v0, Lcom/sec/epdg/EpdgContentReader;->iWlanApns:Ljava/util/ArrayList;

    return-object v0
.end method

.method public declared-synchronized readEpdgSettings(Landroid/content/Context;)V
    .locals 13
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 738
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 739
    .local v0, "cr":Landroid/content/ContentResolver;
    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    const-string v4, "content"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "iwlansettings"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "todos"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "epdgsettings"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 741
    .local v1, "uri":Landroid/net/Uri;
    const/16 v3, 0x33

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "operatornumeric"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "smartwifirssia"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "smartwifirssib"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "smartwifirssic"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "smartwifirssiroveinwifionly"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "smartwifirssiroveoutwifionly"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "smartwifirssiroveinvoice"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "smartwifirsrp1"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "smartwifirsrp2"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "smartwifirsrp3"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "smartwificdmarssi"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "smartpktlosspercent"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "threshold4grovein"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "threshold4groveout"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "threshold3grovein"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "threshold3groveout"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "threshold2grovein"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "threshold2groveout"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "sysseltimer"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "tepdgltetimer"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "tepdg1xtimer"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "tepdg1xScantimer"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "hodelaytimer"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "wifirssiintentdelaytimer"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "wifiipconfigtimer"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "idimac"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "idiimsi"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "retry_enabled_for_always_on_apn"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string v4, "smartwifitimer"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string v4, "internet_pdn_keep_alive_timer"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string v4, "epdgserverip"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string v4, "dynamic_fqdn"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string v4, "dynamic_userfqdn"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string v4, "smart_wifi_ans_integration"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string v4, "smart_wifi_rtcp_integration"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string v4, "broadcast_ho_result"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string v4, "attach_pdn"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string v4, "alwayson_apntype"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string v4, "vowifi_pref"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string v4, "ondemand_pdn_handoff"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string v4, "is_throttle_enabled"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string v4, "pcscfv4vendorattr"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string v4, "pcscfv6vendorattr"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string v4, "imeivendorattr"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string v4, "netinterfacenum"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string v4, "emergency_apntype"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string v4, "is_dpd_allowed_in_connected_mode"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string v4, "is_ipv6_enabled"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string v4, "is_ipv6_preferred"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string v4, "certi_path"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string v4, "is_using_certi"

    aput-object v4, v2, v3

    .line 757
    .local v2, "projection":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 758
    .local v9, "operatorNumeric":Ljava/lang/String;
    const-string v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telephony/TelephonyManager;

    .line 760
    .local v11, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v11, :cond_a

    .line 761
    const/4 v7, 0x0

    .line 762
    .local v7, "imsi":Ljava/lang/String;
    const/4 v10, -0x1

    .line 763
    .local v10, "subscription":I
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isDualSimModel()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 764
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v3

    invoke-static {p1, v3}, Lcom/sec/epdg/EpdgUtils;->getImsi(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    .line 768
    :goto_0
    if-eqz v7, :cond_8

    const-string v3, ""

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x6

    if-le v3, v4, :cond_8

    .line 769
    const-string v3, "[DBREADER]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IMSI is correct, moving further for operator. IMSI is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUserBinary()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v7, "suppressed in user binary"

    .end local v7    # "imsi":Ljava/lang/String;
    :cond_0
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getSimOperator()Ljava/lang/String;

    move-result-object v9

    .line 772
    if-eqz v9, :cond_6

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_6

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x6

    if-gt v3, v4, :cond_6

    .line 774
    const-string v4, "[DBREADER]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "operatorNumeric is: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUserBinary()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "suppressed in user binary"

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    const-string v3, "311480"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 777
    const-string v3, "ril.epdg.simVZW"

    const-string v4, "true"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "operatornumeric=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 798
    .local v8, "messagesCursor":Landroid/database/Cursor;
    const/4 v12, 0x0

    .line 801
    .local v12, "useDummyDefault":Z
    if-eqz v8, :cond_b

    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_b

    .line 802
    :goto_3
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 803
    invoke-direct {p0, v8}, Lcom/sec/epdg/EpdgContentReader;->addEpdgSetting(Landroid/database/Cursor;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    .line 809
    :catch_0
    move-exception v6

    .line 810
    .local v6, "e":Ljava/lang/NumberFormatException;
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 811
    const-string v3, "[DBREADER]"

    const-string v4, "epdg settings corrupted"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 816
    if-eqz v8, :cond_1

    .line 817
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 818
    const/4 v8, 0x0

    .line 822
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    :goto_4
    const/4 v3, 0x1

    if-ne v12, v3, :cond_2

    .line 823
    const-string v9, "00101"

    .line 824
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "operatornumeric=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v8

    .line 827
    if-eqz v8, :cond_e

    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_e

    .line 828
    :goto_5
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 829
    invoke-direct {p0, v8}, Lcom/sec/epdg/EpdgContentReader;->addEpdgSetting(Landroid/database/Cursor;)V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_5

    .line 835
    :catch_1
    move-exception v6

    .line 836
    .restart local v6    # "e":Ljava/lang/NumberFormatException;
    :try_start_5
    invoke-virtual {v6}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 837
    const-string v3, "[DBREADER]"

    const-string v4, "epdg settings corrupted"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 842
    if-eqz v8, :cond_2

    .line 843
    :try_start_6
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 844
    const/4 v8, 0x0

    .line 848
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    :goto_6
    monitor-exit p0

    return-void

    .line 766
    .end local v8    # "messagesCursor":Landroid/database/Cursor;
    .end local v12    # "useDummyDefault":Z
    .restart local v7    # "imsi":Ljava/lang/String;
    :cond_3
    :try_start_7
    invoke-static {p1, v10}, Lcom/sec/epdg/EpdgUtils;->getImsi(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .end local v7    # "imsi":Ljava/lang/String;
    :cond_4
    move-object v3, v9

    .line 774
    goto/16 :goto_1

    .line 779
    :cond_5
    const-string v3, "ril.epdg.simVZW"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2

    .line 738
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v9    # "operatorNumeric":Ljava/lang/String;
    .end local v10    # "subscription":I
    .end local v11    # "tm":Landroid/telephony/TelephonyManager;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 782
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v2    # "projection":[Ljava/lang/String;
    .restart local v9    # "operatorNumeric":Ljava/lang/String;
    .restart local v10    # "subscription":I
    .restart local v11    # "tm":Landroid/telephony/TelephonyManager;
    :cond_6
    :try_start_8
    const-string v3, "[DBREADER]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "operatorNumeric is not correct, posting exception. operatorNumeric is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUserBinary()Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v9, "suppressed in user binary"

    .end local v9    # "operatorNumeric":Ljava/lang/String;
    :cond_7
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "operatorNumeric is not correct"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 787
    .restart local v7    # "imsi":Ljava/lang/String;
    .restart local v9    # "operatorNumeric":Ljava/lang/String;
    :cond_8
    const-string v3, "[DBREADER]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "imsi is not correct, posting exception. Imsi is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUserBinary()Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v7, "suppressed in user binary"

    .end local v7    # "imsi":Ljava/lang/String;
    :cond_9
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "imsi is not correct"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 792
    .end local v10    # "subscription":I
    :cond_a
    const-string v3, "[DBREADER]"

    const-string v4, "Telephony manager instance is null, posting exception"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Telephony manager instance is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 806
    .restart local v8    # "messagesCursor":Landroid/database/Cursor;
    .restart local v10    # "subscription":I
    .restart local v12    # "useDummyDefault":Z
    :cond_b
    :try_start_9
    const-string v3, "[DBREADER]"

    const-string v4, "EpdgSettings - message cursor is null or entries returned <= 0"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 807
    const/4 v12, 0x1

    .line 816
    :cond_c
    if-eqz v8, :cond_1

    .line 817
    :try_start_a
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 818
    const/4 v8, 0x0

    goto/16 :goto_4

    .line 812
    :catch_2
    move-exception v6

    .line 813
    .local v6, "e":Ljava/lang/IllegalStateException;
    :try_start_b
    invoke-virtual {v6}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 814
    const-string v3, "[DBREADER]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "caught:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 816
    if-eqz v8, :cond_1

    .line 817
    :try_start_c
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 818
    const/4 v8, 0x0

    goto/16 :goto_4

    .line 816
    .end local v6    # "e":Ljava/lang/IllegalStateException;
    :catchall_1
    move-exception v3

    if-eqz v8, :cond_d

    .line 817
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 818
    const/4 v8, 0x0

    :cond_d
    throw v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 832
    :cond_e
    :try_start_d
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "EpdgSettings - message cursor is null or entries returned <= 0"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 838
    :catch_3
    move-exception v6

    .line 839
    .restart local v6    # "e":Ljava/lang/IllegalStateException;
    :try_start_e
    invoke-virtual {v6}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 840
    const-string v3, "[DBREADER]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "caught:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 842
    if-eqz v8, :cond_2

    .line 843
    :try_start_f
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 844
    const/4 v8, 0x0

    goto/16 :goto_6

    .line 842
    .end local v6    # "e":Ljava/lang/IllegalStateException;
    :cond_f
    if-eqz v8, :cond_2

    .line 843
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 844
    const/4 v8, 0x0

    goto/16 :goto_6

    .line 842
    :catchall_2
    move-exception v3

    if-eqz v8, :cond_10

    .line 843
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 844
    const/4 v8, 0x0

    :cond_10
    throw v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
.end method

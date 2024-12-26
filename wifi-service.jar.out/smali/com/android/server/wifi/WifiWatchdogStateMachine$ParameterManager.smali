.class Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
.super Ljava/lang/Object;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ParameterManager"
.end annotation


# instance fields
.field public final AGG_LIST:[Ljava/lang/String;

.field public final AggressiveModeHigherPassBytes:I

.field public final AggressiveModeMonitorLinkLoss:I

.field public final AggressiveModeQCTriggerByRssi:I

.field public final DATA_RATE_THRESHOLD:I

.field public final DATA_RATE_THRESHOLD_AGG_MODE:I

.field public final DEFAULT_DNS_PING_TIMEOUT_MS:I

.field public final DEFAULT_ENHANCED_QC_SETS:I

.field public final DEFAULT_ENHANCED_TARGET_RSSI:I

.field public final DEFAULT_GOOD_RX_PACKETS_BASE:I

.field public final DEFAULT_MIN_DNS_RESPONSES:I

.field public final DEFAULT_MSS:I

.field public final DEFAULT_NO_RX_PACKETS_LIMIT:I

.field public final DEFAULT_NUM_DNS_PINGS:I

.field public final DEFAULT_PACKET_SIZE:I

.field public final DEFAULT_PASS_PACKETS:I

.field public final DEFAULT_POOR_RX_PACKETS_LIMIT:I

.field public final DEFAULT_QC_PASS_BYTES_FOR_IPV6:I

.field public final DEFAULT_QC_PASS_BYTES_FOR_SNS_DISABLED_CONNECTION_WARNING:I

.field public final DEFAULT_QC_REPEAT:I

.field public final DEFAULT_QC_SETS:I

.field public final DEFAULT_QC_TIMEOUT_SEC:I

.field public final DEFAULT_RESTORE_TARGET_RSSI_SEC:I

.field public final DEFAULT_URL:Ljava/lang/String;

.field public DEFAULT_URL_STRING:Ljava/lang/String;

.field public final DEFAULT_URL_STRING_CHINA:Ljava/lang/String;

.field public final DNS_INTRATEST_PING_INTERVAL_MS:I

.field public final DNS_START_DELAY_MS:I

.field public final ENHANCED_QC_INTERVAL_SEC:I

.field public final FD_DISCONNECT_DEVIATION_EMA_THRESHOLD:D

.field public FD_DISCONNECT_THRESHOLD:D

.field public FD_EMA_ALPHA:I

.field public FD_EVALUATE_COUNT:I

.field public FD_EVAL_LEAD_TIME:I

.field public FD_MA_UNIT:I

.field public FD_MA_UNIT_SAMPLE_COUNT:I

.field public final FD_RAW_RSSI_SIZE:I

.field public FD_RSSI_LOW_THRESHOLD:I

.field public final FD_RSSI_SLOPE_EXP_COEFFICIENT:D

.field public final LIST1:[Ljava/lang/String;

.field public final LIST2:[Ljava/lang/String;

.field public final LIST3:[Ljava/lang/String;

.field public final PATH_OF_RESULT:Ljava/lang/String;

.field public final QC_ALLOWED_REDIRECT_COUNT:I

.field public final QC_CONNECTION_TIMEOUT_SEC:I

.field public final QC_HANDLER_NUM:I

.field public final QC_HTTP_GET_BUFFER_SIZE:I

.field public final QC_INIT_ID:I

.field public final QC_RETRY_LIMIT:I

.field public final QC_SSL_HANDSHAKE_TIMEOUT_SEC:I

.field public final RSSI_THRESHOLD:I

.field public final RSSI_THRESHOLD_AGG_MODE_2G:I

.field public final RSSI_THRESHOLD_AGG_MODE_5G:I

.field public final SMARTCM_VALUE_FILE:Ljava/lang/String;

.field public final SOCKET_CONNECTION_NO_RESPONSE_TIMEOUT:I

.field public final TCP_HEADER_SIZE:I

.field public final TEST_LIST:[Ljava/lang/String;

.field public final VERIFYING_STATE_PASS_PACKETS:I

.field public final VERIFYING_STATE_PASS_PACKETS_AGGRESSIVE_MODE:I

.field public WEAK_SIGNAL_FREQUENT_QC_CYCLE_SEC:I

.field public WEAK_SIGNAL_POOR_DETECTED_RSSI_MIN:I

.field public final WLANQCPATH_PROP_NAME:Ljava/lang/String;

.field public mAggressiveModeFeatureEnabled:[Z

.field public mCancelledEnhancedQCId:I

.field public mDataRateThreshold:I

.field public mDataRateThresholdAggMode:I

.field public mDnsNumPings:I

.field public mEnhancedQCEnabled:Z

.field public mGoodRxPacketsBase:I

.field public mGoodRxThreshold:I

.field public mIsAutoConnect:Z

.field public mLastPoorDetectedTime:J

.field public mMinDnsResponses:I

.field public mNeedResultNormalization:Z

.field public mNoRxPacketsLimit:I

.field public mPassBytes:I

.field public mPassBytesAggressiveMode:I

.field public mPassBytesVerifyingState:I

.field public mPoorRxPacketsLimit:I

.field public mPropertiesModelName:Ljava/lang/String;

.field public mPropertiesOsVersion:Ljava/lang/String;

.field public mQCRedirectCount:I

.field public mQCRepeat:I

.field public mQCRetry:I

.field public mQCSets:I

.field public mQCSetsVerifyingState:I

.field public mQCTimeoutMs:I

.field public mQCUrlMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mRssiThreshold:I

.field public mRssiThresholdAggMode2G:I

.field public mRssiThresholdAggMode5G:I

.field public mRssiThresholdAggModeCurrentAP:I

.field public mTryEnhancedQCAgain:Z

.field public mUrlList:[Ljava/lang/String;

.field public mUserAgentModelName:Ljava/lang/String;

.field public mWeakSignalQCStartTime:J

.field final synthetic this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 709
    iput-object p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 570
    const-string v0, "/data/misc/wifi/.smartCM"

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->SMARTCM_VALUE_FILE:Ljava/lang/String;

    .line 571
    const-string v0, "/data/log/"

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->PATH_OF_RESULT:Ljava/lang/String;

    .line 572
    const-string v0, "wlan.qc.path"

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->WLANQCPATH_PROP_NAME:Ljava/lang/String;

    .line 575
    iput v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->DEFAULT_NUM_DNS_PINGS:I

    .line 576
    iput v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->DEFAULT_MIN_DNS_RESPONSES:I

    .line 577
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->DEFAULT_DNS_PING_TIMEOUT_MS:I

    .line 578
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->DNS_START_DELAY_MS:I

    .line 579
    iput v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->DNS_INTRATEST_PING_INTERVAL_MS:I

    .line 582
    const/16 v0, -0x50

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->RSSI_THRESHOLD:I

    .line 583
    iput v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->DATA_RATE_THRESHOLD:I

    .line 584
    const/16 v0, 0x596

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->DEFAULT_MSS:I

    .line 585
    const/16 v0, 0x36

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->TCP_HEADER_SIZE:I

    .line 586
    const/16 v0, 0x5cc

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->DEFAULT_PACKET_SIZE:I

    .line 587
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->DEFAULT_PASS_PACKETS:I

    .line 588
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->VERIFYING_STATE_PASS_PACKETS:I

    .line 589
    iput v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->DEFAULT_QC_SETS:I

    .line 590
    iput v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->DEFAULT_QC_REPEAT:I

    .line 591
    iput v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->DEFAULT_QC_TIMEOUT_SEC:I

    .line 592
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->QC_ALLOWED_REDIRECT_COUNT:I

    .line 593
    iput v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->QC_RETRY_LIMIT:I

    .line 594
    iput v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->QC_INIT_ID:I

    .line 595
    iput v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->QC_HANDLER_NUM:I

    .line 596
    const/16 v0, 0x1400

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->QC_HTTP_GET_BUFFER_SIZE:I

    .line 597
    iput v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->QC_CONNECTION_TIMEOUT_SEC:I

    .line 598
    const/16 v0, 0x2710

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->SOCKET_CONNECTION_NO_RESPONSE_TIMEOUT:I

    .line 599
    iput v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->QC_SSL_HANDSHAKE_TIMEOUT_SEC:I

    .line 600
    const/16 v0, 0x258

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->ENHANCED_QC_INTERVAL_SEC:I

    .line 601
    iput v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->DEFAULT_ENHANCED_QC_SETS:I

    .line 602
    iput v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->DEFAULT_ENHANCED_TARGET_RSSI:I

    .line 603
    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->DEFAULT_RESTORE_TARGET_RSSI_SEC:I

    .line 604
    const v0, 0xf423f

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->DEFAULT_QC_PASS_BYTES_FOR_IPV6:I

    .line 605
    const v0, 0xf423e

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->DEFAULT_QC_PASS_BYTES_FOR_SNS_DISABLED_CONNECTION_WARNING:I

    .line 608
    iput v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->DEFAULT_NO_RX_PACKETS_LIMIT:I

    .line 609
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->DEFAULT_POOR_RX_PACKETS_LIMIT:I

    .line 610
    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->DEFAULT_GOOD_RX_PACKETS_BASE:I

    .line 613
    const-string v0, "http://www.google.com"

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->DEFAULT_URL:Ljava/lang/String;

    .line 614
    const-string v0, "www.qq.com"

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->DEFAULT_URL_STRING_CHINA:Ljava/lang/String;

    .line 615
    const-string v0, "www.google.com"

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->DEFAULT_URL_STRING:Ljava/lang/String;

    .line 618
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "http://www.msn.com"

    aput-object v1, v0, v4

    const-string v1, "http://www.bing.com"

    aput-object v1, v0, v2

    const-string v1, "http://www.youtube.com"

    aput-object v1, v0, v3

    const-string v1, "http://www.google.com"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->LIST1:[Ljava/lang/String;

    .line 624
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "http://m.hao123.com"

    aput-object v1, v0, v4

    const-string v1, "http://www.baidu.com"

    aput-object v1, v0, v2

    const-string v1, "http://m.taobao.com"

    aput-object v1, v0, v3

    const-string v1, "http://www.qq.com"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->LIST2:[Ljava/lang/String;

    .line 630
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "http://www.naver.com"

    aput-object v1, v0, v4

    const-string v1, "http://www.msn.com"

    aput-object v1, v0, v2

    const-string v1, "http://www.nate.com"

    aput-object v1, v0, v3

    const-string v1, "http://www.google.com"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->LIST3:[Ljava/lang/String;

    .line 636
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "http://www.youtube.com"

    aput-object v1, v0, v4

    const-string v1, "http://connectivitycheck.gstatic.com/generate_204"

    aput-object v1, v0, v2

    const-string v1, "http://www.google.com"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->AGG_LIST:[Ljava/lang/String;

    .line 641
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "http://www.samsung.com"

    aput-object v1, v0, v4

    const-string v1, "http://d2uzsrnmmf6tds.cloudfront.net/50KB.txt"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->TEST_LIST:[Ljava/lang/String;

    .line 649
    const/16 v0, -0x50

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->FD_RSSI_LOW_THRESHOLD:I

    .line 650
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->FD_MA_UNIT_SAMPLE_COUNT:I

    .line 651
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->FD_EVALUATE_COUNT:I

    .line 652
    const-wide/high16 v0, 0x4020000000000000L    # 8.0

    iput-wide v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->FD_DISCONNECT_THRESHOLD:D

    .line 653
    iget v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->FD_MA_UNIT_SAMPLE_COUNT:I

    iget v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->FD_EVALUATE_COUNT:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->FD_RAW_RSSI_SIZE:I

    .line 654
    const-wide v0, 0x3fc999999999999aL    # 0.2

    iput-wide v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->FD_RSSI_SLOPE_EXP_COEFFICIENT:D

    .line 655
    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    iput-wide v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->FD_DISCONNECT_DEVIATION_EMA_THRESHOLD:D

    .line 656
    iput v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->FD_MA_UNIT:I

    .line 657
    iput v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->FD_EVAL_LEAD_TIME:I

    .line 658
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->FD_EMA_ALPHA:I

    .line 661
    const/16 v0, -0x59

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->WEAK_SIGNAL_POOR_DETECTED_RSSI_MIN:I

    .line 662
    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->WEAK_SIGNAL_FREQUENT_QC_CYCLE_SEC:I

    .line 663
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mWeakSignalQCStartTime:J

    .line 666
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mLastPoorDetectedTime:J

    .line 667
    iput v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mQCSetsVerifyingState:I

    .line 668
    iput v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mCancelledEnhancedQCId:I

    .line 669
    iput-boolean v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mEnhancedQCEnabled:Z

    .line 670
    iput-boolean v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mTryEnhancedQCAgain:Z

    .line 671
    iput-boolean v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mIsAutoConnect:Z

    .line 672
    iput-boolean v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mNeedResultNormalization:Z

    .line 695
    const/16 v0, -0x46

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->RSSI_THRESHOLD_AGG_MODE_2G:I

    .line 696
    const/16 v0, -0x4b

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->RSSI_THRESHOLD_AGG_MODE_5G:I

    .line 697
    iput v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->DATA_RATE_THRESHOLD_AGG_MODE:I

    .line 698
    const/16 v0, 0x4b

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->VERIFYING_STATE_PASS_PACKETS_AGGRESSIVE_MODE:I

    .line 704
    iput v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->AggressiveModeHigherPassBytes:I

    .line 705
    iput v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->AggressiveModeQCTriggerByRssi:I

    .line 706
    iput v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->AggressiveModeMonitorLinkLoss:I

    .line 707
    new-array v0, v5, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mAggressiveModeFeatureEnabled:[Z

    .line 710
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->resetParameters()V

    .line 711
    return-void

    .line 707
    :array_0
    .array-data 1
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method private getDoubleValue(Ljava/lang/String;D)D
    .locals 6
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D

    .prologue
    .line 956
    :try_start_0
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 960
    :goto_0
    return-wide v2

    .line 958
    :catch_0
    move-exception v0

    .line 959
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WifiWatchdogStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wrong double:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v2, p2

    .line 960
    goto :goto_0
.end method

.method private getIntValue(Ljava/lang/String;I)I
    .locals 5
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 936
    :try_start_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 940
    :goto_0
    return v1

    .line 938
    :catch_0
    move-exception v0

    .line 939
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "WifiWatchdogStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wrong int:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, p2

    .line 940
    goto :goto_0
.end method

.method private getLongValue(Ljava/lang/String;J)J
    .locals 6
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 946
    :try_start_0
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 950
    :goto_0
    return-wide v2

    .line 948
    :catch_0
    move-exception v0

    .line 949
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WifiWatchdogStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wrong double:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v2, p2

    .line 950
    goto :goto_0
.end method

.method private getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "defalutValue"    # Ljava/lang/String;

    .prologue
    .line 922
    if-nez p1, :cond_1

    .line 931
    .end local p2    # "defalutValue":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p2

    .line 926
    .restart local p2    # "defalutValue":Ljava/lang/String;
    :cond_1
    const-string v1, "="

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 927
    .local v0, "idx":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 931
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method private loadSmartCMFile()Ljava/lang/String;
    .locals 10

    .prologue
    .line 965
    const/4 v5, 0x0

    .line 966
    .local v5, "reader":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 967
    .local v0, "br":Ljava/io/BufferedReader;
    const-string v2, ""

    .line 969
    .local v2, "data":Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/io/FileReader;

    const-string v7, "/data/misc/wifi/.smartCM"

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 970
    .end local v5    # "reader":Ljava/io/FileReader;
    .local v6, "reader":Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 971
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_2
    const-string v4, ""

    .line 972
    .local v4, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 973
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v2

    goto :goto_0

    .line 980
    :cond_0
    if-eqz v1, :cond_1

    .line 981
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 983
    :cond_1
    if-eqz v6, :cond_2

    .line 984
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_2
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .line 991
    .end local v4    # "line":Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v5    # "reader":Ljava/io/FileReader;
    :cond_3
    :goto_1
    return-object v2

    .line 986
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/FileReader;
    :catch_0
    move-exception v3

    .line 987
    .local v3, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    .line 988
    const-string v7, "WifiWatchdogStateMachine"

    const-string v8, "IOException closing file"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .line 990
    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v5    # "reader":Ljava/io/FileReader;
    goto :goto_1

    .line 975
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "line":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 976
    .local v3, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    const-string v7, "WifiWatchdogStateMachine"

    const-string v8, "no file"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 977
    const/4 v2, 0x0

    .line 980
    if-eqz v0, :cond_4

    .line 981
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 983
    :cond_4
    if-eqz v5, :cond_3

    .line 984
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 986
    :catch_2
    move-exception v3

    .line 987
    .local v3, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    .line 988
    const-string v7, "WifiWatchdogStateMachine"

    const-string v8, "IOException closing file"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 979
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 980
    :goto_3
    if-eqz v0, :cond_5

    .line 981
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 983
    :cond_5
    if-eqz v5, :cond_6

    .line 984
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 989
    :cond_6
    :goto_4
    throw v7

    .line 986
    :catch_3
    move-exception v3

    .line 987
    .restart local v3    # "e":Ljava/io/IOException;
    const/4 v2, 0x0

    .line 988
    const-string v8, "WifiWatchdogStateMachine"

    const-string v9, "IOException closing file"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 979
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v6    # "reader":Ljava/io/FileReader;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v5    # "reader":Ljava/io/FileReader;
    goto :goto_3

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/FileReader;
    :catchall_2
    move-exception v7

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v5    # "reader":Ljava/io/FileReader;
    goto :goto_3

    .line 975
    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v6    # "reader":Ljava/io/FileReader;
    :catch_4
    move-exception v3

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v5    # "reader":Ljava/io/FileReader;
    goto :goto_2

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/FileReader;
    :catch_5
    move-exception v3

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v5    # "reader":Ljava/io/FileReader;
    goto :goto_2
.end method


# virtual methods
.method public createSmartCMFile(Ljava/lang/String;)I
    .locals 9
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 995
    const/4 v3, 0x0

    .line 996
    .local v3, "out":Ljava/io/FileWriter;
    const/4 v1, 0x0

    .line 997
    .local v1, "file":Ljava/io/File;
    const/4 v5, -0x1

    .line 1000
    .local v5, "ret":I
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v6, "/data/misc/wifi/.smartCM"

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1002
    .end local v1    # "file":Ljava/io/File;
    .local v2, "file":Ljava/io/File;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1003
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "WifiWatchdogStateMachine"

    const-string v7, "removed smartCM"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1006
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 1008
    new-instance v4, Ljava/io/FileWriter;

    const-string v6, "/data/misc/wifi/.smartCM"

    invoke-direct {v4, v6}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1009
    .end local v3    # "out":Ljava/io/FileWriter;
    .local v4, "out":Ljava/io/FileWriter;
    if-eqz p1, :cond_3

    .line 1010
    :try_start_2
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "WifiWatchdogStateMachine"

    const-string v7, "created smartCM"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    :cond_2
    invoke-virtual {v4, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1013
    :cond_3
    const/4 v5, 0x1

    .line 1017
    if-eqz v4, :cond_6

    .line 1019
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v1, v2

    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    move-object v3, v4

    .line 1025
    .end local v4    # "out":Ljava/io/FileWriter;
    .restart local v3    # "out":Ljava/io/FileWriter;
    :cond_4
    :goto_0
    return v5

    .line 1020
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "out":Ljava/io/FileWriter;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "out":Ljava/io/FileWriter;
    :catch_0
    move-exception v0

    .line 1021
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "WifiWatchdogStateMachine"

    const-string v7, "IOException closing file"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    move-object v3, v4

    .line 1022
    .end local v4    # "out":Ljava/io/FileWriter;
    .restart local v3    # "out":Ljava/io/FileWriter;
    goto :goto_0

    .line 1014
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 1015
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_4
    const-string v6, "WifiWatchdogStateMachine"

    const-string v7, "Exception creating file"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1017
    if-eqz v3, :cond_4

    .line 1019
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 1020
    :catch_2
    move-exception v0

    .line 1021
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "WifiWatchdogStateMachine"

    const-string v7, "IOException closing file"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1017
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_2
    if-eqz v3, :cond_5

    .line 1019
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 1022
    :cond_5
    :goto_3
    throw v6

    .line 1020
    :catch_3
    move-exception v0

    .line 1021
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v7, "WifiWatchdogStateMachine"

    const-string v8, "IOException closing file"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1017
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    :catchall_1
    move-exception v6

    move-object v1, v2

    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    goto :goto_2

    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "out":Ljava/io/FileWriter;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "out":Ljava/io/FileWriter;
    :catchall_2
    move-exception v6

    move-object v1, v2

    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileWriter;
    .restart local v3    # "out":Ljava/io/FileWriter;
    goto :goto_2

    .line 1014
    .end local v1    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    goto :goto_1

    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "out":Ljava/io/FileWriter;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "out":Ljava/io/FileWriter;
    :catch_5
    move-exception v0

    move-object v1, v2

    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileWriter;
    .restart local v3    # "out":Ljava/io/FileWriter;
    goto :goto_1

    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "out":Ljava/io/FileWriter;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "out":Ljava/io/FileWriter;
    :cond_6
    move-object v1, v2

    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileWriter;
    .restart local v3    # "out":Ljava/io/FileWriter;
    goto :goto_0
.end method

.method public getAggressiveModeFeatureStatus()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1029
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mAggressiveModeFeatureEnabled:[Z

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mAggressiveModeFeatureEnabled:[Z

    const/4 v2, 0x1

    aget-boolean v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mAggressiveModeFeatureEnabled:[Z

    const/4 v2, 0x2

    aget-boolean v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public resetParameters()V
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x1

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 714
    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$002(Z)Z

    .line 715
    iput v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mDnsNumPings:I

    .line 716
    iput v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mMinDnsResponses:I

    .line 717
    iput-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mQCUrlMap:Ljava/util/HashMap;

    .line 718
    const/16 v0, -0x50

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mRssiThreshold:I

    .line 719
    const/16 v0, -0x46

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mRssiThresholdAggMode2G:I

    .line 720
    const/16 v0, -0x4b

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mRssiThresholdAggMode5G:I

    .line 721
    iput v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mDataRateThreshold:I

    .line 722
    iput v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mDataRateThresholdAggMode:I

    .line 723
    iput v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mQCRepeat:I

    .line 724
    iput v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mQCSets:I

    .line 725
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mQCTimeoutMs:I

    .line 726
    iput-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mUserAgentModelName:Ljava/lang/String;

    .line 727
    iput-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mPropertiesModelName:Ljava/lang/String;

    .line 728
    iput-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mPropertiesOsVersion:Ljava/lang/String;

    .line 729
    const/16 v0, 0x56f4

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mPassBytes:I

    .line 730
    const/16 v0, 0x56f4

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mPassBytesVerifyingState:I

    .line 731
    const v0, 0x1b2c4

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mPassBytesAggressiveMode:I

    .line 733
    iget v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mPassBytes:I

    mul-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mGoodRxThreshold:I

    .line 734
    iput v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mNoRxPacketsLimit:I

    .line 735
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mPoorRxPacketsLimit:I

    .line 736
    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mGoodRxPacketsBase:I

    .line 737
    iput v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mQCRetry:I

    .line 738
    iput v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mQCRedirectCount:I

    .line 739
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->setUrlList()V

    .line 740
    return-void
.end method

.method public setEvaluationParameters()V
    .locals 1

    .prologue
    .line 777
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 778
    invoke-direct {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->loadSmartCMFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->setEvaluationParameters(Ljava/lang/String;)V

    .line 780
    :cond_0
    return-void
.end method

.method public setEvaluationParameters(Ljava/lang/String;)V
    .locals 11
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 784
    if-nez p1, :cond_1

    .line 919
    :cond_0
    return-void

    .line 788
    :cond_1
    const-string v3, "\n"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 789
    .local v1, "line":[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 793
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 794
    aget-object v2, v1, v0

    .line 796
    .local v2, "str":Ljava/lang/String;
    if-nez v2, :cond_3

    .line 793
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 800
    :cond_3
    const-string v3, "dbg="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 801
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "1"

    :goto_2
    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "1"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$002(Z)Z

    .line 802
    const-string v3, "WifiWatchdogStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SMARTCM_DBG : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 801
    :cond_4
    const-string v3, "0"

    goto :goto_2

    .line 804
    :cond_5
    const-string v3, "dnp="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 805
    iget v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mDnsNumPings:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->getIntValue(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mDnsNumPings:I

    .line 806
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "WifiWatchdogStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mDnsNumPings : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mDnsNumPings:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 808
    :cond_6
    const-string v3, "mdr="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 809
    iget v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mMinDnsResponses:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->getIntValue(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mMinDnsResponses:I

    .line 810
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "WifiWatchdogStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mMinDnsResponses : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mMinDnsResponses:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 812
    :cond_7
    const-string v3, "ul="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 813
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mUrlList:[Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mUrlList:[Ljava/lang/String;

    aget-object v6, v6, v5

    invoke-direct {p0, v2, v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    .line 814
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 815
    const-string v3, "http://www.samsung.com"

    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mUrlList:[Ljava/lang/String;

    aget-object v6, v6, v5

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->TEST_LIST:[Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mUrlList:[Ljava/lang/String;

    .line 817
    :cond_8
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "WifiWatchdogStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mUrlString : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mUrlList:[Ljava/lang/String;

    aget-object v7, v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 819
    :cond_9
    const-string v3, "rth="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 820
    iget v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mRssiThreshold:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->getIntValue(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mRssiThreshold:I

    .line 821
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "WifiWatchdogStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mRssiThreshold : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mRssiThreshold:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " dBm"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 823
    :cond_a
    const-string v3, "rtham2g="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 824
    iget v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mRssiThresholdAggMode2G:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->getIntValue(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mRssiThresholdAggMode2G:I

    .line 825
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "WifiWatchdogStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mRssiThreshold@2G : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mRssiThresholdAggMode2G:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " dBm"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 827
    :cond_b
    const-string v3, "rtham5g="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 828
    iget v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mRssiThresholdAggMode5G:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->getIntValue(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mRssiThresholdAggMode5G:I

    .line 829
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "WifiWatchdogStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mRssiThreshold@5G : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mRssiThresholdAggMode5G:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " dBm"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 831
    :cond_c
    const-string v3, "amfbyte="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 832
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mAggressiveModeFeatureEnabled:[Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mAggressiveModeFeatureEnabled:[Z

    aget-boolean v3, v3, v5

    if-eqz v3, :cond_d

    move v3, v4

    :goto_3
    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->getIntValue(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_e

    move v3, v4

    :goto_4
    aput-boolean v3, v6, v5

    .line 834
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "WifiWatchdogStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "@Feature_HPB : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mAggressiveModeFeatureEnabled:[Z

    aget-boolean v7, v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_d
    move v3, v5

    .line 832
    goto :goto_3

    :cond_e
    move v3, v5

    goto :goto_4

    .line 837
    :cond_f
    const-string v3, "amfrssi="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 838
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mAggressiveModeFeatureEnabled:[Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mAggressiveModeFeatureEnabled:[Z

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_10

    move v3, v4

    :goto_5
    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->getIntValue(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_11

    move v3, v4

    :goto_6
    aput-boolean v3, v6, v4

    .line 840
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "WifiWatchdogStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "@Feature_QTBR : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mAggressiveModeFeatureEnabled:[Z

    aget-boolean v7, v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_10
    move v3, v5

    .line 838
    goto :goto_5

    :cond_11
    move v3, v5

    goto :goto_6

    .line 843
    :cond_12
    const-string v3, "amfloss="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 844
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mAggressiveModeFeatureEnabled:[Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mAggressiveModeFeatureEnabled:[Z

    aget-boolean v3, v3, v10

    if-eqz v3, :cond_13

    move v3, v4

    :goto_7
    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->getIntValue(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_14

    move v3, v4

    :goto_8
    aput-boolean v3, v6, v10

    .line 846
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "WifiWatchdogStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "@Feature_MLL : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mAggressiveModeFeatureEnabled:[Z

    aget-boolean v7, v7, v10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_13
    move v3, v5

    .line 844
    goto :goto_7

    :cond_14
    move v3, v5

    goto :goto_8

    .line 849
    :cond_15
    const-string v3, "drth="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 850
    iget v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mDataRateThreshold:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->getIntValue(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mDataRateThreshold:I

    .line 851
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "WifiWatchdogStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mDataRateThreshold : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mDataRateThreshold:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Mbps"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 853
    :cond_16
    const-string v3, "drtham="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 854
    iget v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mDataRateThresholdAggMode:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->getIntValue(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mDataRateThresholdAggMode:I

    .line 855
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "WifiWatchdogStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mDataRateThreshold@ : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mDataRateThresholdAggMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Mbps"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 857
    :cond_17
    const-string v3, "qcr="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 858
    iget v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mQCRepeat:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->getIntValue(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mQCRepeat:I

    .line 859
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "WifiWatchdogStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mQCRepeat : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mQCRepeat:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 861
    :cond_18
    const-string v3, "qcset="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 862
    iget v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mQCSets:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->getIntValue(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mQCSets:I

    .line 863
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "WifiWatchdogStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mQCSets : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mQCSets:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 865
    :cond_19
    const-string v3, "qctms="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 866
    iget v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mQCTimeoutMs:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->getIntValue(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mQCTimeoutMs:I

    .line 867
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "WifiWatchdogStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mQCTimeoutMs : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mQCTimeoutMs:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 869
    :cond_1a
    const-string v3, "uamn="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 870
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mUserAgentModelName:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mUserAgentModelName:Ljava/lang/String;

    .line 871
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "WifiWatchdogStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mUserAgentModelName : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mUserAgentModelName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 873
    :cond_1b
    const-string v3, "pbs="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 874
    iget v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mPassBytes:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->getIntValue(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mPassBytes:I

    .line 875
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "WifiWatchdogStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mPassBytes : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mPassBytes:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 877
    :cond_1c
    const-string v3, "grth="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 878
    iget v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mGoodRxThreshold:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->getIntValue(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mGoodRxThreshold:I

    .line 879
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "WifiWatchdogStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mGoodRxThreshold : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mGoodRxThreshold:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 881
    :cond_1d
    const-string v3, "fdrlth="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 882
    iget v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->FD_RSSI_LOW_THRESHOLD:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->getIntValue(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->FD_RSSI_LOW_THRESHOLD:I

    .line 883
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "WifiWatchdogStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FD_RSSI_LOW_THRESHOLD : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->FD_RSSI_LOW_THRESHOLD:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 885
    :cond_1e
    const-string v3, "fddth="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 886
    iget-wide v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->FD_DISCONNECT_THRESHOLD:D

    invoke-direct {p0, v2, v6, v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->getDoubleValue(Ljava/lang/String;D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->FD_DISCONNECT_THRESHOLD:D

    .line 887
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "WifiWatchdogStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FD_DISCONNECT_THRESHOLD : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->FD_DISCONNECT_THRESHOLD:D

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 889
    :cond_1f
    const-string v3, "fdusc="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 890
    iget v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->FD_MA_UNIT_SAMPLE_COUNT:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->getIntValue(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->FD_MA_UNIT_SAMPLE_COUNT:I

    .line 891
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "WifiWatchdogStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FD_MA_UNIT_SAMPLE_COUNT : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->FD_MA_UNIT_SAMPLE_COUNT:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 893
    :cond_20
    const-string v3, "fdec="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 894
    iget v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->FD_EVALUATE_COUNT:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->getIntValue(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->FD_EVALUATE_COUNT:I

    .line 895
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "WifiWatchdogStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FD_EVALUATE_COUNT : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->FD_EVALUATE_COUNT:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 897
    :cond_21
    const-string v3, "lsims="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 898
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->LINK_SAMPLING_INTERVAL_MS:J
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$600()J

    move-result-wide v6

    invoke-direct {p0, v2, v6, v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->getLongValue(Ljava/lang/String;J)J

    move-result-wide v6

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->LINK_SAMPLING_INTERVAL_MS:J
    invoke-static {v6, v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$602(J)J

    .line 899
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "WifiWatchdogStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LINK_SAMPLING_INTERVAL_MS : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->LINK_SAMPLING_INTERVAL_MS:J
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$600()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 901
    :cond_22
    const-string v3, "wspdrm="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 902
    iget v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->WEAK_SIGNAL_POOR_DETECTED_RSSI_MIN:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->getIntValue(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->WEAK_SIGNAL_POOR_DETECTED_RSSI_MIN:I

    .line 903
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "WifiWatchdogStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WEAK_SIGNAL_POOR_DETECTED_RSSI_MIN : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->WEAK_SIGNAL_POOR_DETECTED_RSSI_MIN:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 905
    :cond_23
    const-string v3, "wsfqcs="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 906
    iget v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->WEAK_SIGNAL_FREQUENT_QC_CYCLE_SEC:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->getIntValue(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->WEAK_SIGNAL_FREQUENT_QC_CYCLE_SEC:I

    .line 907
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "WifiWatchdogStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WEAK_SIGNAL_FREQUENT_QC_CYCLE_SEC : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->WEAK_SIGNAL_FREQUENT_QC_CYCLE_SEC:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 909
    :cond_24
    const-string v3, "snsdcws="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 910
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SNS_DISABLED_CONNECTION_WARNING_SUPPORTED:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$700()Z

    move-result v3

    if-eqz v3, :cond_25

    const-string v3, "1"

    :goto_9
    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "1"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SNS_DISABLED_CONNECTION_WARNING_SUPPORTED:Z
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$702(Z)Z

    .line 911
    const-string v3, "WifiWatchdogStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SNS_DISABLED_CONNECTION_WARNING_SUPPORTED : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SNS_DISABLED_CONNECTION_WARNING_SUPPORTED:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$700()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 910
    :cond_25
    const-string v3, "0"

    goto :goto_9

    .line 913
    :cond_26
    const-string v3, "sicdcs="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 914
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SKIP_INTERNET_CHECK_DOUBLE_CONFIRM_SUPPORTED:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v3

    if-eqz v3, :cond_27

    const-string v3, "1"

    :goto_a
    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "1"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SKIP_INTERNET_CHECK_DOUBLE_CONFIRM_SUPPORTED:Z
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$802(Z)Z

    .line 915
    const-string v3, "WifiWatchdogStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SKIP_INTERNET_CHECK_DOUBLE_CONFIRM_SUPPORTED : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SKIP_INTERNET_CHECK_DOUBLE_CONFIRM_SUPPORTED:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 914
    :cond_27
    const-string v3, "0"

    goto :goto_a
.end method

.method public setUrlList()V
    .locals 3

    .prologue
    .line 743
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mQCUrlMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 744
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mQCUrlMap:Ljava/util/HashMap;

    .line 747
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->isAggressiveModeEnabled()Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "cn"

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCountryIso:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 748
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->AGG_LIST:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mUrlList:[Ljava/lang/String;

    .line 765
    :goto_0
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "WifiWatchdogStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/wifi/WifiWatchdogStateMachine;->SNS_VERSION:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCountryIso:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mUrlList:[Ljava/lang/String;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    :cond_1
    return-void

    .line 749
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mQCUrlMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCountryIso:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 750
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mQCUrlMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCountryIso:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mUrlList:[Ljava/lang/String;

    goto :goto_0

    .line 751
    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mQCUrlMap:Ljava/util/HashMap;

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 752
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mQCUrlMap:Ljava/util/HashMap;

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mUrlList:[Ljava/lang/String;

    goto :goto_0

    .line 754
    :cond_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mQCUrlMap:Ljava/util/HashMap;

    const-string v1, "default"

    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->LIST1:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mQCUrlMap:Ljava/util/HashMap;

    const-string v1, "cn"

    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->LIST2:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 756
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mQCUrlMap:Ljava/util/HashMap;

    const-string v1, "kr"

    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->LIST3:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->skipCaptivePortalCheck()Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 758
    const-string v0, "www.qq.com"

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->DEFAULT_URL_STRING:Ljava/lang/String;

    .line 759
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "WifiWatchdogStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Use China URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->DEFAULT_URL_STRING:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    :cond_5
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->LIST2:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mUrlList:[Ljava/lang/String;

    goto/16 :goto_0

    .line 762
    :cond_6
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->LIST1:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mUrlList:[Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public setUrlMap(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 770
    .local p1, "urlMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mQCUrlMap:Ljava/util/HashMap;

    .line 771
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->setUrlList()V

    .line 773
    return-void
.end method

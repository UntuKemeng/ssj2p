.class public Lcom/sec/epdg/EpdgOperatorConstants;
.super Ljava/lang/Object;
.source "EpdgOperatorConstants.java"


# static fields
.field public static final ATTACH_APN_ID:I = 0x1

.field public static final CDMA_PROFILING:Z

.field public static final CHANGE_PREFERREDMODE_AT_ROAMING:Z

.field public static final DELAY_HO_UNTIL_REGI_FINISHED:Z

.field public static final DELAY_L2W_AND_W2L:Z

.field public static final DISCONNECT_AFTER_DEREGI:Z

.field public static final DNS_RETRY_THROTTLE_COUNTER:I = 0x5

.field public static final EMERGENCY_CALLBACK_MODE:Z

.field public static final HAS_DIFFERENT_ROAMING_POLICY:Z

.field public static final IMS_APN_ID:I

.field public static final IMS_CALL_MONITORING:Z

.field public static final IMS_REGISTRATION_MONITORING:Z

.field public static final INTERNET_APN_ID:I

.field public static final IWLAN_INTERFACE_PREFIX:Ljava/lang/String; = "epdg"

.field public static final KEEP_EPDG_CONNECTION_WHILE_VOWIFI_SESSION_ON:Z

.field public static final LTE_IDLE_PROFILING:Z

.field public static final LTE_PROFILING:Z

.field public static final PDPD_CHECK_TIMEOUT:I

.field public static final SEPARATE_VIDEO_FROM_VOWIFI:Z

.field public static final SUPPORT_ACCEPT_AS_VOICE_WITH_DOWNGRADED_VIDEO_CALL:Z

.field public static final SUPPORT_CDMA_NETWORK:Z

.field public static final SUPPORT_DOWNGRADED_VIDEO_CALL:Z

.field public static final SUPPORT_IMSI_FROM_IMPI:Z

.field public static final SUPPORT_KEEP_ALIVE:Z

.field public static final SUPPORT_MULTIPLE_EPDGIP:Z

.field public static final SUPPORT_VOLTE:Z

.field public static final SUPPORT_VOWIFI_PROVISIONING:Z

.field public static final SUPPORT_WEAK_WIFI_SIGNAL_WARNING:Z = false

.field public static final SUPPORT_WIFI_OVER_IPME:Z

.field public static final SUPPORT_WIFI_RSSI_POLLING:Z

.field public static final VOWIFI_BLACKLIST_BLOCKING:Z

.field public static final WIFI_INTERFACE_NAME:Ljava/lang/String; = "wlan0"

.field public static final WIFI_THRESHOLD_BASED_HO:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 67
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    sput v3, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_APN_ID:I

    .line 69
    sput v1, Lcom/sec/epdg/EpdgOperatorConstants;->INTERNET_APN_ID:I

    .line 70
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->DELAY_L2W_AND_W2L:Z

    .line 71
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SEPARATE_VIDEO_FROM_VOWIFI:Z

    .line 72
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->DELAY_HO_UNTIL_REGI_FINISHED:Z

    .line 73
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->EMERGENCY_CALLBACK_MODE:Z

    .line 74
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOWIFI_PROVISIONING:Z

    .line 75
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_CDMA_NETWORK:Z

    .line 76
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_KEEP_ALIVE:Z

    .line 77
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->CHANGE_PREFERREDMODE_AT_ROAMING:Z

    .line 78
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->CDMA_PROFILING:Z

    .line 79
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->LTE_PROFILING:Z

    .line 80
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->LTE_IDLE_PROFILING:Z

    .line 81
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_CALL_MONITORING:Z

    .line 82
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_REGISTRATION_MONITORING:Z

    .line 83
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOLTE:Z

    .line 84
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_IMSI_FROM_IMPI:Z

    .line 85
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->WIFI_THRESHOLD_BASED_HO:Z

    .line 86
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->DISCONNECT_AFTER_DEREGI:Z

    .line 87
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->HAS_DIFFERENT_ROAMING_POLICY:Z

    .line 88
    sput v5, Lcom/sec/epdg/EpdgOperatorConstants;->PDPD_CHECK_TIMEOUT:I

    .line 89
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->VOWIFI_BLACKLIST_BLOCKING:Z

    .line 90
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_DOWNGRADED_VIDEO_CALL:Z

    .line 91
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_MULTIPLE_EPDGIP:Z

    .line 92
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_WIFI_OVER_IPME:Z

    .line 93
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->KEEP_EPDG_CONNECTION_WHILE_VOWIFI_SESSION_ON:Z

    .line 94
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_WIFI_RSSI_POLLING:Z

    .line 95
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_ACCEPT_AS_VOICE_WITH_DOWNGRADED_VIDEO_CALL:Z

    .line 333
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 97
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizonWholeSales()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 98
    sput v1, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_APN_ID:I

    .line 99
    sput v3, Lcom/sec/epdg/EpdgOperatorConstants;->INTERNET_APN_ID:I

    .line 100
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->DELAY_L2W_AND_W2L:Z

    .line 101
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->SEPARATE_VIDEO_FROM_VOWIFI:Z

    .line 102
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->DELAY_HO_UNTIL_REGI_FINISHED:Z

    .line 103
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->EMERGENCY_CALLBACK_MODE:Z

    .line 104
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOWIFI_PROVISIONING:Z

    .line 105
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_RIL_ConfigEpdgExtraFunction"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "CDMALESS"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_CDMA_NETWORK:Z

    .line 106
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_KEEP_ALIVE:Z

    .line 107
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->CHANGE_PREFERREDMODE_AT_ROAMING:Z

    .line 108
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_RIL_ConfigEpdgExtraFunction"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "CDMALESS"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->CDMA_PROFILING:Z

    .line 109
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->LTE_PROFILING:Z

    .line 110
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->LTE_IDLE_PROFILING:Z

    .line 111
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_CALL_MONITORING:Z

    .line 112
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_REGISTRATION_MONITORING:Z

    .line 113
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOLTE:Z

    .line 114
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_IMSI_FROM_IMPI:Z

    .line 115
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->WIFI_THRESHOLD_BASED_HO:Z

    .line 116
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->DISCONNECT_AFTER_DEREGI:Z

    .line 117
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->HAS_DIFFERENT_ROAMING_POLICY:Z

    .line 118
    sput v5, Lcom/sec/epdg/EpdgOperatorConstants;->PDPD_CHECK_TIMEOUT:I

    .line 119
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->VOWIFI_BLACKLIST_BLOCKING:Z

    .line 120
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_DOWNGRADED_VIDEO_CALL:Z

    .line 121
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_MULTIPLE_EPDGIP:Z

    .line 122
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_WIFI_OVER_IPME:Z

    .line 123
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->KEEP_EPDG_CONNECTION_WHILE_VOWIFI_SESSION_ON:Z

    .line 124
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_WIFI_RSSI_POLLING:Z

    .line 125
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_ACCEPT_AS_VOICE_WITH_DOWNGRADED_VIDEO_CALL:Z

    goto :goto_0

    :cond_1
    move v0, v2

    .line 105
    goto :goto_1

    :cond_2
    move v0, v2

    .line 108
    goto :goto_2

    .line 127
    :cond_3
    sput v1, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_APN_ID:I

    .line 128
    sput v3, Lcom/sec/epdg/EpdgOperatorConstants;->INTERNET_APN_ID:I

    .line 129
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->DELAY_L2W_AND_W2L:Z

    .line 130
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->SEPARATE_VIDEO_FROM_VOWIFI:Z

    .line 131
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->DELAY_HO_UNTIL_REGI_FINISHED:Z

    .line 132
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->EMERGENCY_CALLBACK_MODE:Z

    .line 133
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOWIFI_PROVISIONING:Z

    .line 134
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_RIL_ConfigEpdgExtraFunction"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "CDMALESS"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_3
    sput-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_CDMA_NETWORK:Z

    .line 135
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_KEEP_ALIVE:Z

    .line 136
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->CHANGE_PREFERREDMODE_AT_ROAMING:Z

    .line 137
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->CDMA_PROFILING:Z

    .line 138
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->LTE_PROFILING:Z

    .line 139
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->LTE_IDLE_PROFILING:Z

    .line 140
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_CALL_MONITORING:Z

    .line 141
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_REGISTRATION_MONITORING:Z

    .line 142
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOLTE:Z

    .line 143
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_IMSI_FROM_IMPI:Z

    .line 144
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->WIFI_THRESHOLD_BASED_HO:Z

    .line 145
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->DISCONNECT_AFTER_DEREGI:Z

    .line 146
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->HAS_DIFFERENT_ROAMING_POLICY:Z

    .line 147
    sput v5, Lcom/sec/epdg/EpdgOperatorConstants;->PDPD_CHECK_TIMEOUT:I

    .line 148
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->VOWIFI_BLACKLIST_BLOCKING:Z

    .line 149
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_DOWNGRADED_VIDEO_CALL:Z

    .line 150
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_MULTIPLE_EPDGIP:Z

    .line 151
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_WIFI_OVER_IPME:Z

    .line 152
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->KEEP_EPDG_CONNECTION_WHILE_VOWIFI_SESSION_ON:Z

    .line 153
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_WIFI_RSSI_POLLING:Z

    .line 154
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_ACCEPT_AS_VOICE_WITH_DOWNGRADED_VIDEO_CALL:Z

    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 134
    goto :goto_3

    .line 156
    :cond_5
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorAtt()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 157
    sput v3, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_APN_ID:I

    .line 158
    sput v1, Lcom/sec/epdg/EpdgOperatorConstants;->INTERNET_APN_ID:I

    .line 159
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->DELAY_L2W_AND_W2L:Z

    .line 160
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->SEPARATE_VIDEO_FROM_VOWIFI:Z

    .line 161
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->DELAY_HO_UNTIL_REGI_FINISHED:Z

    .line 162
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->EMERGENCY_CALLBACK_MODE:Z

    .line 163
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOWIFI_PROVISIONING:Z

    .line 164
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_CDMA_NETWORK:Z

    .line 165
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_KEEP_ALIVE:Z

    .line 166
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_RIL_ConfigEpdgExtraFunction"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "WAVE2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->CHANGE_PREFERREDMODE_AT_ROAMING:Z

    .line 167
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->CDMA_PROFILING:Z

    .line 168
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->LTE_PROFILING:Z

    .line 169
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->LTE_IDLE_PROFILING:Z

    .line 170
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_CALL_MONITORING:Z

    .line 171
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_REGISTRATION_MONITORING:Z

    .line 172
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOLTE:Z

    .line 173
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_IMSI_FROM_IMPI:Z

    .line 174
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->WIFI_THRESHOLD_BASED_HO:Z

    .line 175
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->DISCONNECT_AFTER_DEREGI:Z

    .line 176
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_RIL_ConfigEpdgExtraFunction"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "WAVE2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->HAS_DIFFERENT_ROAMING_POLICY:Z

    .line 177
    sput v5, Lcom/sec/epdg/EpdgOperatorConstants;->PDPD_CHECK_TIMEOUT:I

    .line 178
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->VOWIFI_BLACKLIST_BLOCKING:Z

    .line 179
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_DOWNGRADED_VIDEO_CALL:Z

    .line 180
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_MULTIPLE_EPDGIP:Z

    .line 181
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_RIL_ConfigEpdgExtraFunction"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "WAVE2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_WIFI_OVER_IPME:Z

    .line 182
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->KEEP_EPDG_CONNECTION_WHILE_VOWIFI_SESSION_ON:Z

    .line 183
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_WIFI_RSSI_POLLING:Z

    .line 184
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_ACCEPT_AS_VOICE_WITH_DOWNGRADED_VIDEO_CALL:Z

    goto/16 :goto_0

    .line 185
    :cond_6
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorSpr()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 186
    sput v3, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_APN_ID:I

    .line 187
    sput v1, Lcom/sec/epdg/EpdgOperatorConstants;->INTERNET_APN_ID:I

    .line 188
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->DELAY_L2W_AND_W2L:Z

    .line 189
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SEPARATE_VIDEO_FROM_VOWIFI:Z

    .line 190
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->DELAY_HO_UNTIL_REGI_FINISHED:Z

    .line 191
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->EMERGENCY_CALLBACK_MODE:Z

    .line 192
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOWIFI_PROVISIONING:Z

    .line 193
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_CDMA_NETWORK:Z

    .line 194
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_KEEP_ALIVE:Z

    .line 195
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->CHANGE_PREFERREDMODE_AT_ROAMING:Z

    .line 196
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->CDMA_PROFILING:Z

    .line 197
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->LTE_PROFILING:Z

    .line 198
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->LTE_IDLE_PROFILING:Z

    .line 199
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_CALL_MONITORING:Z

    .line 200
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_REGISTRATION_MONITORING:Z

    .line 201
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOLTE:Z

    .line 202
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_IMSI_FROM_IMPI:Z

    .line 203
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->WIFI_THRESHOLD_BASED_HO:Z

    .line 204
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->DISCONNECT_AFTER_DEREGI:Z

    .line 205
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->HAS_DIFFERENT_ROAMING_POLICY:Z

    .line 206
    const/16 v0, 0x9

    sput v0, Lcom/sec/epdg/EpdgOperatorConstants;->PDPD_CHECK_TIMEOUT:I

    .line 207
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->VOWIFI_BLACKLIST_BLOCKING:Z

    .line 208
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_DOWNGRADED_VIDEO_CALL:Z

    .line 209
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_MULTIPLE_EPDGIP:Z

    .line 210
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_WIFI_OVER_IPME:Z

    .line 211
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->KEEP_EPDG_CONNECTION_WHILE_VOWIFI_SESSION_ON:Z

    .line 212
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_WIFI_RSSI_POLLING:Z

    .line 213
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_ACCEPT_AS_VOICE_WITH_DOWNGRADED_VIDEO_CALL:Z

    goto/16 :goto_0

    .line 214
    :cond_7
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVod()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 215
    sput v3, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_APN_ID:I

    .line 216
    sput v1, Lcom/sec/epdg/EpdgOperatorConstants;->INTERNET_APN_ID:I

    .line 217
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->DELAY_L2W_AND_W2L:Z

    .line 218
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SEPARATE_VIDEO_FROM_VOWIFI:Z

    .line 219
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->DELAY_HO_UNTIL_REGI_FINISHED:Z

    .line 220
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->EMERGENCY_CALLBACK_MODE:Z

    .line 221
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOWIFI_PROVISIONING:Z

    .line 222
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_CDMA_NETWORK:Z

    .line 223
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_KEEP_ALIVE:Z

    .line 224
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->CHANGE_PREFERREDMODE_AT_ROAMING:Z

    .line 225
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->CDMA_PROFILING:Z

    .line 226
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->LTE_PROFILING:Z

    .line 227
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->LTE_IDLE_PROFILING:Z

    .line 228
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_CALL_MONITORING:Z

    .line 229
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_REGISTRATION_MONITORING:Z

    .line 230
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOLTE:Z

    .line 231
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_IMSI_FROM_IMPI:Z

    .line 232
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->WIFI_THRESHOLD_BASED_HO:Z

    .line 233
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->DISCONNECT_AFTER_DEREGI:Z

    .line 234
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->HAS_DIFFERENT_ROAMING_POLICY:Z

    .line 235
    const/16 v0, 0x1f

    sput v0, Lcom/sec/epdg/EpdgOperatorConstants;->PDPD_CHECK_TIMEOUT:I

    .line 236
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->VOWIFI_BLACKLIST_BLOCKING:Z

    .line 237
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_DOWNGRADED_VIDEO_CALL:Z

    .line 238
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_MULTIPLE_EPDGIP:Z

    .line 239
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_WIFI_OVER_IPME:Z

    .line 240
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->KEEP_EPDG_CONNECTION_WHILE_VOWIFI_SESSION_ON:Z

    .line 241
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_WIFI_RSSI_POLLING:Z

    .line 242
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_ACCEPT_AS_VOICE_WITH_DOWNGRADED_VIDEO_CALL:Z

    goto/16 :goto_0

    .line 243
    :cond_8
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorPlay()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorPTR()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorMTN()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 245
    :cond_9
    sput v3, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_APN_ID:I

    .line 246
    sput v1, Lcom/sec/epdg/EpdgOperatorConstants;->INTERNET_APN_ID:I

    .line 247
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->DELAY_L2W_AND_W2L:Z

    .line 248
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SEPARATE_VIDEO_FROM_VOWIFI:Z

    .line 249
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->DELAY_HO_UNTIL_REGI_FINISHED:Z

    .line 250
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->EMERGENCY_CALLBACK_MODE:Z

    .line 251
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOWIFI_PROVISIONING:Z

    .line 252
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_CDMA_NETWORK:Z

    .line 253
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_KEEP_ALIVE:Z

    .line 254
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->CHANGE_PREFERREDMODE_AT_ROAMING:Z

    .line 255
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->CDMA_PROFILING:Z

    .line 256
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->LTE_PROFILING:Z

    .line 257
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->LTE_IDLE_PROFILING:Z

    .line 258
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_CALL_MONITORING:Z

    .line 259
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_REGISTRATION_MONITORING:Z

    .line 260
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOLTE:Z

    .line 261
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_IMSI_FROM_IMPI:Z

    .line 262
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->WIFI_THRESHOLD_BASED_HO:Z

    .line 263
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->DISCONNECT_AFTER_DEREGI:Z

    .line 264
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->HAS_DIFFERENT_ROAMING_POLICY:Z

    .line 265
    sput v5, Lcom/sec/epdg/EpdgOperatorConstants;->PDPD_CHECK_TIMEOUT:I

    .line 266
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->VOWIFI_BLACKLIST_BLOCKING:Z

    .line 267
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_DOWNGRADED_VIDEO_CALL:Z

    .line 268
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_MULTIPLE_EPDGIP:Z

    .line 269
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_WIFI_OVER_IPME:Z

    .line 270
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->KEEP_EPDG_CONNECTION_WHILE_VOWIFI_SESSION_ON:Z

    .line 271
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_WIFI_RSSI_POLLING:Z

    .line 272
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_ACCEPT_AS_VOICE_WITH_DOWNGRADED_VIDEO_CALL:Z

    goto/16 :goto_0

    .line 273
    :cond_a
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorCTI()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 275
    sput v3, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_APN_ID:I

    .line 276
    sput v1, Lcom/sec/epdg/EpdgOperatorConstants;->INTERNET_APN_ID:I

    .line 277
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->DELAY_L2W_AND_W2L:Z

    .line 278
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SEPARATE_VIDEO_FROM_VOWIFI:Z

    .line 279
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->DELAY_HO_UNTIL_REGI_FINISHED:Z

    .line 280
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->EMERGENCY_CALLBACK_MODE:Z

    .line 281
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOWIFI_PROVISIONING:Z

    .line 282
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_CDMA_NETWORK:Z

    .line 283
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_KEEP_ALIVE:Z

    .line 284
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->CHANGE_PREFERREDMODE_AT_ROAMING:Z

    .line 285
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->CDMA_PROFILING:Z

    .line 286
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->LTE_PROFILING:Z

    .line 287
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->LTE_IDLE_PROFILING:Z

    .line 288
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_CALL_MONITORING:Z

    .line 289
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_REGISTRATION_MONITORING:Z

    .line 290
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOLTE:Z

    .line 291
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_IMSI_FROM_IMPI:Z

    .line 292
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->WIFI_THRESHOLD_BASED_HO:Z

    .line 293
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->DISCONNECT_AFTER_DEREGI:Z

    .line 294
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->HAS_DIFFERENT_ROAMING_POLICY:Z

    .line 295
    sput v5, Lcom/sec/epdg/EpdgOperatorConstants;->PDPD_CHECK_TIMEOUT:I

    .line 296
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->VOWIFI_BLACKLIST_BLOCKING:Z

    .line 297
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_DOWNGRADED_VIDEO_CALL:Z

    .line 298
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_MULTIPLE_EPDGIP:Z

    .line 299
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_WIFI_OVER_IPME:Z

    .line 300
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->KEEP_EPDG_CONNECTION_WHILE_VOWIFI_SESSION_ON:Z

    .line 301
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_WIFI_RSSI_POLLING:Z

    .line 302
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_ACCEPT_AS_VOICE_WITH_DOWNGRADED_VIDEO_CALL:Z

    goto/16 :goto_0

    .line 304
    :cond_b
    sput v3, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_APN_ID:I

    .line 305
    sput v1, Lcom/sec/epdg/EpdgOperatorConstants;->INTERNET_APN_ID:I

    .line 306
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->DELAY_L2W_AND_W2L:Z

    .line 307
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SEPARATE_VIDEO_FROM_VOWIFI:Z

    .line 308
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->DELAY_HO_UNTIL_REGI_FINISHED:Z

    .line 309
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->EMERGENCY_CALLBACK_MODE:Z

    .line 310
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOWIFI_PROVISIONING:Z

    .line 311
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_CDMA_NETWORK:Z

    .line 312
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_KEEP_ALIVE:Z

    .line 313
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->CHANGE_PREFERREDMODE_AT_ROAMING:Z

    .line 314
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->CDMA_PROFILING:Z

    .line 315
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->LTE_PROFILING:Z

    .line 316
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->LTE_IDLE_PROFILING:Z

    .line 317
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_CALL_MONITORING:Z

    .line 318
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_REGISTRATION_MONITORING:Z

    .line 319
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOLTE:Z

    .line 320
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_IMSI_FROM_IMPI:Z

    .line 321
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->WIFI_THRESHOLD_BASED_HO:Z

    .line 322
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->DISCONNECT_AFTER_DEREGI:Z

    .line 323
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->HAS_DIFFERENT_ROAMING_POLICY:Z

    .line 324
    sput v5, Lcom/sec/epdg/EpdgOperatorConstants;->PDPD_CHECK_TIMEOUT:I

    .line 325
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->VOWIFI_BLACKLIST_BLOCKING:Z

    .line 326
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_DOWNGRADED_VIDEO_CALL:Z

    .line 327
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_MULTIPLE_EPDGIP:Z

    .line 328
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_WIFI_OVER_IPME:Z

    .line 329
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->KEEP_EPDG_CONNECTION_WHILE_VOWIFI_SESSION_ON:Z

    .line 330
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_WIFI_RSSI_POLLING:Z

    .line 331
    sput-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_ACCEPT_AS_VOICE_WITH_DOWNGRADED_VIDEO_CALL:Z

    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

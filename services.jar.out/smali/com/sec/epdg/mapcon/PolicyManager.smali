.class public Lcom/sec/epdg/mapcon/PolicyManager;
.super Ljava/lang/Object;
.source "PolicyManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "[PolicyMgr]"

.field private static mIfomTable:Lcom/sec/epdg/mapcon/IfomTable;

.field private static mInstance:Lcom/sec/epdg/mapcon/PolicyManager;

.field private static mMapconTable:Lcom/sec/epdg/mapcon/MapconTable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    sput-object v0, Lcom/sec/epdg/mapcon/PolicyManager;->mInstance:Lcom/sec/epdg/mapcon/PolicyManager;

    .line 20
    sput-object v0, Lcom/sec/epdg/mapcon/PolicyManager;->mMapconTable:Lcom/sec/epdg/mapcon/MapconTable;

    .line 21
    sput-object v0, Lcom/sec/epdg/mapcon/PolicyManager;->mIfomTable:Lcom/sec/epdg/mapcon/IfomTable;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v0

    sput-object v0, Lcom/sec/epdg/mapcon/PolicyManager;->mMapconTable:Lcom/sec/epdg/mapcon/MapconTable;

    .line 37
    invoke-static {}, Lcom/sec/epdg/mapcon/IfomTable;->getInstance()Lcom/sec/epdg/mapcon/IfomTable;

    move-result-object v0

    sput-object v0, Lcom/sec/epdg/mapcon/PolicyManager;->mIfomTable:Lcom/sec/epdg/mapcon/IfomTable;

    .line 38
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/sec/epdg/mapcon/PolicyManager;
    .locals 2

    .prologue
    .line 24
    const-class v1, Lcom/sec/epdg/mapcon/PolicyManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/epdg/mapcon/PolicyManager;->mInstance:Lcom/sec/epdg/mapcon/PolicyManager;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/sec/epdg/mapcon/PolicyManager;

    invoke-direct {v0}, Lcom/sec/epdg/mapcon/PolicyManager;-><init>()V

    sput-object v0, Lcom/sec/epdg/mapcon/PolicyManager;->mInstance:Lcom/sec/epdg/mapcon/PolicyManager;

    .line 27
    :cond_0
    sget-object v0, Lcom/sec/epdg/mapcon/PolicyManager;->mInstance:Lcom/sec/epdg/mapcon/PolicyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized createPolicyTable(Landroid/content/Context;ZZ)Z
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "mapcon"    # Z
    .param p3, "appPolicy"    # Z

    .prologue
    .line 166
    monitor-enter p0

    const/4 v0, 0x0

    .line 167
    .local v0, "result":Z
    if-eqz p2, :cond_0

    .line 168
    :try_start_0
    sget-object v2, Lcom/sec/epdg/mapcon/PolicyManager;->mMapconTable:Lcom/sec/epdg/mapcon/MapconTable;

    invoke-virtual {v2, p1}, Lcom/sec/epdg/mapcon/MapconTable;->createMapconTable(Landroid/content/Context;)Z

    move-result v0

    .line 169
    if-nez v0, :cond_0

    .line 170
    const-string v2, "[PolicyMgr]"

    const-string v3, "error to create MAPCON table"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v0

    .line 180
    .end local v0    # "result":Z
    .local v1, "result":Z
    :goto_0
    monitor-exit p0

    return v1

    .line 174
    .end local v1    # "result":Z
    .restart local v0    # "result":Z
    :cond_0
    if-eqz p3, :cond_1

    .line 175
    :try_start_1
    sget-object v2, Lcom/sec/epdg/mapcon/PolicyManager;->mIfomTable:Lcom/sec/epdg/mapcon/IfomTable;

    invoke-virtual {v2, p1}, Lcom/sec/epdg/mapcon/IfomTable;->createIfomTable(Landroid/content/Context;)Z

    move-result v0

    .line 176
    if-nez v0, :cond_1

    .line 177
    const-string v2, "[PolicyMgr]"

    const-string v3, "error to create IFOM table"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    move v1, v0

    .line 180
    .end local v0    # "result":Z
    .restart local v1    # "result":Z
    goto :goto_0

    .line 166
    .end local v1    # "result":Z
    .restart local v0    # "result":Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public isL2WRecommended(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "rule"    # Ljava/lang/String;

    .prologue
    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, "result":Z
    if-nez p1, :cond_1

    .line 99
    const-string v1, "[PolicyMgr]"

    const-string v2, "isL2WRecommended(): null apnType"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_0
    :goto_0
    const-string v1, "[PolicyMgr]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isL2WRecommended(): result is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return v0

    .line 100
    :cond_1
    invoke-static {}, Lcom/sec/epdg/EpdgService;->isEpdgAvailable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 101
    const-string v1, "[PolicyMgr]"

    const-string v2, "isL2WRecommended(): EPDG not available"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_2
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsAirplaneMode()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getIsVoWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 103
    const-string v1, "[PolicyMgr]"

    const-string v2, "isL2WRecommended(): Airplane mode ON"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const/4 v0, 0x1

    goto :goto_0

    .line 106
    :cond_3
    sget-object v1, Lcom/sec/epdg/mapcon/PolicyManager;->mIfomTable:Lcom/sec/epdg/mapcon/IfomTable;

    invoke-virtual {v1, p2, p1}, Lcom/sec/epdg/mapcon/IfomTable;->checkIsRuleforApn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 107
    const-string v1, "[PolicyMgr]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isL2WRecommended: LTE ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsLteAvailable()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") CS ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCsAvailable()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") VoWIFI ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getIsVoWifiEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") call ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    sget-object v1, Lcom/sec/epdg/mapcon/PolicyManager;->mIfomTable:Lcom/sec/epdg/mapcon/IfomTable;

    invoke-virtual {v1, p2}, Lcom/sec/epdg/mapcon/IfomTable;->shouldMoveToWifi(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 113
    const-string v1, "[PolicyMgr]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isL2WRecommended: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should go to WLAN"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const/4 v0, 0x1

    .line 140
    :cond_4
    :goto_1
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorAtt()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getIsVoWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "e911call"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 141
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 115
    :cond_5
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsLteAvailable()Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Lcom/sec/epdg/mapcon/PolicyManager;->mIfomTable:Lcom/sec/epdg/mapcon/IfomTable;

    invoke-virtual {v1, p2}, Lcom/sec/epdg/mapcon/IfomTable;->shouldMoveToWifiInNoLte(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 118
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorAtt()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getIsVoWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_6

    .line 119
    const-string v1, "[PolicyMgr]"

    const-string v2, "isL2WRecommended: No LTE but vowifi disabled. WLAN not allowed"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const/4 v0, 0x0

    goto :goto_1

    .line 122
    :cond_6
    const-string v1, "[PolicyMgr]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isL2WRecommended: No LTE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should go to WLAN"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const/4 v0, 0x1

    goto :goto_1

    .line 125
    :cond_7
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorAtt()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsLteAvailable()Z

    move-result v1

    if-nez v1, :cond_9

    sget-object v1, Lcom/sec/epdg/mapcon/PolicyManager;->mIfomTable:Lcom/sec/epdg/mapcon/IfomTable;

    invoke-virtual {v1, p2}, Lcom/sec/epdg/mapcon/IfomTable;->shouldLeaveFromWIFIInNoLte(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getIsVoWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCellularAvailable()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_8

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v1

    const/16 v2, 0x12

    if-ne v1, v2, :cond_9

    .line 129
    :cond_8
    const-string v1, "[PolicyMgr]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isL2WRecommended: No LTE&CS or weak LTE&CS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should go to WLAN"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 131
    :cond_9
    sget-object v1, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_FALSE:Lcom/sec/epdg/EpdgConstants$TriState;

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getIsVoLteEnabled()Lcom/sec/epdg/EpdgConstants$TriState;

    move-result-object v2

    if-ne v1, v2, :cond_a

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCsAvailable()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getIsVoWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 134
    const-string v1, "[PolicyMgr]"

    const-string v2, "isL2WRecommended: LTE (good) + VoLTE off + no CS + VoWIFI on"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 136
    :cond_a
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsLteAvailable()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIpmeStatus()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getIsVoWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 137
    const-string v1, "[PolicyMgr]"

    const-string v2, "LTE weak, IPME on L2W recommended for ATT"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 145
    :cond_b
    sget-object v1, Lcom/sec/epdg/mapcon/PolicyManager;->mMapconTable:Lcom/sec/epdg/mapcon/MapconTable;

    invoke-virtual {v1, p1}, Lcom/sec/epdg/mapcon/MapconTable;->shouldMoveToWifi(Ljava/lang/String;)Z

    move-result v0

    .line 146
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsLteAvailable()Z

    move-result v1

    if-nez v1, :cond_c

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorAtt()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "e911call"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getIsVoWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 147
    const-string v1, "[PolicyMgr]"

    const-string v2, "LTE weak and during e911, L2W recommended for ATT"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const/4 v0, 0x1

    .line 150
    :cond_c
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getIsVoWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsLteAvailable()Z

    move-result v1

    if-nez v1, :cond_d

    if-nez v0, :cond_d

    .line 152
    const/4 v0, 0x1

    .line 154
    :cond_d
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getCpThresholdConditionForHandover()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 155
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public isW2LRecommended(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "rule"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0xd

    .line 41
    const/4 v0, 0x0

    .line 42
    .local v0, "result":Z
    if-nez p1, :cond_1

    .line 43
    const-string v1, "[PolicyMgr]"

    const-string v2, "isW2LRecommended(): null apnType"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_0
    :goto_0
    const-string v1, "[PolicyMgr]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isW2LRecommended(): result is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return v0

    .line 44
    :cond_1
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCellularAvailable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 45
    const-string v1, "[PolicyMgr]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isW2LRecommended(): TELEPHONY in service ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCellularAvailable()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const/4 v0, 0x0

    goto :goto_0

    .line 47
    :cond_2
    invoke-static {}, Lcom/sec/epdg/EpdgService;->isEpdgAvailable()Z

    move-result v1

    if-nez v1, :cond_3

    .line 48
    const-string v1, "[PolicyMgr]"

    const-string v2, "isW2LRecommended(): EPDG not available"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const/4 v0, 0x1

    goto :goto_0

    .line 50
    :cond_3
    sget-object v1, Lcom/sec/epdg/mapcon/PolicyManager;->mMapconTable:Lcom/sec/epdg/mapcon/MapconTable;

    invoke-virtual {v1, p1}, Lcom/sec/epdg/mapcon/MapconTable;->IsLteOnlyAllowed(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 51
    const-string v1, "[PolicyMgr]"

    const-string v2, "isW2LRecommended(): only LTE is allowed RAT"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const/4 v0, 0x1

    goto :goto_0

    .line 54
    :cond_4
    sget-object v1, Lcom/sec/epdg/mapcon/PolicyManager;->mIfomTable:Lcom/sec/epdg/mapcon/IfomTable;

    invoke-virtual {v1, p2, p1}, Lcom/sec/epdg/mapcon/IfomTable;->checkIsRuleforApn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 55
    const-string v1, "[PolicyMgr]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isW2LRecommended(): LTE ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsLteAvailable()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") CS ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCsAvailable()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") VoWIFI ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getIsVoWifiEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") call ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    sget-object v1, Lcom/sec/epdg/mapcon/PolicyManager;->mIfomTable:Lcom/sec/epdg/mapcon/IfomTable;

    invoke-virtual {v1, p2}, Lcom/sec/epdg/mapcon/IfomTable;->shouldMoveToLte(Ljava/lang/String;)Z

    move-result v0

    .line 60
    if-eqz v0, :cond_8

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsLteAvailable()Z

    move-result v1

    if-nez v1, :cond_8

    .line 61
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v1

    if-eq v1, v4, :cond_5

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v1

    const/16 v2, 0x12

    if-ne v1, v2, :cond_7

    :cond_5
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getIsVoWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 63
    const/4 v0, 0x0

    .line 64
    const-string v1, "[PolicyMgr]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isW2LRecommended: weak LTE/CS, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " goes to CS ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_6
    :goto_1
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorAtt()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getIsVoWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 66
    :cond_7
    sget-object v1, Lcom/sec/epdg/mapcon/PolicyManager;->mIfomTable:Lcom/sec/epdg/mapcon/IfomTable;

    invoke-virtual {v1, p2}, Lcom/sec/epdg/mapcon/IfomTable;->shouldLeaveFromWIFIInNoLte(Ljava/lang/String;)Z

    move-result v0

    .line 67
    const-string v1, "[PolicyMgr]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isW2LRecommended: no LTE, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " goes to CS ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 69
    :cond_8
    if-eqz v0, :cond_6

    sget-object v1, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_FALSE:Lcom/sec/epdg/EpdgConstants$TriState;

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getIsVoLteEnabled()Lcom/sec/epdg/EpdgConstants$TriState;

    move-result-object v2

    if-ne v1, v2, :cond_6

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getIsVoWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 71
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCsAvailable()Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/EpdgConstants$TriState;

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getIsVideoEnabled()Lcom/sec/epdg/EpdgConstants$TriState;

    move-result-object v2

    if-ne v1, v2, :cond_6

    .line 73
    :cond_9
    const/4 v0, 0x0

    .line 74
    const-string v1, "[PolicyMgr]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isW2LRecommended: LTE (good) + VoLTE off + VoWIFI on + cs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCsAvailable()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 82
    :cond_a
    sget-object v1, Lcom/sec/epdg/mapcon/PolicyManager;->mMapconTable:Lcom/sec/epdg/mapcon/MapconTable;

    invoke-virtual {v1, p1}, Lcom/sec/epdg/mapcon/MapconTable;->shouldMoveToLte(Ljava/lang/String;)Z

    move-result v0

    .line 83
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getIsVoWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_b

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsLteAvailable()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v1

    if-ne v1, v4, :cond_b

    .line 85
    const/4 v0, 0x0

    .line 87
    :cond_b
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getCpThresholdConditionForHandover()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 88
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 32
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/epdg/mapcon/PolicyManager;->mMapconTable:Lcom/sec/epdg/mapcon/MapconTable;

    invoke-virtual {v1}, Lcom/sec/epdg/mapcon/MapconTable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/mapcon/PolicyManager;->mIfomTable:Lcom/sec/epdg/mapcon/IfomTable;

    invoke-virtual {v1}, Lcom/sec/epdg/mapcon/IfomTable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateAppPolicy(Landroid/content/Context;Ljava/lang/String;Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "appType"    # Ljava/lang/String;
    .param p3, "preferOrder"    # Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    .prologue
    .line 192
    sget-object v0, Lcom/sec/epdg/mapcon/PolicyManager;->mIfomTable:Lcom/sec/epdg/mapcon/IfomTable;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/epdg/mapcon/IfomTable;->updateIfomTable(Landroid/content/Context;Ljava/lang/String;Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;)V

    .line 193
    return-void
.end method

.method public updateAppPolicy(Landroid/content/Context;[Ljava/lang/String;Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "appTypeList"    # [Ljava/lang/String;
    .param p3, "preferOrder"    # Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    .prologue
    .line 196
    sget-object v0, Lcom/sec/epdg/mapcon/PolicyManager;->mIfomTable:Lcom/sec/epdg/mapcon/IfomTable;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/epdg/mapcon/IfomTable;->updateIfomTable(Landroid/content/Context;[Ljava/lang/String;Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;)V

    .line 197
    return-void
.end method

.method public updateMapconTable(Landroid/content/Context;Ljava/lang/String;Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "apntype"    # Ljava/lang/String;
    .param p3, "preferOrder"    # Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    .prologue
    .line 184
    sget-object v0, Lcom/sec/epdg/mapcon/PolicyManager;->mMapconTable:Lcom/sec/epdg/mapcon/MapconTable;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/epdg/mapcon/MapconTable;->updateMapconTable(Landroid/content/Context;Ljava/lang/String;Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;)V

    .line 185
    return-void
.end method

.method public updateMapconTable(Landroid/content/Context;[Ljava/lang/String;Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "apntypeList"    # [Ljava/lang/String;
    .param p3, "preferOrder"    # Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    .prologue
    .line 188
    sget-object v0, Lcom/sec/epdg/mapcon/PolicyManager;->mMapconTable:Lcom/sec/epdg/mapcon/MapconTable;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/epdg/mapcon/MapconTable;->updateMapconTable(Landroid/content/Context;[Ljava/lang/String;Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;)V

    .line 189
    return-void
.end method

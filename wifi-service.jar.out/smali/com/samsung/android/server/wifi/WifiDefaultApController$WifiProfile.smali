.class Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;
.super Ljava/lang/Object;
.source "WifiDefaultApController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/WifiDefaultApController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiProfile"
.end annotation


# static fields
.field private static final fileDefaultNamedata:Ljava/lang/String; = "/system/etc/wifi/default_ap.conf"

.field private static final fileGeneralNwInfo:Ljava/lang/String; = "/data/misc/wifi/generalinfo_nw.conf"

.field private static final fileNamedata:Ljava/lang/String; = "/data/misc/wifi/default_ap.conf"

.field private static final filePrevNetworkName:Ljava/lang/String; = "/data/misc/wifi/prev_networkname.conf"


# instance fields
.field private fileDefaultPath:Ljava/io/File;

.field private filePath:Ljava/io/File;

.field private mWifiNative:Lcom/android/server/wifi/WifiNative;

.field final synthetic this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;


# direct methods
.method private constructor <init>(Lcom/samsung/android/server/wifi/WifiDefaultApController;)V
    .locals 0

    .prologue
    .line 484
    iput-object p1, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/WifiDefaultApController;Lcom/samsung/android/server/wifi/WifiDefaultApController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/server/wifi/WifiDefaultApController;
    .param p2, "x1"    # Lcom/samsung/android/server/wifi/WifiDefaultApController$1;

    .prologue
    .line 484
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;-><init>(Lcom/samsung/android/server/wifi/WifiDefaultApController;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;
    .param p1, "x1"    # Z

    .prologue
    .line 484
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->checkWifiProfileLoaded(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;
    .param p1, "x1"    # Z

    .prologue
    .line 484
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->checkWifiVendorProfile(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;

    .prologue
    .line 484
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->getGeneralNwInfo()V

    return-void
.end method

.method static synthetic access$1700(Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;

    .prologue
    .line 484
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->getPrevNwInfo()V

    return-void
.end method

.method static synthetic access$1800(Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;

    .prologue
    .line 484
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->checkNetworkName()V

    return-void
.end method

.method static synthetic access$2100(Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;

    .prologue
    .line 484
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->removeChangedWifiProfile()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;

    .prologue
    .line 484
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->getVendorApInfo()V

    return-void
.end method

.method static synthetic access$4400(Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 484
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->getVendorApInfoFromFile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;
    .param p1, "x1"    # I

    .prologue
    .line 484
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->addWifiVendorProfile(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;

    .prologue
    .line 484
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->removeVendorWifiProfile()V

    return-void
.end method

.method private addWifiVendorProfile(I)Z
    .locals 20
    .param p1, "i"    # I

    .prologue
    .line 970
    const/4 v6, 0x0

    .line 972
    .local v6, "mRes":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v17, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApSsidList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2900(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v17

    if-nez v17, :cond_0

    .line 973
    const-string v17, "WifiDefaultApController"

    const-string v18, "addWifiVendorProfile - mDefaultApSsidList is null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    const/16 v17, 0x0

    .line 1052
    :goto_0
    return v17

    .line 977
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v17, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApSsidList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2900(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 978
    .local v8, "networkCount":I
    move/from16 v0, p1

    if-ge v8, v0, :cond_1

    .line 979
    const-string v17, "WifiDefaultApController"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "addWifiVendorProfile - default ap index over ,networkCount("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "), index("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    const/16 v17, 0x0

    goto :goto_0

    .line 983
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v17, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApSsidList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2900(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 984
    .local v16, "ssid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v17, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApKeymgmtLIst:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$3000(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 985
    .local v14, "securityType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v17, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApPriorityList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$3200(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 986
    .local v12, "priority":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v17, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApEapList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$3400(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 987
    .local v3, "eap":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v17, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApNetworknameList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$3500(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 988
    .local v9, "networkname":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v17, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApSpnameList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$3600(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 989
    .local v15, "spname":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v17, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApIdentityList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$3700(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 990
    .local v5, "identity":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v17, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApPasswordList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$3300(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 991
    .local v10, "password":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v17, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApPhaseList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$3800(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 992
    .local v11, "phase2":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v17, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApPskList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$3900(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 993
    .local v13, "psk":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v17, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApHiddenSsidScanList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$4000(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 995
    .local v4, "hiddenssid":Ljava/lang/String;
    new-instance v7, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v7}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 996
    .local v7, "mWifiConfig":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v7, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 997
    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v7, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 998
    const/16 v17, 0x2

    move/from16 v0, v17

    iput v0, v7, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 999
    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v7, Landroid/net/wifi/WifiConfiguration;->isVendorSpecificSsid:Z

    .line 1001
    const-string v17, "WifiDefaultApController"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "addWifiVendorProfile: ssid ("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "), psk("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "), securityType("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "), priority("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "), scan_ssid("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "), eap("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "), networkName("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "), spName("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 1007
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    iput v0, v7, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 1008
    :cond_2
    const-string v17, "WPA-EAP IEEE8021X"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 1009
    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Ljava/util/BitSet;->set(I)V

    .line 1010
    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v17, v0

    const/16 v18, 0x3

    invoke-virtual/range {v17 .. v18}, Ljava/util/BitSet;->set(I)V

    .line 1016
    :cond_3
    :goto_1
    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_4

    .line 1017
    iput-object v13, v7, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 1019
    :cond_4
    const-string v17, "SIM"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 1020
    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 1028
    :cond_5
    :goto_2
    const-string v17, "None"

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_f

    .line 1029
    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 1035
    :cond_6
    :goto_3
    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_7

    .line 1036
    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 1037
    :cond_7
    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_8

    .line 1038
    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    .line 1039
    :cond_8
    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_9

    const-string v17, "0"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 1040
    const/16 v17, 0x0

    move/from16 v0, v17

    iput-boolean v0, v7, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 1042
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v17, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiService:Lcom/android/server/wifi/WifiServiceImpl;
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$600(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Lcom/android/server/wifi/WifiServiceImpl;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lcom/android/server/wifi/WifiServiceImpl;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v6

    .line 1043
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v6, v0, :cond_11

    .line 1044
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v17, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiService:Lcom/android/server/wifi/WifiServiceImpl;
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$600(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Lcom/android/server/wifi/WifiServiceImpl;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v6, v1}, Lcom/android/server/wifi/WifiServiceImpl;->enableNetwork(IZ)Z

    .line 1049
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 1011
    :cond_a
    const-string v17, "WPA-PSK"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 1012
    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Ljava/util/BitSet;->set(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 1050
    .end local v3    # "eap":Ljava/lang/String;
    .end local v4    # "hiddenssid":Ljava/lang/String;
    .end local v5    # "identity":Ljava/lang/String;
    .end local v7    # "mWifiConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v8    # "networkCount":I
    .end local v9    # "networkname":Ljava/lang/String;
    .end local v10    # "password":Ljava/lang/String;
    .end local v11    # "phase2":Ljava/lang/String;
    .end local v12    # "priority":Ljava/lang/String;
    .end local v13    # "psk":Ljava/lang/String;
    .end local v14    # "securityType":Ljava/lang/String;
    .end local v15    # "spname":Ljava/lang/String;
    .end local v16    # "ssid":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1051
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string v17, "WifiDefaultApController"

    const-string v18, "addWifiVendorProfile - NullPointerException"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 1013
    .end local v2    # "e":Ljava/lang/NullPointerException;
    .restart local v3    # "eap":Ljava/lang/String;
    .restart local v4    # "hiddenssid":Ljava/lang/String;
    .restart local v5    # "identity":Ljava/lang/String;
    .restart local v7    # "mWifiConfig":Landroid/net/wifi/WifiConfiguration;
    .restart local v8    # "networkCount":I
    .restart local v9    # "networkname":Ljava/lang/String;
    .restart local v10    # "password":Ljava/lang/String;
    .restart local v11    # "phase2":Ljava/lang/String;
    .restart local v12    # "priority":Ljava/lang/String;
    .restart local v13    # "psk":Ljava/lang/String;
    .restart local v14    # "securityType":Ljava/lang/String;
    .restart local v15    # "spname":Ljava/lang/String;
    .restart local v16    # "ssid":Ljava/lang/String;
    :cond_b
    :try_start_1
    const-string v17, "NONE"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 1014
    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_1

    .line 1021
    :cond_c
    const-string v17, "AKA"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 1022
    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v17, v0

    const/16 v18, 0x5

    invoke-virtual/range {v17 .. v18}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_2

    .line 1023
    :cond_d
    const-string v17, "PEAP"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 1024
    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_2

    .line 1025
    :cond_e
    const-string v17, "TTLS"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 1026
    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_2

    .line 1030
    :cond_f
    const-string v17, "MSCHAPV2"

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_10

    .line 1031
    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v17, v0

    const/16 v18, 0x3

    invoke-virtual/range {v17 .. v18}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_3

    .line 1032
    :cond_10
    const-string v17, "GTC"

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 1033
    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_3

    .line 1046
    :cond_11
    const-string v17, "WifiDefaultApController"

    const-string v18, "addWifiVendorProfile - addOrUpdateNetwork error"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1047
    const/16 v17, 0x0

    goto/16 :goto_0
.end method

.method private checkNetworkName()V
    .locals 11

    .prologue
    .line 929
    const-string v3, ""

    .line 930
    .local v3, "mMCCMNC":Ljava/lang/String;
    const-string v4, ""

    .line 931
    .local v4, "mSPName":Ljava/lang/String;
    const-string v8, "gsm.sim.operator.numeric"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 932
    const-string v8, "gsm.sim.operator.alpha"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 934
    const-string v8, ""

    # setter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mMatchedNetworkName:Ljava/lang/String;
    invoke-static {v8}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$4102(Ljava/lang/String;)Ljava/lang/String;

    .line 935
    const-string v8, "WifiDefaultApController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkNetworkName: mMCCMNC =("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "), mSPName =("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    :try_start_0
    iget-object v8, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mGeneralNwInfoMccmncList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2400(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v8

    if-nez v8, :cond_1

    .line 938
    const-string v8, "WifiDefaultApController"

    const-string v9, "checkNetworkName - mGeneralNwInfoMccmncList is null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    :cond_0
    :goto_0
    return-void

    .line 942
    :cond_1
    iget-object v8, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mGeneralNwInfoMccmncList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2400(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 943
    .local v1, "generalNwInfoCount":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 944
    iget-object v8, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mGeneralNwInfoMccmncList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2400(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 945
    .local v5, "mccmnc":Ljava/lang/String;
    iget-object v8, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mGeneralNwInfoNetworknameList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2500(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 946
    .local v6, "networkname":Ljava/lang/String;
    iget-object v8, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mGeneralNwInfoSpnameList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2600(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 948
    .local v7, "spname":Ljava/lang/String;
    const-string v8, ""

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 949
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->ENABLE_SPNAME:Z
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2700()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 950
    const-string v8, ""

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 951
    # setter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mMatchedNetworkName:Ljava/lang/String;
    invoke-static {v7}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$4102(Ljava/lang/String;)Ljava/lang/String;

    .line 952
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->DBG:Z
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$200()Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "WifiDefaultApController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mMatchedNetworkName(SPName) =("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mMatchedNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$4100()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 962
    .end local v1    # "generalNwInfoCount":I
    .end local v2    # "j":I
    .end local v5    # "mccmnc":Ljava/lang/String;
    .end local v6    # "networkname":Ljava/lang/String;
    .end local v7    # "spname":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 963
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v8, "WifiDefaultApController"

    const-string v9, "checkNetworkName - NullPointerException"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_2
    const-string v8, "WifiDefaultApController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mMatchedNetworkName =("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mMatchedNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$4100()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 956
    .restart local v1    # "generalNwInfoCount":I
    .restart local v2    # "j":I
    .restart local v5    # "mccmnc":Ljava/lang/String;
    .restart local v6    # "networkname":Ljava/lang/String;
    .restart local v7    # "spname":Ljava/lang/String;
    :cond_3
    :try_start_1
    # setter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mMatchedNetworkName:Ljava/lang/String;
    invoke-static {v6}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$4102(Ljava/lang/String;)Ljava/lang/String;

    .line 957
    const-string v8, "WifiDefaultApController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mMatchedNetworkName =("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mMatchedNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$4100()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 943
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1
.end method

.method private checkWifiProfileLoaded(Z)V
    .locals 17
    .param p1, "bCheckNetworkName"    # Z

    .prologue
    .line 860
    const-string v8, ""

    .line 861
    .local v8, "mKeymgmt":Ljava/lang/String;
    const-string v7, ""

    .line 862
    .local v7, "mEap":Ljava/lang/String;
    new-instance v9, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v9}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 863
    .local v9, "mWifiConfig":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiService:Lcom/android/server/wifi/WifiServiceImpl;
    invoke-static {v14}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$600(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Lcom/android/server/wifi/WifiServiceImpl;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/server/wifi/WifiServiceImpl;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 865
    .local v2, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApSsidList:Ljava/util/ArrayList;
    invoke-static {v14}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2900(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v14

    if-eqz v14, :cond_d

    .line 866
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApSsidList:Ljava/util/ArrayList;
    invoke-static {v14}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2900(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 867
    .local v10, "networkCount":I
    const/4 v6, 0x0

    .line 868
    .local v6, "loadedNetworkCount":I
    const/4 v11, 0x0

    .local v11, "p":I
    :goto_0
    if-ge v11, v10, :cond_c

    .line 869
    if-eqz v2, :cond_b

    .line 870
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 871
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    iget-boolean v14, v1, Landroid/net/wifi/WifiConfiguration;->isVendorSpecificSsid:Z

    if-eqz v14, :cond_0

    .line 875
    iget-object v14, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Ljava/util/BitSet;->get(I)Z

    move-result v14

    if-nez v14, :cond_1

    iget-object v14, v9, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v15, 0x3

    invoke-virtual {v14, v15}, Ljava/util/BitSet;->get(I)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 876
    :cond_1
    const-string v8, "WPA-EAP IEEE8021X"

    .line 885
    :goto_2
    iget-object v14, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v14}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v14

    const/4 v15, 0x4

    if-ne v14, v15, :cond_6

    .line 886
    const-string v7, "SIM"

    .line 897
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApSsidList:Ljava/util/ArrayList;
    invoke-static {v14}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2900(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 898
    .local v13, "ssid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApKeymgmtLIst:Ljava/util/ArrayList;
    invoke-static {v14}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$3000(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 899
    .local v12, "securityType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApEapList:Ljava/util/ArrayList;
    invoke-static {v14}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$3400(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 901
    .local v4, "eap":Ljava/lang/String;
    iget-object v14, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    invoke-virtual {v15, v13}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const-string v14, ""

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 903
    :cond_2
    if-eqz p1, :cond_a

    .line 904
    const/4 v14, 0x1

    sput-boolean v14, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiProfileLoaded:Z

    .line 905
    const-string v14, "WifiDefaultApController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "checkWifiProfileLoaded : CheckNetworkname , ssid ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "), securityType["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "] is already saved, mWifiProfileLoaded true"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "eap":Ljava/lang/String;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "loadedNetworkCount":I
    .end local v10    # "networkCount":I
    .end local v11    # "p":I
    .end local v12    # "securityType":Ljava/lang/String;
    .end local v13    # "ssid":Ljava/lang/String;
    :goto_4
    return-void

    .line 877
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v6    # "loadedNetworkCount":I
    .restart local v10    # "networkCount":I
    .restart local v11    # "p":I
    :cond_3
    iget-object v14, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/util/BitSet;->get(I)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 878
    const-string v8, "NONE"

    goto/16 :goto_2

    .line 879
    :cond_4
    iget-object v14, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Ljava/util/BitSet;->get(I)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 880
    const-string v8, "WPA-PSK"

    goto/16 :goto_2

    .line 882
    :cond_5
    const-string v8, ""

    goto/16 :goto_2

    .line 887
    :cond_6
    iget-object v14, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v14}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v14

    const/4 v15, 0x5

    if-ne v14, v15, :cond_7

    .line 888
    const-string v7, "AKA"

    goto/16 :goto_3

    .line 889
    :cond_7
    iget-object v14, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v14}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v14

    if-nez v14, :cond_8

    .line 890
    const-string v7, "PEAP"

    goto/16 :goto_3

    .line 891
    :cond_8
    iget-object v14, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v14}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_9

    .line 892
    const-string v7, "TTLS"

    goto/16 :goto_3

    .line 894
    :cond_9
    const-string v7, ""

    goto/16 :goto_3

    .line 908
    .restart local v4    # "eap":Ljava/lang/String;
    .restart local v12    # "securityType":Ljava/lang/String;
    .restart local v13    # "ssid":Ljava/lang/String;
    :cond_a
    const-string v14, "WifiDefaultApController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "checkWifiProfileLoaded : CheckNetworkname , ssid ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "), securityType["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "] is already saved"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 868
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "eap":Ljava/lang/String;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v12    # "securityType":Ljava/lang/String;
    .end local v13    # "ssid":Ljava/lang/String;
    :cond_b
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 914
    :cond_c
    if-ne v10, v6, :cond_e

    .line 915
    const/4 v14, 0x1

    sput-boolean v14, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiProfileLoaded:Z

    .line 916
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->DBG:Z
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$200()Z

    move-result v14

    if-eqz v14, :cond_d

    const-string v14, "WifiDefaultApController"

    const-string v15, "checkWifiProfileLoaded: DefaultAp is already loaded"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 924
    .end local v6    # "loadedNetworkCount":I
    .end local v10    # "networkCount":I
    .end local v11    # "p":I
    :cond_d
    :goto_5
    const-string v14, "WifiDefaultApController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "checkWifiProfileLoaded : mWifiProfileLoaded("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-boolean v16, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiProfileLoaded:Z

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 918
    .restart local v6    # "loadedNetworkCount":I
    .restart local v10    # "networkCount":I
    .restart local v11    # "p":I
    :cond_e
    :try_start_1
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->DBG:Z
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$200()Z

    move-result v14

    if-eqz v14, :cond_d

    const-string v14, "WifiDefaultApController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "checkWifiProfileLoaded: loadedNetworkCount("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 921
    .end local v6    # "loadedNetworkCount":I
    .end local v10    # "networkCount":I
    .end local v11    # "p":I
    :catch_0
    move-exception v3

    .line 922
    .local v3, "e":Ljava/lang/NullPointerException;
    const-string v14, "WifiDefaultApController"

    const-string v15, "checkWifiProfileLoaded - NullPointerException"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method private checkWifiVendorProfile(Z)V
    .locals 9
    .param p1, "bCheckNetworkName"    # Z

    .prologue
    .line 1057
    iget-object v6, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApSsidList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2900(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v6

    if-nez v6, :cond_1

    .line 1058
    const-string v6, "WifiDefaultApController"

    const-string v7, "checkWifiVendorProfile - mDefaultApSsidList is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    :cond_0
    :goto_0
    return-void

    .line 1062
    :cond_1
    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApSsidList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2900(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1063
    .local v3, "networkCount":I
    const/4 v0, 0x0

    .line 1064
    .local v0, "addedNetworkCount":I
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->DBG:Z
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$200()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "WifiDefaultApController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkWifiVendorProfile: mDefaultAp networkCount("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    :cond_2
    if-lez v3, :cond_0

    .line 1066
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_7

    .line 1067
    if-nez p1, :cond_4

    .line 1068
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->addWifiVendorProfile(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1069
    add-int/lit8 v0, v0, 0x1

    .line 1066
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1072
    :cond_4
    iget-object v6, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApNetworknameList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$3500(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1073
    .local v4, "networkname":Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApSpnameList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$3600(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1074
    .local v5, "spname":Ljava/lang/String;
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->DBG:Z
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$200()Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "WifiDefaultApController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " mDefaultAp["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] : spame=("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "), networkname=("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    :cond_5
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->ENABLE_SPNAME:Z
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2700()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1076
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mMatchedPrevNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2000()Ljava/lang/String;

    move-result-object v6

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mMatchedNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$4100()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mMatchedNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$4100()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1077
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->addWifiVendorProfile(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1078
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1082
    :cond_6
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mMatchedPrevNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2000()Ljava/lang/String;

    move-result-object v6

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mMatchedNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$4100()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mMatchedNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$4100()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1083
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->addWifiVendorProfile(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1084
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 1090
    .end local v4    # "networkname":Ljava/lang/String;
    .end local v5    # "spname":Ljava/lang/String;
    :cond_7
    if-ne v3, v0, :cond_0

    .line 1091
    const/4 v6, 0x1

    sput-boolean v6, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mFirstScanAddProfile:Z

    .line 1092
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->DBG:Z
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$200()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "WifiDefaultApController"

    const-string v7, "checkWifiVendorProfile: mDefaultAp add success"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1095
    .end local v0    # "addedNetworkCount":I
    .end local v2    # "i":I
    .end local v3    # "networkCount":I
    :catch_0
    move-exception v1

    .line 1096
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v6, "WifiDefaultApController"

    const-string v7, "checkWifiVendorProfile - NullPointerException"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private getGeneralNwInfo()V
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mGeneralNwInfoMccmncList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2400(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mGeneralNwInfoMccmncList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2400(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 521
    :cond_0
    :goto_0
    return-void

    .line 517
    :cond_1
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathGeneralNwInfo:Ljava/io/File;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$1100()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->clearGeneralNwInfoList()V

    .line 519
    const-string v0, "/data/misc/wifi/generalinfo_nw.conf"

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->getGeneralNwInfoFromFile(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getGeneralNwInfoFromFile(Ljava/lang/String;)V
    .locals 16
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 755
    const/4 v8, 0x0

    .line 757
    .local v8, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/FileReader;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 759
    .end local v8    # "in":Ljava/io/BufferedReader;
    .local v9, "in":Ljava/io/BufferedReader;
    :try_start_1
    const-string v1, ""

    .line 760
    .local v1, "buf1":Ljava/lang/String;
    const-string v2, ""

    .line 761
    .local v2, "buf2":Ljava/lang/String;
    const-string v3, ""

    .line 762
    .local v3, "buf3":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "bufLine":Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 763
    const-string v13, "mccmnc=\""

    invoke-virtual {v4, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 764
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 765
    .local v10, "mccmnc":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x22

    invoke-virtual {v10, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    const/16 v15, 0x22

    invoke-virtual {v10, v15}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v15

    invoke-virtual {v10, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 774
    .end local v10    # "mccmnc":Ljava/lang/String;
    :cond_1
    :goto_1
    const-string v13, "}"

    invoke-virtual {v4, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 775
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mGeneralNwInfoMccmncList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2400(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 776
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mGeneralNwInfoNetworknameList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2500(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 777
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mGeneralNwInfoSpnameList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2600(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 778
    const-string v1, ""

    .line 779
    const-string v2, ""

    .line 780
    const-string v3, ""

    goto :goto_0

    .line 766
    :cond_2
    const-string v13, "networkname=\""

    invoke-virtual {v4, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 767
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 768
    .local v11, "networkname":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x22

    invoke-virtual {v11, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    const/16 v15, 0x22

    invoke-virtual {v11, v15}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v15

    invoke-virtual {v11, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 769
    goto :goto_1

    .end local v11    # "networkname":Ljava/lang/String;
    :cond_3
    const-string v13, "spname=\""

    invoke-virtual {v4, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 770
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 771
    .local v12, "spname":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x22

    invoke-virtual {v12, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    const/16 v15, 0x22

    invoke-virtual {v12, v15}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v15

    invoke-virtual {v12, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    goto/16 :goto_1

    .line 787
    .end local v12    # "spname":Ljava/lang/String;
    :cond_4
    if-eqz v9, :cond_5

    .line 789
    :try_start_2
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 797
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mGeneralNwInfoMccmncList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2400(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v13

    if-nez v13, :cond_8

    .line 798
    const-string v13, "WifiDefaultApController"

    const-string v14, "getGeneralNwInfoFromFile - mGeneralNwInfoMccmncList is null"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v9

    .line 810
    .end local v1    # "buf1":Ljava/lang/String;
    .end local v2    # "buf2":Ljava/lang/String;
    .end local v3    # "buf3":Ljava/lang/String;
    .end local v4    # "bufLine":Ljava/lang/String;
    .end local v9    # "in":Ljava/io/BufferedReader;
    .restart local v8    # "in":Ljava/io/BufferedReader;
    :cond_6
    :goto_2
    return-void

    .line 790
    .end local v8    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "buf1":Ljava/lang/String;
    .restart local v2    # "buf2":Ljava/lang/String;
    .restart local v3    # "buf3":Ljava/lang/String;
    .restart local v4    # "bufLine":Ljava/lang/String;
    .restart local v9    # "in":Ljava/io/BufferedReader;
    :catch_0
    move-exception v5

    .line 791
    .local v5, "e":Ljava/io/IOException;
    const-string v13, "WifiDefaultApController"

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v9

    .line 792
    .end local v9    # "in":Ljava/io/BufferedReader;
    .restart local v8    # "in":Ljava/io/BufferedReader;
    goto :goto_2

    .line 783
    .end local v1    # "buf1":Ljava/lang/String;
    .end local v2    # "buf2":Ljava/lang/String;
    .end local v3    # "buf3":Ljava/lang/String;
    .end local v4    # "bufLine":Ljava/lang/String;
    .end local v5    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v5

    .line 784
    .restart local v5    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_3
    const-string v13, "WifiDefaultApController"

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 787
    if-eqz v8, :cond_6

    .line 789
    :try_start_4
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 790
    :catch_2
    move-exception v5

    .line 791
    const-string v13, "WifiDefaultApController"

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 787
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v13

    :goto_4
    if-eqz v8, :cond_7

    .line 789
    :try_start_5
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 792
    :cond_7
    throw v13

    .line 790
    :catch_3
    move-exception v5

    .line 791
    .restart local v5    # "e":Ljava/io/IOException;
    const-string v13, "WifiDefaultApController"

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 802
    .end local v5    # "e":Ljava/io/IOException;
    .end local v8    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "buf1":Ljava/lang/String;
    .restart local v2    # "buf2":Ljava/lang/String;
    .restart local v3    # "buf3":Ljava/lang/String;
    .restart local v4    # "bufLine":Ljava/lang/String;
    .restart local v9    # "in":Ljava/io/BufferedReader;
    :cond_8
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->DBG:Z
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$200()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 803
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mGeneralNwInfoMccmncList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2400(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 804
    .local v6, "generalNwInfoCount":I
    const-string v13, "WifiDefaultApController"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getGeneralNwInfoFromFile : generalNwInfoCount["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_5
    if-ge v7, v6, :cond_9

    .line 806
    const-string v14, "WifiDefaultApController"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getGeneralNwInfoFromFile["

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, "]: mccmnc("

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mGeneralNwInfoMccmncList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2400(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, "), networkname("

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mGeneralNwInfoNetworknameList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2500(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, "), spname("

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mGeneralNwInfoSpnameList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2600(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, ")"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .end local v6    # "generalNwInfoCount":I
    .end local v7    # "i":I
    :cond_9
    move-object v8, v9

    .line 810
    .end local v9    # "in":Ljava/io/BufferedReader;
    .restart local v8    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_2

    .line 787
    .end local v1    # "buf1":Ljava/lang/String;
    .end local v2    # "buf2":Ljava/lang/String;
    .end local v3    # "buf3":Ljava/lang/String;
    .end local v4    # "bufLine":Ljava/lang/String;
    .end local v8    # "in":Ljava/io/BufferedReader;
    .restart local v9    # "in":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v13

    move-object v8, v9

    .end local v9    # "in":Ljava/io/BufferedReader;
    .restart local v8    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_4

    .line 783
    .end local v8    # "in":Ljava/io/BufferedReader;
    .restart local v9    # "in":Ljava/io/BufferedReader;
    :catch_4
    move-exception v5

    move-object v8, v9

    .end local v9    # "in":Ljava/io/BufferedReader;
    .restart local v8    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_3
.end method

.method private getPrevNwInfo()V
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mPrevNetworknameList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$1900(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mPrevNetworknameList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$1900(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 536
    :goto_0
    return-void

    .line 529
    :cond_0
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathPrevNwInfo:Ljava/io/File;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$1200()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 530
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mPrevNetworknameList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$1900(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 531
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mPrevNetworknameList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$1900(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 533
    :cond_1
    const-string v0, "/data/misc/wifi/prev_networkname.conf"

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->getPrevNwInfoFromFile(Ljava/lang/String;)V

    .line 535
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->makePrevNwInfoFile()V

    goto :goto_0
.end method

.method private getPrevNwInfoFromFile(Ljava/lang/String;)V
    .locals 11
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 814
    const/4 v4, 0x0

    .line 816
    .local v4, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 818
    .end local v4    # "in":Ljava/io/BufferedReader;
    .local v5, "in":Ljava/io/BufferedReader;
    :try_start_1
    const-string v0, ""

    .line 820
    .local v0, "buf1":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "bufLine":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 821
    const-string v8, "networkname=\""

    invoke-virtual {v1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 822
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 823
    .local v6, "networkname":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x22

    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    const/16 v10, 0x22

    invoke-virtual {v6, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v10

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 825
    .end local v6    # "networkname":Ljava/lang/String;
    :cond_1
    const-string v8, "}"

    invoke-virtual {v1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 826
    iget-object v8, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mPrevNetworknameList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$1900(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 827
    const-string v0, ""
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 834
    :cond_2
    if-eqz v5, :cond_3

    .line 836
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 844
    :cond_3
    iget-object v8, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mPrevNetworknameList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$1900(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v8

    if-nez v8, :cond_6

    .line 845
    const-string v8, "WifiDefaultApController"

    const-string v9, "getPrevNwInfoFromFile - mPrevNetworknameList is null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .line 856
    .end local v0    # "buf1":Ljava/lang/String;
    .end local v1    # "bufLine":Ljava/lang/String;
    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    :cond_4
    :goto_1
    return-void

    .line 837
    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v0    # "buf1":Ljava/lang/String;
    .restart local v1    # "bufLine":Ljava/lang/String;
    .restart local v5    # "in":Ljava/io/BufferedReader;
    :catch_0
    move-exception v2

    .line 838
    .local v2, "e":Ljava/io/IOException;
    const-string v8, "WifiDefaultApController"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .line 839
    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    goto :goto_1

    .line 830
    .end local v0    # "buf1":Ljava/lang/String;
    .end local v1    # "bufLine":Ljava/lang/String;
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 831
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v8, "WifiDefaultApController"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 834
    if-eqz v4, :cond_4

    .line 836
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 837
    :catch_2
    move-exception v2

    .line 838
    const-string v8, "WifiDefaultApController"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 834
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_3
    if-eqz v4, :cond_5

    .line 836
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 839
    :cond_5
    throw v8

    .line 837
    :catch_3
    move-exception v2

    .line 838
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v8, "WifiDefaultApController"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 849
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v0    # "buf1":Ljava/lang/String;
    .restart local v1    # "bufLine":Ljava/lang/String;
    .restart local v5    # "in":Ljava/io/BufferedReader;
    :cond_6
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->DBG:Z
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$200()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 850
    iget-object v8, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mPrevNetworknameList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$1900(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 851
    .local v7, "prevNwInfoCount":I
    const-string v8, "WifiDefaultApController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getPrevNwInfoFromFile : prevNwInfoCount["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    if-ge v3, v7, :cond_7

    .line 853
    const-string v9, "WifiDefaultApController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getPrevNwInfoFromFile["

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "]: networkname("

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v8, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mPrevNetworknameList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$1900(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ")"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .end local v3    # "i":I
    .end local v7    # "prevNwInfoCount":I
    :cond_7
    move-object v4, v5

    .line 856
    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_1

    .line 834
    .end local v0    # "buf1":Ljava/lang/String;
    .end local v1    # "bufLine":Ljava/lang/String;
    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "in":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    goto :goto_3

    .line 830
    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "in":Ljava/io/BufferedReader;
    :catch_4
    move-exception v2

    move-object v4, v5

    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_2
.end method

.method private getVendorApInfo()V
    .locals 4

    .prologue
    .line 493
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mflagForGotVendorAp:Z
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    :goto_0
    return-void

    .line 496
    :cond_0
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathDefaultAp:Ljava/io/File;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$300()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathDefaultApInSystem:Ljava/io/File;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2300()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathDefaultApInSystem:Ljava/io/File;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2300()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    .line 497
    :cond_1
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->DBG:Z
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$200()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "WifiDefaultApController"

    const-string v1, "getVendorApInfo: default_ap.conf is valid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->clearDefaultApList()V

    .line 499
    const-string v0, "/data/misc/wifi/default_ap.conf"

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->getVendorApInfoFromFile(Ljava/lang/String;)V

    goto :goto_0

    .line 507
    :cond_3
    const-string v0, "WifiDefaultApController"

    const-string v1, "getVendorApInfo - default_ap.conf is unvalid"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getVendorApInfoFromFile(Ljava/lang/String;)V
    .locals 36
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 620
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->DBG:Z
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$200()Z

    move-result v33

    if-eqz v33, :cond_0

    const-string v33, "WifiDefaultApController"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "getVendorApInfoFromFile: path("

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ")"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    :cond_0
    const/4 v11, 0x0

    .line 624
    .local v11, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v12, Ljava/io/BufferedReader;

    new-instance v33, Ljava/io/FileReader;

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    invoke-direct {v12, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 627
    .end local v11    # "in":Ljava/io/BufferedReader;
    .local v12, "in":Ljava/io/BufferedReader;
    :try_start_1
    const-string v30, ""

    .line 628
    .local v30, "ssidbuf":Ljava/lang/String;
    const-string v13, ""

    .line 629
    .local v13, "keymgmtbuf":Ljava/lang/String;
    const-string v32, ""

    .line 630
    .local v32, "wepkeybuf":Ljava/lang/String;
    const-string v22, ""

    .line 631
    .local v22, "prioritybuf":Ljava/lang/String;
    const-string v6, ""

    .line 632
    .local v6, "eapbuf":Ljava/lang/String;
    const-string v16, ""

    .line 633
    .local v16, "networknamebuf":Ljava/lang/String;
    const-string v28, ""

    .line 634
    .local v28, "spnamebuf":Ljava/lang/String;
    const-string v10, ""

    .line 635
    .local v10, "identitybuf":Ljava/lang/String;
    const-string v18, ""

    .line 636
    .local v18, "passwordbuf":Ljava/lang/String;
    const-string v20, ""

    .line 637
    .local v20, "phasebuf":Ljava/lang/String;
    const-string v24, ""

    .line 638
    .local v24, "pskbuf":Ljava/lang/String;
    const-string v7, ""

    .line 640
    .local v7, "hiddenssidbuf":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "bufLine":Ljava/lang/String;
    if-eqz v3, :cond_12

    .line 641
    const-string v33, "ssid=\""

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v33

    if-eqz v33, :cond_2

    .line 642
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v29

    .line 643
    .local v29, "ssid":Ljava/lang/String;
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const/16 v34, 0x22

    move-object/from16 v0, v29

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v34

    add-int/lit8 v34, v34, 0x1

    const/16 v35, 0x22

    move-object/from16 v0, v29

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v35

    move-object/from16 v0, v29

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 645
    .end local v29    # "ssid":Ljava/lang/String;
    :cond_2
    const-string v33, "key_mgmt="

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v33

    if-eqz v33, :cond_3

    .line 646
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    .line 647
    .local v26, "secure":Ljava/lang/String;
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const/16 v34, 0x3d

    move-object/from16 v0, v26

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v34

    add-int/lit8 v34, v34, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 649
    .end local v26    # "secure":Ljava/lang/String;
    :cond_3
    const-string v33, "wep_key0="

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v33

    if-eqz v33, :cond_4

    .line 650
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v31

    .line 651
    .local v31, "wepkey":Ljava/lang/String;
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const/16 v34, 0x3d

    move-object/from16 v0, v31

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v34

    add-int/lit8 v34, v34, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 653
    .end local v31    # "wepkey":Ljava/lang/String;
    :cond_4
    const-string v33, "priority="

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v33

    if-eqz v33, :cond_5

    .line 654
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    .line 655
    .local v21, "priority":Ljava/lang/String;
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const/16 v34, 0x3d

    move-object/from16 v0, v21

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v34

    add-int/lit8 v34, v34, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 657
    .end local v21    # "priority":Ljava/lang/String;
    :cond_5
    const-string v33, "eap="

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v33

    if-eqz v33, :cond_6

    .line 658
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 659
    .local v5, "eap":Ljava/lang/String;
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const/16 v34, 0x3d

    move/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v34

    add-int/lit8 v34, v34, 0x1

    move/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 661
    .end local v5    # "eap":Ljava/lang/String;
    :cond_6
    const-string v33, "networkname=\""

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v33

    if-eqz v33, :cond_7

    .line 662
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .line 663
    .local v15, "networkname":Ljava/lang/String;
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const/16 v34, 0x22

    move/from16 v0, v34

    invoke-virtual {v15, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v34

    add-int/lit8 v34, v34, 0x1

    const/16 v35, 0x22

    move/from16 v0, v35

    invoke-virtual {v15, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v35

    move/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 665
    .end local v15    # "networkname":Ljava/lang/String;
    :cond_7
    const-string v33, "spname=\""

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v33

    if-eqz v33, :cond_8

    .line 666
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v27

    .line 667
    .local v27, "spname":Ljava/lang/String;
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const/16 v34, 0x22

    move-object/from16 v0, v27

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v34

    add-int/lit8 v34, v34, 0x1

    const/16 v35, 0x22

    move-object/from16 v0, v27

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v35

    move-object/from16 v0, v27

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 669
    .end local v27    # "spname":Ljava/lang/String;
    :cond_8
    const-string v33, "identity=\""

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v33

    if-eqz v33, :cond_9

    .line 670
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 671
    .local v9, "identity":Ljava/lang/String;
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const/16 v34, 0x22

    move/from16 v0, v34

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v34

    add-int/lit8 v34, v34, 0x1

    const/16 v35, 0x22

    move/from16 v0, v35

    invoke-virtual {v9, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v35

    move/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 673
    .end local v9    # "identity":Ljava/lang/String;
    :cond_9
    const-string v33, "password=\""

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v33

    if-eqz v33, :cond_a

    .line 674
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    .line 675
    .local v17, "password":Ljava/lang/String;
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const/16 v34, 0x22

    move-object/from16 v0, v17

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v34

    add-int/lit8 v34, v34, 0x1

    const/16 v35, 0x22

    move-object/from16 v0, v17

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v35

    move-object/from16 v0, v17

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 677
    .end local v17    # "password":Ljava/lang/String;
    :cond_a
    const-string v33, "phase2=\""

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v33

    if-eqz v33, :cond_b

    .line 678
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    .line 679
    .local v19, "phase2":Ljava/lang/String;
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const/16 v34, 0x22

    move-object/from16 v0, v19

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v34

    add-int/lit8 v34, v34, 0x1

    const/16 v35, 0x22

    move-object/from16 v0, v19

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v35

    move-object/from16 v0, v19

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 681
    .end local v19    # "phase2":Ljava/lang/String;
    :cond_b
    const-string v33, "psk=\""

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v33

    if-eqz v33, :cond_c

    .line 682
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v23

    .line 683
    .local v23, "psk":Ljava/lang/String;
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const/16 v34, 0x3d

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v34

    add-int/lit8 v34, v34, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 685
    .end local v23    # "psk":Ljava/lang/String;
    :cond_c
    const-string v33, "scan_ssid="

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v33

    if-eqz v33, :cond_d

    .line 686
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v25

    .line 687
    .local v25, "scan_ssid":Ljava/lang/String;
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const/16 v34, 0x3d

    move-object/from16 v0, v25

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v34

    add-int/lit8 v34, v34, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 690
    .end local v25    # "scan_ssid":Ljava/lang/String;
    :cond_d
    const-string v33, "}"

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v33

    if-eqz v33, :cond_1

    .line 691
    const-string v33, ""

    move-object/from16 v0, v33

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_e

    const-string v33, ""

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_11

    .line 692
    :cond_e
    const-string v33, "WifiDefaultApController"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "getVendorApInfoFromFile : VendorApInfo have invalid data (ssid= "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ", keymgmtbuf= "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " ), so return"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 726
    if-eqz v12, :cond_f

    .line 728
    :try_start_2
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_f
    move-object v11, v12

    .line 751
    .end local v3    # "bufLine":Ljava/lang/String;
    .end local v6    # "eapbuf":Ljava/lang/String;
    .end local v7    # "hiddenssidbuf":Ljava/lang/String;
    .end local v10    # "identitybuf":Ljava/lang/String;
    .end local v12    # "in":Ljava/io/BufferedReader;
    .end local v13    # "keymgmtbuf":Ljava/lang/String;
    .end local v16    # "networknamebuf":Ljava/lang/String;
    .end local v18    # "passwordbuf":Ljava/lang/String;
    .end local v20    # "phasebuf":Ljava/lang/String;
    .end local v22    # "prioritybuf":Ljava/lang/String;
    .end local v24    # "pskbuf":Ljava/lang/String;
    .end local v28    # "spnamebuf":Ljava/lang/String;
    .end local v30    # "ssidbuf":Ljava/lang/String;
    .end local v32    # "wepkeybuf":Ljava/lang/String;
    .restart local v11    # "in":Ljava/io/BufferedReader;
    :cond_10
    :goto_1
    return-void

    .line 729
    .end local v11    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "bufLine":Ljava/lang/String;
    .restart local v6    # "eapbuf":Ljava/lang/String;
    .restart local v7    # "hiddenssidbuf":Ljava/lang/String;
    .restart local v10    # "identitybuf":Ljava/lang/String;
    .restart local v12    # "in":Ljava/io/BufferedReader;
    .restart local v13    # "keymgmtbuf":Ljava/lang/String;
    .restart local v16    # "networknamebuf":Ljava/lang/String;
    .restart local v18    # "passwordbuf":Ljava/lang/String;
    .restart local v20    # "phasebuf":Ljava/lang/String;
    .restart local v22    # "prioritybuf":Ljava/lang/String;
    .restart local v24    # "pskbuf":Ljava/lang/String;
    .restart local v28    # "spnamebuf":Ljava/lang/String;
    .restart local v30    # "ssidbuf":Ljava/lang/String;
    .restart local v32    # "wepkeybuf":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 730
    .local v4, "e":Ljava/io/IOException;
    const-string v33, "WifiDefaultApController"

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v11, v12

    .line 731
    .end local v12    # "in":Ljava/io/BufferedReader;
    .restart local v11    # "in":Ljava/io/BufferedReader;
    goto :goto_1

    .line 695
    .end local v4    # "e":Ljava/io/IOException;
    .end local v11    # "in":Ljava/io/BufferedReader;
    .restart local v12    # "in":Ljava/io/BufferedReader;
    :cond_11
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v33, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApSsidList:Ljava/util/ArrayList;
    invoke-static/range {v33 .. v33}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2900(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v33, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApKeymgmtLIst:Ljava/util/ArrayList;
    invoke-static/range {v33 .. v33}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$3000(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 697
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v33, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApWepkeyList:Ljava/util/ArrayList;
    invoke-static/range {v33 .. v33}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$3100(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v33, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApPriorityList:Ljava/util/ArrayList;
    invoke-static/range {v33 .. v33}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$3200(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v33, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApPasswordList:Ljava/util/ArrayList;
    invoke-static/range {v33 .. v33}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$3300(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v33, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApEapList:Ljava/util/ArrayList;
    invoke-static/range {v33 .. v33}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$3400(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v33, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApNetworknameList:Ljava/util/ArrayList;
    invoke-static/range {v33 .. v33}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$3500(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 702
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v33, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApSpnameList:Ljava/util/ArrayList;
    invoke-static/range {v33 .. v33}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$3600(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v33, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApIdentityList:Ljava/util/ArrayList;
    invoke-static/range {v33 .. v33}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$3700(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v33, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApPhaseList:Ljava/util/ArrayList;
    invoke-static/range {v33 .. v33}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$3800(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v33, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApPskList:Ljava/util/ArrayList;
    invoke-static/range {v33 .. v33}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$3900(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v33, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApHiddenSsidScanList:Ljava/util/ArrayList;
    invoke-static/range {v33 .. v33}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$4000(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 708
    const-string v30, ""

    .line 709
    const-string v13, ""

    .line 710
    const-string v32, ""

    .line 711
    const-string v22, ""

    .line 712
    const-string v6, ""

    .line 713
    const-string v16, ""

    .line 714
    const-string v28, ""

    .line 715
    const-string v10, ""

    .line 716
    const-string v18, ""

    .line 717
    const-string v20, ""

    .line 718
    const-string v24, ""

    .line 719
    const-string v7, ""
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    .line 726
    :cond_12
    if-eqz v12, :cond_13

    .line 728
    :try_start_4
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 736
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v33, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApSsidList:Ljava/util/ArrayList;
    invoke-static/range {v33 .. v33}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2900(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v33

    if-nez v33, :cond_15

    .line 737
    const-string v33, "WifiDefaultApController"

    const-string v34, "getVendorApInfoFromFile - mDefaultApSsidList is null"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v11, v12

    .line 738
    .end local v12    # "in":Ljava/io/BufferedReader;
    .restart local v11    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_1

    .line 729
    .end local v11    # "in":Ljava/io/BufferedReader;
    .restart local v12    # "in":Ljava/io/BufferedReader;
    :catch_1
    move-exception v4

    .line 730
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v33, "WifiDefaultApController"

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v11, v12

    .line 731
    .end local v12    # "in":Ljava/io/BufferedReader;
    .restart local v11    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_1

    .line 722
    .end local v3    # "bufLine":Ljava/lang/String;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v6    # "eapbuf":Ljava/lang/String;
    .end local v7    # "hiddenssidbuf":Ljava/lang/String;
    .end local v10    # "identitybuf":Ljava/lang/String;
    .end local v13    # "keymgmtbuf":Ljava/lang/String;
    .end local v16    # "networknamebuf":Ljava/lang/String;
    .end local v18    # "passwordbuf":Ljava/lang/String;
    .end local v20    # "phasebuf":Ljava/lang/String;
    .end local v22    # "prioritybuf":Ljava/lang/String;
    .end local v24    # "pskbuf":Ljava/lang/String;
    .end local v28    # "spnamebuf":Ljava/lang/String;
    .end local v30    # "ssidbuf":Ljava/lang/String;
    .end local v32    # "wepkeybuf":Ljava/lang/String;
    :catch_2
    move-exception v4

    .line 723
    .local v4, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_5
    const-string v33, "WifiDefaultApController"

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 726
    if-eqz v11, :cond_10

    .line 728
    :try_start_6
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_1

    .line 729
    :catch_3
    move-exception v4

    .line 730
    .local v4, "e":Ljava/io/IOException;
    const-string v33, "WifiDefaultApController"

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 726
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v33

    :goto_3
    if-eqz v11, :cond_14

    .line 728
    :try_start_7
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 731
    :cond_14
    throw v33

    .line 729
    :catch_4
    move-exception v4

    .line 730
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v33, "WifiDefaultApController"

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 741
    .end local v4    # "e":Ljava/io/IOException;
    .end local v11    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "bufLine":Ljava/lang/String;
    .restart local v6    # "eapbuf":Ljava/lang/String;
    .restart local v7    # "hiddenssidbuf":Ljava/lang/String;
    .restart local v10    # "identitybuf":Ljava/lang/String;
    .restart local v12    # "in":Ljava/io/BufferedReader;
    .restart local v13    # "keymgmtbuf":Ljava/lang/String;
    .restart local v16    # "networknamebuf":Ljava/lang/String;
    .restart local v18    # "passwordbuf":Ljava/lang/String;
    .restart local v20    # "phasebuf":Ljava/lang/String;
    .restart local v22    # "prioritybuf":Ljava/lang/String;
    .restart local v24    # "pskbuf":Ljava/lang/String;
    .restart local v28    # "spnamebuf":Ljava/lang/String;
    .restart local v30    # "ssidbuf":Ljava/lang/String;
    .restart local v32    # "wepkeybuf":Ljava/lang/String;
    :cond_15
    const/16 v33, 0x1

    # setter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mflagForGotVendorAp:Z
    invoke-static/range {v33 .. v33}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$502(Z)Z

    .line 742
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->DBG:Z
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$200()Z

    move-result v33

    if-eqz v33, :cond_16

    .line 743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v33, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApSsidList:Ljava/util/ArrayList;
    invoke-static/range {v33 .. v33}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2900(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 744
    .local v14, "networkCount":I
    const-string v33, "WifiDefaultApController"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "getVendorApInfoFromFile : mDefaultAp networkCount("

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ")"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_4
    if-ge v8, v14, :cond_16

    .line 746
    const-string v34, "WifiDefaultApController"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "getVendorApInfoFromFile : mDefaultAp["

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v35, "] : ssid ("

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v33, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApSsidList:Ljava/util/ArrayList;
    invoke-static/range {v33 .. v33}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2900(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    move-object/from16 v0, v35

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v35, "), psk("

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v33, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApPskList:Ljava/util/ArrayList;
    invoke-static/range {v33 .. v33}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$3900(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    move-object/from16 v0, v35

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v35, "), securityType("

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v33, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApKeymgmtLIst:Ljava/util/ArrayList;
    invoke-static/range {v33 .. v33}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$3000(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    move-object/from16 v0, v35

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v35, "), Priority("

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v33, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApPriorityList:Ljava/util/ArrayList;
    invoke-static/range {v33 .. v33}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$3200(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    move-object/from16 v0, v35

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v35, "), scan_ssid("

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v33, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApHiddenSsidScanList:Ljava/util/ArrayList;
    invoke-static/range {v33 .. v33}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$4000(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    move-object/from16 v0, v35

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v35, "), Eap("

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v33, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApEapList:Ljava/util/ArrayList;
    invoke-static/range {v33 .. v33}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$3400(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    move-object/from16 v0, v35

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v35, "), NetworkName("

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v33, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApNetworknameList:Ljava/util/ArrayList;
    invoke-static/range {v33 .. v33}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$3500(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    move-object/from16 v0, v35

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v35, "), SPName("

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v33, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApSpnameList:Ljava/util/ArrayList;
    invoke-static/range {v33 .. v33}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$3600(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    move-object/from16 v0, v35

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v35, ")"

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_4

    .end local v8    # "i":I
    .end local v14    # "networkCount":I
    :cond_16
    move-object v11, v12

    .line 751
    .end local v12    # "in":Ljava/io/BufferedReader;
    .restart local v11    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_1

    .line 726
    .end local v3    # "bufLine":Ljava/lang/String;
    .end local v6    # "eapbuf":Ljava/lang/String;
    .end local v7    # "hiddenssidbuf":Ljava/lang/String;
    .end local v10    # "identitybuf":Ljava/lang/String;
    .end local v11    # "in":Ljava/io/BufferedReader;
    .end local v13    # "keymgmtbuf":Ljava/lang/String;
    .end local v16    # "networknamebuf":Ljava/lang/String;
    .end local v18    # "passwordbuf":Ljava/lang/String;
    .end local v20    # "phasebuf":Ljava/lang/String;
    .end local v22    # "prioritybuf":Ljava/lang/String;
    .end local v24    # "pskbuf":Ljava/lang/String;
    .end local v28    # "spnamebuf":Ljava/lang/String;
    .end local v30    # "ssidbuf":Ljava/lang/String;
    .end local v32    # "wepkeybuf":Ljava/lang/String;
    .restart local v12    # "in":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v33

    move-object v11, v12

    .end local v12    # "in":Ljava/io/BufferedReader;
    .restart local v11    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_3

    .line 722
    .end local v11    # "in":Ljava/io/BufferedReader;
    .restart local v12    # "in":Ljava/io/BufferedReader;
    :catch_5
    move-exception v4

    move-object v11, v12

    .end local v12    # "in":Ljava/io/BufferedReader;
    .restart local v11    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_2
.end method

.method private makePrevNwInfoFile()V
    .locals 18

    .prologue
    .line 540
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 541
    .local v13, "sb":Ljava/lang/StringBuilder;
    const-string v9, ""

    .line 542
    .local v9, "mNetworkNameProfile":Ljava/lang/String;
    const-string v7, ""

    .line 543
    .local v7, "mCurNetworkName":Ljava/lang/String;
    const-string v8, ""

    .line 544
    .local v8, "mMCCMNC":Ljava/lang/String;
    const-string v10, ""

    .line 546
    .local v10, "mSPName":Ljava/lang/String;
    const-string v15, "gsm.sim.operator.numeric"

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 547
    const-string v15, "gsm.sim.operator.alpha"

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 548
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->DBG:Z
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$200()Z

    move-result v15

    if-eqz v15, :cond_0

    const-string v15, "WifiDefaultApController"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "makePrevNwInfoFile mMCCMNC =("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "), mSPName =("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mGeneralNwInfoMccmncList:Ljava/util/ArrayList;
    invoke-static {v15}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2400(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v15

    if-nez v15, :cond_2

    .line 551
    const-string v15, "WifiDefaultApController"

    const-string v16, "makePrevNwInfoFile - mGeneralNwInfoMccmncList is null"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :cond_1
    :goto_0
    return-void

    .line 554
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mGeneralNwInfoMccmncList:Ljava/util/ArrayList;
    invoke-static {v15}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2400(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 556
    .local v5, "generalNwInfoCount":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    if-ge v6, v5, :cond_3

    .line 558
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mGeneralNwInfoMccmncList:Ljava/util/ArrayList;
    invoke-static {v15}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2400(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 559
    .local v11, "mccmnc":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mGeneralNwInfoNetworknameList:Ljava/util/ArrayList;
    invoke-static {v15}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2500(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 560
    .local v12, "networkname":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mGeneralNwInfoSpnameList:Ljava/util/ArrayList;
    invoke-static {v15}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2600(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 563
    .local v14, "spname":Ljava/lang/String;
    const-string v15, ""

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_a

    invoke-virtual {v8, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 564
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->ENABLE_SPNAME:Z
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2700()Z

    move-result v15

    if-eqz v15, :cond_9

    .line 565
    const-string v15, ""

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_a

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    if-eqz v15, :cond_a

    .line 566
    move-object v7, v14

    .line 580
    .end local v5    # "generalNwInfoCount":I
    .end local v6    # "j":I
    .end local v11    # "mccmnc":Ljava/lang/String;
    .end local v12    # "networkname":Ljava/lang/String;
    .end local v14    # "spname":Ljava/lang/String;
    :cond_3
    :goto_2
    const-string v15, "WifiDefaultApController"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "mCurNetworkName =("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mflagForNWNameCreate:Z
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2800()Z

    move-result v15

    if-nez v15, :cond_1

    .line 583
    const/4 v15, 0x0

    :try_start_1
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 584
    const-string v15, "network={\n"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    const-string v15, ""

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "    networkname=\""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\"\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    :cond_4
    const-string v15, "}\n"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 590
    :goto_3
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 591
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->DBG:Z
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$200()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 592
    const-string v15, "WifiDefaultApController"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "makePrevNwInfoFile as mCurNetworkName "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    :cond_5
    const/4 v3, 0x0

    .line 595
    .local v3, "fw":Ljava/io/FileOutputStream;
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathPrevNwInfo:Ljava/io/File;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$1200()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_6

    .line 596
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathPrevNwInfo:Ljava/io/File;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$1200()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    .line 599
    :cond_6
    :try_start_2
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathPrevNwInfo:Ljava/io/File;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$1200()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/File;->createNewFile()Z

    .line 600
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v15

    const-string v16, "chmod 664 /data/misc/wifi/prev_networkname.conf"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 601
    new-instance v4, Ljava/io/FileOutputStream;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathPrevNwInfo:Ljava/io/File;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$1200()Ljava/io/File;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-direct {v4, v15, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 602
    .end local v3    # "fw":Ljava/io/FileOutputStream;
    .local v4, "fw":Ljava/io/FileOutputStream;
    :try_start_3
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 611
    if-eqz v4, :cond_7

    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_7
    move-object v3, v4

    .line 616
    .end local v4    # "fw":Ljava/io/FileOutputStream;
    .restart local v3    # "fw":Ljava/io/FileOutputStream;
    :cond_8
    :goto_4
    const/4 v15, 0x1

    # setter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mflagForNWNameCreate:Z
    invoke-static {v15}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2802(Z)Z

    goto/16 :goto_0

    .line 570
    .end local v3    # "fw":Ljava/io/FileOutputStream;
    .restart local v5    # "generalNwInfoCount":I
    .restart local v6    # "j":I
    .restart local v11    # "mccmnc":Ljava/lang/String;
    .restart local v12    # "networkname":Ljava/lang/String;
    .restart local v14    # "spname":Ljava/lang/String;
    :cond_9
    move-object v7, v12

    .line 571
    goto/16 :goto_2

    .line 556
    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 576
    .end local v5    # "generalNwInfoCount":I
    .end local v6    # "j":I
    .end local v11    # "mccmnc":Ljava/lang/String;
    .end local v12    # "networkname":Ljava/lang/String;
    .end local v14    # "spname":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 577
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v15, "WifiDefaultApController"

    const-string v16, "makePrevNwInfoFile - NullPointerException"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 587
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 588
    .restart local v1    # "e":Ljava/lang/NullPointerException;
    const-string v15, "WifiDefaultApController"

    const-string v16, "makePrevNwInfoFile -NullPointerException"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 612
    .end local v1    # "e":Ljava/lang/NullPointerException;
    .restart local v4    # "fw":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v2

    .line 613
    .local v2, "e2":Ljava/lang/Exception;
    const-string v15, "WifiDefaultApController"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 615
    .end local v4    # "fw":Ljava/io/FileOutputStream;
    .restart local v3    # "fw":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 603
    .end local v2    # "e2":Ljava/lang/Exception;
    :catch_3
    move-exception v1

    .line 604
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_5
    :try_start_5
    const-string v15, "WifiDefaultApController"

    const-string v16, "PrevNetworkName File Create Not Found "

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 611
    if-eqz v3, :cond_8

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_4

    .line 612
    :catch_4
    move-exception v2

    .line 613
    .restart local v2    # "e2":Ljava/lang/Exception;
    const-string v15, "WifiDefaultApController"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 605
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "e2":Ljava/lang/Exception;
    :catch_5
    move-exception v1

    .line 606
    .local v1, "e":Ljava/io/IOException;
    :goto_6
    :try_start_7
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 611
    if-eqz v3, :cond_8

    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_4

    .line 612
    :catch_6
    move-exception v2

    .line 613
    .restart local v2    # "e2":Ljava/lang/Exception;
    const-string v15, "WifiDefaultApController"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 607
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e2":Ljava/lang/Exception;
    :catch_7
    move-exception v1

    .line 608
    .local v1, "e":Ljava/lang/Exception;
    :goto_7
    :try_start_9
    const-string v15, "WifiDefaultApController"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "PrevNetworkName create file failed "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 611
    if-eqz v3, :cond_8

    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_4

    .line 612
    :catch_8
    move-exception v2

    .line 613
    .restart local v2    # "e2":Ljava/lang/Exception;
    const-string v15, "WifiDefaultApController"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 610
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "e2":Ljava/lang/Exception;
    :catchall_0
    move-exception v15

    .line 611
    :goto_8
    if-eqz v3, :cond_b

    :try_start_b
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    .line 614
    :cond_b
    :goto_9
    throw v15

    .line 612
    :catch_9
    move-exception v2

    .line 613
    .restart local v2    # "e2":Ljava/lang/Exception;
    const-string v16, "WifiDefaultApController"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 610
    .end local v2    # "e2":Ljava/lang/Exception;
    .end local v3    # "fw":Ljava/io/FileOutputStream;
    .restart local v4    # "fw":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v15

    move-object v3, v4

    .end local v4    # "fw":Ljava/io/FileOutputStream;
    .restart local v3    # "fw":Ljava/io/FileOutputStream;
    goto :goto_8

    .line 607
    .end local v3    # "fw":Ljava/io/FileOutputStream;
    .restart local v4    # "fw":Ljava/io/FileOutputStream;
    :catch_a
    move-exception v1

    move-object v3, v4

    .end local v4    # "fw":Ljava/io/FileOutputStream;
    .restart local v3    # "fw":Ljava/io/FileOutputStream;
    goto :goto_7

    .line 605
    .end local v3    # "fw":Ljava/io/FileOutputStream;
    .restart local v4    # "fw":Ljava/io/FileOutputStream;
    :catch_b
    move-exception v1

    move-object v3, v4

    .end local v4    # "fw":Ljava/io/FileOutputStream;
    .restart local v3    # "fw":Ljava/io/FileOutputStream;
    goto :goto_6

    .line 603
    .end local v3    # "fw":Ljava/io/FileOutputStream;
    .restart local v4    # "fw":Ljava/io/FileOutputStream;
    :catch_c
    move-exception v1

    move-object v3, v4

    .end local v4    # "fw":Ljava/io/FileOutputStream;
    .restart local v3    # "fw":Ljava/io/FileOutputStream;
    goto :goto_5
.end method

.method private removeChangedWifiProfile()V
    .locals 21

    .prologue
    .line 1132
    new-instance v10, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v10}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 1133
    .local v10, "mWifiConfig":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v17, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiService:Lcom/android/server/wifi/WifiServiceImpl;
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$600(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Lcom/android/server/wifi/WifiServiceImpl;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wifi/WifiServiceImpl;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    .line 1134
    .local v3, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const-string v8, ""

    .line 1135
    .local v8, "mKeymgmt":Ljava/lang/String;
    const-string v7, ""

    .line 1136
    .local v7, "mEap":Ljava/lang/String;
    const/4 v14, 0x0

    .line 1139
    .local v14, "result":Z
    :try_start_0
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mMatchedPrevNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2000()Ljava/lang/String;

    move-result-object v17

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mMatchedNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$4100()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_10

    .line 1140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v17, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApSsidList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2900(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v17

    if-nez v17, :cond_1

    .line 1141
    const-string v17, "WifiDefaultApController"

    const-string v18, "removeChangedWifiProfile - mDefaultApSsidList is null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    :cond_0
    :goto_0
    return-void

    .line 1145
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v17, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApSsidList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2900(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 1146
    .local v11, "networkCount":I
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->DBG:Z
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$200()Z

    move-result v17

    if-eqz v17, :cond_2

    const-string v17, "WifiDefaultApController"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "removeChangedWifiProfile: mDefaultAp networkCount("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    :cond_2
    const/4 v12, 0x0

    .local v12, "p":I
    :goto_1
    if-ge v12, v11, :cond_10

    .line 1149
    if-eqz v3, :cond_f

    .line 1150
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 1151
    .local v2, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v0, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Ljava/util/BitSet;->get(I)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 1152
    const-string v8, "WPA-PSK"

    .line 1161
    :goto_3
    iget-object v0, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v17

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    .line 1162
    const-string v7, "SIM"

    .line 1169
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v17, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApSsidList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2900(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 1170
    .local v16, "ssid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v17, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApKeymgmtLIst:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$3000(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 1171
    .local v15, "securityType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v17, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApPriorityList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$3200(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 1172
    .local v13, "priority":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v17, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApEapList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$3400(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1174
    .local v5, "eap":Ljava/lang/String;
    iget-boolean v0, v2, Landroid/net/wifi/WifiConfiguration;->isVendorSpecificSsid:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    iget-object v0, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_4

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 1176
    :cond_4
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->DBG:Z
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$200()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 1177
    const-string v17, "WifiDefaultApController"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "removeChangedWifiProfile: mDefaultAp("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "), ssid("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "), securityType("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "), eap("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    :cond_5
    const-string v17, "WifiDefaultApController"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "removeChangedWifiProfile: remove WifiConfig profile ("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "), mKeymgmt("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "), mEap("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->REMOVABLE_DEFAULT_AP:Z
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$900()Z

    move-result v17

    if-nez v17, :cond_7

    .line 1181
    new-instance v17, Lcom/android/server/wifi/WifiNative;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v18, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mInterfaceName:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$4200(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcom/android/server/wifi/WifiNative;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    .line 1182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    .line 1183
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->DBG:Z
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$200()Z

    move-result v17

    if-eqz v17, :cond_6

    const-string v17, "WifiDefaultApController"

    const-string v18, "isVendorSpecificSsid value reset to zero for remove wifi profile"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v17, v0

    iget v0, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v18, v0

    const-string v19, "vendor_spec_ssid"

    const-string v20, "0"

    invoke-virtual/range {v17 .. v20}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    .line 1186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wifi/WifiNative;->saveConfig()Z

    .line 1189
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v17, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiService:Lcom/android/server/wifi/WifiServiceImpl;
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$600(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Lcom/android/server/wifi/WifiServiceImpl;

    move-result-object v17

    iget v0, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/wifi/WifiServiceImpl;->removeNetwork(I)Z

    move-result v14

    .line 1190
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v14, v0, :cond_e

    .line 1191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v17, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiService:Lcom/android/server/wifi/WifiServiceImpl;
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$600(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Lcom/android/server/wifi/WifiServiceImpl;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiServiceImpl;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 1192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v17, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiService:Lcom/android/server/wifi/WifiServiceImpl;
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$600(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Lcom/android/server/wifi/WifiServiceImpl;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wifi/WifiServiceImpl;->saveConfiguration()Z

    .line 1196
    :goto_5
    const-string v8, ""

    .line 1197
    const-string v7, ""

    .line 1198
    const/16 v17, 0x1

    # setter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mRemoveWifiProfile:Z
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2202(Z)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 1220
    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v5    # "eap":Ljava/lang/String;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v11    # "networkCount":I
    .end local v12    # "p":I
    .end local v13    # "priority":Ljava/lang/String;
    .end local v15    # "securityType":Ljava/lang/String;
    .end local v16    # "ssid":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 1221
    .local v4, "e":Ljava/lang/NullPointerException;
    const-string v17, "WifiDefaultApController"

    const-string v18, "removeChangedWifiProfile - NullPointerException"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1153
    .end local v4    # "e":Ljava/lang/NullPointerException;
    .restart local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v11    # "networkCount":I
    .restart local v12    # "p":I
    :cond_8
    :try_start_1
    iget-object v0, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Ljava/util/BitSet;->get(I)Z

    move-result v17

    if-nez v17, :cond_9

    iget-object v0, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v17, v0

    const/16 v18, 0x3

    invoke-virtual/range {v17 .. v18}, Ljava/util/BitSet;->get(I)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 1154
    :cond_9
    const-string v8, "WPA-EAP IEEE8021X"

    goto/16 :goto_3

    .line 1155
    :cond_a
    iget-object v0, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/util/BitSet;->get(I)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 1156
    const-string v8, "NONE"

    goto/16 :goto_3

    .line 1158
    :cond_b
    const-string v8, ""

    goto/16 :goto_3

    .line 1163
    :cond_c
    iget-object v0, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v17

    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    .line 1164
    const-string v7, "AKA"

    goto/16 :goto_4

    .line 1166
    :cond_d
    const-string v7, ""

    goto/16 :goto_4

    .line 1194
    .restart local v5    # "eap":Ljava/lang/String;
    .restart local v13    # "priority":Ljava/lang/String;
    .restart local v15    # "securityType":Ljava/lang/String;
    .restart local v16    # "ssid":Ljava/lang/String;
    :cond_e
    const-string v17, "WifiDefaultApController"

    const-string v18, "removeChangedWifiProfile - removeNetwork error"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1148
    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v5    # "eap":Ljava/lang/String;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v13    # "priority":Ljava/lang/String;
    .end local v15    # "securityType":Ljava/lang/String;
    .end local v16    # "ssid":Ljava/lang/String;
    :cond_f
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 1205
    .end local v11    # "networkCount":I
    .end local v12    # "p":I
    :cond_10
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->REMOVABLE_DEFAULT_AP:Z
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$900()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 1206
    const-string v9, ""

    .line 1207
    .local v9, "mTempPrevNetworkName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v17, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mPrevNetworknameList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$1900(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v17

    if-eqz v17, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v17, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mPrevNetworknameList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$1900(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_11

    .line 1208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v17, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mPrevNetworknameList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$1900(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "mTempPrevNetworkName":Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .line 1211
    .restart local v9    # "mTempPrevNetworkName":Ljava/lang/String;
    :cond_11
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->DBG:Z
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$200()Z

    move-result v17

    if-eqz v17, :cond_12

    const-string v17, "WifiDefaultApController"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "removeChangedWifiProfile: mMatchedNetworkName=("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mMatchedNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$4100()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "), mTempPrevNetworkName=("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    :cond_12
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mMatchedNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$4100()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 1213
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mRemovedDefaultAp:Z
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$4300()Z

    move-result v17

    if-nez v17, :cond_0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathDefaultApCheck:Ljava/io/File;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$1000()Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 1214
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->DBG:Z
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$200()Z

    move-result v17

    if-eqz v17, :cond_13

    const-string v17, "WifiDefaultApController"

    const-string v18, "As network changed, remove DefaultApCheck file"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    :cond_13
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathDefaultApCheck:Ljava/io/File;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$1000()Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    .line 1216
    const/16 v17, 0x1

    # setter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mRemovedDefaultAp:Z
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$4302(Z)Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private removeVendorWifiProfile()V
    .locals 9

    .prologue
    .line 1101
    new-instance v3, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v3}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 1102
    .local v3, "mWifiConfig":Landroid/net/wifi/WifiConfiguration;
    iget-object v5, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiService:Lcom/android/server/wifi/WifiServiceImpl;
    invoke-static {v5}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$600(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Lcom/android/server/wifi/WifiServiceImpl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiServiceImpl;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 1103
    .local v1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const/4 v4, 0x0

    .line 1105
    .local v4, "result":Z
    if-eqz v1, :cond_4

    .line 1106
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1107
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->isVendorSpecificSsid:Z

    if-eqz v5, :cond_0

    .line 1108
    const-string v5, "WifiDefaultApController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removeVendorWifiProfile: remove WifiConfig profile ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->REMOVABLE_DEFAULT_AP:Z
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$900()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1110
    new-instance v5, Lcom/android/server/wifi/WifiNative;

    iget-object v6, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mInterfaceName:Ljava/lang/String;
    invoke-static {v6}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$4200(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/server/wifi/WifiNative;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    .line 1111
    iget-object v5, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    if-eqz v5, :cond_2

    .line 1112
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->DBG:Z
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$200()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "WifiDefaultApController"

    const-string v6, "isVendorSpecificSsid value reset to zero for remove wifi profile"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string v7, "vendor_spec_ssid"

    const-string v8, "0"

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    .line 1115
    iget-object v5, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiNative;->saveConfig()Z

    .line 1118
    :cond_2
    iget-object v5, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiService:Lcom/android/server/wifi/WifiServiceImpl;
    invoke-static {v5}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$600(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Lcom/android/server/wifi/WifiServiceImpl;

    move-result-object v5

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/WifiServiceImpl;->removeNetwork(I)Z

    move-result v4

    .line 1119
    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 1120
    iget-object v5, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiService:Lcom/android/server/wifi/WifiServiceImpl;
    invoke-static {v5}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$600(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Lcom/android/server/wifi/WifiServiceImpl;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/server/wifi/WifiServiceImpl;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 1121
    iget-object v5, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiService:Lcom/android/server/wifi/WifiServiceImpl;
    invoke-static {v5}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$600(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Lcom/android/server/wifi/WifiServiceImpl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiServiceImpl;->saveConfiguration()Z

    goto/16 :goto_0

    .line 1123
    :cond_3
    const-string v5, "WifiDefaultApController"

    const-string v6, "removeVendorWifiProfile - removeNetwork error"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1128
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_4
    return-void
.end method

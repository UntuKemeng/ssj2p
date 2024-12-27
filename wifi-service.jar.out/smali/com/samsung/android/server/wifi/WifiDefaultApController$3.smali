.class Lcom/samsung/android/server/wifi/WifiDefaultApController$3;
.super Landroid/content/BroadcastReceiver;
.source "WifiDefaultApController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/WifiDefaultApController;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiServiceImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/WifiDefaultApController;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$3;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$3;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiService:Lcom/android/server/wifi/WifiServiceImpl;
    invoke-static {v2}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$600(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Lcom/android/server/wifi/WifiServiceImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiServiceImpl;->getWifiEnabledState()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mflagCscUpdateDoneChecked:Z
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$1300()Z

    move-result v2

    if-nez v2, :cond_2

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathCscUpdateDoneCheck:Ljava/io/File;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$800()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$3;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiProfile:Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;

    # invokes: Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->removeVendorWifiProfile()V
    invoke-static {v2}, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->access$700(Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;)V

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathCscUpdateDoneCheck:Ljava/io/File;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$800()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_2
    # setter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mflagCscUpdateDoneChecked:Z
    invoke-static {v5}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$1302(Z)Z

    sget-boolean v2, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mFirstScanAddProfile:Z

    if-nez v2, :cond_0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathDefaultAp:Ljava/io/File;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$300()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathDefaultAp:Ljava/io/File;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$300()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v2, v2, v8

    if-lez v2, :cond_0

    const-string v0, ""

    .local v0, "mMCCMNC":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    .local v1, "simState_int":I
    const-string v2, "gsm.sim.operator.numeric"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathGeneralNwInfo:Ljava/io/File;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$1100()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$3;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiProfile:Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;

    # invokes: Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->getVendorApInfo()V
    invoke-static {v2}, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->access$400(Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;)V

    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$3;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiProfile:Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;

    # invokes: Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->checkWifiProfileLoaded(Z)V
    invoke-static {v2, v6}, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->access$1400(Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;Z)V

    sget-boolean v2, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiProfileLoaded:Z

    if-nez v2, :cond_5

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->REMOVABLE_DEFAULT_AP:Z
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$900()Z

    move-result v2

    if-eqz v2, :cond_4

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathDefaultApCheck:Ljava/io/File;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$1000()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$3;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiProfile:Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;

    # invokes: Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->checkWifiVendorProfile(Z)V
    invoke-static {v2, v6}, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->access$1500(Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;Z)V

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$3;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiService:Lcom/android/server/wifi/WifiServiceImpl;
    invoke-static {v2}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$600(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Lcom/android/server/wifi/WifiServiceImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiServiceImpl;->saveConfiguration()Z

    goto/16 :goto_0

    :cond_3
    sput-boolean v5, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mFirstScanAddProfile:Z

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$3;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiProfile:Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;

    # invokes: Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->checkWifiVendorProfile(Z)V
    invoke-static {v2, v6}, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->access$1500(Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;Z)V

    goto :goto_1

    :cond_5
    sput-boolean v5, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mFirstScanAddProfile:Z

    goto/16 :goto_0

    :cond_6
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathGeneralNwInfo:Ljava/io/File;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$1100()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathGeneralNwInfo:Ljava/io/File;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$1100()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v2, v2, v8

    if-lez v2, :cond_0

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$3;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiProfile:Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;

    # invokes: Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->getVendorApInfo()V
    invoke-static {v2}, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->access$400(Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;)V

    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$3;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiProfile:Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;

    # invokes: Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->checkWifiProfileLoaded(Z)V
    invoke-static {v2, v5}, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->access$1400(Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;Z)V

    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$3;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiProfile:Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;

    # invokes: Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->getGeneralNwInfo()V
    invoke-static {v2}, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->access$1600(Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;)V

    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$3;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiProfile:Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;

    # invokes: Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->getPrevNwInfo()V
    invoke-static {v2}, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->access$1700(Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;)V

    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$3;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiProfile:Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;

    # invokes: Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->checkNetworkName()V
    invoke-static {v2}, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->access$1800(Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;)V

    sget-boolean v2, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiProfileLoaded:Z

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$3;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mPrevNetworknameList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$1900(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$3;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mPrevNetworknameList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$1900(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_b

    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$3;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mPrevNetworknameList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$1900(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    # setter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mMatchedPrevNetworkName:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2002(Ljava/lang/String;)Ljava/lang/String;

    const-string v2, "WifiDefaultApController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMatchedPrevNetworkName =("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mMatchedPrevNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2000()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    sget-boolean v2, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiProfileLoaded:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$3;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiProfile:Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;

    # invokes: Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->removeChangedWifiProfile()V
    invoke-static {v2}, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->access$2100(Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;)V

    :cond_7
    const-string v2, ""

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mMatchedPrevNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2000()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mRemoveWifiProfile:Z
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2200()Z

    move-result v2

    if-nez v2, :cond_8

    sget-boolean v2, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiProfileLoaded:Z

    if-nez v2, :cond_a

    :cond_8
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->REMOVABLE_DEFAULT_AP:Z
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$900()Z

    move-result v2

    if-eqz v2, :cond_c

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathDefaultApCheck:Ljava/io/File;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$1000()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$3;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiProfile:Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;

    # invokes: Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->checkWifiVendorProfile(Z)V
    invoke-static {v2, v5}, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->access$1500(Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;Z)V

    :cond_9
    :goto_3
    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$3;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiService:Lcom/android/server/wifi/WifiServiceImpl;
    invoke-static {v2}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$600(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Lcom/android/server/wifi/WifiServiceImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiServiceImpl;->saveConfiguration()Z

    :cond_a
    sput-boolean v5, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mFirstScanAddProfile:Z

    # setter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mRemoveWifiProfile:Z
    invoke-static {v6}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2202(Z)Z

    goto/16 :goto_0

    :cond_b
    const-string v2, ""

    # setter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mMatchedPrevNetworkName:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2002(Ljava/lang/String;)Ljava/lang/String;

    const-string v2, "WifiDefaultApController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMatchedPrevNetworkName =("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mMatchedPrevNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$2000()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_c
    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$3;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiProfile:Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;

    # invokes: Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->checkWifiVendorProfile(Z)V
    invoke-static {v2, v5}, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->access$1500(Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;Z)V

    goto :goto_3
.end method

.class Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;
.super Ljava/lang/Object;
.source "WifiMaliciousHotspotDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiMaliciousHotspotDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KarmaApDetector"
.end annotation


# instance fields
.field private final DEFAULT_STATE:I

.field private final DELAYED_PARTIAL_SCAN_SEC:I

.field private final TAG:Ljava/lang/String;

.field private insertedSsid:Ljava/lang/String;

.field private mDelayedPartialScanSec:I

.field public mKarmaApCandidate:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mKarmaApDetectionEnabled:I

.field final synthetic this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 669
    iput-object p1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 658
    const-string v0, "WifiMHD::k"

    iput-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->TAG:Ljava/lang/String;

    .line 659
    iput v1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->DEFAULT_STATE:I

    .line 660
    iput v1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->mKarmaApDetectionEnabled:I

    .line 661
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->insertedSsid:Ljava/lang/String;

    .line 664
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->DELAYED_PARTIAL_SCAN_SEC:I

    .line 670
    const/16 v0, 0x4e20

    iput v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->mDelayedPartialScanSec:I

    .line 671
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->mKarmaApCandidate:Ljava/util/List;

    .line 672
    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;

    .prologue
    .line 657
    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->insertedSsid:Ljava/lang/String;

    return-object v0
.end method

.method private getSpecialNetwork()I
    .locals 5

    .prologue
    const/4 v2, -0x1

    .line 806
    iget-object v3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    # invokes: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->getWifiManager()Z
    invoke-static {v3}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$800(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 807
    const-string v3, "WifiMHD::k"

    const-string v4, "F to get mWM"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 818
    :cond_0
    :goto_0
    return v1

    .line 810
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 811
    .local v0, "msg":Landroid/os/Message;
    const/16 v3, 0x102

    iput v3, v0, Landroid/os/Message;->what:I

    .line 812
    iget-object v3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v3}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$100(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v1

    .line 813
    .local v1, "result":I
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 814
    const/4 v0, 0x0

    .line 815
    if-ne v1, v2, :cond_0

    .line 816
    const-string v2, "WifiMHD::k"

    const-string v3, "F to get s_ssid"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private insertSpecialSsid(I)V
    .locals 11
    .param p1, "netId"    # I

    .prologue
    const/16 v10, 0xcb

    const/16 v9, 0x11

    const/4 v7, 0x1

    const/4 v8, -0x2

    .line 822
    iget-object v5, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    # invokes: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->getWifiManager()Z
    invoke-static {v5}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$800(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->insertedSsid:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 888
    :cond_0
    :goto_0
    return-void

    .line 825
    :cond_1
    new-instance v4, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SpecialSsid;

    invoke-direct {v4}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SpecialSsid;-><init>()V

    .line 826
    .local v4, "ssid":Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SpecialSsid;
    if-ne p1, v8, :cond_4

    .line 827
    new-instance v2, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v2}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 828
    .local v2, "config":Landroid/net/wifi/WifiConfiguration;
    const v5, 0xf4241

    iput v5, v2, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 829
    iget-object v5, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->set(I)V

    .line 830
    iput-boolean v7, v2, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 831
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SpecialSsid;->mSsid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 832
    iput-boolean v7, v2, Landroid/net/wifi/WifiConfiguration;->isSpecialSsid:Z

    .line 834
    iget-object v5, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v5}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$100(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Landroid/net/wifi/WifiManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 835
    .local v0, "addedNetId":I
    if-gez v0, :cond_2

    .line 836
    const-string v5, "WifiMHD::k"

    const-string v6, "err ssid 1"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 839
    :cond_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 840
    .local v3, "msg":Landroid/os/Message;
    iput v10, v3, Landroid/os/Message;->what:I

    .line 841
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 842
    .local v1, "args":Landroid/os/Bundle;
    iput-object v1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 843
    const-string v5, "netId"

    invoke-virtual {v1, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 844
    const-string v5, "reason"

    invoke-virtual {v1, v5, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 845
    iget-object v5, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v5}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$100(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Landroid/net/wifi/WifiManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 846
    invoke-virtual {v3}, Landroid/os/Message;->recycle()V

    .line 884
    .end local v0    # "addedNetId":I
    :goto_1
    iget-object v5, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v5}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$100(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Landroid/net/wifi/WifiManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 886
    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$400()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v6, "WifiMHD::k"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    if-ne p1, v8, :cond_8

    const-string v5, "new: "

    :goto_2
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v4, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SpecialSsid;->mSsid:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    :cond_3
    iget-object v5, v4, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SpecialSsid;->mSsid:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->insertedSsid:Ljava/lang/String;

    goto/16 :goto_0

    .line 849
    .end local v1    # "args":Landroid/os/Bundle;
    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "msg":Landroid/os/Message;
    :cond_4
    iget-object v5, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v5}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$100(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Landroid/net/wifi/WifiManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/net/wifi/WifiManager;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 850
    .restart local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v2, :cond_5

    .line 851
    const-string v5, "WifiMHD::k"

    const-string v6, "err ssid 2"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 854
    :cond_5
    iget-object v5, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SpecialSsid;->match(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 855
    const-string v5, "WifiMHD::k"

    const-string v6, "err ssid 3"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 860
    :cond_6
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 861
    .restart local v3    # "msg":Landroid/os/Message;
    const/16 v5, 0x103

    iput v5, v3, Landroid/os/Message;->what:I

    .line 862
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 863
    .restart local v1    # "args":Landroid/os/Bundle;
    const-string v5, "netId"

    invoke-virtual {v1, v5, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 864
    const-string v5, "specialSsid"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SpecialSsid;->mSsid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    iput-object v1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 866
    iget-object v5, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v5}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$100(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Landroid/net/wifi/WifiManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_7

    .line 867
    const-string v5, "WifiMHD::k"

    const-string v6, "err ssid 4"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 870
    :cond_7
    invoke-virtual {v3}, Landroid/os/Message;->recycle()V

    .line 871
    const/4 v3, 0x0

    .line 874
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 875
    iput v10, v3, Landroid/os/Message;->what:I

    .line 876
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "args":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 877
    .restart local v1    # "args":Landroid/os/Bundle;
    iput-object v1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 878
    const-string v5, "netId"

    invoke-virtual {v1, v5, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 879
    const-string v5, "reason"

    invoke-virtual {v1, v5, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 880
    iget-object v5, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v5}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$100(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Landroid/net/wifi/WifiManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 881
    invoke-virtual {v3}, Landroid/os/Message;->recycle()V

    goto/16 :goto_1

    .line 886
    :cond_8
    const-string v5, "updated: "

    goto/16 :goto_2
.end method


# virtual methods
.method public checkKarmaApInScanResult()V
    .locals 14

    .prologue
    .line 693
    iget v10, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->mKarmaApDetectionEnabled:I

    if-nez v10, :cond_1

    .line 748
    :cond_0
    return-void

    .line 696
    :cond_1
    iget-object v10, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->insertedSsid:Ljava/lang/String;

    if-eqz v10, :cond_0

    .line 699
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 700
    .local v5, "scannedKarmaBssidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 701
    .local v4, "scanChannelList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 702
    .local v6, "scannedKarmaSecurityMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mScanResults:Ljava/util/List;
    invoke-static {v10}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$000(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/ScanResult;

    .line 703
    .local v8, "sr":Landroid/net/wifi/ScanResult;
    iget-object v10, v8, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v10, :cond_2

    iget-object v10, v8, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->insertedSsid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 704
    iget-object v10, v8, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 705
    iget v10, v8, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 706
    iget-object v10, v8, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v11, "WPA"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    iget-object v10, v8, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v11, "WEP"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    iget-object v10, v8, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v11, "EAP"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    iget-object v10, v8, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v11, "PSK"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 708
    :cond_3
    iget-object v10, v8, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const-string v11, "(S)"

    invoke-virtual {v6, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 710
    :cond_4
    iget-object v10, v8, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const-string v11, "(O)"

    invoke-virtual {v6, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 715
    .end local v8    # "sr":Landroid/net/wifi/ScanResult;
    :cond_5
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    .line 716
    const/4 v3, 0x0

    .line 717
    .local v3, "needPartialScan":Z
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 718
    .local v0, "bssid":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->mKarmaApCandidate:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 719
    iget-object v10, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    const/4 v11, 0x1

    iget v12, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->mKarmaApDetectionEnabled:I

    invoke-virtual {v10, v0, v11, v12}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->handleMaliciousHotspotDetection(Ljava/lang/String;II)V

    .line 721
    iget-object v10, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mGsimLoggingEnabled:Z
    invoke-static {v10}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$900(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mCachedGsimLog:Ljava/util/HashMap;
    invoke-static {v10}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$1000(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 722
    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 723
    .local v7, "security":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    # invokes: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->getWifiManager()Z
    invoke-static {v10}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$800(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Z

    move-result v10

    if-eqz v10, :cond_6

    if-eqz v7, :cond_6

    .line 724
    iget-object v10, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v10}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$100(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Landroid/net/wifi/WifiManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v9

    .line 725
    .local v9, "wifiInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 726
    iget-object v10, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    const-string v11, "MHDK"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "DETECTED"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->sendGsimData(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v10, v11, v12}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$1100(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    iget-object v10, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    const-string v11, "MHDK"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "CONNECTED"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->sendGsimData(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v10, v11, v12}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$1100(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    iget-object v10, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mCachedGsimLog:Ljava/util/HashMap;
    invoke-static {v10}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$1000(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "MHDK - DETECTED/CONNECTED"

    invoke-virtual {v10, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 730
    :cond_7
    iget-object v10, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    const-string v11, "MHDK"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "DETECTED"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->sendGsimData(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v10, v11, v12}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$1100(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    iget-object v10, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mCachedGsimLog:Ljava/util/HashMap;
    invoke-static {v10}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$1000(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "MHDK - DETECTED"

    invoke-virtual {v10, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 736
    .end local v7    # "security":Ljava/lang/String;
    .end local v9    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_8
    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$400()Z

    move-result v10

    if-eqz v10, :cond_9

    const-string v10, "WifiMHD::k"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "initial detection - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    :cond_9
    iget-object v10, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->mKarmaApCandidate:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 738
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 741
    .end local v0    # "bssid":Ljava/lang/String;
    :cond_a
    if-eqz v3, :cond_0

    .line 742
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->resetSpecialSsid()V

    .line 743
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 744
    .local v1, "freq":I
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->doPartialScan(I)V

    goto :goto_2
.end method

.method public doPartialScan()V
    .locals 2

    .prologue
    .line 891
    iget-object v1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    # invokes: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->getWifiManager()Z
    invoke-static {v1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$800(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 896
    :cond_0
    :goto_0
    return-void

    .line 892
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$100(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 893
    .local v0, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_0

    .line 894
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->doPartialScan(I)V

    goto :goto_0
.end method

.method public doPartialScan(I)V
    .locals 4
    .param p1, "channel"    # I

    .prologue
    .line 898
    iget-object v3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    # invokes: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->getWifiManager()Z
    invoke-static {v3}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$800(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 910
    :goto_0
    return-void

    .line 899
    :cond_0
    const/4 v3, 0x1

    new-array v1, v3, [I

    .line 900
    .local v1, "currentChannel":[I
    const/4 v3, 0x0

    aput p1, v1, v3

    .line 902
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 903
    .local v2, "msg1":Landroid/os/Message;
    const/16 v3, 0x24

    iput v3, v2, Landroid/os/Message;->what:I

    .line 904
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 905
    .local v0, "args1":Landroid/os/Bundle;
    const-string v3, "channel"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 906
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 907
    iget-object v3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v3}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$100(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 908
    invoke-virtual {v2}, Landroid/os/Message;->recycle()V

    .line 909
    const/4 v2, 0x0

    .line 910
    goto :goto_0
.end method

.method public getEnabled()I
    .locals 1

    .prologue
    .line 689
    iget v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->mKarmaApDetectionEnabled:I

    return v0
.end method

.method public getInsertedSpecialSsid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 675
    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->insertedSsid:Ljava/lang/String;

    return-object v0
.end method

.method public removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 912
    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 917
    .end local p1    # "string":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 913
    .restart local p1    # "string":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 914
    .local v0, "length":I
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 915
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public declared-synchronized resetSpecialSsid()V
    .locals 2

    .prologue
    .line 751
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->getSpecialNetwork()I

    move-result v0

    .line 752
    .local v0, "netId":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 753
    iget v1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->mKarmaApDetectionEnabled:I

    if-nez v1, :cond_2

    .line 754
    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$100(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 755
    iget-object v1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$100(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    .line 757
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->insertedSsid:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 763
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 760
    :cond_2
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->insertedSsid:Ljava/lang/String;

    .line 761
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->insertSpecialSsid(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 751
    .end local v0    # "netId":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public sendDelayedPartialScan()V
    .locals 4

    .prologue
    .line 679
    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mKarmaApDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;
    invoke-static {v0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$200(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->getEnabled()I

    move-result v0

    if-eqz v0, :cond_0

    .line 680
    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    const/4 v1, 0x5

    iget v2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->mDelayedPartialScanSec:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->sendEmptyMessageDelayed(IJ)Z

    .line 682
    :cond_0
    return-void
.end method

.method public setEnabled(I)V
    .locals 0
    .param p1, "enable"    # I

    .prologue
    .line 685
    iput p1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->mKarmaApDetectionEnabled:I

    .line 686
    return-void
.end method

.method public declared-synchronized setSpecialSsid()V
    .locals 8

    .prologue
    const/4 v6, -0x2

    .line 766
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->getSpecialNetwork()I

    move-result v3

    .line 767
    .local v3, "netId":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_1

    .line 768
    iget v5, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->mKarmaApDetectionEnabled:I

    if-nez v5, :cond_2

    .line 769
    if-eq v3, v6, :cond_0

    iget-object v5, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v5}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$100(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Landroid/net/wifi/WifiManager;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 770
    iget-object v5, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v5}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$100(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Landroid/net/wifi/WifiManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    .line 772
    :cond_0
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->insertedSsid:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 803
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 775
    :cond_2
    if-ne v3, v6, :cond_3

    .line 776
    const/4 v5, 0x0

    :try_start_1
    iput-object v5, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->insertedSsid:Ljava/lang/String;

    .line 777
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->insertSpecialSsid(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 766
    .end local v3    # "netId":I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 779
    .restart local v3    # "netId":I
    :cond_3
    :try_start_2
    iget-object v5, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v5}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$100(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Landroid/net/wifi/WifiManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/net/wifi/WifiManager;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 780
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v1, :cond_4

    .line 781
    const-string v5, "WifiMHD::k"

    const-string v6, "f to get special config"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 784
    :cond_4
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 785
    .local v4, "ssid":Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SpecialSsid;->match(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 786
    const-string v5, "WifiMHD::k"

    const-string v6, "f - ssid is not special"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 789
    :cond_5
    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$400()Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "WifiMHD::k"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "found and set: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    :cond_6
    iput-object v4, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->insertedSsid:Ljava/lang/String;

    .line 792
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 793
    .local v2, "msg":Landroid/os/Message;
    const/16 v5, 0xcb

    iput v5, v2, Landroid/os/Message;->what:I

    .line 794
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 795
    .local v0, "args":Landroid/os/Bundle;
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 796
    const-string v5, "netId"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 797
    const-string v5, "reason"

    const/16 v6, 0x11

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 798
    iget-object v5, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v5}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$100(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Landroid/net/wifi/WifiManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 799
    invoke-virtual {v2}, Landroid/os/Message;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

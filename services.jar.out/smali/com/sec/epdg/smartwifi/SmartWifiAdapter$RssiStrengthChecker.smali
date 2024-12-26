.class Lcom/sec/epdg/smartwifi/SmartWifiAdapter$RssiStrengthChecker;
.super Landroid/os/CountDownTimer;
.source "SmartWifiAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RssiStrengthChecker"
.end annotation


# static fields
.field private static final EPDG_RATE_LIMIT_TICK:I = 0x7d0


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;


# direct methods
.method constructor <init>(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)V
    .locals 2

    .prologue
    const-wide/16 v0, 0x7d0

    .line 1843
    iput-object p1, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$RssiStrengthChecker;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    .line 1844
    invoke-direct {p0, v0, v1, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 1845
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 6

    .prologue
    .line 1852
    const-string v3, "[SMARTWIFI]"

    const-string v4, "RssiStrengthChecker finished"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1853
    iget-object v3, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$RssiStrengthChecker;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # invokes: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isRssiStrengthCheckerRunning()Z
    invoke-static {v3}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$5200(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1854
    const-string v3, "[SMARTWIFI]"

    const-string v4, "RssiStrengthChecker is already finished"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1874
    :cond_0
    :goto_0
    return-void

    .line 1857
    :cond_1
    iget-object v3, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$RssiStrengthChecker;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    const/4 v4, 0x0

    # setter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mRssiStrengthChecker:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$RssiStrengthChecker;
    invoke-static {v3, v4}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$5302(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;Lcom/sec/epdg/smartwifi/SmartWifiAdapter$RssiStrengthChecker;)Lcom/sec/epdg/smartwifi/SmartWifiAdapter$RssiStrengthChecker;

    .line 1858
    iget-object v3, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$RssiStrengthChecker;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$4600(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 1860
    .local v2, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 1861
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    const/4 v0, 0x0

    .line 1862
    .local v0, "currentRssi":I
    if-eqz v1, :cond_0

    .line 1863
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    .line 1864
    const-string v3, "[SMARTWIFI]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RssiStrengthChecker currentRssi : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1865
    iget-object v3, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$RssiStrengthChecker;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # invokes: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isRssiInHystersisZone(I)Z
    invoke-static {v3, v0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$5400(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1866
    const-string v3, "[SMARTWIFI]"

    const-string v4, "RssiStrengthChecker check again after 2 sec"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1867
    iget-object v3, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$RssiStrengthChecker;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # invokes: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->startRssiStrengthChecker()V
    invoke-static {v3}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$5500(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)V

    goto :goto_0

    .line 1869
    :cond_2
    iget-object v3, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$RssiStrengthChecker;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiSignalStrengthHistory:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;
    invoke-static {v3}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$500(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->addReading(Ljava/lang/Integer;)V

    .line 1870
    iget-object v3, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$RssiStrengthChecker;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # invokes: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopRssiStrengthChecker()V
    invoke-static {v3}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$5600(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)V

    goto :goto_0
.end method

.method public onTick(J)V
    .locals 2
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 1848
    const-string v0, "[SMARTWIFI]"

    const-string v1, "RssiStrengthChecker tick"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1849
    return-void
.end method

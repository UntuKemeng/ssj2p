.class Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;
.super Landroid/os/Handler;
.source "HotspotMobileDataLimit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CountApData"
.end annotation


# instance fields
.field private check:Z

.field private mBytes:J

.field private mRxBytes:J

.field private mTxBytes:J

.field final synthetic this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)V
    .locals 1

    .prologue
    .line 198
    iput-object p1, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 199
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->check:Z

    .line 200
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 220
    iget-boolean v7, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->check:Z

    if-nez v7, :cond_1

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    iget-object v7, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    # getter for: Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->isDataConnected:Z
    invoke-static {v7}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->access$200(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 223
    const/4 v7, 0x0

    const-wide/16 v8, 0x3e8

    invoke-virtual {p0, v7, v8, v9}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 226
    :cond_2
    iget-object v7, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    # getter for: Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->iface:Ljava/lang/String;
    invoke-static {v7}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->access$800(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v2

    .line 227
    .local v2, "mTx":J
    iget-object v7, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    # getter for: Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->iface:Ljava/lang/String;
    invoke-static {v7}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->access$800(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v0

    .line 228
    .local v0, "mRx":J
    iget-object v7, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    # getter for: Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mBaseTxBytes:J
    invoke-static {v7}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->access$700(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)J

    move-result-wide v8

    sub-long v8, v2, v8

    iput-wide v8, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->mTxBytes:J

    .line 229
    iget-object v7, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    # getter for: Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mBaseRxBytes:J
    invoke-static {v7}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->access$900(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)J

    move-result-wide v8

    sub-long v8, v0, v8

    iput-wide v8, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->mRxBytes:J

    .line 230
    iget-wide v8, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->mTxBytes:J

    iget-wide v10, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->mRxBytes:J

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->mBytes:J

    .line 231
    new-instance v6, Ljava/math/BigDecimal;

    iget-wide v8, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->mBytes:J

    invoke-direct {v6, v8, v9}, Ljava/math/BigDecimal;-><init>(J)V

    .line 232
    .local v6, "usage":Ljava/math/BigDecimal;
    iget-object v7, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    # getter for: Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->isAgain:Z
    invoke-static {v7}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->access$400(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    iget-object v7, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    # getter for: Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mResumeData:Ljava/lang/String;
    invoke-static {v7}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->access$500(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 233
    new-instance v5, Ljava/math/BigDecimal;

    iget-object v7, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    # getter for: Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mResumeData:Ljava/lang/String;
    invoke-static {v7}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->access$500(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 234
    .local v5, "temp":Ljava/math/BigDecimal;
    invoke-virtual {v6, v5}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v6

    .line 236
    .end local v5    # "temp":Ljava/math/BigDecimal;
    :cond_3
    # getter for: Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->DBG:Z
    invoke-static {}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->access$100()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 237
    const-string v7, "HotspotMobileDataLimit"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mBaseTxBytes = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    # getter for: Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mBaseTxBytes:J
    invoke-static {v9}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->access$700(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mBaseRxBytes = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    # getter for: Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mBaseRxBytes:J
    invoke-static {v9}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->access$900(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mTx = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mRx = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mTxBytes = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->mTxBytes:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mRxBytes = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->mRxBytes:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mBytes = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->mBytes:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", usage = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_4
    iget-object v7, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    # getter for: Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mDataLimited:Z
    invoke-static {v7}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->access$1100(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    # getter for: Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mLimitData:Ljava/math/BigDecimal;
    invoke-static {v7}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->access$1200(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)Ljava/math/BigDecimal;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 239
    # getter for: Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->DBG:Z
    invoke-static {}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->access$100()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 240
    const-string v7, "HotspotMobileDataLimit"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ap Data Limit Value : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    # getter for: Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mLimitData:Ljava/math/BigDecimal;
    invoke-static {v9}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->access$1200(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)Ljava/math/BigDecimal;

    move-result-object v9

    invoke-virtual {v9}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_5
    iget-object v7, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    # getter for: Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mLimitData:Ljava/math/BigDecimal;
    invoke-static {v7}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->access$1200(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)Ljava/math/BigDecimal;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v7

    if-ltz v7, :cond_6

    .line 242
    iget-object v7, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    const/4 v8, 0x1

    # setter for: Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->isReached:Z
    invoke-static {v7, v8}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->access$1302(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;Z)Z

    .line 243
    const-string v7, "HotspotMobileDataLimit"

    const-string v8, "Mobile AP Limited Data reached, turn off Mobile AP"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v7, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    # getter for: Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->access$600(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "wifi_ap_mobile_data_usage_value"

    iget-object v9, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    # getter for: Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mLimitData:Ljava/math/BigDecimal;
    invoke-static {v9}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->access$1200(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)Ljava/math/BigDecimal;

    move-result-object v9

    invoke-virtual {v9}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 245
    iget-object v7, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    # getter for: Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->access$600(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)Landroid/content/Context;

    move-result-object v7

    const-string v8, "wifi"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 246
    .local v4, "mWifiManager":Landroid/net/wifi/WifiManager;
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 253
    .end local v4    # "mWifiManager":Landroid/net/wifi/WifiManager;
    :goto_1
    iget-object v7, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    # getter for: Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->isReached:Z
    invoke-static {v7}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->access$1300(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 254
    const/4 v7, 0x0

    const-wide/16 v8, 0x3e8

    invoke-virtual {p0, v7, v8, v9}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 248
    :cond_6
    iget-object v7, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    # getter for: Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->access$600(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "wifi_ap_mobile_data_usage_value"

    invoke-virtual {v6}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 251
    :cond_7
    iget-object v7, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    # getter for: Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->access$600(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "wifi_ap_mobile_data_usage_value"

    invoke-virtual {v6}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1
.end method

.method isRunning()Z
    .locals 1

    .prologue
    .line 215
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->check:Z

    return v0
.end method

.method pause()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 210
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->check:Z

    .line 211
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->removeMessages(I)V

    .line 212
    return-void
.end method

.method resume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 203
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->check:Z

    .line 204
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->sendEmptyMessage(I)Z

    .line 207
    :cond_0
    return-void
.end method

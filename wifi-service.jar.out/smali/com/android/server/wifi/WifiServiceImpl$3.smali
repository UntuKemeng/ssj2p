.class Lcom/android/server/wifi/WifiServiceImpl$3;
.super Landroid/content/BroadcastReceiver;
.source "WifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiServiceImpl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiServiceImpl;)V
    .locals 0

    .prologue
    .line 751
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 754
    iget-object v7, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    const/4 v8, 0x1

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mChameleonEnabled:Z
    invoke-static {v7, v8}, Lcom/android/server/wifi/WifiServiceImpl;->access$1202(Lcom/android/server/wifi/WifiServiceImpl;Z)Z

    .line 755
    const-string v7, "chameleon_wifi_tetheredData"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 756
    .local v6, "mTempTetheredData":Ljava/lang/String;
    const-string v4, "10"

    .line 757
    .local v4, "mTempMaxUser":Ljava/lang/String;
    const-string v2, "1"

    .line 758
    .local v2, "mTempGsmMaxUser":Ljava/lang/String;
    const-string v1, "8"

    .line 759
    .local v1, "mTempDomRoamMaxUser":Ljava/lang/String;
    const-string v3, "8"

    .line 760
    .local v3, "mTempIntRoamMaxUser":Ljava/lang/String;
    const-string v7, "chameleon_wifi_ssid"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 763
    .local v5, "mTempSSid":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 765
    const-string v7, "WifiService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[onReceive] CHAMELEON Tethering.SSID : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    :cond_0
    if-eqz v6, :cond_1

    .line 769
    iget-object v7, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mTetheredData:I
    invoke-static {v7, v8}, Lcom/android/server/wifi/WifiServiceImpl;->access$1102(Lcom/android/server/wifi/WifiServiceImpl;I)I

    .line 770
    const-string v7, "WifiService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[onReceive] CHAMELEON mTetheredData : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mTetheredData:I
    invoke-static {v9}, Lcom/android/server/wifi/WifiServiceImpl;->access$1100(Lcom/android/server/wifi/WifiServiceImpl;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    :cond_1
    if-eqz v4, :cond_2

    .line 773
    iget-object v7, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mMaxUser:I
    invoke-static {v7, v8}, Lcom/android/server/wifi/WifiServiceImpl;->access$1302(Lcom/android/server/wifi/WifiServiceImpl;I)I

    .line 774
    const-string v7, "WifiService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[onReceive] mMaxUser : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mMaxUser:I
    invoke-static {v9}, Lcom/android/server/wifi/WifiServiceImpl;->access$1300(Lcom/android/server/wifi/WifiServiceImpl;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    :cond_2
    if-eqz v2, :cond_3

    .line 777
    iget-object v7, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mGsmMaxUser:I
    invoke-static {v7, v8}, Lcom/android/server/wifi/WifiServiceImpl;->access$1402(Lcom/android/server/wifi/WifiServiceImpl;I)I

    .line 778
    const-string v7, "WifiService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[onReceive] mGsmMaxUser : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mGsmMaxUser:I
    invoke-static {v9}, Lcom/android/server/wifi/WifiServiceImpl;->access$1400(Lcom/android/server/wifi/WifiServiceImpl;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    :cond_3
    if-eqz v1, :cond_4

    .line 781
    iget-object v7, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mDomRoamMaxUser:I
    invoke-static {v7, v8}, Lcom/android/server/wifi/WifiServiceImpl;->access$1502(Lcom/android/server/wifi/WifiServiceImpl;I)I

    .line 782
    const-string v7, "WifiService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[onReceive] mDomRoamMaxUser : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mDomRoamMaxUser:I
    invoke-static {v9}, Lcom/android/server/wifi/WifiServiceImpl;->access$1500(Lcom/android/server/wifi/WifiServiceImpl;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    :cond_4
    if-eqz v3, :cond_5

    .line 785
    iget-object v7, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mIntRoamMaxUser:I
    invoke-static {v7, v8}, Lcom/android/server/wifi/WifiServiceImpl;->access$1602(Lcom/android/server/wifi/WifiServiceImpl;I)I

    .line 786
    const-string v7, "WifiService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[onReceive] mIntRoamMaxUser : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mIntRoamMaxUser:I
    invoke-static {v9}, Lcom/android/server/wifi/WifiServiceImpl;->access$1600(Lcom/android/server/wifi/WifiServiceImpl;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    :cond_5
    const-string v7, "WifiService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[setValue] mTetheredData = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mTetheredData:I
    invoke-static {v9}, Lcom/android/server/wifi/WifiServiceImpl;->access$1100(Lcom/android/server/wifi/WifiServiceImpl;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mMaxUser = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mMaxUser:I
    invoke-static {v9}, Lcom/android/server/wifi/WifiServiceImpl;->access$1300(Lcom/android/server/wifi/WifiServiceImpl;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mGsmMaxUser = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mGsmMaxUser:I
    invoke-static {v9}, Lcom/android/server/wifi/WifiServiceImpl;->access$1400(Lcom/android/server/wifi/WifiServiceImpl;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mDomRoamMaxUser = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mDomRoamMaxUser:I
    invoke-static {v9}, Lcom/android/server/wifi/WifiServiceImpl;->access$1500(Lcom/android/server/wifi/WifiServiceImpl;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mIntRoamMaxUser = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mIntRoamMaxUser:I
    invoke-static {v9}, Lcom/android/server/wifi/WifiServiceImpl;->access$1600(Lcom/android/server/wifi/WifiServiceImpl;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    iget-object v7, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/wifi/WifiServiceImpl;->access$200(Lcom/android/server/wifi/WifiServiceImpl;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 793
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v7, "chameleon_tethereddata"

    iget-object v8, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mTetheredData:I
    invoke-static {v8}, Lcom/android/server/wifi/WifiServiceImpl;->access$1100(Lcom/android/server/wifi/WifiServiceImpl;)I

    move-result v8

    invoke-static {v0, v7, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 794
    const-string v7, "chameleon_maxuser"

    iget-object v8, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mMaxUser:I
    invoke-static {v8}, Lcom/android/server/wifi/WifiServiceImpl;->access$1300(Lcom/android/server/wifi/WifiServiceImpl;)I

    move-result v8

    invoke-static {v0, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 795
    const-string v7, "chameleon_gsmmaxuser"

    iget-object v8, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mGsmMaxUser:I
    invoke-static {v8}, Lcom/android/server/wifi/WifiServiceImpl;->access$1400(Lcom/android/server/wifi/WifiServiceImpl;)I

    move-result v8

    invoke-static {v0, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 796
    const-string v7, "chameleon_domroammaxuser"

    iget-object v8, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mDomRoamMaxUser:I
    invoke-static {v8}, Lcom/android/server/wifi/WifiServiceImpl;->access$1500(Lcom/android/server/wifi/WifiServiceImpl;)I

    move-result v8

    invoke-static {v0, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 797
    const-string v7, "chameleon_introammaxuser"

    iget-object v8, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mIntRoamMaxUser:I
    invoke-static {v8}, Lcom/android/server/wifi/WifiServiceImpl;->access$1600(Lcom/android/server/wifi/WifiServiceImpl;)I

    move-result v8

    invoke-static {v0, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 798
    const-string v7, "chameleon_ssid"

    invoke-static {v0, v7, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 799
    return-void
.end method

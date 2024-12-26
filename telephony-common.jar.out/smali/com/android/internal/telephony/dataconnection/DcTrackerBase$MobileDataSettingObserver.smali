.class Lcom/android/internal/telephony/dataconnection/DcTrackerBase$MobileDataSettingObserver;
.super Landroid/database/ContentObserver;
.source "DcTrackerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MobileDataSettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 1
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 1040
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$MobileDataSettingObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 1041
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1042
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    .line 1043
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 1056
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$MobileDataSettingObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$MobileDataSettingObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "mobile_data"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, v2, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUserDataEnabled:Z

    .line 1057
    const-string v0, "JPN"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getCountryName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1058
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_RIL_LteCapCheckOnBootTime"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1060
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_IMS_SupportVolteDuringRoaming"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "KDI"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1062
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$MobileDataSettingObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->notifyChangeProfileReqToRIL(ILandroid/os/Message;)Z

    .line 1070
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$MobileDataSettingObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    # invokes: Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendDataSettingToRIL()V
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->access$300(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V

    .line 1072
    const-string v0, "VZW"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_RIL_SupportEpdg"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1074
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$MobileDataSettingObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AlwaysOnPdn sent: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$MobileDataSettingObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsSetAlwaysOnPdn:Z

    if-eqz v0, :cond_4

    const-string v0, "true"

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " mIsWifiConnected: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$MobileDataSettingObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsWifiConnected:Z

    if-eqz v0, :cond_5

    const-string v0, "true"

    :goto_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " mUserDataEnabled: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$MobileDataSettingObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUserDataEnabled:Z

    if-eqz v0, :cond_6

    const-string v0, "true"

    :goto_4
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1077
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$MobileDataSettingObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUserDataEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$MobileDataSettingObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsWifiConnected:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$MobileDataSettingObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsSetAlwaysOnPdn:Z

    if-nez v0, :cond_1

    .line 1078
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$MobileDataSettingObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const-string v2, "MOBILE_DATA is set while Wi-Fi is connected, send SetAlwaysOnPdn"

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1079
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$MobileDataSettingObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->notifyAlwaysOnPdnToRIL(ZLandroid/os/Message;)V

    .line 1083
    :cond_1
    return-void

    .line 1056
    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1066
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$MobileDataSettingObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->notifyChangeProfileReqToRIL(ILandroid/os/Message;)Z

    goto/16 :goto_1

    .line 1074
    :cond_4
    const-string v0, "false"

    goto :goto_2

    :cond_5
    const-string v0, "false"

    goto :goto_3

    :cond_6
    const-string v0, "false"

    goto :goto_4
.end method

.method public register()V
    .locals 3

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$MobileDataSettingObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "mobile_data"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1048
    return-void
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 1051
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$MobileDataSettingObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1052
    return-void
.end method

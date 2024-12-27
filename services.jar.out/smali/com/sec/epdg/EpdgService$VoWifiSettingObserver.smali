.class final Lcom/sec/epdg/EpdgService$VoWifiSettingObserver;
.super Lcom/sec/epdg/EpdgContentObserverBase;
.source "EpdgService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VoWifiSettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/EpdgService;


# direct methods
.method constructor <init>(Lcom/sec/epdg/EpdgService;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    iput-object p1, p0, Lcom/sec/epdg/EpdgService$VoWifiSettingObserver;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-direct {p0, p2}, Lcom/sec/epdg/EpdgContentObserverBase;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChangeSlowPath(ZLandroid/net/Uri;)V
    .locals 7
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v6, 0x0

    sget-object v3, Lcom/sec/epdg/VoWifiSettings;->CONTENT_URI_VOWIFISETTING_TABLE:Landroid/net/Uri;

    invoke-virtual {p2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/epdg/EpdgService$VoWifiSettingObserver;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->getVowifiSetting()I
    invoke-static {v3}, Lcom/sec/epdg/EpdgService;->access$3500(Lcom/sec/epdg/EpdgService;)I

    move-result v0

    .local v0, "enable":I
    iget-object v3, p0, Lcom/sec/epdg/EpdgService$VoWifiSettingObserver;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->getWifiPrefSetting()I
    invoke-static {v3}, Lcom/sec/epdg/EpdgService;->access$3600(Lcom/sec/epdg/EpdgService;)I

    move-result v1

    .local v1, "preferred":I
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isSharePreferredModeViaProperty()Z

    move-result v3

    if-eqz v3, :cond_0

    if-lez v1, :cond_0

    const-string v3, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wificallpreferred value is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "ril.epdg.preferred.mode"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    # getter for: Lcom/sec/epdg/EpdgService;->mVoWifiState:I
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$3700()I

    move-result v3

    if-ne v3, v0, :cond_1

    # getter for: Lcom/sec/epdg/EpdgService;->mVoWifiPref:I
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$3800()I

    move-result v3

    if-eq v3, v1, :cond_2

    :cond_1
    const-string v3, "[EPDGService]"

    const-string v4, "EpdgContentObserver - WIFI perferred mode changed"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    # setter for: Lcom/sec/epdg/EpdgService;->mVoWifiState:I
    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->access$3702(I)I

    # setter for: Lcom/sec/epdg/EpdgService;->mVoWifiPref:I
    invoke-static {v1}, Lcom/sec/epdg/EpdgService;->access$3802(I)I

    iget-object v3, p0, Lcom/sec/epdg/EpdgService$VoWifiSettingObserver;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->setVowifiUserSetting(I)V
    invoke-static {v3, v0}, Lcom/sec/epdg/EpdgService;->access$3900(Lcom/sec/epdg/EpdgService;I)V

    # setter for: Lcom/sec/epdg/EpdgService;->mSetupFailureCount:I
    invoke-static {v6}, Lcom/sec/epdg/EpdgService;->access$4002(I)I

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1900()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/sec/epdg/EpdgService$WifiCallEnabler;

    iget-object v5, p0, Lcom/sec/epdg/EpdgService$VoWifiSettingObserver;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-direct {v4, v5, v0, v1, v6}, Lcom/sec/epdg/EpdgService$WifiCallEnabler;-><init>(Lcom/sec/epdg/EpdgService;IIZ)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    iget-object v3, p0, Lcom/sec/epdg/EpdgService$VoWifiSettingObserver;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->getWifiRoamPrefSetting()I
    invoke-static {v3}, Lcom/sec/epdg/EpdgService;->access$4100(Lcom/sec/epdg/EpdgService;)I

    move-result v2

    .local v2, "romingpreferred":I
    # getter for: Lcom/sec/epdg/EpdgService;->mVoWifiRoamPref:I
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$4200()I

    move-result v3

    if-eq v3, v2, :cond_3

    const-string v3, "[EPDGService]"

    const-string v4, "EpdgContentObserver - Roaming WIFI perferred mode changed"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    # setter for: Lcom/sec/epdg/EpdgService;->mVoWifiRoamPref:I
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$4202(I)I

    iget-object v3, p0, Lcom/sec/epdg/EpdgService$VoWifiSettingObserver;->this$0:Lcom/sec/epdg/EpdgService;

    sget-object v4, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;->PREFERRED_MODE_CHANGED:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    # invokes: Lcom/sec/epdg/EpdgService;->setPolicyTable(Lcom/sec/epdg/EpdgService$PolicyUpdateReason;)V
    invoke-static {v3, v4}, Lcom/sec/epdg/EpdgService;->access$4300(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/EpdgService$PolicyUpdateReason;)V

    .end local v0    # "enable":I
    .end local v1    # "preferred":I
    .end local v2    # "romingpreferred":I
    :cond_3
    return-void
.end method

.class Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$9;
.super Landroid/net/INetworkPolicyListener$Stub;
.source "KnoxVpnEngineService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)V
    .locals 0

    .prologue
    .line 5900
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$9;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-direct {p0}, Landroid/net/INetworkPolicyListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onMeteredIfacesChanged([Ljava/lang/String;)V
    .locals 0
    .param p1, "meteredIfaces"    # [Ljava/lang/String;

    .prologue
    .line 5921
    return-void
.end method

.method public onRestrictBackgroundChanged(Z)V
    .locals 0
    .param p1, "restrictBackground"    # Z

    .prologue
    .line 5926
    return-void
.end method

.method public onUidRulesChanged(II)V
    .locals 6
    .param p1, "uid"    # I
    .param p2, "uidRules"    # I

    .prologue
    .line 5903
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$9;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;
    invoke-static {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$3500(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntries()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 5904
    .local v2, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorUid()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 5905
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 5906
    .local v1, "map":Landroid/os/Bundle;
    const-string/jumbo v3, "uid"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5907
    const-string v3, "KnoxVpnEngineService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onUidRulesChanged callback has been recieved for the vpn client with uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "with the action "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5908
    if-nez p2, :cond_2

    .line 5909
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$9;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    const/16 v4, 0x17

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendMessageToHandler(ILandroid/os/Bundle;)V
    invoke-static {v3, v4, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1300(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;ILandroid/os/Bundle;)V

    .line 5917
    .end local v1    # "map":Landroid/os/Bundle;
    .end local v2    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_1
    :goto_0
    return-void

    .line 5911
    .restart local v1    # "map":Landroid/os/Bundle;
    .restart local v2    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_2
    const/4 v3, 0x2

    if-eq p2, v3, :cond_3

    const/4 v3, 0x1

    if-ne p2, v3, :cond_0

    .line 5912
    :cond_3
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$9;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    const/16 v4, 0x18

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendMessageToHandler(ILandroid/os/Bundle;)V
    invoke-static {v3, v4, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1300(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;ILandroid/os/Bundle;)V

    goto :goto_0
.end method

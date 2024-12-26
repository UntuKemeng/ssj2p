.class public Lcom/android/server/bridge/BridgeProxy$RCPPolicyChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BridgeProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/bridge/BridgeProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RCPPolicyChangedReceiver"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RCPPolicyChangedReceiver"


# instance fields
.field final synthetic this$0:Lcom/android/server/bridge/BridgeProxy;


# direct methods
.method public constructor <init>(Lcom/android/server/bridge/BridgeProxy;)V
    .locals 0

    .prologue
    .line 732
    iput-object p1, p0, Lcom/android/server/bridge/BridgeProxy$RCPPolicyChangedReceiver;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v11, -0x1

    .line 738
    const-string v8, "RCPPolicyChangedReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " onReceive called mDelegateUserId : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/bridge/BridgeProxy$RCPPolicyChangedReceiver;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I
    invoke-static {v10}, Lcom/android/server/bridge/BridgeProxy;->access$600(Lcom/android/server/bridge/BridgeProxy;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_2

    .line 741
    :cond_0
    const-string v8, "RCPPolicyChangedReceiver"

    const-string v9, " onReceive RCP_POLICY_CHANGED intent OR intent.getAction() is null "

    invoke-static {v8, v9}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    :cond_1
    return-void

    .line 746
    :cond_2
    const-string/jumbo v8, "samsung.knox.intent.action.RCP_POLICY_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 747
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string/jumbo v9, "policyChangedBundleExport"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 749
    .local v4, "policyChangedBundleExport":Landroid/os/Bundle;
    if-eqz v4, :cond_3

    .line 750
    const-string/jumbo v8, "personaId"

    invoke-virtual {v4, v8, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 751
    .local v3, "personaId":I
    if-eq v3, v11, :cond_3

    .line 752
    const-string/jumbo v8, "syncerList"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 754
    .local v6, "syncerListExport":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 755
    .local v2, "mSyncerName":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 756
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "mSyncerName":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 757
    .restart local v2    # "mSyncerName":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/bridge/BridgeProxy$RCPPolicyChangedReceiver;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string/jumbo v9, "knox-export-data"

    # invokes: Lcom/android/server/bridge/BridgeProxy;->policyChanged(Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {v8, v2, v9, v3}, Lcom/android/server/bridge/BridgeProxy;->access$1700(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 762
    .end local v0    # "iter":Ljava/util/Iterator;
    .end local v2    # "mSyncerName":Ljava/lang/String;
    .end local v3    # "personaId":I
    .end local v6    # "syncerListExport":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string/jumbo v9, "policyChangedBundle"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 764
    .local v5, "policyChangedBundleImport":Landroid/os/Bundle;
    if-eqz v5, :cond_1

    .line 765
    const-string/jumbo v8, "personaId"

    invoke-virtual {v5, v8, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 766
    .restart local v3    # "personaId":I
    if-eq v3, v11, :cond_1

    .line 767
    const-string/jumbo v8, "syncerList"

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 769
    .local v7, "syncerListImport":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v8, "policyName"

    const-string/jumbo v9, "knox-import-data"

    invoke-virtual {v5, v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 770
    .local v1, "mPolicyName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 771
    .restart local v2    # "mSyncerName":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "iter":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 772
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "mSyncerName":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 773
    .restart local v2    # "mSyncerName":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/bridge/BridgeProxy$RCPPolicyChangedReceiver;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # invokes: Lcom/android/server/bridge/BridgeProxy;->policyChanged(Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {v8, v2, v1, v3}, Lcom/android/server/bridge/BridgeProxy;->access$1700(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1
.end method

.class Lcom/android/server/bridge/BridgeProxy$IBridgeSyncer$1;
.super Ljava/lang/Object;
.source "BridgeProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/bridge/BridgeProxy$IBridgeSyncer;->doSync(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/bridge/BridgeProxy$IBridgeSyncer;

.field final synthetic val$mSyncerName:Ljava/lang/String;

.field final synthetic val$mUserId:I


# direct methods
.method constructor <init>(Lcom/android/server/bridge/BridgeProxy$IBridgeSyncer;Ljava/lang/String;I)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/bridge/BridgeProxy$IBridgeSyncer$1;->this$1:Lcom/android/server/bridge/BridgeProxy$IBridgeSyncer;

    iput-object p2, p0, Lcom/android/server/bridge/BridgeProxy$IBridgeSyncer$1;->val$mSyncerName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/bridge/BridgeProxy$IBridgeSyncer$1;->val$mUserId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy$IBridgeSyncer$1;->this$1:Lcom/android/server/bridge/BridgeProxy$IBridgeSyncer;

    iget-object v1, v1, Lcom/android/server/bridge/BridgeProxy$IBridgeSyncer;->this$0:Lcom/android/server/bridge/BridgeProxy;

    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IBridgeSyncer$1;->val$mSyncerName:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/bridge/BridgeProxy$IBridgeSyncer$1;->val$mUserId:I

    # invokes: Lcom/android/server/bridge/BridgeProxy;->doSyncForSyncer(Ljava/lang/String;I)V
    invoke-static {v1, v2, v3}, Lcom/android/server/bridge/BridgeProxy;->access$2200(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

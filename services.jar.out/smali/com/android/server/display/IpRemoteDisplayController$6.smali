.class Lcom/android/server/display/IpRemoteDisplayController$6;
.super Ljava/lang/Object;
.source "IpRemoteDisplayController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/IpRemoteDisplayController;->requestDisableWifiDisplay(I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/IpRemoteDisplayController;

.field final synthetic val$connectedMode:I


# direct methods
.method constructor <init>(Lcom/android/server/display/IpRemoteDisplayController;I)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    iput p2, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->val$connectedMode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    iget v1, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->val$connectedMode:I

    # invokes: Lcom/android/server/display/IpRemoteDisplayController;->disableWifiDisplay(I)V
    invoke-static {v0, v1}, Lcom/android/server/display/IpRemoteDisplayController;->access$1200(Lcom/android/server/display/IpRemoteDisplayController;I)V

    .line 323
    return-void
.end method

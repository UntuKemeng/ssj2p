.class Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$1;
.super Landroid/content/BroadcastReceiver;
.source "HotspotMobileDataLimit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$1;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$1;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    # invokes: Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v0, p1, p2}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->access$000(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

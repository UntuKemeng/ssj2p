.class Lcom/android/server/fingerprint/FingerprintService$4;
.super Ljava/lang/Object;
.source "FingerprintService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/FingerprintService;->getVendorDaemon()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/fingerprint/FingerprintService;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$4;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    const/4 v2, 0x0

    const-string v0, "FingerprintService"

    const-string/jumbo v1, "getVendorDaemon onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$4;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {p2}, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v1

    # setter for: Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;
    invoke-static {v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->access$502(Lcom/android/server/fingerprint/FingerprintService;Landroid/hardware/fingerprint/IFingerprintDaemon;)Landroid/hardware/fingerprint/IFingerprintDaemon;

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$4;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2711

    invoke-virtual {v0, v1, v2, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    const-string v0, "FingerprintService"

    const-string/jumbo v1, "getVendorDaemon onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$4;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;
    invoke-static {v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->access$502(Lcom/android/server/fingerprint/FingerprintService;Landroid/hardware/fingerprint/IFingerprintDaemon;)Landroid/hardware/fingerprint/IFingerprintDaemon;

    return-void
.end method

.class Lcom/android/server/storage/DeviceStorageMonitorService$3;
.super Landroid/content/BroadcastReceiver;
.source "DeviceStorageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/storage/DeviceStorageMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/storage/DeviceStorageMonitorService;


# direct methods
.method constructor <init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$3;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v2, "DeviceStorageMonitorService"

    const-string/jumbo v3, "mUPSMReceiver onReceive"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, "action":Ljava/lang/String;
    const-string v2, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "reason"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .local v1, "reason":I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    const-string v2, "DeviceStorageMonitorService"

    const-string/jumbo v3, "mUPSMReceiver Ultra Power Saving Mode is ON"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "reason":I
    :cond_0
    :goto_0
    return-void

    .restart local v1    # "reason":I
    :cond_1
    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    const-string v2, "DeviceStorageMonitorService"

    const-string/jumbo v3, "mUPSMReceiver Ultra Power Saving Mode is OFF."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService$3;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    iget-boolean v2, v2, Lcom/android/server/storage/DeviceStorageMonitorService;->mLowMemFlag:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-string v2, "DeviceStorageMonitorService"

    const-string v3, "LowMemFlag is TRUE, so show the LOW MEMORY NOTIFICATION"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService$3;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # invokes: Lcom/android/server/storage/DeviceStorageMonitorService;->sendNotification()V
    invoke-static {v2}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$800(Lcom/android/server/storage/DeviceStorageMonitorService;)V

    goto :goto_0

    :cond_2
    const-string v2, "DeviceStorageMonitorService"

    const-string v3, "UPSM state is unknown."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.class Lcom/android/server/BatteryService$SmartGlowSettingsObserver;
.super Landroid/database/ContentObserver;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmartGlowSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 1

    .prologue
    iput-object p1, p0, Lcom/android/server/BatteryService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 10
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v5, p0, Lcom/android/server/BatteryService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/BatteryService;->access$000(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Lcom/android/server/BatteryService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/BatteryService;->access$700(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, "contentResolver":Landroid/content/ContentResolver;
    iget-object v7, p0, Lcom/android/server/BatteryService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    const-string/jumbo v5, "ml_status"

    const/4 v8, 0x0

    invoke-static {v0, v5, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_1

    move v5, v4

    :goto_0
    # setter for: Lcom/android/server/BatteryService;->mSmartGlowIntensitySetting:Z
    invoke-static {v7, v5}, Lcom/android/server/BatteryService;->access$1702(Lcom/android/server/BatteryService;Z)Z

    iget-object v7, p0, Lcom/android/server/BatteryService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    const-string/jumbo v5, "ml_battery_charging"

    const/4 v8, 0x0

    invoke-static {v0, v5, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_2

    move v5, v3

    :goto_1
    # setter for: Lcom/android/server/BatteryService;->mSmartGlowChargingStatusEnable:Z
    invoke-static {v7, v5}, Lcom/android/server/BatteryService;->access$1802(Lcom/android/server/BatteryService;Z)Z

    iget-object v7, p0, Lcom/android/server/BatteryService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    iget-object v5, p0, Lcom/android/server/BatteryService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mSmartGlowChargingStatusEnable:Z
    invoke-static {v5}, Lcom/android/server/BatteryService;->access$1800(Lcom/android/server/BatteryService;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/server/BatteryService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mSmartGlowIntensitySetting:Z
    invoke-static {v5}, Lcom/android/server/BatteryService;->access$1700(Lcom/android/server/BatteryService;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v3

    :goto_2
    # setter for: Lcom/android/server/BatteryService;->mSmartGlowChargingStatusEnable:Z
    invoke-static {v7, v5}, Lcom/android/server/BatteryService;->access$1802(Lcom/android/server/BatteryService;Z)Z

    iget-object v7, p0, Lcom/android/server/BatteryService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    const-string/jumbo v5, "ml_aa_battery_status"

    const/4 v8, 0x0

    invoke-static {v0, v5, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_4

    move v5, v3

    :goto_3
    # setter for: Lcom/android/server/BatteryService;->mSmartGlowLowBatteryStatusEnable:Z
    invoke-static {v7, v5}, Lcom/android/server/BatteryService;->access$1902(Lcom/android/server/BatteryService;Z)Z

    iget-object v7, p0, Lcom/android/server/BatteryService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    iget-object v5, p0, Lcom/android/server/BatteryService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mSmartGlowLowBatteryStatusEnable:Z
    invoke-static {v5}, Lcom/android/server/BatteryService;->access$1900(Lcom/android/server/BatteryService;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/server/BatteryService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mSmartGlowIntensitySetting:Z
    invoke-static {v5}, Lcom/android/server/BatteryService;->access$1700(Lcom/android/server/BatteryService;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string/jumbo v5, "ml_aa_status"

    const/4 v8, 0x0

    invoke-static {v0, v5, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_5

    move v5, v3

    :goto_4
    # setter for: Lcom/android/server/BatteryService;->mSmartGlowLowBatteryStatusEnable:Z
    invoke-static {v7, v5}, Lcom/android/server/BatteryService;->access$1902(Lcom/android/server/BatteryService;Z)Z

    iget-object v5, p0, Lcom/android/server/BatteryService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    const-string/jumbo v7, "ml_aa_battery_value"

    const/16 v8, 0x14

    invoke-static {v0, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    # setter for: Lcom/android/server/BatteryService;->mSmartGlowLowBatteryLevel:I
    invoke-static {v5, v7}, Lcom/android/server/BatteryService;->access$2002(Lcom/android/server/BatteryService;I)I

    iget-object v5, p0, Lcom/android/server/BatteryService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    const-string/jumbo v7, "ultra_powersaving_mode"

    const/4 v8, 0x0

    const/4 v9, -0x2

    invoke-static {v0, v7, v8, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-ne v7, v3, :cond_6

    :goto_5
    # setter for: Lcom/android/server/BatteryService;->mUpsmOn:Z
    invoke-static {v5, v3}, Lcom/android/server/BatteryService;->access$2102(Lcom/android/server/BatteryService;Z)Z

    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$1000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Smart Glow Charging Status Setting = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/BatteryService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mSmartGlowChargingStatusEnable:Z
    invoke-static {v5}, Lcom/android/server/BatteryService;->access$1800(Lcom/android/server/BatteryService;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$1000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Smart Glow Low Battery Status Setting = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/BatteryService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mSmartGlowLowBatteryStatusEnable:Z
    invoke-static {v5}, Lcom/android/server/BatteryService;->access$1900(Lcom/android/server/BatteryService;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$1000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Smart Glow Low Battery Level Settings = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/BatteryService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mSmartGlowLowBatteryLevel:I
    invoke-static {v5}, Lcom/android/server/BatteryService;->access$2000(Lcom/android/server/BatteryService;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$1000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!@UPSM setting = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/BatteryService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mUpsmOn:Z
    invoke-static {v5}, Lcom/android/server/BatteryService;->access$2100(Lcom/android/server/BatteryService;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/BatteryService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mUpsmOn:Z
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$2100(Lcom/android/server/BatteryService;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/BatteryService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    invoke-virtual {v3}, Lcom/android/server/BatteryService;->getContext()Landroid/content/Context;

    move-result-object v1

    .local v1, "context":Landroid/content/Context;
    const-string/jumbo v3, "notification"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .local v2, "mNotificationMgr":Landroid/app/NotificationManager;
    const/4 v3, 0x0

    const/4 v4, 0x1

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "mNotificationMgr":Landroid/app/NotificationManager;
    :cond_0
    iget-object v3, p0, Lcom/android/server/BatteryService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$500(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$Led;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    monitor-exit v6

    return-void

    :cond_1
    move v5, v3

    goto/16 :goto_0

    :cond_2
    move v5, v4

    goto/16 :goto_1

    :cond_3
    move v5, v4

    goto/16 :goto_2

    :cond_4
    move v5, v4

    goto/16 :goto_3

    :cond_5
    move v5, v4

    goto/16 :goto_4

    :cond_6
    move v3, v4

    goto/16 :goto_5

    .end local v0    # "contentResolver":Landroid/content/ContentResolver;
    :catchall_0
    move-exception v3

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

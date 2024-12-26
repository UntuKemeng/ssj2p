.class Lcom/android/server/storage/DeviceStorageMonitorService$SmartGlowSettingsObserver;
.super Landroid/database/ContentObserver;
.source "DeviceStorageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/storage/DeviceStorageMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmartGlowSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/storage/DeviceStorageMonitorService;


# direct methods
.method constructor <init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V
    .locals 1

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    .line 183
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 184
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 8
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 188
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 189
    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # getter for: Lcom/android/server/storage/DeviceStorageMonitorService;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$000(Lcom/android/server/storage/DeviceStorageMonitorService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 190
    :try_start_0
    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # getter for: Lcom/android/server/storage/DeviceStorageMonitorService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$100(Lcom/android/server/storage/DeviceStorageMonitorService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 191
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    iget-object v5, p0, Lcom/android/server/storage/DeviceStorageMonitorService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    const-string/jumbo v3, "ml_aa_storage_status"

    const/4 v6, 0x0

    invoke-static {v0, v3, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    move v3, v1

    :goto_0
    # setter for: Lcom/android/server/storage/DeviceStorageMonitorService;->mSmartGlowStorageStatusEnable:Z
    invoke-static {v5, v3}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$202(Lcom/android/server/storage/DeviceStorageMonitorService;Z)Z

    .line 192
    iget-object v5, p0, Lcom/android/server/storage/DeviceStorageMonitorService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # getter for: Lcom/android/server/storage/DeviceStorageMonitorService;->mSmartGlowStorageStatusEnable:Z
    invoke-static {v3}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$200(Lcom/android/server/storage/DeviceStorageMonitorService;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "ml_aa_status"

    const/4 v6, 0x0

    invoke-static {v0, v3, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    move v3, v1

    :goto_1
    # setter for: Lcom/android/server/storage/DeviceStorageMonitorService;->mSmartGlowStorageStatusEnable:Z
    invoke-static {v5, v3}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$202(Lcom/android/server/storage/DeviceStorageMonitorService;Z)Z

    .line 193
    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    const-string/jumbo v5, "ml_status"

    const/4 v6, 0x0

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v1, :cond_2

    :goto_2
    # setter for: Lcom/android/server/storage/DeviceStorageMonitorService;->mSmartGlowStatus:Z
    invoke-static {v3, v1}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$302(Lcom/android/server/storage/DeviceStorageMonitorService;Z)Z

    .line 194
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    const-string/jumbo v2, "ml_aa_storage_value"

    const/16 v3, 0x14

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    # setter for: Lcom/android/server/storage/DeviceStorageMonitorService;->mSmartGlowLowStorageLevel:I
    invoke-static {v1, v2}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$402(Lcom/android/server/storage/DeviceStorageMonitorService;I)I

    .line 195
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # getter for: Lcom/android/server/storage/DeviceStorageMonitorService;->mTotalMemory:J
    invoke-static {v2}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$500(Lcom/android/server/storage/DeviceStorageMonitorService;)J

    move-result-wide v2

    iget-object v5, p0, Lcom/android/server/storage/DeviceStorageMonitorService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # getter for: Lcom/android/server/storage/DeviceStorageMonitorService;->mSmartGlowLowStorageLevel:I
    invoke-static {v5}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$400(Lcom/android/server/storage/DeviceStorageMonitorService;)I

    move-result v5

    int-to-long v6, v5

    mul-long/2addr v2, v6

    const-wide/16 v6, 0x64

    div-long/2addr v2, v6

    iput-wide v2, v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mSmartGlowMemLowThreshold:J

    .line 197
    const-string v1, "DeviceStorageMonitorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Smart Glow Low Storage Status Setting = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # getter for: Lcom/android/server/storage/DeviceStorageMonitorService;->mSmartGlowStorageStatusEnable:Z
    invoke-static {v3}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$200(Lcom/android/server/storage/DeviceStorageMonitorService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const-string v1, "DeviceStorageMonitorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Smart Glow Low Storage Level Settings = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # getter for: Lcom/android/server/storage/DeviceStorageMonitorService;->mSmartGlowLowStorageLevel:I
    invoke-static {v3}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$400(Lcom/android/server/storage/DeviceStorageMonitorService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const-string v1, "DeviceStorageMonitorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Smart Glow mSmartGlowMemLowThreshold = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    iget-wide v6, v3, Lcom/android/server/storage/DeviceStorageMonitorService;->mSmartGlowMemLowThreshold:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const-string v1, "DeviceStorageMonitorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Smart Glow mSmartGlowStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # getter for: Lcom/android/server/storage/DeviceStorageMonitorService;->mSmartGlowStatus:Z
    invoke-static {v3}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$300(Lcom/android/server/storage/DeviceStorageMonitorService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const-string v1, "DeviceStorageMonitorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mTotalMemory = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # getter for: Lcom/android/server/storage/DeviceStorageMonitorService;->mTotalMemory:J
    invoke-static {v3}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$500(Lcom/android/server/storage/DeviceStorageMonitorService;)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const-string v1, "DeviceStorageMonitorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mFreeMem = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # getter for: Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J
    invoke-static {v3}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$600(Lcom/android/server/storage/DeviceStorageMonitorService;)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/storage/DeviceStorageMonitorService;->checkMemory(Z)V

    .line 205
    monitor-exit v4

    .line 206
    return-void

    :cond_0
    move v3, v2

    .line 191
    goto/16 :goto_0

    :cond_1
    move v3, v2

    .line 192
    goto/16 :goto_1

    :cond_2
    move v1, v2

    .line 193
    goto/16 :goto_2

    .line 205
    .end local v0    # "contentResolver":Landroid/content/ContentResolver;
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

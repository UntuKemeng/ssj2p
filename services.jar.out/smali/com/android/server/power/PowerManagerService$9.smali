.class Lcom/android/server/power/PowerManagerService$9;
.super Lcom/samsung/android/cover/CoverManager$CoverStateListener;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    .prologue
    .line 7242
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager$CoverStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverAttachStateChanged(Z)V
    .locals 7
    .param p1, "attach"    # Z

    .prologue
    .line 7249
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mFeatureCoverSysfs:Z
    invoke-static {v4}, Lcom/android/server/power/PowerManagerService;->access$14800(Lcom/android/server/power/PowerManagerService;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 7251
    if-eqz p1, :cond_2

    .line 7252
    :try_start_0
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;
    invoke-static {v4}, Lcom/android/server/power/PowerManagerService;->access$14900(Lcom/android/server/power/PowerManagerService;)Lcom/samsung/android/cover/CoverManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v1

    .line 7253
    .local v1, "state":Lcom/samsung/android/cover/CoverState;
    if-eqz v1, :cond_0

    .line 7254
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v5

    # setter for: Lcom/android/server/power/PowerManagerService;->mCoverType:I
    invoke-static {v4, v5}, Lcom/android/server/power/PowerManagerService;->access$11202(Lcom/android/server/power/PowerManagerService;I)I

    .line 7259
    .end local v1    # "state":Lcom/samsung/android/cover/CoverState;
    :cond_0
    :goto_0
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onCoverAttachStateChanged: attach: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  mCoverType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mCoverType:I
    invoke-static {v6}, Lcom/android/server/power/PowerManagerService;->access$11200(Lcom/android/server/power/PowerManagerService;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7264
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 7265
    .local v2, "time":J
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    # setter for: Lcom/android/server/power/PowerManagerService;->mlastSetCoverTypeTime:J
    invoke-static {v4, v2, v3}, Lcom/android/server/power/PowerManagerService;->access$11302(Lcom/android/server/power/PowerManagerService;J)J

    .line 7266
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onCoverAttachStateChanged = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mCoverType:I
    invoke-static {v6}, Lcom/android/server/power/PowerManagerService;->access$11200(Lcom/android/server/power/PowerManagerService;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # setter for: Lcom/android/server/power/PowerManagerService;->mlastUpdateCoverTypeReason:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/server/power/PowerManagerService;->access$11402(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)Ljava/lang/String;

    .line 7268
    .end local v2    # "time":J
    :cond_1
    return-void

    .line 7257
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v5, 0x2

    # setter for: Lcom/android/server/power/PowerManagerService;->mCoverType:I
    invoke-static {v4, v5}, Lcom/android/server/power/PowerManagerService;->access$11202(Lcom/android/server/power/PowerManagerService;I)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 7260
    :catch_0
    move-exception v0

    .line 7261
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v4, "PowerManagerService"

    const-string/jumbo v5, "onCoverAttachStateChanged: mCoverManager returns NULL."

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onCoverSwitchStateChanged(Z)V
    .locals 0
    .param p1, "swtichState"    # Z

    .prologue
    .line 7245
    return-void
.end method

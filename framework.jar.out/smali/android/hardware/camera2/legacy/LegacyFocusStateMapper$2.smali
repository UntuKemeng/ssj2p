.class Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$2;
.super Ljava/lang/Object;
.source "LegacyFocusStateMapper.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->processRequestTriggers(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/Camera$Parameters;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;

.field final synthetic val$afMode:Ljava/lang/String;

.field final synthetic val$currentAfRun:I


# direct methods
.method constructor <init>(Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;ILjava/lang/String;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$2;->this$0:Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;

    iput p2, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$2;->val$currentAfRun:I

    iput-object p3, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$2;->val$afMode:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 9
    .param p1, "success"    # Z
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$2;->this$0:Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;

    # getter for: Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->access$000(Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    :try_start_0
    iget-object v3, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$2;->this$0:Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;

    # getter for: Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfRun:I
    invoke-static {v3}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->access$100(Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;)I

    move-result v0

    .local v0, "latestAfRun":I
    iget v3, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$2;->val$currentAfRun:I

    if-eq v0, v3, :cond_0

    # getter for: Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "onAutoFocus - ignoring AF callback (old run %d, new run %d)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v7, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$2;->val$currentAfRun:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v6

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_2

    const/4 v1, 0x4

    .local v1, "newAfState":I
    :goto_1
    iget-object v7, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$2;->val$afMode:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :cond_1
    move v2, v3

    :goto_2
    packed-switch v2, :pswitch_data_0

    # getter for: Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onAutoFocus - got unexpected onAutoFocus in mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$2;->val$afMode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :pswitch_0
    iget-object v2, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$2;->this$0:Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;

    # setter for: Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfState:I
    invoke-static {v2, v1}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->access$302(Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;I)I

    monitor-exit v6

    goto :goto_0

    .end local v0    # "latestAfRun":I
    .end local v1    # "newAfState":I
    :catchall_0
    move-exception v2

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "latestAfRun":I
    :cond_2
    const/4 v1, 0x5

    goto :goto_1

    .restart local v1    # "newAfState":I
    :sswitch_0
    :try_start_1
    const-string v4, "auto"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    :sswitch_1
    const-string v2, "continuous-picture"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_2

    :sswitch_2
    const-string v2, "continuous-video"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v5

    goto :goto_2

    :sswitch_3
    const-string/jumbo v2, "macro"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        -0xb99cbc3 -> :sswitch_2
        0x2dddaf -> :sswitch_0
        0x62d9bcc -> :sswitch_3
        0x363d9440 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

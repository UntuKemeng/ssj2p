.class final Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;
.super Landroid/os/Handler;
.source "CoverManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cover/CoverManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CoverManagerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cover/CoverManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/cover/CoverManagerService;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;->this$0:Lcom/android/server/cover/CoverManagerService;

    .line 284
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 285
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 289
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 304
    :goto_0
    return-void

    .line 291
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;->this$0:Lcom/android/server/cover/CoverManagerService;

    # invokes: Lcom/android/server/cover/CoverManagerService;->updateCoverWindowSize()V
    invoke-static {v0}, Lcom/android/server/cover/CoverManagerService;->access$700(Lcom/android/server/cover/CoverManagerService;)V

    goto :goto_0

    .line 294
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;->this$0:Lcom/android/server/cover/CoverManagerService;

    # getter for: Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;
    invoke-static {v0}, Lcom/android/server/cover/CoverManagerService;->access$000(Lcom/android/server/cover/CoverManagerService;)Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/samsung/android/cover/CoverState;->attached:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;->this$0:Lcom/android/server/cover/CoverManagerService;

    invoke-virtual {v0}, Lcom/android/server/cover/CoverManagerService;->getNfcCoverAttachStateFromInputManager()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;->this$0:Lcom/android/server/cover/CoverManagerService;

    # getter for: Lcom/android/server/cover/CoverManagerService;->mProximityPositive:Z
    invoke-static {v0}, Lcom/android/server/cover/CoverManagerService;->access$500(Lcom/android/server/cover/CoverManagerService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;->this$0:Lcom/android/server/cover/CoverManagerService;

    # invokes: Lcom/android/server/cover/CoverManagerService;->attachDefaultCover()V
    invoke-static {v0}, Lcom/android/server/cover/CoverManagerService;->access$800(Lcom/android/server/cover/CoverManagerService;)V

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;->this$0:Lcom/android/server/cover/CoverManagerService;

    invoke-virtual {v0}, Lcom/android/server/cover/CoverManagerService;->unRegisterProximityListener()V

    goto :goto_0

    .line 289
    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

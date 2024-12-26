.class Landroid/view/ViewRootImpl$4;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ViewRootImpl;->loadSystemProperties()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 0

    .prologue
    .line 7125
    iput-object p1, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/16 v4, 0x16

    const/4 v3, 0x0

    .line 7129
    iget-object v1, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    const-string/jumbo v2, "viewroot.profile_rendering"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    # setter for: Landroid/view/ViewRootImpl;->mProfileRendering:Z
    invoke-static {v1, v2}, Landroid/view/ViewRootImpl;->access$3002(Landroid/view/ViewRootImpl;Z)Z

    .line 7130
    iget-object v1, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    # invokes: Landroid/view/ViewRootImpl;->profileRendering(Z)V
    invoke-static {v1, v2}, Landroid/view/ViewRootImpl;->access$900(Landroid/view/ViewRootImpl;Z)V

    .line 7133
    iget-object v1, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v1, :cond_0

    .line 7134
    iget-object v1, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v1}, Landroid/view/HardwareRenderer;->loadSystemProperties()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7135
    iget-object v1, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->invalidate()V

    .line 7140
    :cond_0
    const-string v1, "debug.layout"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 7141
    .local v0, "layout":Z
    iget-object v1, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mDebugLayout:Z

    if-eq v0, v1, :cond_1

    .line 7142
    iget-object v1, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v0, v1, Landroid/view/View$AttachInfo;->mDebugLayout:Z

    .line 7143
    iget-object v1, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v4}, Landroid/view/ViewRootImpl$ViewRootHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7144
    iget-object v1, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v4, v2, v3}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 7147
    :cond_1
    return-void
.end method

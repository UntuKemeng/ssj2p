.class Landroid/widget/HoverPopupWindow$TouchablePopupContainer$1;
.super Landroid/os/Handler;
.source "HoverPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/HoverPopupWindow$TouchablePopupContainer;-><init>(Landroid/widget/HoverPopupWindow;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

.field final synthetic val$this$0:Landroid/widget/HoverPopupWindow;


# direct methods
.method constructor <init>(Landroid/widget/HoverPopupWindow$TouchablePopupContainer;Landroid/widget/HoverPopupWindow;)V
    .locals 0

    .prologue
    .line 3121
    iput-object p1, p0, Landroid/widget/HoverPopupWindow$TouchablePopupContainer$1;->this$1:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    iput-object p2, p0, Landroid/widget/HoverPopupWindow$TouchablePopupContainer$1;->val$this$0:Landroid/widget/HoverPopupWindow;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3123
    const-string v0, "HoverPopupWindow"

    const-string v1, "TouchablePopupContainer: ***** mContainerDismissHandler handleMessage *****"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3125
    iget-object v0, p0, Landroid/widget/HoverPopupWindow$TouchablePopupContainer$1;->this$1:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    iget-object v0, v0, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;
    invoke-static {v0}, Landroid/widget/HoverPopupWindow;->access$300(Landroid/widget/HoverPopupWindow;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/HoverPopupWindow$TouchablePopupContainer$1;->this$1:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    iget-object v0, v0, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;
    invoke-static {v0}, Landroid/widget/HoverPopupWindow;->access$300(Landroid/widget/HoverPopupWindow;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3127
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3128
    const-string v0, "HoverPopupWindow"

    const-string v1, "TouchablePopupContainer: mContainerDismissHandler handleMessage: Call dismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3129
    iget-object v0, p0, Landroid/widget/HoverPopupWindow$TouchablePopupContainer$1;->this$1:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    iget-object v0, v0, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    invoke-virtual {v0}, Landroid/widget/HoverPopupWindow;->dismiss()V

    .line 3132
    :cond_0
    return-void
.end method

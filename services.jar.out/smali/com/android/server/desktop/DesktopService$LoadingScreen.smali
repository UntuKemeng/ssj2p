.class Lcom/android/server/desktop/DesktopService$LoadingScreen;
.super Landroid/app/Presentation;
.source "DesktopService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktop/DesktopService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadingScreen"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktop/DesktopService;


# direct methods
.method public constructor <init>(Lcom/android/server/desktop/DesktopService;Landroid/content/Context;Landroid/view/Display;)V
    .locals 0
    .param p2, "outerContext"    # Landroid/content/Context;
    .param p3, "display"    # Landroid/view/Display;

    .prologue
    iput-object p1, p0, Lcom/android/server/desktop/DesktopService$LoadingScreen;->this$0:Lcom/android/server/desktop/DesktopService;

    invoke-direct {p0, p2, p3}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    invoke-super {p0, p1}, Landroid/app/Presentation;->onCreate(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/desktop/DesktopService$LoadingScreen;->this$0:Lcom/android/server/desktop/DesktopService;

    # getter for: Lcom/android/server/desktop/DesktopService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/desktop/DesktopService;->access$1500(Lcom/android/server/desktop/DesktopService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x1090149

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .local v1, "view":Landroid/view/View;
    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p0, v1}, Lcom/android/server/desktop/DesktopService$LoadingScreen;->setContentView(Landroid/view/View;)V

    return-void
.end method

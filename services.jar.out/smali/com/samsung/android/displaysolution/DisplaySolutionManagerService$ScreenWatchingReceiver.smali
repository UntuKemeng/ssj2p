.class public Lcom/samsung/android/displaysolution/DisplaySolutionManagerService$ScreenWatchingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DisplaySolutionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScreenWatchingReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 163
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "action":Ljava/lang/String;
    return-void
.end method

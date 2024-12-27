.class final Lcom/samsung/android/displaysolution/DisplaySolutionManagerService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "DisplaySolutionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    iput-object p1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;

    # invokes: Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->setting_is_changed()V
    invoke-static {v0}, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->access$000(Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;)V

    return-void
.end method

.class Lcom/android/server/policy/StatusBarController$1$2;
.super Ljava/lang/Object;
.source "StatusBarController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/StatusBarController$1;->onAppTransitionStartingLocked(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/StatusBarController$1;

.field final synthetic val$closeAnimation:Landroid/view/animation/Animation;

.field final synthetic val$closeToken:Landroid/os/IBinder;

.field final synthetic val$openAnimation:Landroid/view/animation/Animation;

.field final synthetic val$openToken:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/android/server/policy/StatusBarController$1;Landroid/view/animation/Animation;Landroid/view/animation/Animation;Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/policy/StatusBarController$1$2;->this$1:Lcom/android/server/policy/StatusBarController$1;

    iput-object p2, p0, Lcom/android/server/policy/StatusBarController$1$2;->val$openAnimation:Landroid/view/animation/Animation;

    iput-object p3, p0, Lcom/android/server/policy/StatusBarController$1$2;->val$closeAnimation:Landroid/view/animation/Animation;

    iput-object p4, p0, Lcom/android/server/policy/StatusBarController$1$2;->val$closeToken:Landroid/os/IBinder;

    iput-object p5, p0, Lcom/android/server/policy/StatusBarController$1$2;->val$openToken:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    :try_start_0
    iget-object v6, p0, Lcom/android/server/policy/StatusBarController$1$2;->this$1:Lcom/android/server/policy/StatusBarController$1;

    iget-object v6, v6, Lcom/android/server/policy/StatusBarController$1;->this$0:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v6}, Lcom/android/server/policy/StatusBarController;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v3

    .local v3, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v3, :cond_2

    iget-object v6, p0, Lcom/android/server/policy/StatusBarController$1$2;->this$1:Lcom/android/server/policy/StatusBarController$1;

    iget-object v6, v6, Lcom/android/server/policy/StatusBarController$1;->this$0:Lcom/android/server/policy/StatusBarController;

    iget-object v7, p0, Lcom/android/server/policy/StatusBarController$1$2;->val$openAnimation:Landroid/view/animation/Animation;

    iget-object v8, p0, Lcom/android/server/policy/StatusBarController$1$2;->val$closeAnimation:Landroid/view/animation/Animation;

    # invokes: Lcom/android/server/policy/StatusBarController;->calculateStatusBarTransitionStartTime(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)J
    invoke-static {v6, v7, v8}, Lcom/android/server/policy/StatusBarController;->access$000(Lcom/android/server/policy/StatusBarController;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)J

    move-result-wide v4

    .local v4, "startTime":J
    iget-object v6, p0, Lcom/android/server/policy/StatusBarController$1$2;->val$closeAnimation:Landroid/view/animation/Animation;

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/server/policy/StatusBarController$1$2;->val$openAnimation:Landroid/view/animation/Animation;

    if-eqz v6, :cond_3

    :cond_0
    const-wide/16 v0, 0x78

    .local v0, "duration":J
    :goto_0
    const-string v6, "2016B"

    sget-object v7, Lcom/android/server/policy/PhoneWindowManager;->mScafeVersion:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/policy/StatusBarController$1$2;->val$closeAnimation:Landroid/view/animation/Animation;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/policy/StatusBarController$1$2;->val$openAnimation:Landroid/view/animation/Animation;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/policy/StatusBarController$1$2;->val$closeToken:Landroid/os/IBinder;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/server/policy/StatusBarController$1$2;->val$closeToken:Landroid/os/IBinder;

    check-cast v6, Landroid/view/IApplicationToken;

    invoke-interface {v6}, Landroid/view/IApplicationToken;->isHomeWindow()Z

    move-result v6

    if-eqz v6, :cond_4

    const-wide/16 v0, 0x64

    :cond_1
    :goto_1
    invoke-interface {v3, v4, v5, v0, v1}, Lcom/android/internal/statusbar/IStatusBarService;->appTransitionStarting(JJ)V

    .end local v0    # "duration":J
    .end local v3    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    .end local v4    # "startTime":J
    :cond_2
    :goto_2
    return-void

    .restart local v3    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    .restart local v4    # "startTime":J
    :cond_3
    const-wide/16 v0, 0x0

    goto :goto_0

    .restart local v0    # "duration":J
    :cond_4
    iget-object v6, p0, Lcom/android/server/policy/StatusBarController$1$2;->val$openToken:Landroid/os/IBinder;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/policy/StatusBarController$1$2;->val$openToken:Landroid/os/IBinder;

    check-cast v6, Landroid/view/IApplicationToken;

    invoke-interface {v6}, Landroid/view/IApplicationToken;->isHomeWindow()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_1

    const-wide/16 v0, 0xc8

    goto :goto_1

    .end local v0    # "duration":J
    .end local v3    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    .end local v4    # "startTime":J
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    iget-object v6, p0, Lcom/android/server/policy/StatusBarController$1$2;->this$1:Lcom/android/server/policy/StatusBarController$1;

    iget-object v6, v6, Lcom/android/server/policy/StatusBarController$1;->this$0:Lcom/android/server/policy/StatusBarController;

    iget-object v6, v6, Lcom/android/server/policy/StatusBarController;->mTag:Ljava/lang/String;

    const-string v7, "RemoteException when app transition is starting"

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v6, p0, Lcom/android/server/policy/StatusBarController$1$2;->this$1:Lcom/android/server/policy/StatusBarController$1;

    iget-object v6, v6, Lcom/android/server/policy/StatusBarController$1;->this$0:Lcom/android/server/policy/StatusBarController;

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/android/server/policy/StatusBarController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_2
.end method

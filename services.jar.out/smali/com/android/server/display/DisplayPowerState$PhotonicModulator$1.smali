.class Lcom/android/server/display/DisplayPowerState$PhotonicModulator$1;
.super Ljava/lang/Object;
.source "DisplayPowerState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerState$PhotonicModulator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/display/DisplayPowerState$PhotonicModulator;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayPowerState$PhotonicModulator;)V
    .locals 0

    .prologue
    .line 614
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 617
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    # getter for: Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->access$2000(Lcom/android/server/display/DisplayPowerState$PhotonicModulator;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 618
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingRequestDisplayState:Z
    invoke-static {v0, v2}, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->access$2102(Lcom/android/server/display/DisplayPowerState$PhotonicModulator;Z)Z

    .line 619
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/display/DisplayPowerState;

    # invokes: Lcom/android/server/display/DisplayPowerState;->postScreenUpdateThreadSafe()V
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerState;->access$1500(Lcom/android/server/display/DisplayPowerState;)V

    .line 620
    monitor-exit v1

    .line 621
    return-void

    .line 620
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.class final Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;
.super Ljava/lang/Object;
.source "SdpManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SdpManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SdpManagerServiceBinderListener"
.end annotation


# instance fields
.field caller:I

.field mAlias:Ljava/lang/String;

.field final mListener:Lcom/sec/sdp/ISdpListener;

.field final synthetic this$0:Lcom/android/server/SdpManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/SdpManagerService;Ljava/lang/String;Lcom/sec/sdp/ISdpListener;)V
    .locals 1
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/sec/sdp/ISdpListener;

    .prologue
    iput-object p1, p0, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;->this$0:Lcom/android/server/SdpManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;->caller:I

    iput-object p3, p0, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;->mListener:Lcom/sec/sdp/ISdpListener;

    iput-object p2, p0, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;->mAlias:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .prologue
    const-string v1, "SdpManagerService"

    const-string v2, "An ISdpListener has died!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;->this$0:Lcom/android/server/SdpManagerService;

    # getter for: Lcom/android/server/SdpManagerService;->mBinderListeners:Ljava/util/Map;
    invoke-static {v1}, Lcom/android/server/SdpManagerService;->access$1600(Lcom/android/server/SdpManagerService;)Ljava/util/Map;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;->this$0:Lcom/android/server/SdpManagerService;

    # getter for: Lcom/android/server/SdpManagerService;->mBinderListeners:Ljava/util/Map;
    invoke-static {v1}, Lcom/android/server/SdpManagerService;->access$1600(Lcom/android/server/SdpManagerService;)Ljava/util/Map;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;->mAlias:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .local v0, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;>;"
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;->mListener:Lcom/sec/sdp/ISdpListener;

    invoke-interface {v1}, Lcom/sec/sdp/ISdpListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, p0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;->this$0:Lcom/android/server/SdpManagerService;

    # getter for: Lcom/android/server/SdpManagerService;->mBinderListeners:Ljava/util/Map;
    invoke-static {v1}, Lcom/android/server/SdpManagerService;->access$1600(Lcom/android/server/SdpManagerService;)Ljava/util/Map;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;->mAlias:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v2

    return-void

    .end local v0    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getCaller()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;->caller:I

    return v0
.end method

.method setCaller(I)V
    .locals 0
    .param p1, "pid"    # I

    .prologue
    iput p1, p0, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;->caller:I

    return-void
.end method

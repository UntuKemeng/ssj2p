.class Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate$1;
.super Ljava/lang/Object;
.source "SViewCoverBaseServiceDelegate.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;


# direct methods
.method constructor <init>(Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate$1;->this$0:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 67
    const-string v3, "SViewCoverBaseServiceDelegate"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onServiceConnected :  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v3, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate$1;->this$0:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;

    new-instance v4, Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;

    invoke-static {p2}, Lcom/samsung/android/cover/ISViewCoverBaseService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ISViewCoverBaseService;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;-><init>(Lcom/samsung/android/cover/ISViewCoverBaseService;)V

    iput-object v4, v3, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mSViewCoverBaseService:Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;

    .line 70
    iget-object v3, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate$1;->this$0:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;

    # getter for: Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mSViewCoverBaseState:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate$SViewCoverBaseState;
    invoke-static {v3}, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->access$000(Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;)Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate$SViewCoverBaseState;

    move-result-object v3

    iget-boolean v3, v3, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate$SViewCoverBaseState;->systemIsReady:Z

    if-eqz v3, :cond_0

    .line 71
    iget-object v3, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate$1;->this$0:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;

    iget-object v3, v3, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mSViewCoverBaseService:Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;

    invoke-virtual {v3}, Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;->onSystemReady()V

    .line 74
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate$1;->this$0:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;

    # getter for: Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mPendingCommand:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->access$100(Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 75
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 76
    iget-object v3, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate$1;->this$0:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;

    # getter for: Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mPendingCommand:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->access$100(Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 77
    .local v1, "command":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Object;>;"
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 75
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 79
    :pswitch_0
    iget-object v3, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate$1;->this$0:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;

    iget-object v4, v3, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mSViewCoverBaseService:Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v4, v3}, Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V

    goto :goto_1

    .line 84
    .end local v1    # "command":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate$1;->this$0:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;

    # getter for: Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mPendingCommand:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->access$100(Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 85
    return-void

    .line 77
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 89
    const-string v0, "SViewCoverBaseServiceDelegate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceDisconnected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v0, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate$1;->this$0:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;

    iget-object v0, v0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mSViewCoverBaseService:Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;

    if-eqz v0, :cond_0

    .line 91
    const-string v0, "SViewCoverBaseServiceDelegate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceDisconnected : BinderAlive = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate$1;->this$0:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;

    iget-object v2, v2, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mSViewCoverBaseService:Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;

    invoke-virtual {v2}, Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate$1;->this$0:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;

    iget-object v0, v0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mSViewCoverBaseService:Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate$1;->this$0:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mSViewCoverBaseService:Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;

    goto :goto_0
.end method

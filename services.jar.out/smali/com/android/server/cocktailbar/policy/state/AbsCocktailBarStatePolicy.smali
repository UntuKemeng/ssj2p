.class public abstract Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;
.super Ljava/lang/Object;
.source "AbsCocktailBarStatePolicy.java"

# interfaces
.implements Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCocktailBarStateHandler:Landroid/os/Handler;

.field private mCocktailBarStateThread:Landroid/os/HandlerThread;

.field protected mListener:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;

.field private final mLock:Ljava/lang/Object;

.field private final mLockMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field protected final mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

.field protected mWindowType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    .line 29
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mWindowType:I

    .line 31
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mLockMap:Landroid/util/SparseArray;

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mLock:Ljava/lang/Object;

    .line 36
    iput-object p2, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mListener:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;

    .line 37
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private findModeLock(I)Landroid/util/SparseBooleanArray;
    .locals 2
    .param p1, "key"    # I

    .prologue
    .line 172
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mLockMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseBooleanArray;

    .line 173
    .local v0, "modeLock":Landroid/util/SparseBooleanArray;
    if-nez v0, :cond_0

    .line 174
    new-instance v0, Landroid/util/SparseBooleanArray;

    .end local v0    # "modeLock":Landroid/util/SparseBooleanArray;
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 175
    .restart local v0    # "modeLock":Landroid/util/SparseBooleanArray;
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mLockMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 177
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected cancelHideTimer()V
    .locals 3

    .prologue
    .line 223
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 224
    :try_start_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 225
    monitor-exit v1

    .line 226
    return-void

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected clearMessageChangeVisibility()V
    .locals 3

    .prologue
    .line 211
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    const/16 v2, 0x34

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 213
    monitor-exit v1

    .line 214
    return-void

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected clearMessageUpdateStateFromSystemDelayed()V
    .locals 3

    .prologue
    .line 190
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 191
    :try_start_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 192
    monitor-exit v1

    .line 193
    return-void

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dump()Ljava/lang/String;
    .locals 3

    .prologue
    .line 161
    const-string v0, ""

    .line 162
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[LockState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mLockMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Visibility : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " CocktailBarWindowType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->windowType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " WindowType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mWindowType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 168
    return-object v0
.end method

.method public getCocktailBarStateInfo()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    return-object v0
.end method

.method public getLockState()I
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v0, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    return v0
.end method

.method public getWindowType()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mWindowType:I

    return v0
.end method

.method public abstract handleChangeVisibility(I)V
.end method

.method public abstract handleNotifyCurrentStateToBinder(Landroid/os/IBinder;)V
.end method

.method public abstract handleNotifyState(I)V
.end method

.method public abstract handleRefreshState()V
.end method

.method public abstract handleUpdateActivate(Z)V
.end method

.method public abstract handleUpdateCocktailBarWindowType(ILjava/lang/String;)V
.end method

.method public abstract handleUpdatePosition(I)V
.end method

.method public abstract handleUpdateState(ZZ)V
.end method

.method public abstract handleUpdateStateFromSystem(IZ)V
.end method

.method public abstract handleUpdateVisibility(I)V
.end method

.method protected hasMessageUpdateStateFromSystemDelayed()Z
    .locals 3

    .prologue
    .line 196
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public initialize()V
    .locals 3

    .prologue
    .line 41
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CocktailBarVisibility"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateThread:Landroid/os/HandlerThread;

    .line 42
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 43
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 44
    :try_start_0
    new-instance v0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;

    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;-><init>(Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    .line 45
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$1;

    invoke-direct {v2, p0}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$1;-><init>(Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 52
    monitor-exit v1

    .line 53
    return-void

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notifyStateToBinder(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 100
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    const/16 v3, 0x33

    invoke-static {v1, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 103
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 104
    monitor-exit v2

    .line 105
    return-void

    .line 104
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected refreshHideTimer(I)Z
    .locals 3
    .param p1, "duration"    # I

    .prologue
    .line 229
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 230
    :try_start_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->cancelHideTimer()V

    .line 232
    invoke-virtual {p0, p1}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->startHideTimer(I)V

    .line 233
    const/4 v0, 0x1

    monitor-exit v1

    .line 235
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 236
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public refreshState()V
    .locals 3

    .prologue
    .line 93
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    const/16 v2, 0x32

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 95
    monitor-exit v1

    .line 96
    return-void

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected sendMessageChangeVisibility(IJ)V
    .locals 6
    .param p1, "visibility"    # I
    .param p2, "delayMills"    # J

    .prologue
    .line 202
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 203
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    const/16 v3, 0x34

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 204
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    const/16 v3, 0x34

    const/4 v4, 0x0

    invoke-static {v1, v3, p1, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 206
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 207
    monitor-exit v2

    .line 208
    return-void

    .line 207
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected sendMessageUpdateStateFromSystemDelayed(IJ)V
    .locals 6
    .param p1, "windowType"    # I
    .param p2, "delayMills"    # J

    .prologue
    .line 181
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 182
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-static {v1, v3, p1, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 185
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 186
    monitor-exit v2

    .line 187
    return-void

    .line 186
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setLockState(IZ)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "flagOn"    # Z

    .prologue
    .line 119
    invoke-virtual {p0, p1, p2, p1}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->setLockState(IZI)V

    .line 120
    return-void
.end method

.method public setLockState(IZI)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "flagOn"    # Z
    .param p3, "id"    # I

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->findModeLock(I)Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 125
    .local v0, "modeLock":Landroid/util/SparseBooleanArray;
    if-eqz p2, :cond_1

    .line 126
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v2, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    or-int/2addr v2, p1

    iput v2, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    .line 127
    const/4 v1, 0x1

    invoke-virtual {v0, p3, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    invoke-virtual {v0, p3}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_2

    .line 130
    invoke-virtual {v0, p3}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 132
    :cond_2
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 133
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v2, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    xor-int/lit8 v3, p1, -0x1

    and-int/2addr v2, v3

    iput v2, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    goto :goto_0
.end method

.method protected startHideTimer(I)V
    .locals 6
    .param p1, "duration"    # I

    .prologue
    .line 217
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 218
    :try_start_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    int-to-long v4, p1

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 219
    monitor-exit v1

    .line 220
    return-void

    .line 219
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateActivate(Z)V
    .locals 6
    .param p1, "activate"    # Z

    .prologue
    const/4 v1, 0x0

    .line 145
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 146
    :try_start_0
    iget-object v3, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    const/16 v4, 0x31

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    const/4 v5, 0x0

    invoke-static {v3, v4, v1, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 147
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 148
    monitor-exit v2

    .line 149
    return-void

    .line 148
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateCocktailBarWindowType(ILjava/lang/String;)V
    .locals 5
    .param p1, "windowType"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 153
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 154
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-static {v1, v3, p1, v4, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 155
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 156
    monitor-exit v2

    .line 157
    return-void

    .line 156
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updatePosition(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 75
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 76
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-static {v1, v3, p1, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 78
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 79
    monitor-exit v2

    .line 80
    return-void

    .line 79
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateState(ZZ)V
    .locals 7
    .param p1, "shift"    # Z
    .param p2, "dimBackground"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 84
    iget-object v4, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 85
    :try_start_0
    iget-object v5, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    const/4 v6, 0x3

    if-eqz p1, :cond_0

    move v3, v1

    :goto_0
    if-eqz p2, :cond_1

    :goto_1
    invoke-static {v5, v6, v3, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 87
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 88
    monitor-exit v4

    .line 89
    return-void

    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    move v3, v2

    .line 85
    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    .line 88
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateStateFromSystem(I)V
    .locals 5
    .param p1, "windowType"    # I

    .prologue
    .line 66
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 67
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v1, v3, p1, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 69
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 70
    monitor-exit v2

    .line 71
    return-void

    .line 70
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateVisibility(I)V
    .locals 5
    .param p1, "visibility"    # I

    .prologue
    .line 57
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 58
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v3, p1, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 60
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 61
    monitor-exit v2

    .line 62
    return-void

    .line 61
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

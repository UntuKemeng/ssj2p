.class public Landroid/sec/clipboard/ClipboardUIManager;
.super Ljava/lang/Object;
.source "ClipboardUIManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field private static final TAG:Ljava/lang/String; = "ClipboardUIManager"

.field private static mBinder:Landroid/os/IBinder;

.field private static mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

.field private static sInstance:Landroid/sec/clipboard/ClipboardUIManager;


# instance fields
.field mAdapter:Landroid/widget/BaseAdapter;

.field private mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mRecursiveCall:Ljava/lang/Runnable;

.field private mViewID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    sput-object v0, Landroid/sec/clipboard/ClipboardUIManager;->sInstance:Landroid/sec/clipboard/ClipboardUIManager;

    .line 37
    sput-object v0, Landroid/sec/clipboard/ClipboardUIManager;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Landroid/sec/clipboard/ClipboardUIManager;->mViewID:I

    .line 42
    iput-object v1, p0, Landroid/sec/clipboard/ClipboardUIManager;->mAdapter:Landroid/widget/BaseAdapter;

    .line 43
    iput-object v1, p0, Landroid/sec/clipboard/ClipboardUIManager;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/sec/clipboard/ClipboardUIManager;->mHandler:Landroid/os/Handler;

    .line 45
    new-instance v0, Landroid/sec/clipboard/ClipboardUIManager$1;

    invoke-direct {v0, p0}, Landroid/sec/clipboard/ClipboardUIManager$1;-><init>(Landroid/sec/clipboard/ClipboardUIManager;)V

    iput-object v0, p0, Landroid/sec/clipboard/ClipboardUIManager;->mRecursiveCall:Ljava/lang/Runnable;

    .line 66
    iput-object p1, p0, Landroid/sec/clipboard/ClipboardUIManager;->mContext:Landroid/content/Context;

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "parentView"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Landroid/sec/clipboard/ClipboardUIManager;->mViewID:I

    .line 42
    iput-object v1, p0, Landroid/sec/clipboard/ClipboardUIManager;->mAdapter:Landroid/widget/BaseAdapter;

    .line 43
    iput-object v1, p0, Landroid/sec/clipboard/ClipboardUIManager;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/sec/clipboard/ClipboardUIManager;->mHandler:Landroid/os/Handler;

    .line 45
    new-instance v0, Landroid/sec/clipboard/ClipboardUIManager$1;

    invoke-direct {v0, p0}, Landroid/sec/clipboard/ClipboardUIManager$1;-><init>(Landroid/sec/clipboard/ClipboardUIManager;)V

    iput-object v0, p0, Landroid/sec/clipboard/ClipboardUIManager;->mRecursiveCall:Ljava/lang/Runnable;

    .line 62
    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardUIManager;->initVariable()V

    .line 63
    return-void
.end method

.method static synthetic access$000(Landroid/sec/clipboard/ClipboardUIManager;)Landroid/sec/clipboard/ClipboardExManager;
    .locals 1
    .param p0, "x0"    # Landroid/sec/clipboard/ClipboardUIManager;

    .prologue
    .line 33
    iget-object v0, p0, Landroid/sec/clipboard/ClipboardUIManager;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    return-object v0
.end method

.method static synthetic access$002(Landroid/sec/clipboard/ClipboardUIManager;Landroid/sec/clipboard/ClipboardExManager;)Landroid/sec/clipboard/ClipboardExManager;
    .locals 0
    .param p0, "x0"    # Landroid/sec/clipboard/ClipboardUIManager;
    .param p1, "x1"    # Landroid/sec/clipboard/ClipboardExManager;

    .prologue
    .line 33
    iput-object p1, p0, Landroid/sec/clipboard/ClipboardUIManager;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    return-object p1
.end method

.method static synthetic access$100(Landroid/sec/clipboard/ClipboardUIManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/sec/clipboard/ClipboardUIManager;

    .prologue
    .line 33
    iget-object v0, p0, Landroid/sec/clipboard/ClipboardUIManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private closeClopboardUI(Z)Z
    .locals 5
    .param p1, "immediate"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 149
    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardUIManager;->setupInRuntime()Z

    move-result v1

    if-nez v1, :cond_0

    .line 150
    sput-object v3, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    .line 151
    sput-object v3, Landroid/sec/clipboard/ClipboardUIManager;->mBinder:Landroid/os/IBinder;

    .line 164
    :goto_0
    return v4

    .line 155
    :cond_0
    :try_start_0
    sget-object v1, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    if-eqz v1, :cond_1

    sget-object v1, Landroid/sec/clipboard/ClipboardUIManager;->mBinder:Landroid/os/IBinder;

    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 156
    sget-object v1, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    iget v2, p0, Landroid/sec/clipboard/ClipboardUIManager;->mViewID:I

    invoke-interface {v1, v2, p1}, Landroid/sec/clipboard/IClipboardUIManager;->dismiss(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :cond_1
    :goto_1
    sput-object v3, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    .line 163
    sput-object v3, Landroid/sec/clipboard/ClipboardUIManager;->mBinder:Landroid/os/IBinder;

    goto :goto_0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/sec/clipboard/ClipboardUIManager;
    .locals 1
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 218
    sget-object v0, Landroid/sec/clipboard/ClipboardUIManager;->sInstance:Landroid/sec/clipboard/ClipboardUIManager;

    if-nez v0, :cond_0

    .line 219
    new-instance v0, Landroid/sec/clipboard/ClipboardUIManager;

    invoke-direct {v0, p0}, Landroid/sec/clipboard/ClipboardUIManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/sec/clipboard/ClipboardUIManager;->sInstance:Landroid/sec/clipboard/ClipboardUIManager;

    .line 221
    :cond_0
    sget-object v0, Landroid/sec/clipboard/ClipboardUIManager;->sInstance:Landroid/sec/clipboard/ClipboardUIManager;

    return-object v0
.end method

.method private initVariable()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    sput-object v0, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    .line 71
    return-void
.end method

.method private setupInRuntime()Z
    .locals 4

    .prologue
    .line 74
    const/4 v1, 0x1

    .line 76
    .local v1, "result":Z
    const-string v2, "clipboarduiservice"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    sput-object v2, Landroid/sec/clipboard/ClipboardUIManager;->mBinder:Landroid/os/IBinder;

    .line 77
    sget-object v2, Landroid/sec/clipboard/ClipboardUIManager;->mBinder:Landroid/os/IBinder;

    invoke-static {v2}, Landroid/sec/clipboard/IClipboardUIManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardUIManager;

    move-result-object v2

    sput-object v2, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    .line 78
    sget-object v2, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    if-nez v2, :cond_0

    .line 79
    const-string v2, "ClipboardUIManager"

    const-string v3, "ClipboardUIService is not ready yet!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const/4 v1, 0x0

    .line 94
    :goto_0
    return v1

    .line 83
    :cond_0
    :try_start_0
    sget-object v2, Landroid/sec/clipboard/ClipboardUIManager;->mBinder:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v2, p0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 86
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 91
    :goto_1
    invoke-virtual {p0}, Landroid/sec/clipboard/ClipboardUIManager;->binderDied()V

    goto :goto_0

    .line 88
    :cond_1
    const-string v2, "ClipboardUIManager"

    const-string/jumbo v3, "setupInRuntime(): RemoteException!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private showClipBoard(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)Z
    .locals 6
    .param p1, "type"    # I
    .param p2, "clPasteEvent"    # Landroid/sec/clipboard/IClipboardDataPasteEvent;

    .prologue
    .line 121
    const-string v2, "ClipboardUIManager"

    const-string v3, "ClipboardUIManager showClipBoard()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const/4 v1, 0x0

    .line 125
    .local v1, "result":Z
    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardUIManager;->setupInRuntime()Z

    move-result v2

    if-nez v2, :cond_1

    .line 126
    iget-object v2, p0, Landroid/sec/clipboard/ClipboardUIManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/sec/clipboard/ClipboardUIManager;->mRecursiveCall:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 127
    iget-object v2, p0, Landroid/sec/clipboard/ClipboardUIManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/sec/clipboard/ClipboardUIManager;->mRecursiveCall:Ljava/lang/Runnable;

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 129
    :cond_0
    const/4 v2, 0x0

    .line 145
    :goto_0
    return v2

    .line 132
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/sec/clipboard/ClipboardUIManager;->setPasteTargetViewInfo(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 135
    :try_start_0
    sget-object v2, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    if-eqz v2, :cond_2

    sget-object v2, Landroid/sec/clipboard/ClipboardUIManager;->mBinder:Landroid/os/IBinder;

    invoke-interface {v2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 136
    sget-object v2, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    iget v3, p0, Landroid/sec/clipboard/ClipboardUIManager;->mViewID:I

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/sec/clipboard/IClipboardUIManager;->show(ILandroid/os/IBinder;)V

    .line 140
    :goto_1
    const/4 v1, 0x1

    :goto_2
    move v2, v1

    .line 145
    goto :goto_0

    .line 138
    :cond_2
    const-string v2, "ClipboardUIManager"

    const-string v3, "ClipboardUIManager is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e1":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 143
    const/4 v1, 0x0

    goto :goto_2
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 226
    const-string v0, "ClipboardUIManager"

    const-string v1, "binderDied. Reset variable."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    sput-object v2, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    .line 228
    sput-object v2, Landroid/sec/clipboard/ClipboardUIManager;->mBinder:Landroid/os/IBinder;

    .line 229
    return-void
.end method

.method public dismiss()V
    .locals 2

    .prologue
    .line 173
    const-string v0, "ClipboardUIManager"

    const-string v1, "dismiss()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/sec/clipboard/ClipboardUIManager;->closeClopboardUI(Z)Z

    .line 175
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 101
    const-string v0, "ClipboardUIManager"

    const-string v1, "Finish ClipboardService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/sec/clipboard/ClipboardUIManager;->finish(Z)V

    .line 103
    return-void
.end method

.method public finish(Z)V
    .locals 4
    .param p1, "immediate"    # Z

    .prologue
    const/4 v3, 0x0

    .line 110
    const-string v0, "ClipboardUIManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finish : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p0, Landroid/sec/clipboard/ClipboardUIManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Landroid/sec/clipboard/ClipboardUIManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 116
    :cond_0
    invoke-direct {p0, p1}, Landroid/sec/clipboard/ClipboardUIManager;->closeClopboardUI(Z)Z

    .line 117
    sput-object v3, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    .line 118
    return-void
.end method

.method public hideFloatingIconForScrap()V
    .locals 0

    .prologue
    .line 235
    return-void
.end method

.method public isShowing()Z
    .locals 4

    .prologue
    .line 178
    const-string v2, "ClipboardUIManager"

    const-string v3, "ClipboardUIManager isShowingClipBoard()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const/4 v1, 0x0

    .line 182
    .local v1, "result":Z
    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardUIManager;->setupInRuntime()Z

    move-result v2

    if-nez v2, :cond_0

    .line 183
    const/4 v2, 0x0

    .line 198
    :goto_0
    return v2

    .line 187
    :cond_0
    :try_start_0
    sget-object v2, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    if-eqz v2, :cond_1

    sget-object v2, Landroid/sec/clipboard/ClipboardUIManager;->mBinder:Landroid/os/IBinder;

    invoke-interface {v2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 188
    sget-object v2, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    invoke-interface {v2}, Landroid/sec/clipboard/IClipboardUIManager;->isShowing()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 198
    goto :goto_0

    .line 190
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 192
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e1":Landroid/os/RemoteException;
    const-string v2, "ClipboardUIManager"

    const-string v3, "isShowing(): RemoteException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 196
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public sendCropRectForAnimation(Landroid/graphics/Rect;Z)V
    .locals 0
    .param p1, "cropRect"    # Landroid/graphics/Rect;
    .param p2, "showAni"    # Z

    .prologue
    .line 240
    return-void
.end method

.method public setPasteTargetViewInfo(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "clPasteEvent"    # Landroid/sec/clipboard/IClipboardDataPasteEvent;

    .prologue
    .line 202
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 203
    const-string v1, "ClipboardUIManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClipboardUIManager > setPasteTargetViewInfo - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_0
    :try_start_0
    sget-object v1, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    if-eqz v1, :cond_1

    sget-object v1, Landroid/sec/clipboard/ClipboardUIManager;->mBinder:Landroid/os/IBinder;

    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 207
    sget-object v1, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    invoke-interface {v1, p1, p2}, Landroid/sec/clipboard/IClipboardUIManager;->setPasteTargetViewType(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 215
    :goto_0
    return-void

    .line 209
    :cond_1
    const-string v1, "ClipboardUIManager"

    const-string v2, "mCBUIManager is null!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 211
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public show(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "clPasteEvent"    # Landroid/sec/clipboard/IClipboardDataPasteEvent;

    .prologue
    .line 168
    const-string v0, "ClipboardUIManager"

    const-string/jumbo v1, "show()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-direct {p0, p1, p2}, Landroid/sec/clipboard/ClipboardUIManager;->showClipBoard(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)Z

    .line 170
    return-void
.end method

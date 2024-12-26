.class public Landroid/media/WFDUibcManager;
.super Ljava/lang/Object;
.source "WFDUibcManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/WFDUibcManager$3;,
        Landroid/media/WFDUibcManager$EventQueue;,
        Landroid/media/WFDUibcManager$EventDispatcher;,
        Landroid/media/WFDUibcManager$Keyevnt_arrC;,
        Landroid/media/WFDUibcManager$UIBC_Mode;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final MAX_EVENTS:I = 0xa

.field private static final MAX_KEY_EVENTS:I = 0xf

.field private static final TAG:Ljava/lang/String; = "WFDUibcManager"


# instance fields
.field private final PRESENTATION_START_ACTION:Ljava/lang/String;

.field private final PRESENTATION_STOP_ACTION:Ljava/lang/String;

.field private final SEC_UIBC_GET_FOCUS:Ljava/lang/String;

.field private final SLIDESHOW_START_ACTION:Ljava/lang/String;

.field private final SLIDESHOW_STOP_ACTION:Ljava/lang/String;

.field private final VIDEOPLAY_START_ACTION:Ljava/lang/String;

.field private final VIDEOPLAY_STOP_ACTION:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCoupleShot:Z

.field private mEventDispatcher:Landroid/media/WFDUibcManager$EventDispatcher;

.field private mEventDispatcherThread:Ljava/lang/Thread;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mIsSlideShowVideoPlaying:Z

.field private mNegRs_X:F

.field private mNegRs_Y:F

.field private mOrientation:I

.field private mOrientationListener:Landroid/view/OrientationEventListener;

.field private mPresentDisplayID:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 70
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/media/WFDUibcManager;->DEBUG:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object v0, p0, Landroid/media/WFDUibcManager;->mEventDispatcher:Landroid/media/WFDUibcManager$EventDispatcher;

    .line 74
    iput-object v0, p0, Landroid/media/WFDUibcManager;->mEventDispatcherThread:Ljava/lang/Thread;

    .line 77
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/WFDUibcManager;->mOrientation:I

    .line 78
    iput-boolean v1, p0, Landroid/media/WFDUibcManager;->mCoupleShot:Z

    .line 80
    const/high16 v0, 0x44f00000    # 1920.0f

    iput v0, p0, Landroid/media/WFDUibcManager;->mNegRs_X:F

    .line 81
    const/high16 v0, 0x44870000    # 1080.0f

    iput v0, p0, Landroid/media/WFDUibcManager;->mNegRs_Y:F

    .line 83
    iput-boolean v1, p0, Landroid/media/WFDUibcManager;->mIsSlideShowVideoPlaying:Z

    .line 85
    const-string v0, "com.samsung.android.video.START_PRESENTATION"

    iput-object v0, p0, Landroid/media/WFDUibcManager;->VIDEOPLAY_START_ACTION:Ljava/lang/String;

    .line 86
    const-string v0, "com.samsung.android.video.END_PRESENTATION"

    iput-object v0, p0, Landroid/media/WFDUibcManager;->VIDEOPLAY_STOP_ACTION:Ljava/lang/String;

    .line 87
    const-string v0, "android.intent.action.gallery.slideshow.start"

    iput-object v0, p0, Landroid/media/WFDUibcManager;->SLIDESHOW_START_ACTION:Ljava/lang/String;

    .line 88
    const-string v0, "android.intent.action.gallery.slideshow.finish"

    iput-object v0, p0, Landroid/media/WFDUibcManager;->SLIDESHOW_STOP_ACTION:Ljava/lang/String;

    .line 89
    const-string v0, "com.samsung.intent.action.SEC_PRESENTATION_START"

    iput-object v0, p0, Landroid/media/WFDUibcManager;->PRESENTATION_START_ACTION:Ljava/lang/String;

    .line 90
    const-string v0, "com.samsung.intent.action.SEC_PRESENTATION_STOP"

    iput-object v0, p0, Landroid/media/WFDUibcManager;->PRESENTATION_STOP_ACTION:Ljava/lang/String;

    .line 91
    const-string v0, "android.intent.action.SEC_UIBC_GET_FOCUS"

    iput-object v0, p0, Landroid/media/WFDUibcManager;->SEC_UIBC_GET_FOCUS:Ljava/lang/String;

    .line 108
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Landroid/media/WFDUibcManager;->mIntentFilter:Landroid/content/IntentFilter;

    .line 109
    new-instance v0, Landroid/media/WFDUibcManager$1;

    invoke-direct {v0, p0}, Landroid/media/WFDUibcManager$1;-><init>(Landroid/media/WFDUibcManager;)V

    iput-object v0, p0, Landroid/media/WFDUibcManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 139
    iput-object p1, p0, Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;

    .line 141
    iget-object v0, p0, Landroid/media/WFDUibcManager;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.intent.action.SEC_PRESENTATION_START"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Landroid/media/WFDUibcManager;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.intent.action.SEC_PRESENTATION_STOP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Landroid/media/WFDUibcManager;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.android.video.START_PRESENTATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Landroid/media/WFDUibcManager;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.android.video.END_PRESENTATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Landroid/media/WFDUibcManager;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.gallery.slideshow.start"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Landroid/media/WFDUibcManager;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.gallery.slideshow.finish"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/media/WFDUibcManager;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Landroid/media/WFDUibcManager;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 148
    const-string v0, "WFDUibcManager"

    const-string v1, "WFDUibcManager"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    new-instance v0, Landroid/media/WFDUibcManager$2;

    iget-object v1, p0, Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Landroid/media/WFDUibcManager$2;-><init>(Landroid/media/WFDUibcManager;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/media/WFDUibcManager;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 159
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 67
    sget-boolean v0, Landroid/media/WFDUibcManager;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Landroid/media/WFDUibcManager;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/WFDUibcManager;

    .prologue
    .line 67
    iget v0, p0, Landroid/media/WFDUibcManager;->mPresentDisplayID:I

    return v0
.end method

.method static synthetic access$102(Landroid/media/WFDUibcManager;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/WFDUibcManager;
    .param p1, "x1"    # I

    .prologue
    .line 67
    iput p1, p0, Landroid/media/WFDUibcManager;->mPresentDisplayID:I

    return p1
.end method

.method static synthetic access$200(Landroid/media/WFDUibcManager;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/WFDUibcManager;

    .prologue
    .line 67
    iget-boolean v0, p0, Landroid/media/WFDUibcManager;->mIsSlideShowVideoPlaying:Z

    return v0
.end method

.method static synthetic access$202(Landroid/media/WFDUibcManager;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/media/WFDUibcManager;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Landroid/media/WFDUibcManager;->mIsSlideShowVideoPlaying:Z

    return p1
.end method

.method static synthetic access$300(Landroid/media/WFDUibcManager;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/WFDUibcManager;

    .prologue
    .line 67
    iget v0, p0, Landroid/media/WFDUibcManager;->mOrientation:I

    return v0
.end method

.method static synthetic access$302(Landroid/media/WFDUibcManager;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/WFDUibcManager;
    .param p1, "x1"    # I

    .prologue
    .line 67
    iput p1, p0, Landroid/media/WFDUibcManager;->mOrientation:I

    return p1
.end method

.method static synthetic access$500(Landroid/media/WFDUibcManager;)F
    .locals 1
    .param p0, "x0"    # Landroid/media/WFDUibcManager;

    .prologue
    .line 67
    iget v0, p0, Landroid/media/WFDUibcManager;->mNegRs_X:F

    return v0
.end method

.method static synthetic access$600(Landroid/media/WFDUibcManager;)F
    .locals 1
    .param p0, "x0"    # Landroid/media/WFDUibcManager;

    .prologue
    .line 67
    iget v0, p0, Landroid/media/WFDUibcManager;->mNegRs_Y:F

    return v0
.end method

.method static synthetic access$700(Landroid/media/WFDUibcManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/media/WFDUibcManager;

    .prologue
    .line 67
    iget-object v0, p0, Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Landroid/media/WFDUibcManager;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/WFDUibcManager;

    .prologue
    .line 67
    iget-boolean v0, p0, Landroid/media/WFDUibcManager;->mCoupleShot:Z

    return v0
.end method


# virtual methods
.method public setCoupleShotMode(Z)V
    .locals 0
    .param p1, "isCoupleShot"    # Z

    .prologue
    .line 261
    iput-boolean p1, p0, Landroid/media/WFDUibcManager;->mCoupleShot:Z

    .line 262
    return-void
.end method

.method public setUIBCNegotiagedResolution(FF)V
    .locals 0
    .param p1, "negRs_X"    # F
    .param p2, "negRs_Y"    # F

    .prologue
    .line 254
    iput p1, p0, Landroid/media/WFDUibcManager;->mNegRs_X:F

    .line 255
    iput p2, p0, Landroid/media/WFDUibcManager;->mNegRs_Y:F

    .line 256
    return-void
.end method

.method public start()Z
    .locals 2

    .prologue
    .line 210
    new-instance v0, Landroid/media/WFDUibcManager$EventDispatcher;

    invoke-direct {v0, p0}, Landroid/media/WFDUibcManager$EventDispatcher;-><init>(Landroid/media/WFDUibcManager;)V

    iput-object v0, p0, Landroid/media/WFDUibcManager;->mEventDispatcher:Landroid/media/WFDUibcManager$EventDispatcher;

    .line 212
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Landroid/media/WFDUibcManager;->mEventDispatcher:Landroid/media/WFDUibcManager$EventDispatcher;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Landroid/media/WFDUibcManager;->mEventDispatcherThread:Ljava/lang/Thread;

    .line 213
    iget-object v0, p0, Landroid/media/WFDUibcManager;->mEventDispatcher:Landroid/media/WFDUibcManager$EventDispatcher;

    invoke-static {v0}, Landroid/media/RemoteDisplay;->nativeStartUIBC(Ljava/lang/Object;)V

    .line 214
    iget-object v0, p0, Landroid/media/WFDUibcManager;->mEventDispatcherThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 215
    iget-object v0, p0, Landroid/media/WFDUibcManager;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 217
    const-string v0, "WFDUibcManager"

    const-string v1, "Uibc Manager started"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const/4 v0, 0x1

    return v0
.end method

.method public start(I)Z
    .locals 2
    .param p1, "mSessionId"    # I

    .prologue
    .line 167
    new-instance v0, Landroid/media/WFDUibcManager$EventDispatcher;

    invoke-direct {v0, p0}, Landroid/media/WFDUibcManager$EventDispatcher;-><init>(Landroid/media/WFDUibcManager;)V

    iput-object v0, p0, Landroid/media/WFDUibcManager;->mEventDispatcher:Landroid/media/WFDUibcManager$EventDispatcher;

    .line 170
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Landroid/media/WFDUibcManager;->mEventDispatcher:Landroid/media/WFDUibcManager$EventDispatcher;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Landroid/media/WFDUibcManager;->mEventDispatcherThread:Ljava/lang/Thread;

    .line 172
    iget-object v0, p0, Landroid/media/WFDUibcManager;->mEventDispatcherThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 173
    iget-object v0, p0, Landroid/media/WFDUibcManager;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 175
    const-string v0, "WFDUibcManager"

    const-string v1, "Uibc Manager start with sessionId"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const/4 v0, 0x1

    return v0
.end method

.method public stop()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 227
    iget-object v2, p0, Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;

    const-string v3, "display"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 228
    .local v1, "mDm":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->isAuSLServiceRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 230
    iget-object v2, p0, Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accelerometer_rotation"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    .line 231
    iget-object v2, p0, Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "user_rotation"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 235
    :cond_0
    iget-object v2, p0, Landroid/media/WFDUibcManager;->mEventDispatcher:Landroid/media/WFDUibcManager$EventDispatcher;

    if-nez v2, :cond_1

    .line 250
    :goto_0
    return v5

    .line 236
    :cond_1
    iget-object v2, p0, Landroid/media/WFDUibcManager;->mEventDispatcher:Landroid/media/WFDUibcManager$EventDispatcher;

    iput-boolean v4, v2, Landroid/media/WFDUibcManager$EventDispatcher;->running:Z

    .line 237
    invoke-static {}, Landroid/media/RemoteDisplay;->nativeStopUIBC()V

    .line 239
    const-string v2, "WFDUibcManager"

    const-string v3, "Going to stop Uibc manager"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :try_start_0
    iget-object v2, p0, Landroid/media/WFDUibcManager;->mEventDispatcherThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    :goto_1
    const-string v2, "WFDUibcManager"

    const-string v3, "Uibc manager stopped"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iput-object v6, p0, Landroid/media/WFDUibcManager;->mEventDispatcher:Landroid/media/WFDUibcManager$EventDispatcher;

    .line 248
    iput-object v6, p0, Landroid/media/WFDUibcManager;->mEventDispatcherThread:Ljava/lang/Thread;

    goto :goto_0

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "WFDUibcManager"

    const-string v3, "Error joining event dispatcher thread"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public stop(I)Z
    .locals 5
    .param p1, "mSessionId"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 185
    iget-object v1, p0, Landroid/media/WFDUibcManager;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->disable()V

    .line 186
    iget-object v1, p0, Landroid/media/WFDUibcManager;->mEventDispatcher:Landroid/media/WFDUibcManager$EventDispatcher;

    if-nez v1, :cond_0

    .line 200
    :goto_0
    return v3

    .line 187
    :cond_0
    iget-object v1, p0, Landroid/media/WFDUibcManager;->mEventDispatcher:Landroid/media/WFDUibcManager$EventDispatcher;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/media/WFDUibcManager$EventDispatcher;->running:Z

    .line 189
    const-string v1, "WFDUibcManager"

    const-string v2, "Going to stop Uibc manager"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :try_start_0
    iget-object v1, p0, Landroid/media/WFDUibcManager;->mEventDispatcherThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :goto_1
    const-string v1, "WFDUibcManager"

    const-string v2, "Uibc manager stopped"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iput-object v4, p0, Landroid/media/WFDUibcManager;->mEventDispatcher:Landroid/media/WFDUibcManager$EventDispatcher;

    .line 198
    iput-object v4, p0, Landroid/media/WFDUibcManager;->mEventDispatcherThread:Ljava/lang/Thread;

    goto :goto_0

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "WFDUibcManager"

    const-string v2, "Error joining event dispatcher thread"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

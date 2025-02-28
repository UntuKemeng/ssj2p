.class public final Lcom/samsung/android/media/mediacapture/SemMediaCapture;
.super Ljava/lang/Object;
.source "SemMediaCapture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnInfoListener;,
        Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnErrorListener;,
        Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnDecodingCompletionListener;,
        Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnRecordingCompletionListener;,
        Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnPlaybackCompletionListener;,
        Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnRenderingStartedListener;,
        Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnPreparedListener;,
        Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;
    }
.end annotation


# static fields
.field public static final DIRECTION_FORWARD:I = 0x0

.field public static final DIRECTION_FORWARD_REVERSE:I = 0x2

.field public static final DIRECTION_REVERSE:I = 0x1

.field public static final KEY_PARAMETER_DIRECTION:I = 0x3eb

.field public static final KEY_PARAMETER_FORMAT:I = 0x3ee

.field public static final KEY_PARAMETER_FRAMERATE:I = 0x3e9

.field public static final KEY_PARAMETER_HEIGHT:I = 0x3ed

.field public static final KEY_PARAMETER_LOOP:I = 0x3ea

.field public static final KEY_PARAMETER_WIDTH:I = 0x3ec

.field public static final LOOP_OFF:I = 0x0

.field public static final LOOP_ON:I = 0x1

.field private static final MEDIA_CAPTURE_DECODING_COMPLETE:I = 0x5

.field private static final MEDIA_CAPTURE_ERROR:I = 0x64

.field private static final MEDIA_CAPTURE_INFO:I = 0xc8

.field private static final MEDIA_CAPTURE_NOP:I = 0x0

.field private static final MEDIA_CAPTURE_PAUSED:I = 0x4

.field private static final MEDIA_CAPTURE_PLAYBACK_COMPLETE:I = 0x6

.field private static final MEDIA_CAPTURE_PREPARE_COMPLETE:I = 0x1

.field private static final MEDIA_CAPTURE_RECORDING_COMPLETE:I = 0x7

.field private static final MEDIA_CAPTURE_RENDERING_STARTED:I = 0x8

.field private static final MEDIA_CAPTURE_STARTED:I = 0x2

.field private static final MEDIA_CAPTURE_STOPPED:I = 0x3

.field public static final MEDIA_ERROR_IO:I = -0x3ec

.field public static final MEDIA_ERROR_MALFORMED:I = -0x3ef

.field public static final MEDIA_ERROR_SERVER_DIED:I = 0x64

.field public static final MEDIA_ERROR_UNKNOWN:I = 0x1

.field public static final MEDIA_ERROR_UNSUPPORTED:I = -0x3f2

.field public static final MEDIA_FORMAT_GIF:I = 0x0

.field public static final MEDIA_FORMAT_MP4:I = 0x1

.field public static final NORMAL:I = 0x0

.field public static final PIP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SemMediaCapture"


# instance fields
.field private mEventHandler:Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;

.field private mNativeContext:J

.field private mNativeSurfaceTexture:J

.field private mOnDecodingCompletionListener:Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnDecodingCompletionListener;

.field private mOnErrorListener:Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnErrorListener;

.field private mOnInfoListener:Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnInfoListener;

.field private mOnPlaybackCompletionListener:Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnPlaybackCompletionListener;

.field private mOnPreparedListener:Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnPreparedListener;

.field private mOnRecordingCompletionListener:Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnRecordingCompletionListener;

.field private mOnRenderingStartedListener:Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnRenderingStartedListener;

.field private mScreenOnWhilePlaying:Z

.field private mStayAwake:Z

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "mediacapture_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->native_init()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    new-instance v1, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;-><init>(Lcom/samsung/android/media/mediacapture/SemMediaCapture;Lcom/samsung/android/media/mediacapture/SemMediaCapture;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->mEventHandler:Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;

    :goto_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->native_setup(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;-><init>(Lcom/samsung/android/media/mediacapture/SemMediaCapture;Lcom/samsung/android/media/mediacapture/SemMediaCapture;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->mEventHandler:Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->mEventHandler:Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;

    goto :goto_0
.end method

.method private native _getCurrentPosition()I
.end method

.method private native _pause()V
.end method

.method private native _prepare()V
.end method

.method private native _release()V
.end method

.method private native _reset()V
.end method

.method private native _seekTo(I)V
.end method

.method private native _setDataSource(Ljava/io/FileDescriptor;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method private native _setOutputFile(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method private native _setParameter(II)V
.end method

.method private native _setStartEndTime(II)V
.end method

.method private native _setVideoSurface(Landroid/view/Surface;)V
.end method

.method private native _start()V
.end method

.method private native _startCapture()V
.end method

.method private native _stop()V
.end method

.method private native _stopCapture()V
.end method

.method static synthetic access$000(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)J
    .locals 2
    .param p0, "x0"    # Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    .prologue
    iget-wide v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->mNativeContext:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnPlaybackCompletionListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->mOnPlaybackCompletionListener:Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnPlaybackCompletionListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnRecordingCompletionListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->mOnRecordingCompletionListener:Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnRecordingCompletionListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnDecodingCompletionListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->mOnDecodingCompletionListener:Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnDecodingCompletionListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnPreparedListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->mOnPreparedListener:Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnPreparedListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnRenderingStartedListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->mOnRenderingStartedListener:Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnRenderingStartedListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnErrorListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->mOnErrorListener:Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnErrorListener;

    return-object v0
.end method

.method private final native native_finalize()V
.end method

.method private static final native native_init()V
.end method

.method private final native native_setup(Ljava/lang/Object;)V
.end method

.method private static postEventFromNative(Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 4
    .param p0, "mediacapture_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0    # "mediacapture_ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    .local v1, "mc":Lcom/samsung/android/media/mediacapture/SemMediaCapture;
    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, v1, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->mEventHandler:Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->mEventHandler:Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, p2, v3, p3}, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, "m":Landroid/os/Message;
    iget-object v2, v1, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->mEventHandler:Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;

    invoke-virtual {v2, v0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private updateSurfaceScreenOn()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-boolean v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->mScreenOnWhilePlaying:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->mStayAwake:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->native_finalize()V

    return-void
.end method

.method public getPositionForPreview()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->_getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public pausePlayback()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->_pause()V

    return-void
.end method

.method public prepare()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->_prepare()V

    return-void
.end method

.method public release()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->mOnPreparedListener:Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnPreparedListener;

    iput-object v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->mOnRecordingCompletionListener:Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnRecordingCompletionListener;

    iput-object v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->mOnPlaybackCompletionListener:Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnPlaybackCompletionListener;

    iput-object v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->mOnErrorListener:Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnErrorListener;

    invoke-direct {p0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->_release()V

    return-void
.end method

.method public reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->_reset()V

    iget-object v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->mEventHandler:Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public seekForPreview(I)V
    .locals 0
    .param p1, "msec"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->_seekTo(I)V

    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    const-wide v4, 0x7ffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->_setDataSource(Ljava/io/FileDescriptor;JJ)V

    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "sh"    # Landroid/view/SurfaceHolder;

    .prologue
    iput-object p1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .local v0, "surface":Landroid/view/Surface;
    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->_setVideoSurface(Landroid/view/Surface;)V

    invoke-direct {p0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->updateSurfaceScreenOn()V

    return-void

    .end local v0    # "surface":Landroid/view/Surface;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "surface":Landroid/view/Surface;
    goto :goto_0
.end method

.method public setOnDecodingCompletionListener(Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnDecodingCompletionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnDecodingCompletionListener;

    .prologue
    iput-object p1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->mOnDecodingCompletionListener:Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnDecodingCompletionListener;

    return-void
.end method

.method public setOnErrorListener(Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnErrorListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnErrorListener;

    .prologue
    iput-object p1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->mOnErrorListener:Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnErrorListener;

    return-void
.end method

.method public setOnInfoListener(Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnInfoListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnInfoListener;

    .prologue
    iput-object p1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->mOnInfoListener:Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnInfoListener;

    return-void
.end method

.method public setOnPlaybackCompletionListener(Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnPlaybackCompletionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnPlaybackCompletionListener;

    .prologue
    iput-object p1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->mOnPlaybackCompletionListener:Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnPlaybackCompletionListener;

    return-void
.end method

.method public setOnPreparedListener(Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnPreparedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnPreparedListener;

    .prologue
    iput-object p1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->mOnPreparedListener:Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnPreparedListener;

    return-void
.end method

.method public setOnRecordingCompletionListener(Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnRecordingCompletionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnRecordingCompletionListener;

    .prologue
    iput-object p1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->mOnRecordingCompletionListener:Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnRecordingCompletionListener;

    return-void
.end method

.method public setOnRenderingStartedListener(Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnRenderingStartedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnRenderingStartedListener;

    .prologue
    iput-object p1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->mOnRenderingStartedListener:Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnRenderingStartedListener;

    return-void
.end method

.method public setOutputFile(Ljava/io/FileDescriptor;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->_setOutputFile(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public setParameter(II)V
    .locals 0
    .param p1, "key"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->_setParameter(II)V

    return-void
.end method

.method public setStartEndTime(II)V
    .locals 0
    .param p1, "startMs"    # I
    .param p2, "endMs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->_setStartEndTime(II)V

    return-void
.end method

.method public startCapture()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->_startCapture()V

    return-void
.end method

.method public startPlayback()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->_start()V

    return-void
.end method

.method public stopCapture()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->_stopCapture()V

    return-void
.end method

.method public stopPlayback()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->_stop()V

    return-void
.end method

.class public Landroid/media/AudioRecord;
.super Ljava/lang/Object;
.source "AudioRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioRecord$NativeEventHandler;,
        Landroid/media/AudioRecord$OnRecordPositionUpdateListener;,
        Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;,
        Landroid/media/AudioRecord$OnRoutingChangedListener;,
        Landroid/media/AudioRecord$Builder;
    }
.end annotation


# static fields
.field private static final AUDIORECORD_ERROR_SETUP_INVALIDCHANNELMASK:I = -0x11

.field private static final AUDIORECORD_ERROR_SETUP_INVALIDFORMAT:I = -0x12

.field private static final AUDIORECORD_ERROR_SETUP_INVALIDSOURCE:I = -0x13

.field private static final AUDIORECORD_ERROR_SETUP_NATIVEINITFAILED:I = -0x14

.field private static final AUDIORECORD_ERROR_SETUP_ZEROFRAMECOUNT:I = -0x10

.field public static final ERROR:I = -0x1

.field public static final ERROR_BAD_VALUE:I = -0x2

.field public static final ERROR_INVALID_OPERATION:I = -0x3

.field private static final NATIVE_EVENT_MARKER:I = 0x2

.field private static final NATIVE_EVENT_NEW_POS:I = 0x3

.field public static final READ_BLOCKING:I = 0x0

.field public static final READ_NON_BLOCKING:I = 0x1

.field public static final RECORDSTATE_RECORDING:I = 0x3

.field public static final RECORDSTATE_STOPPED:I = 0x1

.field private static final SAMPLE_RATE_HZ_MAX:I = 0x2ee00

.field private static final SAMPLE_RATE_HZ_MIN:I = 0xfa0

.field public static final STATE_INITIALIZED:I = 0x1

.field public static final STATE_UNINITIALIZED:I = 0x0

.field public static final SUBMIX_FIXED_VOLUME:Ljava/lang/String; = "fixedVolume"

.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "android.media.AudioRecord"


# instance fields
.field private mAudioAttributes:Landroid/media/AudioAttributes;

.field private mAudioFormat:I

.field private mChannelCount:I

.field private mChannelIndexMask:I

.field private mChannelMask:I

.field private mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

.field private final mICallBack:Landroid/os/IBinder;

.field private mInitializationLooper:Landroid/os/Looper;

.field private mIsSubmixFullVolume:Z

.field private mNativeBufferSizeInBytes:I

.field private mNativeCallbackCookie:J

.field private mNativeDeviceCallback:J

.field private mNativeRecorderInJavaObj:J

.field private mPositionListener:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

.field private final mPositionListenerLock:Ljava/lang/Object;

.field private mPreferredDevice:Landroid/media/AudioDeviceInfo;

.field private mRecordSource:I

.field private mRecordingState:I

.field private final mRecordingStateLock:Ljava/lang/Object;

.field private mRoutingChangeListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/media/AudioRecord$OnRoutingChangedListener;",
            "Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mSampleRate:I

.field private mSessionId:I

.field private mState:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 3
    .param p1, "audioSource"    # I
    .param p2, "sampleRateInHz"    # I
    .param p3, "channelConfig"    # I
    .param p4, "audioFormat"    # I
    .param p5, "bufferSizeInBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 283
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/media/AudioAttributes$Builder;->setInternalCapturePreset(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    new-instance v1, Landroid/media/AudioFormat$Builder;

    invoke-direct {v1}, Landroid/media/AudioFormat$Builder;-><init>()V

    const/4 v2, 0x1

    invoke-static {p3, v2}, Landroid/media/AudioRecord;->getChannelMaskFromLegacyConfig(IZ)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p5, v2}, Landroid/media/AudioRecord;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;II)V

    .line 294
    return-void
.end method

.method public constructor <init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;II)V
    .locals 18
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .param p2, "format"    # Landroid/media/AudioFormat;
    .param p3, "bufferSizeInBytes"    # I
    .param p4, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 318
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 211
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioRecord;->mState:I

    .line 215
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioRecord;->mRecordingState:I

    .line 219
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioRecord;->mRecordingStateLock:Ljava/lang/Object;

    .line 226
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioRecord;->mPositionListener:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

    .line 230
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioRecord;->mPositionListenerLock:Ljava/lang/Object;

    .line 234
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    .line 238
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioRecord;->mInitializationLooper:Landroid/os/Looper;

    .line 242
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioRecord;->mNativeBufferSizeInBytes:I

    .line 246
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioRecord;->mSessionId:I

    .line 251
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/media/AudioRecord;->mIsSubmixFullVolume:Z

    .line 1010
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioRecord;->mICallBack:Landroid/os/IBinder;

    .line 1386
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    .line 1621
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioRecord;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    .line 319
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioRecord;->mRecordingState:I

    .line 321
    if-nez p1, :cond_0

    .line 322
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Illegal null AudioAttributes"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 324
    :cond_0
    if-nez p2, :cond_1

    .line 325
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Illegal null AudioFormat"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 329
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioRecord;->mInitializationLooper:Landroid/os/Looper;

    if-nez v2, :cond_2

    .line 330
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioRecord;->mInitializationLooper:Landroid/os/Looper;

    .line 334
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioAttributes;->getCapturePreset()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_9

    .line 335
    new-instance v13, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v13}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 336
    .local v13, "filteredAttr":Landroid/media/AudioAttributes$Builder;
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioAttributes;->getTags()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .line 337
    .local v17, "tagsIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 338
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 339
    .local v16, "tag":Ljava/lang/String;
    const-string v2, "fixedVolume"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 340
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/media/AudioRecord;->mIsSubmixFullVolume:Z

    .line 341
    const-string v2, "android.media.AudioRecord"

    const-string v3, "Will record from REMOTE_SUBMIX at full fixed volume"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 343
    :cond_3
    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/media/AudioAttributes$Builder;->addTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;

    goto :goto_0

    .line 346
    .end local v16    # "tag":Ljava/lang/String;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioAttributes;->getCapturePreset()I

    move-result v2

    invoke-virtual {v13, v2}, Landroid/media/AudioAttributes$Builder;->setInternalCapturePreset(I)Landroid/media/AudioAttributes$Builder;

    .line 347
    invoke-virtual {v13}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioRecord;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 352
    .end local v13    # "filteredAttr":Landroid/media/AudioAttributes$Builder;
    .end local v17    # "tagsIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    const/4 v15, 0x0

    .line 353
    .local v15, "rate":I
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getPropertySetMask()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_a

    .line 356
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v15

    .line 364
    :cond_5
    :goto_2
    const/4 v12, 0x1

    .line 365
    .local v12, "encoding":I
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getPropertySetMask()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_6

    .line 367
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v12

    .line 370
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioAttributes;->getCapturePreset()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v15, v12}, Landroid/media/AudioRecord;->audioParamCheck(III)V

    .line 372
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getPropertySetMask()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_7

    .line 374
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getChannelIndexMask()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioRecord;->mChannelIndexMask:I

    .line 375
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getChannelCount()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioRecord;->mChannelCount:I

    .line 377
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getPropertySetMask()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_b

    .line 379
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/media/AudioRecord;->getChannelMaskFromLegacyConfig(IZ)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioRecord;->mChannelMask:I

    .line 380
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getChannelCount()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioRecord;->mChannelCount:I

    .line 386
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/media/AudioRecord;->audioBuffSizeCheck(I)V

    .line 388
    const/4 v2, 0x1

    new-array v10, v2, [I

    .line 389
    .local v10, "session":[I
    const/4 v2, 0x0

    aput p4, v10, v2

    .line 391
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioAttributes;->getCapturePreset()I

    move-result v2

    const/16 v3, 0x7cf

    if-ne v2, v3, :cond_c

    .line 392
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/media/AudioRecord;->checkMicrophoneEnabled(Z)Z

    move-result v2

    if-nez v2, :cond_c

    .line 393
    const-string v2, "MDM policy does not allow initializing native AudioRecord object."

    invoke-static {v2}, Landroid/media/AudioRecord;->loge(Ljava/lang/String;)V

    .line 412
    :goto_4
    return-void

    .line 349
    .end local v10    # "session":[I
    .end local v12    # "encoding":I
    .end local v15    # "rate":I
    :cond_9
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/AudioRecord;->mAudioAttributes:Landroid/media/AudioAttributes;

    goto :goto_1

    .line 358
    .restart local v15    # "rate":I
    :cond_a
    invoke-static {}, Landroid/media/AudioSystem;->getPrimaryOutputSamplingRate()I

    move-result v15

    .line 359
    if-gtz v15, :cond_5

    .line 360
    const v15, 0xac44

    goto :goto_2

    .line 381
    .restart local v12    # "encoding":I
    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/AudioRecord;->mChannelIndexMask:I

    if-nez v2, :cond_8

    .line 382
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/media/AudioRecord;->getChannelMaskFromLegacyConfig(IZ)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioRecord;->mChannelMask:I

    .line 383
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/AudioRecord;->mChannelMask:I

    invoke-static {v2}, Landroid/media/AudioFormat;->channelCountFromInChannelMask(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioRecord;->mChannelCount:I

    goto :goto_3

    .line 400
    .restart local v10    # "session":[I
    :cond_c
    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioRecord;->mAudioAttributes:Landroid/media/AudioAttributes;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/AudioRecord;->mSampleRate:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/AudioRecord;->mChannelMask:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/media/AudioRecord;->mChannelIndexMask:I

    move-object/from16 v0, p0

    iget v8, v0, Landroid/media/AudioRecord;->mAudioFormat:I

    move-object/from16 v0, p0

    iget v9, v0, Landroid/media/AudioRecord;->mNativeBufferSizeInBytes:I

    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v11}, Landroid/media/AudioRecord;->native_setup(Ljava/lang/Object;Ljava/lang/Object;IIIII[ILjava/lang/String;)I

    move-result v14

    .line 404
    .local v14, "initResult":I
    if-eqz v14, :cond_d

    .line 405
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " when initializing native AudioRecord object."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/AudioRecord;->loge(Ljava/lang/String;)V

    goto :goto_4

    .line 409
    :cond_d
    const/4 v2, 0x0

    aget v2, v10, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioRecord;->mSessionId:I

    .line 411
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioRecord;->mState:I

    goto/16 :goto_4
.end method

.method static synthetic access$000(Landroid/media/AudioRecord;)Landroid/os/Looper;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioRecord;

    .prologue
    .line 66
    iget-object v0, p0, Landroid/media/AudioRecord;->mInitializationLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-static {p0}, Landroid/media/AudioRecord;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Landroid/media/AudioRecord;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioRecord;

    .prologue
    .line 66
    iget-object v0, p0, Landroid/media/AudioRecord;->mPositionListenerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Landroid/media/AudioRecord;)Landroid/media/AudioRecord$OnRecordPositionUpdateListener;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioRecord;

    .prologue
    .line 66
    iget-object v0, p0, Landroid/media/AudioRecord;->mPositionListener:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

    return-object v0
.end method

.method private audioBuffSizeCheck(I)V
    .locals 3
    .param p1, "audioBufferSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 697
    iget v1, p0, Landroid/media/AudioRecord;->mChannelCount:I

    iget v2, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    invoke-static {v2}, Landroid/media/AudioFormat;->getBytesPerSample(I)I

    move-result v2

    mul-int v0, v1, v2

    .line 701
    .local v0, "frameSizeInBytes":I
    iget v1, p0, Landroid/media/AudioRecord;->mRecordSource:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 703
    iget v1, p0, Landroid/media/AudioRecord;->mChannelCount:I

    mul-int/lit8 v0, v1, 0x1

    .line 706
    :cond_0
    rem-int v1, p1, v0

    if-nez v1, :cond_1

    const/4 v1, 0x1

    if-ge p1, v1, :cond_2

    .line 707
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid audio buffer size."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 710
    :cond_2
    iput p1, p0, Landroid/media/AudioRecord;->mNativeBufferSizeInBytes:I

    .line 711
    return-void
.end method

.method private audioParamCheck(III)V
    .locals 3
    .param p1, "audioSource"    # I
    .param p2, "sampleRateInHz"    # I
    .param p3, "audioFormat"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 641
    if-ltz p1, :cond_0

    invoke-static {}, Landroid/media/MediaRecorder;->getAudioSourceMax()I

    move-result v0

    if-le p1, v0, :cond_1

    const/16 v0, 0x7ce

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7cf

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_1

    .line 649
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid audio source."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 651
    :cond_1
    iput p1, p0, Landroid/media/AudioRecord;->mRecordSource:I

    .line 655
    const/16 v0, 0xfa0

    if-lt p2, v0, :cond_2

    const v0, 0x2ee00

    if-le p2, v0, :cond_3

    .line 656
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Hz is not a supported sample rate."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 659
    :cond_3
    iput p2, p0, Landroid/media/AudioRecord;->mSampleRate:I

    .line 663
    sparse-switch p3, :sswitch_data_0

    .line 681
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported sample encoding. Should be ENCODING_PCM_8BIT, ENCODING_PCM_16BIT, or ENCODING_PCM_FLOAT."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 665
    :sswitch_0
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    .line 684
    :goto_0
    return-void

    .line 678
    :sswitch_1
    iput p3, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    goto :goto_0

    .line 663
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_1
        0x4 -> :sswitch_1
        0x64 -> :sswitch_1
        0x65 -> :sswitch_1
        0x66 -> :sswitch_1
        0x67 -> :sswitch_1
        0x68 -> :sswitch_1
        0x69 -> :sswitch_1
    .end sparse-switch
.end method

.method private broadcastRoutingChange()V
    .locals 6

    .prologue
    .line 1483
    iget-object v5, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v5

    .line 1484
    :try_start_0
    iget-object v4, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    .line 1485
    .local v3, "values":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;>;"
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1486
    invoke-static {}, Landroid/media/AudioManager;->resetAudioPortGeneration()I

    .line 1487
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;

    .line 1488
    .local v0, "delegate":Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;
    invoke-virtual {v0}, Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 1489
    .local v1, "handler":Landroid/os/Handler;
    if-eqz v1, :cond_0

    .line 1490
    const/16 v4, 0x3e8

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1485
    .end local v0    # "delegate":Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;
    .end local v1    # "handler":Landroid/os/Handler;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "values":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;>;"
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 1493
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "values":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;>;"
    :cond_1
    return-void
.end method

.method private static checkAudioRecordEnabled(I)Z
    .locals 6
    .param p0, "source"    # I

    .prologue
    const/16 v5, 0xa

    const/4 v1, 0x1

    .line 1585
    if-eqz p0, :cond_0

    if-eq p0, v1, :cond_0

    const/4 v3, 0x5

    if-eq p0, v3, :cond_0

    const/16 v3, 0x9

    if-eq p0, v3, :cond_0

    if-ne p0, v5, :cond_2

    .line 1592
    :cond_0
    const/4 v1, 0x1

    .line 1594
    .local v1, "enabled":Z
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;

    move-result-object v2

    .line 1597
    .local v2, "rp":Landroid/sec/enterprise/RestrictionPolicy;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/sec/enterprise/RestrictionPolicy;->isAudioRecordAllowed(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1602
    .end local v2    # "rp":Landroid/sec/enterprise/RestrictionPolicy;
    :goto_0
    if-nez v1, :cond_2

    .line 1603
    const-string v3, "android.media.AudioRecord"

    const-string v4, "AUDIO RECORD IS DISABLED"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    const/16 v4, 0x2710

    if-ge v3, v4, :cond_1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    const/16 v4, 0x4e1f

    if-gt v3, v4, :cond_2

    .line 1606
    :cond_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Landroid/os/Process;->killProcess(I)V

    .line 1607
    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    .line 1612
    .end local v1    # "enabled":Z
    :cond_2
    return v1

    .line 1598
    .restart local v1    # "enabled":Z
    :catch_0
    move-exception v0

    .line 1599
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static checkMicrophoneEnabled()Z
    .locals 5

    .prologue
    .line 1530
    const/4 v1, 0x1

    .line 1532
    .local v1, "enabled":Z
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;

    move-result-object v2

    .line 1534
    .local v2, "rp":Landroid/sec/enterprise/RestrictionPolicy;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/sec/enterprise/RestrictionPolicy;->isMicrophoneEnabled(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1543
    .end local v2    # "rp":Landroid/sec/enterprise/RestrictionPolicy;
    :goto_0
    if-nez v1, :cond_0

    .line 1545
    const-string v3, "android.media.AudioRecord"

    const-string v4, "MICROPHONE IS DISABLED"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    const/16 v4, 0x2710

    if-lt v3, v4, :cond_0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    const/16 v4, 0x4e1f

    if-gt v3, v4, :cond_0

    .line 1549
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Landroid/os/Process;->killProcess(I)V

    .line 1550
    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 1554
    :cond_0
    return v1

    .line 1536
    :catch_0
    move-exception v0

    .line 1537
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static checkMicrophoneEnabled(Z)Z
    .locals 4
    .param p0, "showToast"    # Z

    .prologue
    .line 1564
    const/4 v1, 0x1

    .line 1566
    .local v1, "enabled":Z
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;

    move-result-object v2

    .line 1568
    .local v2, "rp":Landroid/sec/enterprise/RestrictionPolicy;
    invoke-virtual {v2, p0}, Landroid/sec/enterprise/RestrictionPolicy;->isMicrophoneEnabled(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1577
    .end local v2    # "rp":Landroid/sec/enterprise/RestrictionPolicy;
    :goto_0
    return v1

    .line 1570
    :catch_0
    move-exception v0

    .line 1571
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static getChannelMaskFromLegacyConfig(IZ)I
    .locals 3
    .param p0, "inChannelConfig"    # I
    .param p1, "allowLegacyConfig"    # Z

    .prologue
    .line 607
    sparse-switch p0, :sswitch_data_0

    .line 621
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unsupported channel configuration."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 611
    :sswitch_0
    const/16 v0, 0x10

    .line 624
    .local v0, "mask":I
    :goto_0
    if-nez p1, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-ne p0, v1, :cond_1

    .line 627
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unsupported deprecated configuration."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 615
    .end local v0    # "mask":I
    :sswitch_1
    const/16 v0, 0xc

    .line 616
    .restart local v0    # "mask":I
    goto :goto_0

    .line 618
    .end local v0    # "mask":I
    :sswitch_2
    move v0, p0

    .line 619
    .restart local v0    # "mask":I
    goto :goto_0

    .line 630
    :cond_1
    return v0

    .line 607
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0xc -> :sswitch_1
        0x10 -> :sswitch_0
        0x30 -> :sswitch_2
    .end sparse-switch
.end method

.method public static getMinBufferSize(III)I
    .locals 4
    .param p0, "sampleRateInHz"    # I
    .param p1, "channelConfig"    # I
    .param p2, "audioFormat"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v2, -0x2

    .line 875
    const/4 v0, 0x0

    .line 876
    .local v0, "channelCount":I
    sparse-switch p1, :sswitch_data_0

    .line 894
    const-string v3, "getMinBufferSize(): Invalid channel configuration."

    invoke-static {v3}, Landroid/media/AudioRecord;->loge(Ljava/lang/String;)V

    move v1, v2

    .line 906
    :cond_0
    :goto_0
    return v1

    .line 880
    :sswitch_0
    const/4 v0, 0x1

    .line 898
    :goto_1
    invoke-static {p0, v0, p2}, Landroid/media/AudioRecord;->native_get_min_buff_size(III)I

    move-result v1

    .line 899
    .local v1, "size":I
    if-nez v1, :cond_1

    move v1, v2

    .line 900
    goto :goto_0

    .line 885
    .end local v1    # "size":I
    :sswitch_1
    const/4 v0, 0x2

    .line 886
    goto :goto_1

    .line 889
    :sswitch_2
    const/4 v0, 0x6

    .line 890
    goto :goto_1

    .line 902
    .restart local v1    # "size":I
    :cond_1
    if-ne v1, v3, :cond_0

    move v1, v3

    .line 903
    goto :goto_0

    .line 876
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0xc -> :sswitch_1
        0x10 -> :sswitch_0
        0x30 -> :sswitch_1
        0xfc -> :sswitch_2
    .end sparse-switch
.end method

.method private handleFullVolumeRec(Z)V
    .locals 5
    .param p1, "starting"    # Z

    .prologue
    .line 1012
    iget-boolean v3, p0, Landroid/media/AudioRecord;->mIsSubmixFullVolume:Z

    if-nez v3, :cond_0

    .line 1022
    :goto_0
    return-void

    .line 1015
    :cond_0
    const-string v3, "audio"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1016
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v2

    .line 1018
    .local v2, "ias":Landroid/media/IAudioService;
    :try_start_0
    iget-object v3, p0, Landroid/media/AudioRecord;->mICallBack:Landroid/os/IBinder;

    invoke-interface {v2, p1, v3}, Landroid/media/IAudioService;->forceRemoteSubmixFullVolume(ZLandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1019
    :catch_0
    move-exception v1

    .line 1020
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "android.media.AudioRecord"

    const-string v4, "Error talking to AudioService when handling full submix volume"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private isAudioRecordAllowed()Z
    .locals 2

    .prologue
    .line 920
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    .line 923
    .local v0, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Landroid/media/AudioRecord;->native_check_permission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 1810
    const-string v0, "android.media.AudioRecord"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1811
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 1814
    const-string v0, "android.media.AudioRecord"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1815
    return-void
.end method

.method private final native native_check_permission(Ljava/lang/String;)I
.end method

.method private final native native_disableDeviceCallback()V
.end method

.method private final native native_enableDeviceCallback()V
.end method

.method private final native native_finalize()V
.end method

.method private final native native_getRoutedDeviceId()I
.end method

.method private final native native_get_buffer_size_in_frames()I
.end method

.method private final native native_get_marker_pos()I
.end method

.method private static final native native_get_min_buff_size(III)I
.end method

.method private final native native_get_pos_update_period()I
.end method

.method private final native native_read_in_byte_array([BIIZ)I
.end method

.method private final native native_read_in_direct_buffer(Ljava/lang/Object;IZ)I
.end method

.method private final native native_read_in_float_array([FIIZ)I
.end method

.method private final native native_read_in_short_array([SIIZ)I
.end method

.method private final native native_release()V
.end method

.method private final native native_setInputDevice(I)Z
.end method

.method private final native native_set_marker_pos(I)I
.end method

.method private final native native_set_pos_update_period(I)I
.end method

.method private final native native_setup(Ljava/lang/Object;Ljava/lang/Object;IIIII[ILjava/lang/String;)I
.end method

.method private final native native_start(II)I
.end method

.method private final native native_stop()V
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 3
    .param p0, "audiorecord_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1732
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0    # "audiorecord_ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioRecord;

    .line 1733
    .local v1, "recorder":Landroid/media/AudioRecord;
    if-nez v1, :cond_1

    .line 1752
    :cond_0
    :goto_0
    return-void

    .line 1737
    :cond_1
    const/16 v2, 0x3e8

    if-ne p1, v2, :cond_2

    .line 1738
    invoke-direct {v1}, Landroid/media/AudioRecord;->broadcastRoutingChange()V

    goto :goto_0

    .line 1743
    :cond_2
    invoke-static {}, Landroid/media/AudioRecord;->checkMicrophoneEnabled()Z

    .line 1746
    iget-object v2, v1, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    if-eqz v2, :cond_0

    .line 1747
    iget-object v2, v1, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/media/AudioRecord$NativeEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1749
    .local v0, "m":Landroid/os/Message;
    iget-object v2, v1, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    invoke-virtual {v2, v0}, Landroid/media/AudioRecord$NativeEventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private static sendMicRestrictionIntent()V
    .locals 6

    .prologue
    .line 1513
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1514
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "com.dkitec.mdm.android.action.AUDIT_EVENT"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1515
    const-string/jumbo v4, "subject"

    const-string v5, "MIC"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1516
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 1517
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 1518
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1520
    .local v2, "token":J
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1522
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1525
    .end local v2    # "token":J
    :cond_0
    return-void

    .line 1522
    .restart local v2    # "token":J
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method


# virtual methods
.method public addOnRoutingChangedListener(Landroid/media/AudioRecord$OnRoutingChangedListener;Landroid/os/Handler;)V
    .locals 4
    .param p1, "listener"    # Landroid/media/AudioRecord$OnRoutingChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1401
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1402
    iget-object v1, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1403
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1404
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_enableDeviceCallback()V

    .line 1406
    :cond_0
    iget-object v0, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    new-instance v2, Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;

    if-eqz p2, :cond_2

    .end local p2    # "handler":Landroid/os/Handler;
    :goto_0
    invoke-direct {v2, p0, p0, p1, p2}, Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;-><init>(Landroid/media/AudioRecord;Landroid/media/AudioRecord;Landroid/media/AudioRecord$OnRoutingChangedListener;Landroid/os/Handler;)V

    invoke-virtual {v0, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1409
    monitor-exit v1

    .line 1411
    :cond_1
    return-void

    .line 1406
    .restart local p2    # "handler":Landroid/os/Handler;
    :cond_2
    new-instance p2, Landroid/os/Handler;

    .end local p2    # "handler":Landroid/os/Handler;
    iget-object v3, p0, Landroid/media/AudioRecord;->mInitializationLooper:Landroid/os/Looper;

    invoke-direct {p2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_0

    .line 1409
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 734
    invoke-virtual {p0}, Landroid/media/AudioRecord;->release()V

    .line 735
    return-void
.end method

.method public getAudioFormat()I
    .locals 1

    .prologue
    .line 761
    iget v0, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    return v0
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 916
    iget v0, p0, Landroid/media/AudioRecord;->mSessionId:I

    return v0
.end method

.method public getAudioSource()I
    .locals 1

    .prologue
    .line 753
    iget v0, p0, Landroid/media/AudioRecord;->mRecordSource:I

    return v0
.end method

.method public getBufferSizeInFrames()I
    .locals 1

    .prologue
    .line 836
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_get_buffer_size_in_frames()I

    move-result v0

    return v0
.end method

.method public getChannelConfiguration()I
    .locals 1

    .prologue
    .line 774
    iget v0, p0, Landroid/media/AudioRecord;->mChannelMask:I

    return v0
.end method

.method public getChannelCount()I
    .locals 1

    .prologue
    .line 799
    iget v0, p0, Landroid/media/AudioRecord;->mChannelCount:I

    return v0
.end method

.method public getFormat()Landroid/media/AudioFormat;
    .locals 3

    .prologue
    .line 783
    new-instance v1, Landroid/media/AudioFormat$Builder;

    invoke-direct {v1}, Landroid/media/AudioFormat$Builder;-><init>()V

    iget v2, p0, Landroid/media/AudioRecord;->mSampleRate:I

    invoke-virtual {v1, v2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    invoke-virtual {v1, v2}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 786
    .local v0, "builder":Landroid/media/AudioFormat$Builder;
    iget v1, p0, Landroid/media/AudioRecord;->mChannelMask:I

    if-eqz v1, :cond_0

    .line 787
    iget v1, p0, Landroid/media/AudioRecord;->mChannelMask:I

    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    .line 789
    :cond_0
    iget v1, p0, Landroid/media/AudioRecord;->mChannelIndexMask:I

    if-eqz v1, :cond_1

    .line 790
    iget v1, p0, Landroid/media/AudioRecord;->mChannelIndexMask:I

    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setChannelIndexMask(I)Landroid/media/AudioFormat$Builder;

    .line 792
    :cond_1
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v1

    return-object v1
.end method

.method public getNotificationMarkerPosition()I
    .locals 1

    .prologue
    .line 843
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_get_marker_pos()I

    move-result v0

    return v0
.end method

.method public getPositionNotificationPeriod()I
    .locals 1

    .prologue
    .line 850
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_get_pos_update_period()I

    move-result v0

    return v0
.end method

.method public getPreferredDevice()Landroid/media/AudioDeviceInfo;
    .locals 1

    .prologue
    .line 1652
    monitor-enter p0

    .line 1653
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioRecord;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    monitor-exit p0

    return-object v0

    .line 1654
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRecordingState()I
    .locals 2

    .prologue
    .line 820
    iget-object v1, p0, Landroid/media/AudioRecord;->mRecordingStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 821
    :try_start_0
    iget v0, p0, Landroid/media/AudioRecord;->mRecordingState:I

    monitor-exit v1

    return v0

    .line 822
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRoutedDevice()Landroid/media/AudioDeviceInfo;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1367
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_getRoutedDeviceId()I

    move-result v0

    .line 1368
    .local v0, "deviceId":I
    if-nez v0, :cond_1

    .line 1378
    :cond_0
    :goto_0
    return-object v3

    .line 1371
    :cond_1
    const/4 v4, 0x1

    invoke-static {v4}, Landroid/media/AudioManager;->getDevicesStatic(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v1

    .line 1373
    .local v1, "devices":[Landroid/media/AudioDeviceInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v4, v1

    if-ge v2, v4, :cond_0

    .line 1374
    aget-object v4, v1, v2

    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v4

    if-ne v4, v0, :cond_2

    .line 1375
    aget-object v3, v1, v2

    goto :goto_0

    .line 1373
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public getSampleRate()I
    .locals 1

    .prologue
    .line 745
    iget v0, p0, Landroid/media/AudioRecord;->mSampleRate:I

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 811
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;I)I
    .locals 1
    .param p1, "audioBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "sizeInBytes"    # I

    .prologue
    .line 1229
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;II)I

    move-result v0

    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;II)I
    .locals 4
    .param p1, "audioBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "sizeInBytes"    # I
    .param p3, "readMode"    # I

    .prologue
    const/4 v2, -0x2

    const/4 v0, 0x1

    const/4 v1, -0x3

    .line 1257
    invoke-static {}, Landroid/media/AudioRecord;->checkMicrophoneEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    .line 1279
    :goto_0
    return v0

    .line 1260
    :cond_0
    iget v3, p0, Landroid/media/AudioRecord;->mRecordSource:I

    invoke-static {v3}, Landroid/media/AudioRecord;->checkAudioRecordEnabled(I)Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    .line 1261
    goto :goto_0

    .line 1266
    :cond_1
    iget v3, p0, Landroid/media/AudioRecord;->mState:I

    if-eq v3, v0, :cond_2

    move v0, v1

    .line 1267
    goto :goto_0

    .line 1270
    :cond_2
    if-eqz p3, :cond_3

    if-eq p3, v0, :cond_3

    .line 1271
    const-string v0, "android.media.AudioRecord"

    const-string v1, "AudioRecord.read() called with invalid blocking mode"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 1272
    goto :goto_0

    .line 1275
    :cond_3
    if-eqz p1, :cond_4

    if-gez p2, :cond_5

    :cond_4
    move v0, v2

    .line 1276
    goto :goto_0

    .line 1279
    :cond_5
    if-nez p3, :cond_6

    :goto_1
    invoke-direct {p0, p1, p2, v0}, Landroid/media/AudioRecord;->native_read_in_direct_buffer(Ljava/lang/Object;IZ)I

    move-result v0

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public read([BII)I
    .locals 1
    .param p1, "audioData"    # [B
    .param p2, "offsetInBytes"    # I
    .param p3, "sizeInBytes"    # I

    .prologue
    .line 1040
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/media/AudioRecord;->read([BIII)I

    move-result v0

    return v0
.end method

.method public read([BIII)I
    .locals 5
    .param p1, "audioData"    # [B
    .param p2, "offsetInBytes"    # I
    .param p3, "sizeInBytes"    # I
    .param p4, "readMode"    # I

    .prologue
    const/4 v2, -0x2

    const/4 v0, 0x1

    const/4 v1, -0x3

    .line 1064
    invoke-static {}, Landroid/media/AudioRecord;->checkMicrophoneEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    .line 1088
    :goto_0
    return v0

    .line 1067
    :cond_0
    iget v3, p0, Landroid/media/AudioRecord;->mRecordSource:I

    invoke-static {v3}, Landroid/media/AudioRecord;->checkAudioRecordEnabled(I)Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    .line 1068
    goto :goto_0

    .line 1073
    :cond_1
    iget v3, p0, Landroid/media/AudioRecord;->mState:I

    if-ne v3, v0, :cond_2

    iget v3, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    :cond_2
    move v0, v1

    .line 1074
    goto :goto_0

    .line 1077
    :cond_3
    if-eqz p4, :cond_4

    if-eq p4, v0, :cond_4

    .line 1078
    const-string v0, "android.media.AudioRecord"

    const-string v1, "AudioRecord.read() called with invalid blocking mode"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 1079
    goto :goto_0

    .line 1082
    :cond_4
    if-eqz p1, :cond_5

    if-ltz p2, :cond_5

    if-ltz p3, :cond_5

    add-int v1, p2, p3

    if-ltz v1, :cond_5

    add-int v1, p2, p3

    array-length v3, p1

    if-le v1, v3, :cond_6

    :cond_5
    move v0, v2

    .line 1085
    goto :goto_0

    .line 1088
    :cond_6
    if-nez p4, :cond_7

    :goto_1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/media/AudioRecord;->native_read_in_byte_array([BIIZ)I

    move-result v0

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public read([FIII)I
    .locals 5
    .param p1, "audioData"    # [F
    .param p2, "offsetInFloats"    # I
    .param p3, "sizeInFloats"    # I
    .param p4, "readMode"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v2, -0x2

    const/4 v1, -0x3

    .line 1178
    invoke-static {}, Landroid/media/AudioRecord;->checkMicrophoneEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    .line 1207
    :goto_0
    return v0

    .line 1181
    :cond_0
    iget v3, p0, Landroid/media/AudioRecord;->mRecordSource:I

    invoke-static {v3}, Landroid/media/AudioRecord;->checkAudioRecordEnabled(I)Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    .line 1182
    goto :goto_0

    .line 1186
    :cond_1
    iget v3, p0, Landroid/media/AudioRecord;->mState:I

    if-nez v3, :cond_2

    .line 1187
    const-string v0, "android.media.AudioRecord"

    const-string v2, "AudioRecord.read() called in invalid state STATE_UNINITIALIZED"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1188
    goto :goto_0

    .line 1191
    :cond_2
    iget v3, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_3

    .line 1192
    const-string v0, "android.media.AudioRecord"

    const-string v2, "AudioRecord.read(float[] ...) requires format ENCODING_PCM_FLOAT"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1193
    goto :goto_0

    .line 1196
    :cond_3
    if-eqz p4, :cond_4

    if-eq p4, v0, :cond_4

    .line 1197
    const-string v0, "android.media.AudioRecord"

    const-string v1, "AudioRecord.read() called with invalid blocking mode"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 1198
    goto :goto_0

    .line 1201
    :cond_4
    if-eqz p1, :cond_5

    if-ltz p2, :cond_5

    if-ltz p3, :cond_5

    add-int v1, p2, p3

    if-ltz v1, :cond_5

    add-int v1, p2, p3

    array-length v3, p1

    if-le v1, v3, :cond_6

    :cond_5
    move v0, v2

    .line 1204
    goto :goto_0

    .line 1207
    :cond_6
    if-nez p4, :cond_7

    :goto_1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/media/AudioRecord;->native_read_in_float_array([FIIZ)I

    move-result v0

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public read([SII)I
    .locals 1
    .param p1, "audioData"    # [S
    .param p2, "offsetInShorts"    # I
    .param p3, "sizeInShorts"    # I

    .prologue
    .line 1105
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/media/AudioRecord;->read([SIII)I

    move-result v0

    return v0
.end method

.method public read([SIII)I
    .locals 5
    .param p1, "audioData"    # [S
    .param p2, "offsetInShorts"    # I
    .param p3, "sizeInShorts"    # I
    .param p4, "readMode"    # I

    .prologue
    const/4 v2, -0x2

    const/4 v0, 0x1

    const/4 v1, -0x3

    .line 1129
    invoke-static {}, Landroid/media/AudioRecord;->checkMicrophoneEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    .line 1153
    :goto_0
    return v0

    .line 1132
    :cond_0
    iget v3, p0, Landroid/media/AudioRecord;->mRecordSource:I

    invoke-static {v3}, Landroid/media/AudioRecord;->checkAudioRecordEnabled(I)Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    .line 1133
    goto :goto_0

    .line 1138
    :cond_1
    iget v3, p0, Landroid/media/AudioRecord;->mState:I

    if-ne v3, v0, :cond_2

    iget v3, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    :cond_2
    move v0, v1

    .line 1139
    goto :goto_0

    .line 1142
    :cond_3
    if-eqz p4, :cond_4

    if-eq p4, v0, :cond_4

    .line 1143
    const-string v0, "android.media.AudioRecord"

    const-string v1, "AudioRecord.read() called with invalid blocking mode"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 1144
    goto :goto_0

    .line 1147
    :cond_4
    if-eqz p1, :cond_5

    if-ltz p2, :cond_5

    if-ltz p3, :cond_5

    add-int v1, p2, p3

    if-ltz v1, :cond_5

    add-int v1, p2, p3

    array-length v3, p1

    if-le v1, v3, :cond_6

    :cond_5
    move v0, v2

    .line 1150
    goto :goto_0

    .line 1153
    :cond_6
    if-nez p4, :cond_7

    :goto_1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/media/AudioRecord;->native_read_in_short_array([SIIZ)I

    move-result v0

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public release()V
    .locals 1

    .prologue
    .line 722
    :try_start_0
    invoke-virtual {p0}, Landroid/media/AudioRecord;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 726
    :goto_0
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_release()V

    .line 727
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioRecord;->mState:I

    .line 728
    return-void

    .line 723
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public removeOnRoutingChangedListener(Landroid/media/AudioRecord$OnRoutingChangedListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/media/AudioRecord$OnRoutingChangedListener;

    .prologue
    .line 1419
    iget-object v1, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1420
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1421
    iget-object v0, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1422
    iget-object v0, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1423
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_disableDeviceCallback()V

    .line 1426
    :cond_0
    monitor-exit v1

    .line 1427
    return-void

    .line 1426
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setNotificationMarkerPosition(I)I
    .locals 1
    .param p1, "markerInFrames"    # I

    .prologue
    .line 1332
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    if-nez v0, :cond_0

    .line 1333
    const/4 v0, -0x3

    .line 1340
    :goto_0
    return v0

    .line 1336
    :cond_0
    if-gez p1, :cond_1

    .line 1337
    const/4 v0, -0x2

    goto :goto_0

    .line 1340
    :cond_1
    invoke-direct {p0, p1}, Landroid/media/AudioRecord;->native_set_marker_pos(I)I

    move-result v0

    goto :goto_0
.end method

.method public setPositionNotificationPeriod(I)I
    .locals 1
    .param p1, "periodInFrames"    # I

    .prologue
    .line 1504
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    if-eqz v0, :cond_0

    if-gez p1, :cond_1

    .line 1506
    :cond_0
    const/4 v0, -0x3

    .line 1508
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Landroid/media/AudioRecord;->native_set_pos_update_period(I)I

    move-result v0

    goto :goto_0
.end method

.method public setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z
    .locals 3
    .param p1, "deviceInfo"    # Landroid/media/AudioDeviceInfo;

    .prologue
    const/4 v0, 0x0

    .line 1633
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->isSource()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1644
    :goto_0
    return v0

    .line 1637
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v0

    .line 1638
    .local v0, "preferredDeviceId":I
    :cond_1
    invoke-direct {p0, v0}, Landroid/media/AudioRecord;->native_setInputDevice(I)Z

    move-result v1

    .line 1639
    .local v1, "status":Z
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 1640
    monitor-enter p0

    .line 1641
    :try_start_0
    iput-object p1, p0, Landroid/media/AudioRecord;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    .line 1642
    monitor-exit p0

    :cond_2
    move v0, v1

    .line 1644
    goto :goto_0

    .line 1642
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setRecordPositionUpdateListener(Landroid/media/AudioRecord$OnRecordPositionUpdateListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

    .prologue
    .line 1291
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/AudioRecord;->setRecordPositionUpdateListener(Landroid/media/AudioRecord$OnRecordPositionUpdateListener;Landroid/os/Handler;)V

    .line 1292
    return-void
.end method

.method public setRecordPositionUpdateListener(Landroid/media/AudioRecord$OnRecordPositionUpdateListener;Landroid/os/Handler;)V
    .locals 3
    .param p1, "listener"    # Landroid/media/AudioRecord$OnRecordPositionUpdateListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1304
    iget-object v1, p0, Landroid/media/AudioRecord;->mPositionListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1306
    :try_start_0
    iput-object p1, p0, Landroid/media/AudioRecord;->mPositionListener:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

    .line 1308
    if-eqz p1, :cond_1

    .line 1309
    if-eqz p2, :cond_0

    .line 1310
    new-instance v0, Landroid/media/AudioRecord$NativeEventHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, p0, v2}, Landroid/media/AudioRecord$NativeEventHandler;-><init>(Landroid/media/AudioRecord;Landroid/media/AudioRecord;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    .line 1318
    :goto_0
    monitor-exit v1

    .line 1320
    return-void

    .line 1313
    :cond_0
    new-instance v0, Landroid/media/AudioRecord$NativeEventHandler;

    iget-object v2, p0, Landroid/media/AudioRecord;->mInitializationLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, p0, v2}, Landroid/media/AudioRecord$NativeEventHandler;-><init>(Landroid/media/AudioRecord;Landroid/media/AudioRecord;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    goto :goto_0

    .line 1318
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1316
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public startRecording()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 936
    invoke-direct {p0}, Landroid/media/AudioRecord;->isAudioRecordAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 937
    const-string v0, "android.media.AudioRecord"

    const-string v1, "User permission denied!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    :goto_0
    return-void

    .line 942
    :cond_0
    invoke-static {}, Landroid/media/AudioRecord;->checkMicrophoneEnabled()Z

    .line 945
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    if-eq v0, v1, :cond_1

    .line 946
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "startRecording() called on an uninitialized AudioRecord."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 951
    :cond_1
    iget-object v1, p0, Landroid/media/AudioRecord;->mRecordingStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 952
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, v0, v2}, Landroid/media/AudioRecord;->native_start(II)I

    move-result v0

    if-nez v0, :cond_2

    .line 953
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/AudioRecord;->handleFullVolumeRec(Z)V

    .line 954
    const/4 v0, 0x3

    iput v0, p0, Landroid/media/AudioRecord;->mRecordingState:I

    .line 956
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startRecording(Landroid/media/MediaSyncEvent;)V
    .locals 3
    .param p1, "syncEvent"    # Landroid/media/MediaSyncEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 969
    invoke-direct {p0}, Landroid/media/AudioRecord;->isAudioRecordAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 970
    const-string v0, "android.media.AudioRecord"

    const-string v1, "User permission denied!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    :goto_0
    return-void

    .line 975
    :cond_0
    invoke-static {}, Landroid/media/AudioRecord;->checkMicrophoneEnabled()Z

    .line 978
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    if-eq v0, v1, :cond_1

    .line 979
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "startRecording() called on an uninitialized AudioRecord."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 984
    :cond_1
    iget-object v1, p0, Landroid/media/AudioRecord;->mRecordingStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 985
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaSyncEvent;->getType()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/MediaSyncEvent;->getAudioSessionId()I

    move-result v2

    invoke-direct {p0, v0, v2}, Landroid/media/AudioRecord;->native_start(II)I

    move-result v0

    if-nez v0, :cond_2

    .line 986
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/AudioRecord;->handleFullVolumeRec(Z)V

    .line 987
    const/4 v0, 0x3

    iput v0, p0, Landroid/media/AudioRecord;->mRecordingState:I

    .line 989
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 998
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    if-eq v0, v1, :cond_0

    .line 999
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "stop() called on an uninitialized AudioRecord."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1003
    :cond_0
    iget-object v1, p0, Landroid/media/AudioRecord;->mRecordingStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1004
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Landroid/media/AudioRecord;->handleFullVolumeRec(Z)V

    .line 1005
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_stop()V

    .line 1006
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/AudioRecord;->mRecordingState:I

    .line 1007
    monitor-exit v1

    .line 1008
    return-void

    .line 1007
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

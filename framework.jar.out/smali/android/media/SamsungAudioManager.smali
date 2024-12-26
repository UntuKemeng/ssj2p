.class public Landroid/media/SamsungAudioManager;
.super Ljava/lang/Object;
.source "SamsungAudioManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/SamsungAudioManager$AudioLog;
    }
.end annotation


# static fields
.field public static final ACTION_SPLIT_SOUND:Ljava/lang/String; = "com.sec.android.intent.action.SPLIT_SOUND"

.field public static final BACKGROUND_MUSIC_ID_WIZARD:I = 0x0

.field public static final FLAG_DISMISS_UI_WARNINGS:I = 0x10000000

.field public static final FLAG_KEY_ACTION_DOWN:I = 0x20000000

.field public static final FLAG_NO_VOICE_ASSISTANT:I = 0x40000000

.field public static final FLAG_SKIP_RINGER_MODES:I = 0x4000000

.field public static final FLAG_UDATE_STATE:I = 0x2000000

.field public static final FLAG_UI_EXPANDED:I = 0x8000000

.field public static final FM_RADIO:Ljava/lang/String; = "FM_RADIO"

.field public static final FORCE_EARPIECE:I = 0xe

.field public static final FORCE_NONE:I = 0x0

.field private static final GAIN_MAX:F = 1.0f

.field private static final GAIN_MIN:F = 0.0f

.field public static final MYSPACE_EFFECT_CENTER_TO_RIGHT:I = 0x1

.field public static final MYSPACE_EFFECT_DELAY:I = 0x32

.field public static final MYSPACE_EFFECT_DIRECT_LEFT_TO_CENTER:I = 0x2

.field public static final MYSPACE_EFFECT_LEFT_TO_CENTER:I = 0x0

.field public static final MYSPACE_EFFECT_MAX_TIMED_OUT:I = 0x5dc

.field public static final MYSPACE_EFFECT_TIMED_OUT:I = 0x3e8

.field public static final MYSPACE_FADEIN_FOR_MUSIC:I = 0x2

.field public static final MYSPACE_FADEIN_FOR_RINGTONE:I = 0x3

.field public static final MYSPACE_FADEOUT_FOR_NOTIFICATION:I = 0x0

.field public static final MYSPACE_FADEOUT_FOR_RINGTONE:I = 0x1

.field public static final SAMSUNG_EXTRA_VOLUME_STREAM_TYPE:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_TYPE"

.field public static final SAMSUNG_EXTRA_VOLUME_STREAM_VALUE:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_VALUE"

.field public static final SAMSUNG_VOLUME_CHANGED_ACTION:Ljava/lang/String; = "android.media.VOLUME_CHANGED_ACTION"

.field public static final STREAM_BLUETOOTH_SCO:I = 0x4

.field public static final STREAM_FM_RADIO:I = 0x1

.field public static final STREAM_SYSTEM_ENFORCED:I = 0x5

.field public static final STREAM_VIDEO_CALL:I = 0x2

.field public static final STREAM_VOICENOTE:I = 0x3

.field public static final SUPPORT_AOBLE:Ljava/lang/String; = "android.bluetooth.aoble.extra.SUPPORT_AOBLE"

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mContext:Landroid/content/Context;

.field mMySpaceManager:Landroid/media/MySpaceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "SamsungAudioManager"

    sput-object v0, Landroid/media/SamsungAudioManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    new-instance v0, Landroid/media/MySpaceManager;

    invoke-direct {v0}, Landroid/media/MySpaceManager;-><init>()V

    iput-object v0, p0, Landroid/media/SamsungAudioManager;->mMySpaceManager:Landroid/media/MySpaceManager;

    .line 85
    iput-object p1, p0, Landroid/media/SamsungAudioManager;->mContext:Landroid/content/Context;

    .line 86
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/media/SamsungAudioManager;->mAudioManager:Landroid/media/AudioManager;

    .line 87
    return-void
.end method

.method private static clampGainOrLevel(F)F
    .locals 1
    .param p0, "gainOrLevel"    # F

    .prologue
    .line 532
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 533
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 535
    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_2

    .line 536
    const/4 p0, 0x0

    .line 540
    :cond_1
    :goto_0
    return p0

    .line 537
    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_1

    .line 538
    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public static getDeviceOut(I)I
    .locals 1
    .param p0, "typeDevice"    # I

    .prologue
    .line 501
    invoke-static {p0}, Landroid/media/AudioDeviceInfo;->convertDeviceTypeToInternalDevice(I)I

    move-result v0

    return v0
.end method

.method public static getVideoCallMode()I
    .locals 1

    .prologue
    .line 469
    const/4 v0, 0x4

    return v0
.end method

.method public static stream(I)I
    .locals 1
    .param p0, "samsung_stream"    # I

    .prologue
    .line 439
    const/4 v0, -0x1

    .line 441
    .local v0, "valid_stream":I
    packed-switch p0, :pswitch_data_0

    .line 458
    const/4 v0, -0x1

    .line 462
    :goto_0
    return v0

    .line 443
    :pswitch_0
    const/16 v0, 0xa

    .line 444
    goto :goto_0

    .line 446
    :pswitch_1
    const/16 v0, 0xb

    .line 447
    goto :goto_0

    .line 449
    :pswitch_2
    const/16 v0, 0xd

    .line 450
    goto :goto_0

    .line 452
    :pswitch_3
    const/4 v0, 0x6

    .line 453
    goto :goto_0

    .line 455
    :pswitch_4
    const/4 v0, 0x7

    .line 456
    goto :goto_0

    .line 441
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public getAvailableDeviceMaskForQuickSoundPath()I
    .locals 3

    .prologue
    .line 382
    iget-object v1, p0, Landroid/media/SamsungAudioManager;->mAudioManager:Landroid/media/AudioManager;

    const-string v2, "device_mask_QSP"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getAudioServiceConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 383
    .local v0, "strReturn":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 384
    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 386
    :goto_0
    return v1

    :cond_0
    const v1, 0x7fffffff

    goto :goto_0
.end method

.method public getCurrentDeviceType()I
    .locals 3

    .prologue
    .line 339
    iget-object v1, p0, Landroid/media/SamsungAudioManager;->mAudioManager:Landroid/media/AudioManager;

    const-string v2, "audioParam;outDevice"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 341
    :cond_0
    sget-object v1, Landroid/media/SamsungAudioManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isDeviceTypeActive : Can\'t get outDevice"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const/4 v1, 0x0

    .line 344
    :goto_0
    return v1

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/media/AudioDeviceInfo;->convertInternalDeviceToDeviceType(I)I

    move-result v1

    goto :goto_0
.end method

.method public getFineMediaVolume()I
    .locals 4

    .prologue
    .line 269
    iget-object v2, p0, Landroid/media/SamsungAudioManager;->mAudioManager:Landroid/media/AudioManager;

    const-string v3, "fine_volume"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getAudioServiceConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 271
    .local v1, "strReturn":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 273
    :goto_0
    return v2

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getFineVolume(I)I
    .locals 5
    .param p1, "streamType"    # I

    .prologue
    .line 300
    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    .line 301
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad stream type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 303
    :cond_0
    iget-object v2, p0, Landroid/media/SamsungAudioManager;->mAudioManager:Landroid/media/AudioManager;

    const-string v3, "fine_volume_v2"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getAudioServiceConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 305
    .local v1, "strReturn":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 307
    :goto_0
    return v2

    .line 306
    :catch_0
    move-exception v0

    .line 307
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isHMTmounted()Z
    .locals 3

    .prologue
    .line 246
    iget-object v1, p0, Landroid/media/SamsungAudioManager;->mAudioManager:Landroid/media/AudioManager;

    const-string v2, "HMTstate"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getAudioServiceConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, "strReturn":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 248
    const/4 v1, 0x1

    .line 250
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isRemoteSubmixOn()Z
    .locals 2

    .prologue
    .line 232
    const-string v1, "audioParam;split_sound_for_call"

    invoke-static {v1}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, "isRemoteSubmixOn":Ljava/lang/String;
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    const/4 v1, 0x1

    .line 236
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSafeMediaVolumeDeviceOn()Z
    .locals 3

    .prologue
    .line 368
    iget-object v1, p0, Landroid/media/SamsungAudioManager;->mAudioManager:Landroid/media/AudioManager;

    const-string v2, "SafeMediaVolumeDevice"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getAudioServiceConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 369
    .local v0, "strReturn":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 370
    const/4 v1, 0x1

    .line 372
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSplitSoundOn()Z
    .locals 3

    .prologue
    .line 206
    iget-object v1, p0, Landroid/media/SamsungAudioManager;->mAudioManager:Landroid/media/AudioManager;

    const-string v2, "SplitSound"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getAudioServiceConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "strReturn":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    const/4 v1, 0x1

    .line 210
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSplitSoundRunning()Z
    .locals 2

    .prologue
    .line 219
    const-string v1, "audioParam;split_sound_for_call"

    invoke-static {v1}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "isRemoteSubmixOn":Ljava/lang/String;
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    const/4 v1, 0x1

    .line 223
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isUsingAudio(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 354
    if-eqz p1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 360
    :cond_0
    :goto_0
    return v1

    .line 356
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isUseAudio="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 357
    .local v0, "strIsUsingAudio":Ljava/lang/String;
    const-string/jumbo v2, "true"

    invoke-static {v0}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 358
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public playHighampereGame(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 327
    if-eqz p1, :cond_0

    .line 328
    const-string v0, "audioParam;High_ampere_game=true"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 332
    :goto_0
    return-void

    .line 330
    :cond_0
    const-string v0, "audioParam;High_ampere_game=false"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public playMySpaceEffect(I)I
    .locals 5
    .param p1, "effectType"    # I

    .prologue
    const/4 v4, 0x0

    .line 189
    const/4 v0, 0x1

    .line 190
    .local v0, "GLOBAL_EFFECT_ENABLED":Z
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/media/SamsungAudioManager;->isSplitSoundOn()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/media/SamsungAudioManager;->isHMTmounted()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/media/SamsungAudioManager;->mMySpaceManager:Landroid/media/MySpaceManager;

    invoke-virtual {v1}, Landroid/media/MySpaceManager;->checkEnableCondition()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 196
    :cond_0
    :goto_0
    return v4

    .line 194
    :cond_1
    iget-object v1, p0, Landroid/media/SamsungAudioManager;->mMySpaceManager:Landroid/media/MySpaceManager;

    iget-object v2, p0, Landroid/media/SamsungAudioManager;->mMySpaceManager:Landroid/media/MySpaceManager;

    iget-object v2, v2, Landroid/media/MySpaceManager;->mRingAttributes:Landroid/media/AudioAttributes;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/media/MySpaceManager;->playMySpaceEffect(Landroid/media/AudioAttributes;I)V

    .line 195
    sget-object v1, Landroid/media/SamsungAudioManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "playMySpaceEffect RING FADE OUT"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAppVolume(IF)V
    .locals 2
    .param p1, "pid"    # I
    .param p2, "trackVolume"    # F

    .prologue
    .line 511
    invoke-static {p2}, Landroid/media/SamsungAudioManager;->clampGainOrLevel(F)F

    move-result p2

    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appVolume_pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";appVolume_volume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 513
    return-void
.end method

.method public setAppVolume(Ljava/lang/String;F)V
    .locals 2
    .param p1, "packageNames"    # Ljava/lang/String;
    .param p2, "trackVolume"    # F

    .prologue
    .line 521
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 522
    :cond_0
    sget-object v0, Landroid/media/SamsungAudioManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "packageNames is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :goto_0
    return-void

    .line 525
    :cond_1
    invoke-static {p2}, Landroid/media/SamsungAudioManager;->clampGainOrLevel(F)F

    move-result p2

    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appVolume_packagenames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";appVolume_volume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setFineMediaVolume(I)V
    .locals 3
    .param p1, "volume"    # I

    .prologue
    .line 260
    iget-object v0, p0, Landroid/media/SamsungAudioManager;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fine_volume="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setAudioServiceConfig(Ljava/lang/String;)V

    .line 261
    return-void
.end method

.method public setFineVolume(III)V
    .locals 3
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I

    .prologue
    .line 284
    iget-object v0, p0, Landroid/media/SamsungAudioManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 285
    sget-object v0, Landroid/media/SamsungAudioManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFineVolume:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " flags:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/SamsungAudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_0
    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    .line 288
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad stream type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :cond_1
    iget-object v0, p0, Landroid/media/SamsungAudioManager;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fine_volume_v2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "fine_volume_v2_flag"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setAudioServiceConfig(Ljava/lang/String;)V

    .line 292
    return-void
.end method

.method public setForceUseForMedia(I)V
    .locals 3
    .param p1, "forced_config"    # I

    .prologue
    .line 395
    iget-object v0, p0, Landroid/media/SamsungAudioManager;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setForceUseForMedia="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setAudioServiceConfig(Ljava/lang/String;)V

    .line 396
    return-void
.end method

.method public updateBluetoothDevice(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 3
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "sampleRate"    # I

    .prologue
    .line 318
    iget-object v0, p0, Landroid/media/SamsungAudioManager;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UHQ_BT="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setAudioServiceConfig(Ljava/lang/String;)V

    .line 319
    return-void
.end method

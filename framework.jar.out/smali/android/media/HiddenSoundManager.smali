.class public Landroid/media/HiddenSoundManager;
.super Ljava/lang/Object;
.source "HiddenSoundManager.java"


# static fields
.field public static final ALL_PACKAGE:I = 0x0

.field public static final DEVICE_VOLUME:I = -0x3

.field public static final ERROR:I = -0x1

.field public static final FULL_VOLUME:I = -0x2

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "InGameSoundManager"

    sput-object v0, Landroid/media/HiddenSoundManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static getPlaybackRecorderPackage()I
    .locals 5

    .prologue
    .line 101
    const-string v3, "audioParam;hiddensound_pid"

    invoke-static {v3}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, "strPid":Ljava/lang/String;
    const/4 v1, 0x0

    .line 105
    .local v1, "pid":I
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 110
    :goto_0
    return v1

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v3, Landroid/media/HiddenSoundManager;->TAG:Ljava/lang/String;

    const-string v4, "Invalid PID"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static getPlaybackRecorderVersion()I
    .locals 5

    .prologue
    .line 47
    const-string v3, "audioParam;hiddensound_version"

    invoke-static {v3}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, "version":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 50
    sget-object v3, Landroid/media/HiddenSoundManager;->TAG:Ljava/lang/String;

    const-string v4, "Dont support"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const/4 v1, -0x1

    .line 61
    :goto_0
    return v1

    .line 54
    :cond_0
    const/4 v1, 0x0

    .line 56
    .local v1, "ver":I
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v3, Landroid/media/HiddenSoundManager;->TAG:Ljava/lang/String;

    const-string v4, "Invalid Version"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static getPlaybackRecorderVolume()I
    .locals 5

    .prologue
    .line 76
    const-string v3, "audioParam;hiddensound_volume"

    invoke-static {v3}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "strVolume":Ljava/lang/String;
    const/4 v2, -0x1

    .line 80
    .local v2, "volume":I
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    move v3, v2

    .line 86
    :goto_0
    return v3

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v3, Landroid/media/HiddenSoundManager;->TAG:Ljava/lang/String;

    const-string v4, "Invalid volume"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public static setPlaybackRecorderPackage(I)V
    .locals 2
    .param p0, "pid"    # I

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audioParam;hiddensound_pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 95
    return-void
.end method

.method public static setPlaybackRecorderVolume(I)V
    .locals 2
    .param p0, "volume"    # I

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audioParam;hiddensound_volume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 70
    return-void
.end method

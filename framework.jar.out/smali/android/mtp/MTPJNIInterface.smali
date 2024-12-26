.class public Landroid/mtp/MTPJNIInterface;
.super Ljava/lang/Object;
.source "MTPJNIInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/mtp/MTPJNIInterface$MusicPlaylist;
    }
.end annotation


# static fields
.field static final CONNECTED:I = 0x3

.field static final DOWNLOADING:I = 0x4

.field private static final GETTHUMBNAILTIME:I = 0xe4e1c0

.field private static final MICRO_HEIGH:I = 0x100

.field private static final MICRO_WIDTH:I = 0x100

.field private static MTP_DEBUG_LEVEL:Ljava/lang/String; = null

.field private static final MTP_MSGID_DEVICE_LOG:I = 0x5

.field private static final MTP_MSGID_SIDESYNC_START:I = 0x7

.field static RegisterBroadcast:Z = false

.field static RegisterBroadcast1:Z = false

.field static final SENDING:I = 0x5

.field static final STORAGE_INFO_EVENT:I = 0x1a

.field static final SYNCHRONIZING:I = 0xa

.field static final TAG:Ljava/lang/String; = "MTPJNIInterface"

.field static final USB_REMOVED:I = 0x13

.field static final USB_TETHERING_ENABLED:I = 0xe

.field static cr:Landroid/content/ContentResolver;

.field public static gadgetResetStatus:I

.field private static isMtpLogOn:Z

.field private static mHandler:Landroid/os/Handler;

.field private static mcontext:Landroid/content/Context;

.field private static mtpJNIInterface:Landroid/mtp/MTPJNIInterface;

.field public static objectEventReceived:Z

.field private static scannerStatus:I


# instance fields
.field private DeviceName:Ljava/lang/String;

.field private album:Ljava/lang/String;

.field private artist:Ljava/lang/String;

.field private composer:Ljava/lang/String;

.field private creationDate:Ljava/lang/String;

.field private dateTaken:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private displayname:Ljava/lang/String;

.field private duration:J

.field private filename:Ljava/lang/String;

.field private genreName:Ljava/lang/String;

.field private height:J

.field private id:Ljava/lang/String;

.field private language:Ljava/lang/String;

.field private latitude:Ljava/lang/String;

.field private longitude:Ljava/lang/String;

.field private final mMtpReceiver:Landroid/content/BroadcastReceiver;

.field private final mMtpReceiver1:Landroid/content/BroadcastReceiver;

.field private mimeType:Ljava/lang/String;

.field private modificationDate:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private resolution:Ljava/lang/String;

.field private size:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private width:J

.field private year:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 96
    sput v6, Landroid/mtp/MTPJNIInterface;->scannerStatus:I

    .line 106
    sput-boolean v6, Landroid/mtp/MTPJNIInterface;->RegisterBroadcast:Z

    .line 107
    sput-boolean v6, Landroid/mtp/MTPJNIInterface;->RegisterBroadcast1:Z

    .line 109
    sput v6, Landroid/mtp/MTPJNIInterface;->gadgetResetStatus:I

    .line 114
    const-string v4, ""

    sput-object v4, Landroid/mtp/MTPJNIInterface;->MTP_DEBUG_LEVEL:Ljava/lang/String;

    .line 115
    sput-boolean v6, Landroid/mtp/MTPJNIInterface;->isMtpLogOn:Z

    .line 116
    sput-boolean v6, Landroid/mtp/MTPJNIInterface;->objectEventReceived:Z

    .line 157
    new-instance v4, Landroid/mtp/MTPJNIInterface;

    invoke-direct {v4}, Landroid/mtp/MTPJNIInterface;-><init>()V

    sput-object v4, Landroid/mtp/MTPJNIInterface;->mtpJNIInterface:Landroid/mtp/MTPJNIInterface;

    .line 184
    const-string/jumbo v4, "ro.debug_level"

    const-string v5, "Unknown"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, "debugLevel":Ljava/lang/String;
    const-string/jumbo v4, "ro.build.type"

    const-string v5, "Unknown"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 186
    .local v2, "debugType":Ljava/lang/String;
    const-string/jumbo v4, "ro.csc.country_code"

    const-string v5, "Unknown"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "countryCode":Ljava/lang/String;
    const-string/jumbo v4, "user"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "KOREA"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 189
    const-string v4, "0x494d"

    sput-object v4, Landroid/mtp/MTPJNIInterface;->MTP_DEBUG_LEVEL:Ljava/lang/String;

    .line 195
    :goto_0
    sget-object v4, Landroid/mtp/MTPJNIInterface;->MTP_DEBUG_LEVEL:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 196
    const/4 v4, 0x1

    sput-boolean v4, Landroid/mtp/MTPJNIInterface;->isMtpLogOn:Z

    .line 202
    :goto_1
    :try_start_0
    const-string/jumbo v4, "mtp_samsung_jni"

    invoke-static {v4}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :goto_2
    return-void

    .line 192
    :cond_0
    const-string v4, "0x4948"

    sput-object v4, Landroid/mtp/MTPJNIInterface;->MTP_DEBUG_LEVEL:Ljava/lang/String;

    goto :goto_0

    .line 198
    :cond_1
    sput-boolean v6, Landroid/mtp/MTPJNIInterface;->isMtpLogOn:Z

    goto :goto_1

    .line 204
    :catch_0
    move-exception v3

    .line 205
    .local v3, "ule":Ljava/lang/UnsatisfiedLinkError;
    const-string v4, "MTPJNIInterface"

    const-string v5, "WARNING: Could not load libmtp__samsung_jni.so"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->title:Ljava/lang/String;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->path:Ljava/lang/String;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->album:Ljava/lang/String;

    .line 74
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->filename:Ljava/lang/String;

    .line 75
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->displayname:Ljava/lang/String;

    .line 76
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->id:Ljava/lang/String;

    .line 77
    iput-wide v2, p0, Landroid/mtp/MTPJNIInterface;->duration:J

    .line 78
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->size:Ljava/lang/String;

    .line 79
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->mimeType:Ljava/lang/String;

    .line 80
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->creationDate:Ljava/lang/String;

    .line 81
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->modificationDate:Ljava/lang/String;

    .line 82
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->artist:Ljava/lang/String;

    .line 83
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->composer:Ljava/lang/String;

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Landroid/mtp/MTPJNIInterface;->year:I

    .line 85
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->description:Ljava/lang/String;

    .line 86
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->language:Ljava/lang/String;

    .line 87
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->longitude:Ljava/lang/String;

    .line 88
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->latitude:Ljava/lang/String;

    .line 89
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->genreName:Ljava/lang/String;

    .line 90
    iput-wide v2, p0, Landroid/mtp/MTPJNIInterface;->width:J

    .line 91
    iput-wide v2, p0, Landroid/mtp/MTPJNIInterface;->height:J

    .line 92
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->resolution:Ljava/lang/String;

    .line 93
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->dateTaken:Ljava/lang/String;

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->DeviceName:Ljava/lang/String;

    .line 243
    new-instance v0, Landroid/mtp/MTPJNIInterface$1;

    invoke-direct {v0, p0}, Landroid/mtp/MTPJNIInterface$1;-><init>(Landroid/mtp/MTPJNIInterface;)V

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->mMtpReceiver:Landroid/content/BroadcastReceiver;

    .line 310
    new-instance v0, Landroid/mtp/MTPJNIInterface$2;

    invoke-direct {v0, p0}, Landroid/mtp/MTPJNIInterface$2;-><init>(Landroid/mtp/MTPJNIInterface;)V

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->mMtpReceiver1:Landroid/content/BroadcastReceiver;

    .line 160
    return-void
.end method

.method private DoShellCmd(Ljava/lang/String;)I
    .locals 9
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, -0x1

    .line 1689
    const-string v6, "MTPJNIInterface"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DoShellCmd : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    const/4 v2, 0x0

    .line 1691
    .local v2, "p":Ljava/lang/Process;
    const/4 v6, 0x3

    new-array v3, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "/system/bin/sh"

    aput-object v7, v3, v6

    const-string v6, "-c"

    aput-object v6, v3, v4

    const/4 v6, 0x2

    aput-object p1, v3, v6

    .line 1695
    .local v3, "shell_command":[Ljava/lang/String;
    :try_start_0
    const-string v6, "MTPJNIInterface"

    const-string v7, "exec command"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1696
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 1697
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    .line 1698
    const-string v6, "MTPJNIInterface"

    const-string v7, "exec done"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1709
    const-string v5, "MTPJNIInterface"

    const-string v6, "DoShellCmd done"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1710
    :goto_0
    return v4

    .line 1699
    :catch_0
    move-exception v1

    .line 1700
    .local v1, "exception":Ljava/io/IOException;
    const-string v4, "MTPJNIInterface"

    const-string v6, "DoShellCmd - IOException"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 1701
    goto :goto_0

    .line 1702
    .end local v1    # "exception":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 1703
    .local v1, "exception":Ljava/lang/SecurityException;
    const-string v4, "MTPJNIInterface"

    const-string v6, "DoShellCmd - SecurityException"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 1704
    goto :goto_0

    .line 1705
    .end local v1    # "exception":Ljava/lang/SecurityException;
    :catch_2
    move-exception v0

    .line 1706
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    move v4, v5

    .line 1707
    goto :goto_0
.end method

.method public static MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1795
    sget-boolean v0, Landroid/mtp/MTPJNIInterface;->isMtpLogOn:Z

    if-eqz v0, :cond_0

    .line 1796
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1798
    :cond_0
    return-void
.end method

.method static synthetic access$000()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Landroid/mtp/MTPJNIInterface;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Landroid/mtp/MTPJNIInterface;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/mtp/MTPJNIInterface;

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/mtp/MTPJNIInterface;->getTimeToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/mtp/MTPJNIInterface;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Landroid/mtp/MTPJNIInterface;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Landroid/mtp/MTPJNIInterface;->DoShellCmd(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private native alertNotiHandler(I)V
.end method

.method private computeSampleSize(Landroid/graphics/BitmapFactory$Options;I)I
    .locals 7
    .param p1, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p2, "target"    # I

    .prologue
    const/4 v5, 0x1

    .line 1006
    iget v4, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 1007
    .local v4, "w":I
    iget v3, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 1009
    .local v3, "h":I
    div-int v2, v4, p2

    .line 1010
    .local v2, "candidateW":I
    div-int v1, v3, p2

    .line 1012
    .local v1, "candidateH":I
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1014
    .local v0, "candidate":I
    if-nez v0, :cond_0

    .line 1026
    :goto_0
    return v5

    .line 1017
    :cond_0
    if-le v0, v5, :cond_1

    .line 1018
    if-le v4, p2, :cond_1

    div-int v6, v4, v0

    if-ge v6, p2, :cond_1

    .line 1019
    add-int/lit8 v0, v0, -0x1

    .line 1022
    :cond_1
    if-le v0, v5, :cond_2

    .line 1023
    if-le v3, p2, :cond_2

    div-int v5, v3, v0

    if-ge v5, p2, :cond_2

    .line 1024
    add-int/lit8 v0, v0, -0x1

    :cond_2
    move v5, v0

    .line 1026
    goto :goto_0
.end method

.method private native enumerateMtp(II)V
.end method

.method private getExifOrientation(Ljava/lang/String;)I
    .locals 6
    .param p1, "filepath"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    .line 975
    const/4 v0, 0x0

    .line 976
    .local v0, "degree":I
    const/4 v1, 0x0

    .line 978
    .local v1, "exif":Landroid/media/ExifInterface;
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "exif":Landroid/media/ExifInterface;
    .local v2, "exif":Landroid/media/ExifInterface;
    move-object v1, v2

    .line 982
    .end local v2    # "exif":Landroid/media/ExifInterface;
    .restart local v1    # "exif":Landroid/media/ExifInterface;
    :goto_0
    if-eqz v1, :cond_0

    .line 983
    const-string v4, "Orientation"

    invoke-virtual {v1, v4, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v3

    .line 984
    .local v3, "orientation":I
    if-eq v3, v5, :cond_0

    .line 986
    packed-switch v3, :pswitch_data_0

    .line 1001
    .end local v3    # "orientation":I
    :cond_0
    :goto_1
    :pswitch_0
    return v0

    .line 988
    .restart local v3    # "orientation":I
    :pswitch_1
    const/16 v0, 0x5a

    .line 989
    goto :goto_1

    .line 991
    :pswitch_2
    const/16 v0, 0xb4

    .line 992
    goto :goto_1

    .line 994
    :pswitch_3
    const/16 v0, 0x10e

    .line 995
    goto :goto_1

    .line 979
    .end local v3    # "orientation":I
    :catch_0
    move-exception v4

    goto :goto_0

    .line 986
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private getImageThumbBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1061
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 1062
    .local v1, "m":Landroid/graphics/Matrix;
    const/4 v2, 0x0

    .line 1063
    .local v2, "tempB":Landroid/graphics/Bitmap;
    const/4 v6, 0x0

    .line 1066
    .local v6, "b":Landroid/graphics/Bitmap;
    const/16 v0, 0x400

    :try_start_0
    invoke-direct {p0, v0, p1}, Landroid/mtp/MTPJNIInterface;->getSampleSizeBitmap(ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1067
    const/16 v3, 0x100

    const/16 v4, 0x100

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/mtp/MTPJNIInterface;->transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1068
    if-eqz v2, :cond_0

    .line 1069
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1076
    :cond_0
    :goto_0
    return-object v6

    .line 1070
    :catch_0
    move-exception v7

    .line 1071
    .local v7, "e":Ljava/lang/Exception;
    if-eqz v2, :cond_1

    .line 1072
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 1073
    :cond_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Landroid/mtp/MTPJNIInterface;
    .locals 2

    .prologue
    .line 163
    const-class v0, Landroid/mtp/MTPJNIInterface;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/mtp/MTPJNIInterface;->mtpJNIInterface:Landroid/mtp/MTPJNIInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getMusicThumbBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1113
    new-instance v3, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v3}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 1115
    .local v3, "mmr":Landroid/media/MediaMetadataRetriever;
    const/4 v0, 0x0

    .line 1116
    .local v0, "art":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1119
    .local v1, "bfo":Landroid/graphics/BitmapFactory$Options;
    :try_start_0
    invoke-virtual {v3, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 1120
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->getEmbeddedPicture()[B

    move-result-object v4

    .line 1121
    .local v4, "rawArt":[B
    if-eqz v4, :cond_0

    .line 1122
    const/4 v5, 0x0

    array-length v6, v4

    invoke-static {v4, v5, v6, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1127
    .end local v4    # "rawArt":[B
    :cond_0
    :goto_0
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 1129
    return-object v0

    .line 1123
    :catch_0
    move-exception v2

    .line 1124
    .local v2, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method

.method private getSampleSizeBitmap(ILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "targetWidthHeight"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 953
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 956
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 957
    invoke-static {p2, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 959
    .local v0, "bm":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 961
    const/4 v3, -0x1

    if-eq p1, v3, :cond_0

    .line 962
    invoke-direct {p0, v2, p1}, Landroid/mtp/MTPJNIInterface;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;I)I

    move-result v3

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 964
    :cond_0
    invoke-static {p2, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 966
    const/4 v1, 0x0

    .line 967
    .local v1, "degree":I
    invoke-direct {p0, p2}, Landroid/mtp/MTPJNIInterface;->getExifOrientation(Ljava/lang/String;)I

    move-result v1

    .line 969
    if-eqz v1, :cond_1

    .line 970
    invoke-direct {p0, v0, v1}, Landroid/mtp/MTPJNIInterface;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 972
    :cond_1
    return-object v0
.end method

.method private getTimeToString()Ljava/lang/String;
    .locals 10

    .prologue
    .line 1677
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1678
    .local v0, "cal":Ljava/util/Calendar;
    new-instance v7, Ljava/text/DecimalFormat;

    const-string v8, "0000"

    invoke-direct {v7, v8}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v6

    .line 1679
    .local v6, "year":Ljava/lang/String;
    new-instance v7, Ljava/text/DecimalFormat;

    const-string v8, "00"

    invoke-direct {v7, v8}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    .line 1680
    .local v4, "month":Ljava/lang/String;
    new-instance v7, Ljava/text/DecimalFormat;

    const-string v8, "00"

    invoke-direct {v7, v8}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x5

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    .line 1681
    .local v1, "day":Ljava/lang/String;
    new-instance v7, Ljava/text/DecimalFormat;

    const-string v8, "00"

    invoke-direct {v7, v8}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/16 v8, 0xb

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    .line 1682
    .local v2, "hour":Ljava/lang/String;
    new-instance v7, Ljava/text/DecimalFormat;

    const-string v8, "00"

    invoke-direct {v7, v8}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/16 v8, 0xc

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    .line 1683
    .local v3, "min":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1685
    .local v5, "timeFormat":Ljava/lang/String;
    return-object v5
.end method

.method private getVideoThumbBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/high16 v9, 0x43800000    # 256.0f

    .line 1080
    new-instance v7, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v7}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 1081
    .local v7, "retriever":Landroid/media/MediaMetadataRetriever;
    const/4 v2, 0x0

    .line 1085
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {v7, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 1088
    const/16 v0, 0x100

    const/16 v3, 0x100

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v7, v0, v3, v4, v5}, Landroid/media/MediaMetadataRetriever;->setVideoSize(IIZZ)V

    .line 1089
    const-wide/32 v4, 0xe4e1c0

    invoke-virtual {v7, v4, v5}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1091
    const/4 v8, 0x0

    .line 1092
    .local v8, "scale":F
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1093
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v8, v9, v0

    .line 1098
    :goto_0
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 1099
    .local v1, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v1, v8, v8}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1100
    invoke-virtual {v7}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 1101
    const/16 v3, 0x100

    const/16 v4, 0x100

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/mtp/MTPJNIInterface;->transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1108
    .end local v1    # "matrix":Landroid/graphics/Matrix;
    .end local v8    # "scale":F
    :goto_1
    return-object v0

    .line 1095
    .restart local v8    # "scale":F
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    int-to-float v0, v0

    div-float v8, v9, v0

    goto :goto_0

    .line 1102
    .end local v8    # "scale":F
    :catch_0
    move-exception v6

    .line 1103
    .local v6, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v6}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 1106
    invoke-virtual {v7}, Landroid/media/MediaMetadataRetriever;->release()V

    move-object v0, v2

    .line 1108
    goto :goto_1
.end method

.method private native objectAdded(Ljava/lang/String;)V
.end method

.method private native objectPlaAdded(Ljava/lang/String;)V
.end method

.method private native objectPlaRemoved(Ljava/lang/String;)V
.end method

.method private native objectPropChanged(Ljava/lang/String;)V
.end method

.method private native objectRemoved(Ljava/lang/String;)V
.end method

.method private registerBroadCastRec()V
    .locals 3

    .prologue
    .line 224
    const-string v1, "MTPJNIInterface"

    const-string v2, "< MTP > Registering BroadCast receiver :::::"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 227
    .local v0, "lIntentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.android.MTP.OBJECT_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 228
    const-string v1, "com.android.MTP.OBJECT_PROP_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 229
    const-string v1, "com.android.MTP.OBJECT_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 231
    sget-object v1, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    iget-object v2, p0, Landroid/mtp/MTPJNIInterface;->mMtpReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 232
    const/4 v1, 0x1

    sput-boolean v1, Landroid/mtp/MTPJNIInterface;->RegisterBroadcast:Z

    .line 233
    return-void
.end method

.method private registerBroadCastRec1()V
    .locals 3

    .prologue
    .line 235
    const-string v1, "MTPJNIInterface"

    const-string v2, "< MTP > Registering BroadCast receiver :::::::"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 237
    .local v0, "lIntentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 238
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 239
    sget-object v1, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    iget-object v2, p0, Landroid/mtp/MTPJNIInterface;->mMtpReceiver1:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 240
    const/4 v1, 0x1

    sput-boolean v1, Landroid/mtp/MTPJNIInterface;->RegisterBroadcast1:Z

    .line 241
    return-void
.end method

.method private rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "b"    # Landroid/graphics/Bitmap;
    .param p2, "degrees"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 936
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 937
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 938
    .local v5, "m":Landroid/graphics/Matrix;
    int-to-float v0, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 940
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 941
    .local v7, "b2":Landroid/graphics/Bitmap;
    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 942
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 943
    move-object p1, v7

    .line 950
    .end local v5    # "m":Landroid/graphics/Matrix;
    .end local v7    # "b2":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p1

    .line 945
    .restart local v5    # "m":Landroid/graphics/Matrix;
    :catch_0
    move-exception v8

    .line 947
    .local v8, "ex":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v8}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0
.end method

.method private native setCryptionKey(Ljava/lang/String;)V
.end method

.method private native testMtpCommands(II)V
.end method

.method private transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 14
    .param p1, "scaler"    # Landroid/graphics/Matrix;
    .param p2, "source"    # Landroid/graphics/Bitmap;
    .param p3, "targetWidth"    # I
    .param p4, "targetHeight"    # I
    .param p5, "scaleUp"    # Z

    .prologue
    .line 1031
    if-nez p2, :cond_1

    .line 1032
    const/4 v10, 0x0

    .line 1058
    :cond_0
    :goto_0
    return-object v10

    .line 1035
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1036
    move/from16 v0, p3

    int-to-float v2, v0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v13, v2, v3

    .line 1042
    .local v13, "scale":F
    :goto_1
    if-eqz p1, :cond_3

    .line 1043
    invoke-virtual {p1, v13, v13}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1045
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    move-object/from16 v2, p2

    move-object v7, p1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 1050
    .local v9, "b1":Landroid/graphics/Bitmap;
    :goto_2
    const/4 v2, 0x0

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int v3, v3, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1051
    .local v11, "dx1":I
    const/4 v2, 0x0

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int v3, v3, p4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 1053
    .local v12, "dy1":I
    div-int/lit8 v2, v11, 0x2

    div-int/lit8 v3, v12, 0x2

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v9, v2, v3, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 1055
    .local v10, "b2":Landroid/graphics/Bitmap;
    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1056
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 1038
    .end local v9    # "b1":Landroid/graphics/Bitmap;
    .end local v10    # "b2":Landroid/graphics/Bitmap;
    .end local v11    # "dx1":I
    .end local v12    # "dy1":I
    .end local v13    # "scale":F
    :cond_2
    move/from16 v0, p4

    int-to-float v2, v0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v13, v2, v3

    .restart local v13    # "scale":F
    goto :goto_1

    .line 1047
    :cond_3
    move-object/from16 v9, p2

    .restart local v9    # "b1":Landroid/graphics/Bitmap;
    goto :goto_2
.end method


# virtual methods
.method public GetBatteryLevel()I
    .locals 2

    .prologue
    .line 462
    const-string v0, "MTPJNIInterface"

    const-string v1, "Getting battery Level from JAVA"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    const/16 v0, 0xa

    return v0
.end method

.method public GetMediaObject(Ljava/lang/String;)[Ljava/lang/Object;
    .locals 14
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 1506
    sget-object v8, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1507
    .local v8, "audioURI":Landroid/net/Uri;
    sget-object v13, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1508
    .local v13, "videoURI":Landroid/net/Uri;
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1509
    .local v1, "imageURI":Landroid/net/Uri;
    move-object v12, p1

    .line 1512
    .local v12, "path":Ljava/lang/String;
    sget-object v0, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_data =\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1513
    .local v9, "cursor":Landroid/database/Cursor;
    if-nez v9, :cond_0

    .line 1514
    const-string v0, "MTPJNIInterface"

    const-string v2, "cursor is null for image"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    const/4 v10, 0x0

    .line 1545
    :goto_0
    return-object v10

    .line 1517
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .line 1518
    .local v11, "objectCount":I
    if-nez v11, :cond_3

    .line 1519
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1520
    sget-object v0, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_data =\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v8

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1521
    if-nez v9, :cond_1

    .line 1522
    const-string v0, "MTPJNIInterface"

    const-string v2, "cursor is null for audio "

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    const/4 v10, 0x0

    goto :goto_0

    .line 1525
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .line 1526
    if-nez v11, :cond_3

    .line 1527
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1528
    sget-object v0, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_data =\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v13

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1529
    if-nez v9, :cond_2

    .line 1530
    const-string v0, "MTPJNIInterface"

    const-string v2, "cursor is null for video "

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    const/4 v10, 0x0

    goto :goto_0

    .line 1533
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .line 1534
    if-nez v11, :cond_3

    .line 1535
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1536
    const-string v0, "MTPJNIInterface"

    const-string/jumbo v2, "objectCount is zero "

    invoke-static {v0, v2}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    .line 1537
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 1542
    :cond_3
    new-array v10, v11, [Landroid/mtp/MediaObject;

    .line 1543
    .local v10, "objectArray":[Landroid/mtp/MediaObject;
    invoke-virtual {p0, v9, v10}, Landroid/mtp/MTPJNIInterface;->getColumnData(Landroid/database/Cursor;[Landroid/mtp/MediaObject;)V

    .line 1544
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method public SetCryptionKey(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 458
    const-string v0, "MTPJNIInterface"

    const-string v1, "Getting CryptionKey from JAVA"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    invoke-direct {p0, p1}, Landroid/mtp/MTPJNIInterface;->setCryptionKey(Ljava/lang/String;)V

    .line 460
    return-void
.end method

.method public UpdateMediaDB(Ljava/lang/String;)V
    .locals 6
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 469
    const-string v2, "MTPJNIInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Filename got from JNI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    move-object v0, p1

    .line 472
    .local v0, "contentName":Ljava/lang/String;
    const-string v2, "MTPJNIInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ContentName "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 475
    .local v1, "file":Ljava/io/File;
    sget-object v2, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 477
    return-void
.end method

.method public addPlaylist(Ljava/lang/String;Ljava/lang/String;)I
    .locals 21
    .param p1, "playlistName"    # Ljava/lang/String;
    .param p2, "playlistPath"    # Ljava/lang/String;

    .prologue
    .line 531
    const-string v11, "4"

    .line 532
    .local v11, "MEDIA_TYPE_PLAYLIST":Ljava/lang/String;
    const-string v10, "47621"

    .line 533
    .local v10, "FORMAT_ABSTRACT_AUDIO_PLAYLIST":Ljava/lang/String;
    const/4 v15, 0x0

    .line 534
    .local v15, "noOfRowsUpdated":I
    const-string v2, "MTPJNIInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Playlistname :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    const-string v2, "MTPJNIInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Playlist path:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    const-string v5, "/"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 541
    .local v17, "playlistPathWithoutPla":Ljava/lang/String;
    sget-object v3, Landroid/mtp/MTPJNIInterface$MusicPlaylist;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 543
    .local v3, "playlistUri":Landroid/net/Uri;
    const-string v2, "external"

    invoke-static {v2}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    .line 545
    .local v16, "playlistFileUri":Landroid/net/Uri;
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 546
    .local v19, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "name"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    const-string v2, "_data"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 551
    .local v20, "valuesFile":Landroid/content/ContentValues;
    const-string v2, "_data"

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    const-string/jumbo v2, "media_type"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    const-string v2, "format"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    sget-object v2, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "name=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 556
    .local v13, "cur":Landroid/database/Cursor;
    if-nez v13, :cond_0

    .line 557
    const-string v2, "MTPJNIInterface"

    const-string v4, "Cur is null"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    const/16 v18, -0x1

    .line 600
    :goto_0
    return v18

    .line 560
    :cond_0
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 561
    .local v12, "count":I
    const-string v2, "MTPJNIInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Count"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    const/16 v18, 0x0

    .line 564
    .local v18, "rowID":I
    const/4 v14, 0x0

    .line 565
    .local v14, "newUri":Landroid/net/Uri;
    if-nez v12, :cond_5

    .line 566
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 567
    sget-object v2, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v14

    .line 568
    if-nez v14, :cond_1

    .line 569
    const-string v2, "MTPJNIInterface"

    const-string/jumbo v4, "playlist Insertion failure"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 572
    :cond_1
    const-string v2, "MTPJNIInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The New URI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    invoke-virtual {v14}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x3

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 574
    sget-object v2, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_data=\""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, v16

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 575
    if-nez v13, :cond_2

    .line 576
    const-string v2, "MTPJNIInterface"

    const-string v4, "Cur is null"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 579
    :cond_2
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 580
    const-string v2, "MTPJNIInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Count"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    if-lez v12, :cond_4

    .line 582
    sget-object v2, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_data=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v2, v0, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 583
    const-string v2, "MTPJNIInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "noOfRowsUpdated = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :cond_3
    :goto_1
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 585
    :cond_4
    if-nez v12, :cond_3

    .line 586
    sget-object v2, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v14

    .line 587
    if-nez v14, :cond_3

    .line 588
    const-string v2, "MTPJNIInterface"

    const-string/jumbo v4, "playlistFile Insertion failure"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 595
    :cond_5
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    .line 596
    const-string v2, "_id"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 597
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method public addtoPlaylist(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 26
    .param p1, "playlistName"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "order"    # I

    .prologue
    .line 702
    const-string v2, "MTPJNIInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Playlistname :"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    const-string v2, "MTPJNIInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Filename: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    sget-object v3, Landroid/mtp/MTPJNIInterface$MusicPlaylist;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 711
    .local v3, "playlistUri":Landroid/net/Uri;
    new-instance v25, Landroid/content/ContentValues;

    invoke-direct/range {v25 .. v25}, Landroid/content/ContentValues;-><init>()V

    .line 712
    .local v25, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "name"

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    sget-object v2, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "name=\""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 714
    .local v19, "cur":Landroid/database/Cursor;
    if-nez v19, :cond_0

    .line 715
    const-string v2, "MTPJNIInterface"

    const-string v4, "Cur is null"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    const/4 v2, -0x1

    .line 869
    :goto_0
    return v2

    .line 718
    :cond_0
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v17

    .line 719
    .local v17, "count":I
    const-string v2, "MTPJNIInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Count"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    const/16 v24, 0x0

    .line 722
    .local v24, "rowID":I
    const/16 v22, 0x0

    .line 723
    .local v22, "newUri":Landroid/net/Uri;
    if-nez v17, :cond_1

    .line 724
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 725
    const/4 v2, -0x1

    goto :goto_0

    .line 727
    :cond_1
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    .line 728
    const-string v2, "_id"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 729
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 741
    const-string v2, "MTPJNIInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Playlist rowID"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 743
    .local v14, "audioMAPValues":Landroid/content/ContentValues;
    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 744
    .local v5, "audioUri":Landroid/net/Uri;
    const-string v2, "MTPJNIInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "URI for the audio DB is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    sget-object v2, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_data=\""

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "\""

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 746
    .local v16, "c1":Landroid/database/Cursor;
    if-nez v16, :cond_2

    .line 747
    const-string v2, "MTPJNIInterface"

    const-string v4, "c1 Cur is null"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 749
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 751
    :cond_2
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v17

    .line 752
    const-string v2, "MTPJNIInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Data from the audio count"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    if-nez v17, :cond_4

    .line 758
    new-instance v25, Landroid/content/ContentValues;

    .end local v25    # "values":Landroid/content/ContentValues;
    invoke-direct/range {v25 .. v25}, Landroid/content/ContentValues;-><init>()V

    .line 759
    .restart local v25    # "values":Landroid/content/ContentValues;
    const-string v2, "_data"

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    const-string/jumbo v2, "is_music"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 761
    const-string/jumbo v2, "is_ringtone"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 762
    const-string/jumbo v2, "is_alarm"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 763
    const-string/jumbo v2, "is_notification"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 764
    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 765
    const-string v2, "MTPJNIInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The audio URI "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    sget-object v2, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v2, v5, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v22

    .line 767
    invoke-virtual/range {v25 .. v25}, Landroid/content/ContentValues;->clear()V

    .line 768
    const-string v2, "date_modified"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 769
    if-nez v22, :cond_3

    .line 770
    const-string v2, "MTPJNIInterface"

    const-string v4, "Insertion failure"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 772
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 773
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 775
    :cond_3
    const-string v2, "MTPJNIInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The New URI "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    sget-object v2, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v2, v0, v1, v4, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 783
    :cond_4
    if-nez v17, :cond_6

    .line 784
    new-instance v14, Landroid/content/ContentValues;

    .end local v14    # "audioMAPValues":Landroid/content/ContentValues;
    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 785
    .restart local v14    # "audioMAPValues":Landroid/content/ContentValues;
    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 786
    const-string v2, "MTPJNIInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "URI for the audio DB is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 788
    sget-object v2, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_data=\""

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "\""

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 789
    if-nez v16, :cond_5

    .line 790
    const-string v2, "MTPJNIInterface"

    const-string v4, "Cur is null"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 792
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 794
    :cond_5
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v17

    .line 795
    const-string v2, "MTPJNIInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Data from the audio count"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    :cond_6
    const/4 v13, 0x0

    .line 798
    .local v13, "audioID":I
    const/4 v12, 0x1

    .line 799
    .local v12, "add_in_playlist":Z
    if-lez v17, :cond_9

    .line 800
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    .line 801
    const-string v2, "_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 802
    const-string v2, "external"

    move/from16 v0, v24

    int-to-long v8, v0

    invoke-static {v2, v8, v9}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v7

    .line 806
    .local v7, "playlistMemberUri":Landroid/net/Uri;
    sget-object v2, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v8, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "audio_id=\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 808
    .local v20, "cur2":Landroid/database/Cursor;
    const/16 v18, 0x0

    .line 809
    .local v18, "count2":I
    if-nez v20, :cond_7

    .line 810
    const-string v2, "MTPJNIInterface"

    const-string v4, "Cursor cur2 is null"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 812
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 814
    :cond_7
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v18

    .line 816
    if-eqz v18, :cond_8

    .line 817
    const/4 v12, 0x0

    .line 818
    :cond_8
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 822
    .end local v7    # "playlistMemberUri":Landroid/net/Uri;
    .end local v18    # "count2":I
    .end local v20    # "cur2":Landroid/database/Cursor;
    :cond_9
    const/4 v15, 0x0

    .line 825
    .local v15, "audio_HashCode":I
    if-lez v17, :cond_b

    .line 826
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    .line 827
    const-string v2, "_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 829
    const-string v2, "MTPJNIInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Row ID for audio file"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 833
    const-string v2, "audio_id"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 838
    const-string/jumbo v2, "play_order"

    add-int/lit8 v4, p3, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 839
    const-string v2, "MTPJNIInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Playlist ID"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    const-string/jumbo v2, "playlist_id"

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 847
    if-eqz v12, :cond_a

    .line 851
    :try_start_0
    const-string v2, "external"

    move/from16 v0, v24

    int-to-long v8, v0

    invoke-static {v2, v8, v9}, Landroid/mtp/MTPJNIInterface$MusicPlaylist;->getMembersContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v23

    .line 854
    .local v23, "playlist_map":Landroid/net/Uri;
    const-string v2, "MTPJNIInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Audio map URI"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    sget-object v2, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v2, v0, v14}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v22

    .line 856
    const-string v2, "MTPJNIInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The New URI for the audio map"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 869
    .end local v23    # "playlist_map":Landroid/net/Uri;
    :cond_a
    :goto_1
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 857
    :catch_0
    move-exception v21

    .line 858
    .local v21, "e":Ljava/lang/Exception;
    const-string v2, "MTPJNIInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 866
    .end local v21    # "e":Ljava/lang/Exception;
    :cond_b
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 867
    const/4 v2, -0x1

    goto/16 :goto_0
.end method

.method public deleteAllItemofPlaylist(Ljava/lang/String;)V
    .locals 11
    .param p1, "playlistName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1447
    const-string v0, "MTPJNIInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "playlistName :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    .line 1449
    sget-object v1, Landroid/mtp/MTPJNIInterface$MusicPlaylist;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1450
    .local v1, "playlistUri":Landroid/net/Uri;
    const/4 v8, 0x0

    .line 1452
    .local v8, "noOfSongs":I
    sget-object v0, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "name=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1453
    .local v7, "cur":Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 1454
    const-string v0, "MTPJNIInterface"

    const-string v2, "Cur is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    :goto_0
    return-void

    .line 1457
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 1458
    .local v6, "count":I
    const-string v0, "MTPJNIInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Count"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    const/4 v10, 0x0

    .line 1461
    .local v10, "rowID":I
    if-nez v6, :cond_1

    .line 1462
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1463
    const-string v0, "MTPJNIInterface"

    const-string/jumbo v2, "playlist is not present"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    const-string v0, "MTPJNIInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "playlist "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not present"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1467
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1468
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 1469
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1471
    const-string v0, "external"

    int-to-long v4, v10

    invoke-static {v0, v4, v5}, Landroid/mtp/MTPJNIInterface$MusicPlaylist;->getMembersContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v9

    .line 1472
    .local v9, "playlist_map":Landroid/net/Uri;
    sget-object v0, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "playlist_id=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v9, v3, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 1473
    const-string v0, "MTPJNIInterface"

    const-string v2, "No of songs of playlistName deleted"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    const-string v0, "MTPJNIInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No of songs of playlistName deleted="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public deletePlaylist(Ljava/lang/String;)I
    .locals 11
    .param p1, "playlistName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 495
    const-string v0, "MTPJNIInterface"

    const-string v3, "Playlist to be deleted"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    const-string v0, "MTPJNIInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Playlist to be deleted  :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 500
    .local v1, "playlistUri":Landroid/net/Uri;
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 503
    .local v8, "playlistFileUri":Landroid/net/Uri;
    sget-object v0, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "name=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 504
    .local v7, "cur":Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 505
    const-string v0, "MTPJNIInterface"

    const-string v2, "Cur is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    const/4 v0, -0x1

    .line 524
    :goto_0
    return v0

    .line 508
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 509
    .local v6, "count":I
    const-string v0, "MTPJNIInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Count"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    if-lez v6, :cond_1

    .line 512
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 513
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 515
    .local v9, "playlistPath":Ljava/lang/String;
    sget-object v0, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_data=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".pla\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v8, v3, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    .line 516
    .local v10, "ret":I
    const-string v0, "MTPJNIInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Files Count"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    if-nez v10, :cond_2

    .line 518
    const-string v0, "MTPJNIInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deletion unsuccessful"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    .end local v9    # "playlistPath":Ljava/lang/String;
    .end local v10    # "ret":I
    :cond_1
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 524
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 520
    .restart local v9    # "playlistPath":Ljava/lang/String;
    .restart local v10    # "ret":I
    :cond_2
    const-string v0, "MTPJNIInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deletion successful"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public deletefromMediaPlayer(Ljava/lang/String;)V
    .locals 6
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 905
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 906
    .local v1, "uri":Landroid/net/Uri;
    sget-object v2, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_data=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 907
    .local v0, "ret":I
    const-string v2, "MTPJNIInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Row deleted for Audio"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 917
    sget-object v2, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_data=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 918
    const-string v2, "MTPJNIInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Row deleted Vedio"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 921
    sget-object v2, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_data=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 922
    const-string v2, "MTPJNIInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Row deleted Vedio from Gallary DB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 926
    sget-object v2, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_data=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 927
    const-string v2, "MTPJNIInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Row deleted Image"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 930
    sget-object v2, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_data=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 931
    const-string v2, "MTPJNIInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Row deleted Vedio from Gallary DB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    return-void
.end method

.method public getColumnData(Landroid/database/Cursor;[Landroid/mtp/MediaObject;)V
    .locals 54
    .param p1, "cur"    # Landroid/database/Cursor;
    .param p2, "objectArray"    # [Landroid/mtp/MediaObject;

    .prologue
    .line 1555
    const/16 v44, 0x0

    .line 1556
    .local v44, "index":I
    const/4 v15, 0x3

    .line 1557
    .local v15, "mimeTypeEnum":I
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1559
    const-string/jumbo v2, "title"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v52

    .line 1560
    .local v52, "titleColumn":I
    const-string v2, "_data"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v32

    .line 1561
    .local v32, "dataColumn":I
    const-string v2, "_display_name"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v42

    .line 1562
    .local v42, "filenameColumn":I
    const-string v2, "_size"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v51

    .line 1563
    .local v51, "sizeColumn":I
    const-string/jumbo v2, "mime_type"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v48

    .line 1564
    .local v48, "mimeColumn":I
    const-string v2, "date_added"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v33

    .line 1565
    .local v33, "dateCreatedColumn":I
    const-string v2, "date_modified"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v34

    .line 1566
    .local v34, "dateModifiedColumn":I
    const-string v2, "date_modified"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v43

    .line 1567
    .local v43, "idColumn":I
    const-string v2, "_display_name"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v38

    .line 1568
    .local v38, "displayColumn":I
    const-string v2, "duration"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v39

    .line 1569
    .local v39, "durationColumn_audio":I
    const-string v2, "album"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v27

    .line 1571
    .local v27, "albumColumn_audio":I
    const-string v2, "artist"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v29

    .line 1572
    .local v29, "artistColumn_audio":I
    const-string v2, "composer"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v31

    .line 1573
    .local v31, "composerColumn_audio":I
    const-string/jumbo v2, "year"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v53

    .line 1575
    .local v53, "yearColumn_audio":I
    const-string v2, "duration"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v40

    .line 1576
    .local v40, "durationColumn_video":I
    const-string v2, "album"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    .line 1577
    .local v28, "albumColumn_video":I
    const-string v2, "description"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v37

    .line 1578
    .local v37, "descriptionColumn_video":I
    const-string/jumbo v2, "latitude"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v46

    .line 1579
    .local v46, "latitudeColumn_video":I
    const-string/jumbo v2, "longitude"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v47

    .line 1580
    .local v47, "longitudeCoulmn_video":I
    const-string/jumbo v2, "language"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v45

    .line 1581
    .local v45, "languageColumn_video":I
    const-string v2, "artist"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    .line 1582
    .local v30, "artistColumn_video":I
    const-string v2, "datetaken"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v36

    .line 1583
    .local v36, "dateTakenColumn_video":I
    const-string v2, "datetaken"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v35

    .line 1584
    .local v35, "dateTakenColumn_image":I
    const-string/jumbo v2, "resolution"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v49

    .line 1589
    .local v49, "resolustion_video":I
    :try_start_0
    move-object/from16 v0, p1

    move/from16 v1, v43

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/mtp/MTPJNIInterface;->id:Ljava/lang/String;

    .line 1591
    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/mtp/MTPJNIInterface;->filename:Ljava/lang/String;

    .line 1593
    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/mtp/MTPJNIInterface;->title:Ljava/lang/String;

    .line 1595
    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/mtp/MTPJNIInterface;->path:Ljava/lang/String;

    .line 1597
    move-object/from16 v0, p1

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/mtp/MTPJNIInterface;->size:Ljava/lang/String;

    .line 1599
    move-object/from16 v0, p1

    move/from16 v1, v48

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/mtp/MTPJNIInterface;->mimeType:Ljava/lang/String;

    .line 1601
    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/mtp/MTPJNIInterface;->creationDate:Ljava/lang/String;

    .line 1603
    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/mtp/MTPJNIInterface;->modificationDate:Ljava/lang/String;

    .line 1606
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MTPJNIInterface;->mimeType:Ljava/lang/String;

    const-string/jumbo v3, "image"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1607
    const/4 v15, 0x2

    .line 1608
    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/mtp/MTPJNIInterface;->dateTaken:Ljava/lang/String;

    .line 1610
    const-string/jumbo v2, "width"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/mtp/MTPJNIInterface;->width:J

    .line 1612
    const-string/jumbo v2, "height"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/mtp/MTPJNIInterface;->height:J

    .line 1665
    :cond_0
    :goto_0
    new-instance v2, Landroid/mtp/MediaObject;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MTPJNIInterface;->filename:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/mtp/MTPJNIInterface;->album:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/mtp/MTPJNIInterface;->artist:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/mtp/MTPJNIInterface;->composer:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/mtp/MTPJNIInterface;->creationDate:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/mtp/MTPJNIInterface;->description:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v9, v0, Landroid/mtp/MTPJNIInterface;->duration:J

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/mtp/MTPJNIInterface;->id:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/mtp/MTPJNIInterface;->language:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/mtp/MTPJNIInterface;->latitude:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/mtp/MTPJNIInterface;->longitude:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/mtp/MTPJNIInterface;->modificationDate:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/mtp/MTPJNIInterface;->path:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/mtp/MTPJNIInterface;->size:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/mtp/MTPJNIInterface;->title:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/mtp/MTPJNIInterface;->year:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/mtp/MTPJNIInterface;->genreName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/mtp/MTPJNIInterface;->width:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/mtp/MTPJNIInterface;->height:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/mtp/MTPJNIInterface;->dateTaken:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-direct/range {v2 .. v26}, Landroid/mtp/MediaObject;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JJLjava/lang/String;)V

    aput-object v2, p2, v44

    .line 1666
    add-int/lit8 v44, v44, 0x1

    .line 1674
    .end local v27    # "albumColumn_audio":I
    .end local v28    # "albumColumn_video":I
    .end local v29    # "artistColumn_audio":I
    .end local v30    # "artistColumn_video":I
    .end local v31    # "composerColumn_audio":I
    .end local v32    # "dataColumn":I
    .end local v33    # "dateCreatedColumn":I
    .end local v34    # "dateModifiedColumn":I
    .end local v35    # "dateTakenColumn_image":I
    .end local v36    # "dateTakenColumn_video":I
    .end local v37    # "descriptionColumn_video":I
    .end local v38    # "displayColumn":I
    .end local v39    # "durationColumn_audio":I
    .end local v40    # "durationColumn_video":I
    .end local v42    # "filenameColumn":I
    .end local v43    # "idColumn":I
    .end local v45    # "languageColumn_video":I
    .end local v46    # "latitudeColumn_video":I
    .end local v47    # "longitudeCoulmn_video":I
    .end local v48    # "mimeColumn":I
    .end local v49    # "resolustion_video":I
    .end local v51    # "sizeColumn":I
    .end local v52    # "titleColumn":I
    .end local v53    # "yearColumn_audio":I
    :cond_1
    :goto_1
    return-void

    .line 1614
    .restart local v27    # "albumColumn_audio":I
    .restart local v28    # "albumColumn_video":I
    .restart local v29    # "artistColumn_audio":I
    .restart local v30    # "artistColumn_video":I
    .restart local v31    # "composerColumn_audio":I
    .restart local v32    # "dataColumn":I
    .restart local v33    # "dateCreatedColumn":I
    .restart local v34    # "dateModifiedColumn":I
    .restart local v35    # "dateTakenColumn_image":I
    .restart local v36    # "dateTakenColumn_video":I
    .restart local v37    # "descriptionColumn_video":I
    .restart local v38    # "displayColumn":I
    .restart local v39    # "durationColumn_audio":I
    .restart local v40    # "durationColumn_video":I
    .restart local v42    # "filenameColumn":I
    .restart local v43    # "idColumn":I
    .restart local v45    # "languageColumn_video":I
    .restart local v46    # "latitudeColumn_video":I
    .restart local v47    # "longitudeCoulmn_video":I
    .restart local v48    # "mimeColumn":I
    .restart local v49    # "resolustion_video":I
    .restart local v51    # "sizeColumn":I
    .restart local v52    # "titleColumn":I
    .restart local v53    # "yearColumn_audio":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MTPJNIInterface;->mimeType:Ljava/lang/String;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1615
    const/4 v15, 0x0

    .line 1616
    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/mtp/MTPJNIInterface;->displayname:Ljava/lang/String;

    .line 1620
    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/mtp/MTPJNIInterface;->album:Ljava/lang/String;

    .line 1622
    move-object/from16 v0, p1

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/mtp/MTPJNIInterface;->duration:J

    .line 1624
    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/mtp/MTPJNIInterface;->artist:Ljava/lang/String;

    .line 1626
    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/mtp/MTPJNIInterface;->composer:Ljava/lang/String;

    .line 1628
    move-object/from16 v0, p1

    move/from16 v1, v53

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/mtp/MTPJNIInterface;->year:I

    .line 1630
    const-string v2, "genre_name"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/mtp/MTPJNIInterface;->genreName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1667
    :catch_0
    move-exception v41

    .line 1668
    .local v41, "e":Ljava/lang/Exception;
    const-string v2, "MTPJNIInterface"

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1633
    .end local v41    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MTPJNIInterface;->mimeType:Ljava/lang/String;

    const-string/jumbo v3, "video"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1634
    const/4 v15, 0x1

    .line 1635
    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/mtp/MTPJNIInterface;->dateTaken:Ljava/lang/String;

    .line 1637
    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/mtp/MTPJNIInterface;->album:Ljava/lang/String;

    .line 1639
    move-object/from16 v0, p1

    move/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/mtp/MTPJNIInterface;->duration:J

    .line 1641
    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/mtp/MTPJNIInterface;->artist:Ljava/lang/String;

    .line 1643
    move-object/from16 v0, p1

    move/from16 v1, v37

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/mtp/MTPJNIInterface;->description:Ljava/lang/String;

    .line 1645
    move-object/from16 v0, p1

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/mtp/MTPJNIInterface;->longitude:Ljava/lang/String;

    .line 1647
    move-object/from16 v0, p1

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/mtp/MTPJNIInterface;->latitude:Ljava/lang/String;

    .line 1649
    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/mtp/MTPJNIInterface;->language:Ljava/lang/String;

    .line 1651
    const-string/jumbo v2, "width"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/mtp/MTPJNIInterface;->width:J

    .line 1653
    const-string/jumbo v2, "height"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/mtp/MTPJNIInterface;->height:J

    .line 1655
    move-object/from16 v0, p1

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/mtp/MTPJNIInterface;->resolution:Ljava/lang/String;

    .line 1658
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MTPJNIInterface;->resolution:Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/mtp/MTPJNIInterface;->width:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/mtp/MTPJNIInterface;->height:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 1659
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MTPJNIInterface;->resolution:Ljava/lang/String;

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v50

    .line 1660
    .local v50, "sRes":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v50, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/mtp/MTPJNIInterface;->width:J

    .line 1661
    const/4 v2, 0x1

    aget-object v2, v50, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/mtp/MTPJNIInterface;->height:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public getExternalStorageStatus(Ljava/lang/String;)I
    .locals 7
    .param p1, "mountPath"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 649
    const/4 v1, 0x0

    .line 650
    .local v1, "status":Ljava/lang/String;
    sget-object v4, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    const-string/jumbo v5, "storage"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    .line 652
    .local v2, "storageManager":Landroid/os/storage/StorageManager;
    if-eqz p1, :cond_0

    .line 654
    :try_start_0
    invoke-virtual {v2, p1}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 661
    :cond_0
    if-eqz v1, :cond_1

    .line 662
    const-string v4, "MTPJNIInterface"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Status for mount/Unmount :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    const-string/jumbo v4, "mounted"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 664
    const-string v4, "MTPJNIInterface"

    const-string v5, "SDcard is not available"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    :cond_1
    :goto_0
    return v3

    .line 655
    :catch_0
    move-exception v0

    .line 656
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 657
    const-string v4, "MTPJNIInterface"

    const-string v5, "Exception is coming while getting the Mount status"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 667
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const-string v3, "MTPJNIInterface"

    const-string v4, "SDcard is  available"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public getGadgetResetStatus(I)I
    .locals 3
    .param p1, "temp"    # I

    .prologue
    .line 427
    const-string v0, "MTPJNIInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Getting gadget reset status"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/mtp/MTPJNIInterface;->gadgetResetStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    sget v0, Landroid/mtp/MTPJNIInterface;->gadgetResetStatus:I

    return v0
.end method

.method public getMediaScannerStatus(I)I
    .locals 3
    .param p1, "temp"    # I

    .prologue
    .line 422
    const-string v0, "MTPJNIInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Getting media scanner status"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/mtp/MTPJNIInterface;->scannerStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    sget v0, Landroid/mtp/MTPJNIInterface;->scannerStatus:I

    return v0
.end method

.method public getMtpEnumerate()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 432
    const-string v0, "MTPJNIInterface"

    const-string v1, "MTP in GetEnumerateMtp"

    invoke-static {v0, v1}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    invoke-direct {p0, v2, v2}, Landroid/mtp/MTPJNIInterface;->enumerateMtp(II)V

    .line 434
    return-void
.end method

.method public getObjectHandle(Ljava/lang/String;I)I
    .locals 16
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 1263
    const-string/jumbo v8, "media"

    .line 1264
    .local v8, "AUTHORITY":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1265
    .local v9, "CONTENT_AUTHORITY_SLASH":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "external"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/file"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1266
    .local v3, "FileUri":Landroid/net/Uri;
    const/4 v11, 0x0

    .line 1267
    .local v11, "cur":Landroid/database/Cursor;
    const/4 v14, 0x0

    .line 1268
    .local v14, "objectHandle":I
    const-string v2, "MTPJNIInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "filePath is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    .line 1269
    const-string v2, "MTPJNIInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "type is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    .line 1270
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_3

    .line 1272
    :try_start_0
    sget-object v2, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_data=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 1276
    :goto_0
    if-nez v11, :cond_0

    .line 1277
    const-string v2, "MTPJNIInterface"

    const-string v4, "Cur is null"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    const/4 v2, -0x1

    .line 1310
    :goto_1
    return v2

    .line 1273
    :catch_0
    move-exception v12

    .line 1274
    .local v12, "e":Ljava/lang/Exception;
    const-string v2, "MTPJNIInterface"

    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1280
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 1282
    .local v10, "count":I
    if-nez v10, :cond_1

    .line 1283
    const-string v2, "MTPJNIInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "objectHandle Count"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    .line 1284
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1285
    const/4 v2, -0x1

    goto :goto_1

    .line 1287
    :cond_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1288
    const-string v2, "_id"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 1290
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1291
    const-string v2, "MTPJNIInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "objectHandle is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    .end local v10    # "count":I
    :cond_2
    :goto_2
    move v2, v14

    .line 1310
    goto :goto_1

    .line 1292
    :cond_3
    const/4 v2, 0x2

    move/from16 v0, p2

    if-ne v0, v2, :cond_2

    .line 1293
    const/4 v13, 0x0

    .line 1294
    .local v13, "newUri":Landroid/net/Uri;
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 1295
    .local v15, "valuesFile":Landroid/content/ContentValues;
    const-string v2, "_data"

    move-object/from16 v0, p1

    invoke-virtual {v15, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    :try_start_1
    sget-object v2, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v3, v15}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v13

    .line 1301
    :goto_3
    if-nez v13, :cond_4

    .line 1302
    const-string v2, "MTPJNIInterface"

    const-string v4, "Insertion failure"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    const/4 v2, -0x1

    goto/16 :goto_1

    .line 1298
    :catch_1
    move-exception v12

    .line 1299
    .restart local v12    # "e":Ljava/lang/Exception;
    const-string v2, "MTPJNIInterface"

    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1305
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_4
    const-string v2, "MTPJNIInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The New URI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    invoke-static {v13}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    long-to-int v14, v4

    .line 1308
    const-string v2, "MTPJNIInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "objectHandle is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public getPathFromObjecthandle(I)Ljava/lang/String;
    .locals 13
    .param p1, "objectHandle"    # I

    .prologue
    const/4 v12, 0x0

    .line 1479
    const-string/jumbo v6, "media"

    .line 1480
    .local v6, "AUTHORITY":Ljava/lang/String;
    const/4 v11, 0x0

    .line 1481
    .local v11, "filePath":Ljava/lang/String;
    const/4 v9, 0x0

    .line 1482
    .local v9, "cur":Landroid/database/Cursor;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1483
    .local v7, "CONTENT_AUTHORITY_SLASH":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "external"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/file"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1485
    .local v1, "FileUri":Landroid/net/Uri;
    :try_start_0
    sget-object v0, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 1489
    :goto_0
    if-nez v9, :cond_0

    .line 1490
    const-string v0, "MTPJNIInterface"

    const-string v2, "Cur is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v12

    .line 1503
    :goto_1
    return-object v0

    .line 1486
    :catch_0
    move-exception v10

    .line 1487
    .local v10, "e":Ljava/lang/Exception;
    const-string v0, "MTPJNIInterface"

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1493
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 1495
    .local v8, "count":I
    if-nez v8, :cond_1

    .line 1496
    const-string v0, "MTPJNIInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "objectHandle Count"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1502
    :goto_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    move-object v0, v11

    .line 1503
    goto :goto_1

    .line 1498
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1499
    const-string v0, "_data"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1500
    const-string v0, "MTPJNIInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " filePath is"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public getPlaylistId(Ljava/lang/String;)I
    .locals 9
    .param p1, "playlistName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 879
    sget-object v1, Landroid/mtp/MTPJNIInterface$MusicPlaylist;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 882
    .local v1, "playlistUri":Landroid/net/Uri;
    sget-object v0, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "name=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 883
    .local v7, "cur":Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 884
    const-string v0, "MTPJNIInterface"

    const-string v2, "Cur is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    const/4 v8, -0x1

    .line 899
    :goto_0
    return v8

    .line 887
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 888
    .local v6, "count":I
    const-string v0, "MTPJNIInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Count"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    const/4 v8, 0x0

    .line 891
    .local v8, "rowID":I
    if-nez v6, :cond_1

    .line 892
    const/4 v8, -0x1

    .line 897
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 898
    const-string v0, "MTPJNIInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Playlist ID"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 894
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 895
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    goto :goto_1
.end method

.method public getThumbnail(Ljava/lang/String;I)I
    .locals 18
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 1136
    const/16 v17, 0x0

    .line 1137
    .local v17, "thumbsize":I
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/test_thumb_img.jpg"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1138
    .local v16, "thumbPath":Ljava/lang/String;
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_5

    .line 1139
    const-string v2, "MTPJNIInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "inside getThumbnail for images for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    invoke-direct/range {p0 .. p1}, Landroid/mtp/MTPJNIInterface;->getImageThumbBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 1142
    .local v15, "thumb":Landroid/graphics/Bitmap;
    if-eqz v15, :cond_2

    .line 1143
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1144
    .local v9, "bos":Ljava/io/ByteArrayOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x3c

    invoke-virtual {v15, v2, v4, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1145
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    .line 1146
    .local v8, "bitmapdata":[B
    array-length v0, v8

    move/from16 v17, v0

    .line 1149
    new-instance v13, Ljava/io/FileOutputStream;

    move-object/from16 v0, v16

    invoke-direct {v13, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2

    .line 1151
    .local v13, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v13, v8}, Ljava/io/FileOutputStream;->write([B)V

    .line 1152
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2

    .line 1156
    :goto_0
    :try_start_2
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    .line 1197
    .end local v8    # "bitmapdata":[B
    .end local v9    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    :cond_0
    :goto_1
    const-string v2, "MTPJNIInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "image\'s thumb size is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    .line 1258
    .end local v15    # "thumb":Landroid/graphics/Bitmap;
    .end local v16    # "thumbPath":Ljava/lang/String;
    .end local v17    # "thumbsize":I
    :cond_1
    :goto_2
    return v17

    .line 1153
    .restart local v8    # "bitmapdata":[B
    .restart local v9    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v15    # "thumb":Landroid/graphics/Bitmap;
    .restart local v16    # "thumbPath":Ljava/lang/String;
    .restart local v17    # "thumbsize":I
    :catch_0
    move-exception v12

    .line 1154
    .local v12, "e":Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 1254
    .end local v8    # "bitmapdata":[B
    .end local v9    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .end local v15    # "thumb":Landroid/graphics/Bitmap;
    .end local v16    # "thumbPath":Ljava/lang/String;
    :catch_1
    move-exception v12

    .line 1255
    .restart local v12    # "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 1256
    const/16 v17, 0x0

    goto :goto_2

    .line 1158
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v15    # "thumb":Landroid/graphics/Bitmap;
    .restart local v16    # "thumbPath":Ljava/lang/String;
    :cond_2
    :try_start_3
    const-string v2, "MTPJNIInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Image\'s bitmap is coming null try from MediaStore\'s API "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1160
    .local v3, "imageURI":Landroid/net/Uri;
    sget-object v2, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_data =\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1161
    .local v11, "cursor":Landroid/database/Cursor;
    if-nez v11, :cond_3

    .line 1162
    const-string v2, "MTPJNIInterface"

    const-string v4, "Cur is null"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1257
    .end local v3    # "imageURI":Landroid/net/Uri;
    .end local v11    # "cursor":Landroid/database/Cursor;
    .end local v15    # "thumb":Landroid/graphics/Bitmap;
    .end local v16    # "thumbPath":Ljava/lang/String;
    :catch_2
    move-exception v12

    .line 1258
    .local v12, "e":Ljava/lang/OutOfMemoryError;
    const/16 v17, 0x0

    goto :goto_2

    .line 1165
    .end local v12    # "e":Ljava/lang/OutOfMemoryError;
    .restart local v3    # "imageURI":Landroid/net/Uri;
    .restart local v11    # "cursor":Landroid/database/Cursor;
    .restart local v15    # "thumb":Landroid/graphics/Bitmap;
    .restart local v16    # "thumbPath":Ljava/lang/String;
    :cond_3
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 1167
    .local v10, "count":I
    const/4 v14, 0x0

    .line 1168
    .local v14, "imageID":I
    if-nez v10, :cond_4

    .line 1169
    const-string v2, "MTPJNIInterface"

    const-string v4, "Count is zero"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 1173
    :cond_4
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1174
    const-string v2, "_id"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 1176
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1177
    sget-object v2, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    int-to-long v4, v14

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v2, v4, v5, v6, v7}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 1178
    if-eqz v15, :cond_0

    .line 1179
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1180
    .restart local v9    # "bos":Ljava/io/ByteArrayOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x3c

    invoke-virtual {v15, v2, v4, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1181
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    .line 1182
    .restart local v8    # "bitmapdata":[B
    array-length v0, v8

    move/from16 v17, v0

    .line 1186
    new-instance v13, Ljava/io/FileOutputStream;

    move-object/from16 v0, v16

    invoke-direct {v13, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_2

    .line 1188
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    :try_start_4
    invoke-virtual {v13, v8}, Ljava/io/FileOutputStream;->write([B)V

    .line 1189
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_2

    .line 1193
    :goto_3
    :try_start_5
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_1

    .line 1190
    :catch_3
    move-exception v12

    .line 1191
    .local v12, "e":Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    goto :goto_3

    .line 1199
    .end local v3    # "imageURI":Landroid/net/Uri;
    .end local v8    # "bitmapdata":[B
    .end local v9    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v10    # "count":I
    .end local v11    # "cursor":Landroid/database/Cursor;
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .end local v14    # "imageID":I
    .end local v15    # "thumb":Landroid/graphics/Bitmap;
    :cond_5
    const/4 v2, 0x2

    move/from16 v0, p2

    if-ne v0, v2, :cond_7

    .line 1202
    invoke-direct/range {p0 .. p1}, Landroid/mtp/MTPJNIInterface;->getVideoThumbBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 1203
    .restart local v15    # "thumb":Landroid/graphics/Bitmap;
    if-eqz v15, :cond_6

    .line 1204
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1205
    .restart local v9    # "bos":Ljava/io/ByteArrayOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x3c

    invoke-virtual {v15, v2, v4, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1206
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    .line 1209
    .restart local v8    # "bitmapdata":[B
    array-length v0, v8

    move/from16 v17, v0

    .line 1210
    const-string v2, "MTPJNIInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Videos\'s thumbnail size is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    .line 1213
    new-instance v13, Ljava/io/FileOutputStream;

    move-object/from16 v0, v16

    invoke-direct {v13, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_2

    .line 1215
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    :try_start_6
    invoke-virtual {v13, v8}, Ljava/io/FileOutputStream;->write([B)V

    .line 1216
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_2

    .line 1217
    :catch_4
    move-exception v12

    .line 1218
    .restart local v12    # "e":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_2

    .line 1222
    .end local v8    # "bitmapdata":[B
    .end local v9    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    :cond_6
    const-string v2, "MTPJNIInterface"

    const-string v4, "Video\'s bitmap is coming null"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1226
    .end local v15    # "thumb":Landroid/graphics/Bitmap;
    :cond_7
    const/4 v2, 0x3

    move/from16 v0, p2

    if-ne v0, v2, :cond_1

    .line 1227
    const-string v2, "MTPJNIInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "inside getThumbnail for music"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    invoke-direct/range {p0 .. p1}, Landroid/mtp/MTPJNIInterface;->getMusicThumbBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 1230
    .restart local v15    # "thumb":Landroid/graphics/Bitmap;
    if-eqz v15, :cond_8

    .line 1231
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1232
    .restart local v9    # "bos":Ljava/io/ByteArrayOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x3c

    invoke-virtual {v15, v2, v4, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1233
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    .line 1236
    .restart local v8    # "bitmapdata":[B
    array-length v0, v8

    move/from16 v17, v0

    .line 1237
    const-string v2, "MTPJNIInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Music thumbnail size is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    .line 1240
    new-instance v13, Ljava/io/FileOutputStream;

    move-object/from16 v0, v16

    invoke-direct {v13, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_2

    .line 1242
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    :try_start_8
    invoke-virtual {v13, v8}, Ljava/io/FileOutputStream;->write([B)V

    .line 1243
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_2

    .line 1244
    :catch_5
    move-exception v12

    .line 1245
    .restart local v12    # "e":Ljava/lang/Exception;
    :try_start_9
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_2

    .line 1249
    .end local v8    # "bitmapdata":[B
    .end local v9    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    :cond_8
    const-string v2, "MTPJNIInterface"

    const-string v4, "Music\'s bitmap is coming null"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_2
.end method

.method public getValueSettingDB(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "strItemName"    # Ljava/lang/String;

    .prologue
    .line 383
    const/4 v0, 0x0

    .line 384
    .local v0, "strVal":Ljava/lang/String;
    sget-object v1, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 385
    if-nez v0, :cond_0

    .line 386
    sget-object v1, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 388
    :cond_0
    const-string v1, "MTPJNIInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    return-object v0
.end method

.method public getdeviceName(I)Ljava/lang/String;
    .locals 3
    .param p1, "temp"    # I

    .prologue
    .line 352
    sget-object v0, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_name"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->DeviceName:Ljava/lang/String;

    .line 354
    iget-object v0, p0, Landroid/mtp/MTPJNIInterface;->DeviceName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 355
    const-string v0, "MTPJNIInterface"

    const-string v1, "DeviceName is Null in System"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    sget-object v0, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_name"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->DeviceName:Ljava/lang/String;

    .line 357
    iget-object v0, p0, Landroid/mtp/MTPJNIInterface;->DeviceName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 358
    const-string v0, "MTPJNIInterface"

    const-string v1, "DeviceName is Null in Global"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    const-string v0, "Default"

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->DeviceName:Ljava/lang/String;

    .line 362
    :cond_0
    const-string v0, "MTPJNIInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeviceName is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/mtp/MTPJNIInterface;->DeviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v0, p0, Landroid/mtp/MTPJNIInterface;->DeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public mtpCommands(II)V
    .locals 3
    .param p1, "opCode"    # I
    .param p2, "transactionId"    # I

    .prologue
    .line 217
    const-string v0, "MTPJNIInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MTP in testMtpCommands of MTPJNIInterface: code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "transactionId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/mtp/MTPJNIInterface;->alertNotiHandler(I)V

    .line 222
    return-void
.end method

.method public noOfSongsInPlaylist(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "playlistName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1314
    sget-object v1, Landroid/mtp/MTPJNIInterface$MusicPlaylist;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1315
    .local v1, "playlistUri":Landroid/net/Uri;
    sget-object v0, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "name=\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1316
    .local v11, "cur":Landroid/database/Cursor;
    if-nez v11, :cond_0

    .line 1317
    const-string v0, "MTPJNIInterface"

    const-string v3, "Cur is null"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    :goto_0
    return-object v2

    .line 1320
    :cond_0
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 1321
    .local v9, "count":I
    const/4 v12, 0x0

    .line 1322
    .local v12, "noOfSongs":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1323
    .local v10, "count1":I
    const/4 v13, 0x0

    .line 1324
    .local v13, "rowID":I
    if-nez v9, :cond_1

    .line 1325
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1326
    const-string v0, "MTPJNIInterface"

    const-string v3, "MTPJNIInterface , Playlist is not present in media DB"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    const-string v0, "MTPJNIInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MTPJNIInterface , Playlist"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " is not present in media DB"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1330
    :cond_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1331
    const-string v0, "_id"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 1332
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1334
    const-string v0, "external"

    int-to-long v6, v13

    invoke-static {v0, v6, v7}, Landroid/mtp/MTPJNIInterface$MusicPlaylist;->getMembersContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v4

    .line 1335
    .local v4, "playlist_map":Landroid/net/Uri;
    sget-object v0, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "playlist_id=\""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v5, v2

    move-object v7, v2

    move-object v8, v2

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1336
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 1337
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1338
    if-eqz v10, :cond_2

    .line 1339
    const-string v0, "MTPJNIInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MTPJNIInterface , no of songs in playlist  is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    const-string v0, "MTPJNIInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MTPJNIInterface , no of songs in playlist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    .line 1341
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    :cond_2
    move-object v2, v12

    .line 1343
    goto/16 :goto_0
.end method

.method public notifyMTPStack(I)V
    .locals 5
    .param p1, "noti"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 333
    const-string v0, "MTPJNIInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "noti = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const/4 v0, 0x3

    if-ne v0, p1, :cond_1

    .line 335
    sget-object v0, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 336
    sget-boolean v0, Landroid/mtp/MTPJNIInterface;->RegisterBroadcast:Z

    if-ne v0, v4, :cond_0

    .line 337
    sget-object v0, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    iget-object v1, p0, Landroid/mtp/MTPJNIInterface;->mMtpReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 338
    sput-boolean v3, Landroid/mtp/MTPJNIInterface;->RegisterBroadcast:Z

    .line 340
    :cond_0
    sget-boolean v0, Landroid/mtp/MTPJNIInterface;->RegisterBroadcast1:Z

    if-ne v0, v4, :cond_1

    .line 341
    sget-object v0, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    iget-object v1, p0, Landroid/mtp/MTPJNIInterface;->mMtpReceiver1:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 342
    sput-boolean v3, Landroid/mtp/MTPJNIInterface;->RegisterBroadcast1:Z

    .line 346
    :cond_1
    invoke-direct {p0, p1}, Landroid/mtp/MTPJNIInterface;->alertNotiHandler(I)V

    .line 347
    return-void
.end method

.method public renamePlaylist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p1, "playlistOldName"    # Ljava/lang/String;
    .param p2, "playlistNewName"    # Ljava/lang/String;
    .param p3, "playlistNewPath"    # Ljava/lang/String;

    .prologue
    .line 1411
    const/4 v7, 0x0

    .line 1412
    .local v7, "noOfRowsUpdated":I
    const-wide/16 v2, 0x0

    .line 1413
    .local v2, "dateModified":J
    const/4 v5, 0x0

    .line 1415
    .local v5, "file":Ljava/io/File;
    const-string v11, "MTPJNIInterface"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "playlistOldName :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    .line 1416
    const-string v11, "MTPJNIInterface"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "playlistNewName: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    .line 1417
    const-string v11, "MTPJNIInterface"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "playlistNewPath: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    .line 1419
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x0

    const-string v13, "/"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1422
    .local v8, "playlistPathWithoutPla":Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p3

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1423
    .end local v5    # "file":Ljava/io/File;
    .local v6, "file":Ljava/io/File;
    :try_start_1
    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    div-long v2, v12, v14
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v6

    .line 1427
    .end local v6    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    :goto_0
    const-string v11, "MTPJNIInterface"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "In updatePlaylistPath dateModified is = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    sget-object v9, Landroid/mtp/MTPJNIInterface$MusicPlaylist;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1431
    .local v9, "playlistUri":Landroid/net/Uri;
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 1432
    .local v10, "values":Landroid/content/ContentValues;
    const-string/jumbo v11, "name"

    move-object/from16 v0, p2

    invoke-virtual {v10, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1433
    const-string v11, "_data"

    invoke-virtual {v10, v11, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1434
    const-string v11, "date_modified"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1435
    sget-object v11, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "name=\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v11, v9, v10, v12, v13}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 1436
    const-string v11, "MTPJNIInterface"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "noOfRowsUpdated = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    const/4 v11, 0x1

    if-ne v7, v11, :cond_0

    .line 1438
    const-string v11, "MTPJNIInterface"

    const-string v12, "Playlist Renamed"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    const-string v11, "MTPJNIInterface"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "playlist "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " is renamed to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    .line 1444
    :goto_1
    return-void

    .line 1424
    .end local v9    # "playlistUri":Landroid/net/Uri;
    .end local v10    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v4

    .line 1425
    .local v4, "e":Ljava/lang/Exception;
    :goto_2
    const-string v11, "MTPJNIInterface"

    const-string v12, "exception in getting last modified "

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1441
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v9    # "playlistUri":Landroid/net/Uri;
    .restart local v10    # "values":Landroid/content/ContentValues;
    :cond_0
    const-string v11, "MTPJNIInterface"

    const-string v12, "Playlist Rename failed"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1424
    .end local v5    # "file":Ljava/io/File;
    .end local v9    # "playlistUri":Landroid/net/Uri;
    .end local v10    # "values":Landroid/content/ContentValues;
    .restart local v6    # "file":Ljava/io/File;
    :catch_1
    move-exception v4

    move-object v5, v6

    .end local v6    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    goto :goto_2
.end method

.method public sendObjectAdded(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 404
    const-string v0, ".pla"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 405
    invoke-direct {p0, p1}, Landroid/mtp/MTPJNIInterface;->objectAdded(Ljava/lang/String;)V

    .line 407
    :cond_0
    return-void
.end method

.method public sendObjectPropChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 410
    const-string v0, ".pla"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 411
    invoke-direct {p0, p1}, Landroid/mtp/MTPJNIInterface;->objectPropChanged(Ljava/lang/String;)V

    .line 413
    :cond_0
    return-void
.end method

.method public sendObjectRemoved(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 416
    const-string v0, ".pla"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 417
    invoke-direct {p0, p1}, Landroid/mtp/MTPJNIInterface;->objectRemoved(Ljava/lang/String;)V

    .line 419
    :cond_0
    return-void
.end method

.method public sendPlaAdded(Ljava/lang/String;)V
    .locals 3
    .param p1, "playlist_path"    # Ljava/lang/String;

    .prologue
    .line 437
    const-string v0, "MTPJNIInterface"

    const-string v1, "In sendPlaAdded playlist file path"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    const-string v0, "MTPJNIInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In sendPlaAdded playlist file path is"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    invoke-direct {p0, p1}, Landroid/mtp/MTPJNIInterface;->objectPlaAdded(Ljava/lang/String;)V

    .line 440
    return-void
.end method

.method public sendPlaRemoved(Ljava/lang/String;)V
    .locals 4
    .param p1, "playlist_path"    # Ljava/lang/String;

    .prologue
    .line 443
    const-string v1, ".pla"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 444
    const-string v1, ".pla"

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 445
    const-string v1, "MTPJNIInterface"

    const-string/jumbo v2, "sendPlaRemoved is added .pla "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    const-string v1, "MTPJNIInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendPlaRemoved is added .pla "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 449
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 450
    const-string v1, "MTPJNIInterface"

    const-string v2, "calling objectPlaRemoved from sendPlaRemoved "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    invoke-direct {p0, p1}, Landroid/mtp/MTPJNIInterface;->objectPlaRemoved(Ljava/lang/String;)V

    .line 455
    :goto_0
    return-void

    .line 453
    :cond_1
    const-string v1, "MTPJNIInterface"

    const-string/jumbo v2, "playlist file does not exist"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendkiesmessage(IILjava/lang/String;)I
    .locals 14
    .param p1, "MsgId"    # I
    .param p2, "MsgVal"    # I
    .param p3, "MsgStr"    # Ljava/lang/String;

    .prologue
    .line 1715
    const-string v11, "MTPJNIInterface"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "sendkiesmessage: MsgId=>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "MsgVal=>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " MsgStr=>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1717
    packed-switch p1, :pswitch_data_0

    .line 1782
    :pswitch_0
    new-instance v7, Landroid/content/Intent;

    const-string v11, "com.intent.action.KIES_MTP_MESSAGE"

    invoke-direct {v7, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1783
    .local v7, "intent":Landroid/content/Intent;
    const-string v11, "MsgId"

    invoke-virtual {v7, v11, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1784
    const-string v11, "MsgVal"

    move/from16 v0, p2

    invoke-virtual {v7, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1785
    const-string v11, "MsgStr"

    move-object/from16 v0, p3

    invoke-virtual {v7, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1786
    sget-object v11, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v11, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1789
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    const/4 v11, 0x1

    :goto_1
    return v11

    .line 1719
    :pswitch_1
    const-string v9, "/storage/emulated/0/DeviceLogFile"

    .line 1720
    .local v9, "logPath":Ljava/lang/String;
    move/from16 v8, p2

    .line 1721
    .local v8, "logLevel":I
    new-instance v10, Ljava/lang/Thread;

    new-instance v11, Landroid/mtp/MTPJNIInterface$3;

    invoke-direct {v11, p0, v8}, Landroid/mtp/MTPJNIInterface$3;-><init>(Landroid/mtp/MTPJNIInterface;I)V

    invoke-direct {v10, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1739
    .local v10, "thread":Ljava/lang/Thread;
    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 1742
    .end local v8    # "logLevel":I
    .end local v9    # "logPath":Ljava/lang/String;
    .end local v10    # "thread":Ljava/lang/Thread;
    :pswitch_2
    const-string v11, "MTPJNIInterface"

    const-string/jumbo v12, "send Broadcast MTP_MSGID_SIDESYNC_START"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1744
    sget-object v11, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "user_setup_complete"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-nez v11, :cond_1

    .line 1745
    const-string v11, "MTPJNIInterface"

    const-string/jumbo v12, "setup wizard is not finished, so return."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1746
    const/4 v11, 0x0

    goto :goto_1

    .line 1749
    :cond_1
    const-string/jumbo v1, "http://apps.samsung.com/appquery/appDetail.as?appId="

    .line 1750
    .local v1, "APP_STORE":Ljava/lang/String;
    const-string/jumbo v2, "samsungapps://ProductDetail/"

    .line 1751
    .local v2, "APP_STORE1":Ljava/lang/String;
    const-string v3, "com.sec.android.sidesync30"

    .line 1752
    .local v3, "SIDESYNC_PACKAGENAME":Ljava/lang/String;
    const-string/jumbo v4, "http://apps.samsung.com/appquery/appDetail.as?appId=com.sec.android.sidesync30"

    .line 1759
    .local v4, "SIDESYNC_URL":Ljava/lang/String;
    if-nez p2, :cond_2

    .line 1760
    const-string v11, "MTPJNIInterface"

    const-string v12, "Not Installed sidesync30, so start App Store."

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1761
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 1762
    .local v5, "activityIntent":Landroid/content/Intent;
    const/high16 v11, 0x10800000

    invoke-virtual {v5, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1763
    const-string v11, "android.intent.action.VIEW"

    invoke-virtual {v5, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1764
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1765
    sget-object v11, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 1767
    :try_start_0
    sget-object v11, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v11, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1768
    :catch_0
    move-exception v6

    .line 1769
    .local v6, "ex":Landroid/content/ActivityNotFoundException;
    const-string v11, "MTPJNIInterface"

    const-string v12, "Activity not found!"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1773
    .end local v5    # "activityIntent":Landroid/content/Intent;
    .end local v6    # "ex":Landroid/content/ActivityNotFoundException;
    :cond_2
    const/4 v11, 0x1

    move/from16 v0, p2

    if-ne v0, v11, :cond_3

    .line 1774
    const-string v11, "MTPJNIInterface"

    const-string v12, "Installed sidesync30, so start sidesync."

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    sget-object v11, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    new-instance v12, Landroid/content/Intent;

    const-string v13, "com.intent.action.MTP_SIDESYNC_START"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1778
    :cond_3
    const-string v11, "MTPJNIInterface"

    const-string v12, "Not supported sidesync30 device."

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1717
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 167
    sput-object p1, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    .line 168
    sget-object v0, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sput-object v0, Landroid/mtp/MTPJNIInterface;->cr:Landroid/content/ContentResolver;

    .line 169
    sget-boolean v0, Landroid/mtp/MTPJNIInterface;->RegisterBroadcast:Z

    if-nez v0, :cond_0

    .line 170
    invoke-direct {p0}, Landroid/mtp/MTPJNIInterface;->registerBroadCastRec()V

    .line 173
    :cond_0
    sget-boolean v0, Landroid/mtp/MTPJNIInterface;->RegisterBroadcast1:Z

    if-nez v0, :cond_1

    .line 174
    invoke-direct {p0}, Landroid/mtp/MTPJNIInterface;->registerBroadCastRec1()V

    .line 177
    :cond_1
    return-void
.end method

.method public setDeviceName([B)V
    .locals 5
    .param p1, "name"    # [B

    .prologue
    .line 368
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v2, "utf-8"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 369
    .local v1, "strName":Ljava/lang/String;
    const-string v2, "MTPJNIInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Modify device_name to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    sget-object v2, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "device_name"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 371
    const-string v2, "MTPJNIInterface"

    const-string v3, "DeviceName is Null in System"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    sget-object v2, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "device_name"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 380
    .end local v1    # "strName":Ljava/lang/String;
    :goto_0
    return-void

    .line 375
    .restart local v1    # "strName":Ljava/lang/String;
    :cond_0
    sget-object v2, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "device_name"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 377
    .end local v1    # "strName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 378
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 180
    sput-object p1, Landroid/mtp/MTPJNIInterface;->mHandler:Landroid/os/Handler;

    .line 181
    return-void
.end method

.method public setMediaScannerStatus(I)V
    .locals 3
    .param p1, "status"    # I

    .prologue
    .line 398
    const-string v0, "MTPJNIInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setting Media scanner status"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    sput p1, Landroid/mtp/MTPJNIInterface;->scannerStatus:I

    .line 400
    const-string v0, "MTPJNIInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "After setting Media scanner status"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    return-void
.end method

.method public setMtpEventStatus()V
    .locals 3

    .prologue
    .line 393
    const-string v0, "MTPJNIInterface"

    const-string/jumbo v1, "set ready receiving intent from media provider"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    sget-object v0, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mtp_event_status"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 395
    return-void
.end method

.method public songPresentCheck(Ljava/lang/String;)I
    .locals 8
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1348
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1349
    .local v1, "audioUri":Landroid/net/Uri;
    sget-object v0, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_data=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1350
    .local v7, "cur":Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 1351
    const-string v0, "MTPJNIInterface"

    const-string v2, "Cur is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    const/4 v0, -0x1

    .line 1359
    :goto_0
    return v0

    .line 1354
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 1355
    .local v6, "count":I
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1356
    if-lez v6, :cond_1

    .line 1357
    const/4 v0, 0x1

    goto :goto_0

    .line 1359
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public songsPathOfPlaylist(Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p1, "playlistname"    # Ljava/lang/String;

    .prologue
    .line 1364
    invoke-virtual/range {p0 .. p1}, Landroid/mtp/MTPJNIInterface;->getPlaylistId(Ljava/lang/String;)I

    move-result v13

    .line 1366
    .local v13, "rowID":I
    const-string v0, "external"

    int-to-long v4, v13

    invoke-static {v0, v4, v5}, Landroid/mtp/MTPJNIInterface$MusicPlaylist;->getMembersContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    .line 1367
    .local v1, "playlist_map":Landroid/net/Uri;
    sget-object v0, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "audio_id"

    aput-object v5, v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "playlist_id=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1368
    .local v10, "cur":Landroid/database/Cursor;
    if-nez v10, :cond_0

    .line 1369
    const-string v0, "MTPJNIInterface"

    const-string v2, "Cur is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    const/4 v14, 0x0

    .line 1407
    :goto_0
    return-object v14

    .line 1372
    :cond_0
    const/4 v12, 0x0

    .line 1373
    .local v12, "i":I
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 1374
    .local v9, "count":I
    new-array v8, v9, [I

    .line 1375
    .local v8, "audioId":[I
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1376
    :goto_1
    if-ge v12, v9, :cond_1

    .line 1378
    :try_start_0
    const-string v0, "audio_id"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aput v0, v8, v12

    .line 1379
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1380
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1382
    :catch_0
    move-exception v11

    .line 1383
    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 1384
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1385
    const/4 v14, 0x0

    goto :goto_0

    .line 1388
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1389
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1390
    .local v3, "audioUri":Landroid/net/Uri;
    const/4 v12, 0x0

    .line 1391
    const-string v14, ""

    .line 1392
    .local v14, "songsPath":Ljava/lang/String;
    :goto_2
    if-ge v12, v9, :cond_3

    .line 1393
    sget-object v0, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v5, "_data"

    aput-object v5, v4, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id=\""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v5, v8, v12

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1394
    if-nez v10, :cond_2

    .line 1395
    const-string v0, "MTPJNIInterface"

    const-string v2, "Cur is null but continue since checking for audio index"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    add-int/lit8 v12, v12, 0x1

    .line 1397
    goto :goto_2

    .line 1399
    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1400
    const-string v0, "_data"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1401
    const-string/jumbo v0, "|"

    invoke-virtual {v14, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1402
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1403
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 1405
    :cond_3
    const-string v0, "MTPJNIInterface"

    const-string v2, "MTPJNIInterface,pipe seperated Path of playlist song "

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    const-string v0, "MTPJNIInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MTPJNIInterface,pipe seperated Path of playlist song is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public updateUiState(I)V
    .locals 2
    .param p1, "notificationType"    # I

    .prologue
    .line 486
    sget-object v1, Landroid/mtp/MTPJNIInterface;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 487
    sget-object v1, Landroid/mtp/MTPJNIInterface;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 488
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 489
    sget-object v1, Landroid/mtp/MTPJNIInterface;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 491
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

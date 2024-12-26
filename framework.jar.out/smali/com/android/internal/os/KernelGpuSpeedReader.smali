.class public Lcom/android/internal/os/KernelGpuSpeedReader;
.super Ljava/lang/Object;
.source "KernelGpuSpeedReader.java"


# static fields
.field private static final MAX_SPEEDS:I = 0x3c

.field private static final TAG:Ljava/lang/String; = "KernelGpuSpeedReader"

.field private static mProcFile:Ljava/lang/String; = null

.field private static final sProcFile:Ljava/lang/String; = "/sys/devices/14ac0000.mali/time_in_state"


# instance fields
.field private mDeltaSpeedTimes:[J

.field private mLastSpeedTimes:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string v0, ""

    sput-object v0, Lcom/android/internal/os/KernelGpuSpeedReader;->mProcFile:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v1, 0x3c

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/internal/os/KernelGpuSpeedReader;->mLastSpeedTimes:[J

    .line 44
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/internal/os/KernelGpuSpeedReader;->mDeltaSpeedTimes:[J

    .line 47
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/devices/14ac0000.mali/time_in_state"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    const-string v0, "/sys/devices/14ac0000.mali/time_in_state"

    sput-object v0, Lcom/android/internal/os/KernelGpuSpeedReader;->mProcFile:Ljava/lang/String;

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/KernelGpuSpeedReader;->mDeltaSpeedTimes:[J

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    .line 50
    return-void
.end method


# virtual methods
.method public readDelta()[J
    .locals 15

    .prologue
    .line 58
    sget-object v8, Lcom/android/internal/os/KernelGpuSpeedReader;->mProcFile:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_0

    .line 59
    iget-object v8, p0, Lcom/android/internal/os/KernelGpuSpeedReader;->mDeltaSpeedTimes:[J

    .line 80
    :goto_0
    return-object v8

    .line 62
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    const-string v9, "/sys/devices/14ac0000.mali/time_in_state"

    invoke-direct {v8, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .local v2, "reader":Ljava/io/BufferedReader;
    const/4 v9, 0x0

    .line 63
    :try_start_1
    new-instance v4, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v8, 0x20

    invoke-direct {v4, v8}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 65
    .local v4, "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    const/4 v3, 0x0

    .line 66
    .local v3, "speedIndex":I
    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 67
    invoke-virtual {v4, v1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v4}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 71
    invoke-virtual {v4}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    const-wide/16 v12, 0xa

    mul-long v6, v10, v12

    .line 72
    .local v6, "time":J
    iget-object v8, p0, Lcom/android/internal/os/KernelGpuSpeedReader;->mDeltaSpeedTimes:[J

    iget-object v10, p0, Lcom/android/internal/os/KernelGpuSpeedReader;->mLastSpeedTimes:[J

    aget-wide v10, v10, v3

    sub-long v10, v6, v10

    aput-wide v10, v8, v3

    .line 73
    iget-object v8, p0, Lcom/android/internal/os/KernelGpuSpeedReader;->mLastSpeedTimes:[J

    aput-wide v6, v8, v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 74
    add-int/lit8 v3, v3, 0x1

    .line 75
    goto :goto_1

    .line 76
    .end local v6    # "time":J
    :cond_1
    if-eqz v2, :cond_2

    if-eqz v9, :cond_3

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 80
    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local v3    # "speedIndex":I
    .end local v4    # "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    :cond_2
    :goto_2
    iget-object v8, p0, Lcom/android/internal/os/KernelGpuSpeedReader;->mDeltaSpeedTimes:[J

    goto :goto_0

    .line 76
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "speedIndex":I
    .restart local v4    # "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    :catch_0
    move-exception v5

    .local v5, "x2":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v9, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local v3    # "speedIndex":I
    .end local v4    # "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    .end local v5    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 77
    .local v0, "e":Ljava/io/IOException;
    const-string v8, "KernelGpuSpeedReader"

    const-string v9, "Failed to read gpu-freq"

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    iget-object v8, p0, Lcom/android/internal/os/KernelGpuSpeedReader;->mDeltaSpeedTimes:[J

    const-wide/16 v10, 0x0

    invoke-static {v8, v10, v11}, Ljava/util/Arrays;->fill([JJ)V

    goto :goto_2

    .line 76
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "speedIndex":I
    .restart local v4    # "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    :cond_3
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 62
    .end local v1    # "line":Ljava/lang/String;
    .end local v3    # "speedIndex":I
    .end local v4    # "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    :catch_2
    move-exception v8

    :try_start_5
    throw v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 76
    :catchall_0
    move-exception v9

    move-object v14, v9

    move-object v9, v8

    move-object v8, v14

    :goto_3
    if-eqz v2, :cond_4

    if-eqz v9, :cond_5

    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_4
    :goto_4
    :try_start_7
    throw v8

    :catch_3
    move-exception v5

    .restart local v5    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v9, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    .end local v5    # "x2":Ljava/lang/Throwable;
    :cond_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_4

    :catchall_1
    move-exception v8

    goto :goto_3
.end method

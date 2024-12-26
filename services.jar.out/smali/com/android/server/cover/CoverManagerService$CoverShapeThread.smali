.class public Lcom/android/server/cover/CoverManagerService$CoverShapeThread;
.super Ljava/lang/Thread;
.source "CoverManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cover/CoverManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CoverShapeThread"
.end annotation


# static fields
.field private static final CMD_DELAY_TIME:I = 0x5

.field private static final NUM_FOR_CMD_DATA:I = 0x8

.field private static final SMART_COVER_CMD:Ljava/lang/String; = "smartcover_cmd"

.field private static final SMART_COVER_CMD_CHANGE:Ljava/lang/String; = "6"

.field private static final SMART_COVER_CMD_CLEAR:Ljava/lang/String; = "4"

.field private static final SMART_COVER_CMD_MODEON:Ljava/lang/String; = "3"

.field private static final SMART_COVER_CMD_WRITE:Ljava/lang/String; = "5"

.field private static final SYSFS_TSP_CMD:Ljava/lang/String; = "/sys/class/sec/tsp/cmd"


# instance fields
.field mCoverHeight:I

.field mCoverShapeArray:[B

.field mCoverWidth:I

.field mPreDefArray:[I

.field final synthetic this$0:Lcom/android/server/cover/CoverManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/cover/CoverManagerService;[BII)V
    .locals 2
    .param p2, "coverShape"    # [B
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    const/4 v0, 0x0

    .line 1080
    iput-object p1, p0, Lcom/android/server/cover/CoverManagerService$CoverShapeThread;->this$0:Lcom/android/server/cover/CoverManagerService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1066
    iput v0, p0, Lcom/android/server/cover/CoverManagerService$CoverShapeThread;->mCoverWidth:I

    .line 1067
    iput v0, p0, Lcom/android/server/cover/CoverManagerService$CoverShapeThread;->mCoverHeight:I

    .line 1068
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService$CoverShapeThread;->mCoverShapeArray:[B

    .line 1069
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService$CoverShapeThread;->mPreDefArray:[I

    .line 1081
    const-string v0, "CoverManager"

    const-string v1, "CoverShapeThread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    iput-object p2, p0, Lcom/android/server/cover/CoverManagerService$CoverShapeThread;->mCoverShapeArray:[B

    .line 1083
    iput p3, p0, Lcom/android/server/cover/CoverManagerService$CoverShapeThread;->mCoverWidth:I

    .line 1084
    iput p4, p0, Lcom/android/server/cover/CoverManagerService$CoverShapeThread;->mCoverHeight:I

    .line 1085
    return-void

    .line 1069
    :array_0
    .array-data 4
        0x80
        0x40
        0x20
        0x10
        0x8
        0x4
        0x2
        0x1
    .end array-data
.end method

.method private getShapeCmdData(I)I
    .locals 4
    .param p1, "startIndex"    # I

    .prologue
    .line 1123
    const/4 v1, 0x0

    .line 1124
    .local v1, "shapeCmdData":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x8

    if-ge v0, v2, :cond_1

    .line 1125
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService$CoverShapeThread;->mCoverShapeArray:[B

    add-int v3, p1, v0

    aget-byte v2, v2, v3

    if-eqz v2, :cond_0

    .line 1126
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService$CoverShapeThread;->mPreDefArray:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    .line 1124
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1129
    :cond_1
    return v1
.end method

.method private sleepForCmdDelay(I)V
    .locals 2
    .param p1, "delay"    # I

    .prologue
    .line 1134
    int-to-long v0, p1

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1136
    :goto_0
    return-void

    .line 1135
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "sysfs"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1139
    const/4 v2, 0x0

    .line 1142
    .local v2, "out":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1147
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 1148
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1158
    const/4 v4, 0x1

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :goto_0
    return v4

    .line 1143
    :catch_0
    move-exception v0

    .line 1144
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1149
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 1150
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1152
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 1153
    :catch_2
    move-exception v1

    .line 1154
    .local v1, "err":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1149
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    .line 1088
    const-string v6, "CoverManager"

    const-string v7, "CoverShapeThread : run"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    iget v6, p0, Lcom/android/server/cover/CoverManagerService$CoverShapeThread;->mCoverWidth:I

    div-int/lit8 v3, v6, 0x8

    .line 1090
    .local v3, "numShapeCmdDataPerRow":I
    const/4 v0, 0x0

    .line 1093
    .local v0, "checkZero":I
    const-string v6, "/sys/class/sec/tsp/cmd"

    const-string/jumbo v7, "smartcover_cmd,4"

    invoke-direct {p0, v6, v7}, Lcom/android/server/cover/CoverManagerService$CoverShapeThread;->sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1094
    const-string v6, "CoverManager"

    const-string v7, "CoverShapeThread : run : smartcover_cmd,4"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    invoke-direct {p0, v9}, Lcom/android/server/cover/CoverManagerService$CoverShapeThread;->sleepForCmdDelay(I)V

    .line 1098
    const/4 v5, 0x0

    .line 1099
    .local v5, "value":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    iget v6, p0, Lcom/android/server/cover/CoverManagerService$CoverShapeThread;->mCoverHeight:I

    if-ge v2, v6, :cond_2

    .line 1100
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "smartcover_cmd,5,"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1101
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 1102
    iget v6, p0, Lcom/android/server/cover/CoverManagerService$CoverShapeThread;->mCoverWidth:I

    mul-int/2addr v6, v2

    mul-int/lit8 v7, v1, 0x8

    add-int/2addr v6, v7

    invoke-direct {p0, v6}, Lcom/android/server/cover/CoverManagerService$CoverShapeThread;->getShapeCmdData(I)I

    move-result v4

    .line 1103
    .local v4, "shapeCmdData":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1104
    add-int/2addr v0, v4

    .line 1101
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1107
    .end local v4    # "shapeCmdData":I
    :cond_0
    if-eqz v0, :cond_1

    .line 1108
    const-string v6, "/sys/class/sec/tsp/cmd"

    invoke-direct {p0, v6, v5}, Lcom/android/server/cover/CoverManagerService$CoverShapeThread;->sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1109
    const-string v6, "CoverManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CoverShapeThread : run : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    const/4 v0, 0x0

    .line 1113
    :cond_1
    invoke-direct {p0, v9}, Lcom/android/server/cover/CoverManagerService$CoverShapeThread;->sleepForCmdDelay(I)V

    .line 1099
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1117
    .end local v1    # "i":I
    :cond_2
    const-string v6, "/sys/class/sec/tsp/cmd"

    const-string/jumbo v7, "smartcover_cmd,6"

    invoke-direct {p0, v6, v7}, Lcom/android/server/cover/CoverManagerService$CoverShapeThread;->sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1118
    const-string v6, "CoverManager"

    const-string v7, "CoverShapeThread : run : smartcover_cmd,6"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    invoke-direct {p0, v9}, Lcom/android/server/cover/CoverManagerService$CoverShapeThread;->sleepForCmdDelay(I)V

    .line 1120
    return-void
.end method

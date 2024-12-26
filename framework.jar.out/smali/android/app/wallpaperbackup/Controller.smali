.class public Landroid/app/wallpaperbackup/Controller;
.super Ljava/lang/Object;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/wallpaperbackup/Controller$REQ_SIZE;,
        Landroid/app/wallpaperbackup/Controller$ERR_CODE;,
        Landroid/app/wallpaperbackup/Controller$RESULT;
    }
.end annotation


# static fields
.field public static ERROR_KEY:Ljava/lang/String; = null

.field public static EXTRA_ACTION:Ljava/lang/String; = null

.field public static EXTRA_EXPORT_SESSION_TIME:Ljava/lang/String; = null

.field public static EXTRA_SAVE_PATH:Ljava/lang/String; = null

.field public static EXTRA_SECURITY_LEVEL:Ljava/lang/String; = null

.field private static final IMAGE_FILE_NAME:Ljava/lang/String; = "wallpaper.png"

.field private static final IMAGE_FILE_NAME_SIM2:Ljava/lang/String; = "wallpaper2.png"

.field public static final REQUEST_BACKUP_WALLPAPER:Ljava/lang/String; = "android.intent.action.REQUEST_BACKUP_WALLPAPER"

.field public static final REQUEST_RESTORE_WALLPAPER:Ljava/lang/String; = "android.intent.action.REQUEST_RESTORE_WALLPAPER"

.field private static REQUIRED_SIZE:J = 0x0L

.field public static REQUIRED_SIZE_KEY:Ljava/lang/String; = null

.field public static final RESPONSE_BACKUP_WALLPAPER:Ljava/lang/String; = "android.intent.action.RESPONSE_BACKUP_WALLPAPER"

.field public static final RESPONSE_RESTORE_WALLPAPER:Ljava/lang/String; = "android.intent.action.RESPONSE_RESTORE_WALLPAPER"

.field public static RESULT_KEY:Ljava/lang/String; = null

.field public static SOURCE_KEY:Ljava/lang/String; = null

.field public static final TAG:Ljava/lang/String; = "XMl_BNR_APK_REV"

.field private static final WALLPAPER_PATH:Ljava/lang/String; = "wallpaper"


# instance fields
.field private cipher:Ljavax/crypto/Cipher;

.field private mComponent:Ljava/lang/String;

.field private mErrorCode:Landroid/app/wallpaperbackup/Controller$ERR_CODE;

.field private mHeight:I

.field private mIsSecurityLevel:I

.field private mRequiredSize:Landroid/app/wallpaperbackup/Controller$REQ_SIZE;

.field private mResult:Landroid/app/wallpaperbackup/Controller$RESULT;

.field private mSuperKey:Ljava/lang/String;

.field private mWidth:I

.field private salt:[B

.field private secretKey:Ljavax/crypto/spec/SecretKeySpec;

.field private wallpaperImagePath:Ljava/lang/String;

.field private wallpaperUserFileName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 62
    const-string v0, "SAVE_PATH"

    sput-object v0, Landroid/app/wallpaperbackup/Controller;->EXTRA_SAVE_PATH:Ljava/lang/String;

    .line 63
    const-string v0, "EXPORT_SESSION_TIME"

    sput-object v0, Landroid/app/wallpaperbackup/Controller;->EXTRA_EXPORT_SESSION_TIME:Ljava/lang/String;

    .line 64
    const-string v0, "ACTION"

    sput-object v0, Landroid/app/wallpaperbackup/Controller;->EXTRA_ACTION:Ljava/lang/String;

    .line 65
    const-string v0, "SECURITY_LEVEL"

    sput-object v0, Landroid/app/wallpaperbackup/Controller;->EXTRA_SECURITY_LEVEL:Ljava/lang/String;

    .line 67
    const-string v0, "RESULT"

    sput-object v0, Landroid/app/wallpaperbackup/Controller;->RESULT_KEY:Ljava/lang/String;

    .line 68
    const-string v0, "ERR_CODE"

    sput-object v0, Landroid/app/wallpaperbackup/Controller;->ERROR_KEY:Ljava/lang/String;

    .line 69
    const-string v0, "REQ_SIZE"

    sput-object v0, Landroid/app/wallpaperbackup/Controller;->REQUIRED_SIZE_KEY:Ljava/lang/String;

    .line 70
    const-string v0, "SOURCE"

    sput-object v0, Landroid/app/wallpaperbackup/Controller;->SOURCE_KEY:Ljava/lang/String;

    .line 85
    const-wide/32 v0, 0xa00000

    sput-wide v0, Landroid/app/wallpaperbackup/Controller;->REQUIRED_SIZE:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const-string v0, ""

    iput-object v0, p0, Landroid/app/wallpaperbackup/Controller;->wallpaperUserFileName:Ljava/lang/String;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Landroid/app/wallpaperbackup/Controller;->wallpaperImagePath:Ljava/lang/String;

    .line 75
    sget-object v0, Landroid/app/wallpaperbackup/Controller$RESULT;->FAIL:Landroid/app/wallpaperbackup/Controller$RESULT;

    iput-object v0, p0, Landroid/app/wallpaperbackup/Controller;->mResult:Landroid/app/wallpaperbackup/Controller$RESULT;

    .line 76
    sget-object v0, Landroid/app/wallpaperbackup/Controller$ERR_CODE;->UNKNOWN_ERROR:Landroid/app/wallpaperbackup/Controller$ERR_CODE;

    iput-object v0, p0, Landroid/app/wallpaperbackup/Controller;->mErrorCode:Landroid/app/wallpaperbackup/Controller$ERR_CODE;

    .line 77
    sget-object v0, Landroid/app/wallpaperbackup/Controller$REQ_SIZE;->MINIMUM_SIZE:Landroid/app/wallpaperbackup/Controller$REQ_SIZE;

    iput-object v0, p0, Landroid/app/wallpaperbackup/Controller;->mRequiredSize:Landroid/app/wallpaperbackup/Controller$REQ_SIZE;

    .line 81
    const-string v0, ""

    iput-object v0, p0, Landroid/app/wallpaperbackup/Controller;->mComponent:Ljava/lang/String;

    .line 481
    return-void
.end method

.method private createBackupFiles(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "basePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 182
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "wallpaper.xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/app/wallpaperbackup/Controller;->wallpaperUserFileName:Ljava/lang/String;

    .line 184
    invoke-direct {p0, p2}, Landroid/app/wallpaperbackup/Controller;->getBackupWallpaperImageFilesPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, "imageNameWithPath":Ljava/lang/String;
    invoke-direct {p0}, Landroid/app/wallpaperbackup/Controller;->getBackupWallpaperImageName()Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "imageName":Ljava/lang/String;
    iget-object v3, p0, Landroid/app/wallpaperbackup/Controller;->wallpaperUserFileName:Ljava/lang/String;

    invoke-direct {p0, v3}, Landroid/app/wallpaperbackup/Controller;->deleteFiles(Ljava/lang/String;)V

    .line 187
    invoke-direct {p0, v1}, Landroid/app/wallpaperbackup/Controller;->deleteFiles(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0, p1, v1}, Landroid/app/wallpaperbackup/Controller;->getWallpaperDimensions(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 190
    .local v2, "wallpaperType":Z
    if-eqz v2, :cond_0

    .line 191
    invoke-direct {p0, v0, p2}, Landroid/app/wallpaperbackup/Controller;->createBackupWallpaperXmlFiles(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :cond_0
    return v2
.end method

.method private createBackupFilesForMultiSim(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "basePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 198
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "wallpaper.xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/app/wallpaperbackup/Controller;->wallpaperUserFileName:Ljava/lang/String;

    .line 200
    invoke-direct {p0, p2}, Landroid/app/wallpaperbackup/Controller;->getBackupWallpaperImageFilesPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, "imageNameWithPath":Ljava/lang/String;
    invoke-direct {p0, p2}, Landroid/app/wallpaperbackup/Controller;->getBackupWallpaperImageFilesPathSim2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 202
    .local v2, "imageNameWithPathSim2":Ljava/lang/String;
    invoke-direct {p0}, Landroid/app/wallpaperbackup/Controller;->getBackupWallpaperImageName()Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "imageName":Ljava/lang/String;
    iget-object v6, p0, Landroid/app/wallpaperbackup/Controller;->wallpaperUserFileName:Ljava/lang/String;

    invoke-direct {p0, v6}, Landroid/app/wallpaperbackup/Controller;->deleteFiles(Ljava/lang/String;)V

    .line 204
    invoke-direct {p0, v1}, Landroid/app/wallpaperbackup/Controller;->deleteFiles(Ljava/lang/String;)V

    .line 205
    invoke-direct {p0, v2}, Landroid/app/wallpaperbackup/Controller;->deleteFiles(Ljava/lang/String;)V

    .line 207
    const/4 v5, 0x0

    .line 209
    .local v5, "wallpaperType":Z
    const-string/jumbo v6, "gsm.sim.state"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 210
    .local v4, "simStateString":Ljava/lang/String;
    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 211
    .local v3, "simState":[Ljava/lang/String;
    aget-object v6, v3, v8

    const-string v7, "ABSENT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    aget-object v6, v3, v9

    const-string v7, "ABSENT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 212
    invoke-virtual {p0, p1, v1, v8}, Landroid/app/wallpaperbackup/Controller;->getWallpaperDimensionsForMultiSim(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v5

    .line 213
    if-eqz v5, :cond_0

    .line 214
    invoke-virtual {p0, p1, v2, v9}, Landroid/app/wallpaperbackup/Controller;->getWallpaperDimensionsForMultiSim(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v5

    .line 220
    :cond_0
    :goto_0
    if-eqz v5, :cond_1

    .line 221
    invoke-direct {p0, v0, p2}, Landroid/app/wallpaperbackup/Controller;->createBackupWallpaperXmlFiles(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :cond_1
    return v5

    .line 217
    :cond_2
    invoke-virtual {p0, p1, v1}, Landroid/app/wallpaperbackup/Controller;->getWallpaperDimensions(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    goto :goto_0
.end method

.method private createBackupWallpaperXmlFiles(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "imageName"    # Ljava/lang/String;
    .param p2, "basePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 344
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 345
    .local v6, "userList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/wallpaperbackup/WallpaperUserPOJO;>;"
    new-instance v0, Landroid/app/wallpaperbackup/WallpaperUserPOJO;

    iget v1, p0, Landroid/app/wallpaperbackup/Controller;->mWidth:I

    iget v2, p0, Landroid/app/wallpaperbackup/Controller;->mHeight:I

    iget-object v4, p0, Landroid/app/wallpaperbackup/Controller;->mComponent:Ljava/lang/String;

    const/16 v5, 0x65

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Landroid/app/wallpaperbackup/WallpaperUserPOJO;-><init>(IILjava/lang/String;Ljava/lang/String;I)V

    .line 346
    .local v0, "object":Landroid/app/wallpaperbackup/WallpaperUserPOJO;
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    new-instance v1, Landroid/app/wallpaperbackup/GenerateXMLForWallpaperUser;

    invoke-direct {v1, v6, p2}, Landroid/app/wallpaperbackup/GenerateXMLForWallpaperUser;-><init>(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 349
    return-void
.end method

.method private deleteFiles(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 159
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 161
    .local v1, "sd":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 162
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    .end local v1    # "sd":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getBackupWallpaperImageFilesPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "basePath"    # Ljava/lang/String;

    .prologue
    .line 352
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "wallpaper"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "wallpaper.png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/wallpaperbackup/Controller;->wallpaperImagePath:Ljava/lang/String;

    .line 353
    iget-object v0, p0, Landroid/app/wallpaperbackup/Controller;->wallpaperImagePath:Ljava/lang/String;

    .line 354
    .local v0, "imageName":Ljava/lang/String;
    return-object v0
.end method

.method private getBackupWallpaperImageFilesPathSim2(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "basePath"    # Ljava/lang/String;

    .prologue
    .line 358
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "wallpaper"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "wallpaper2.png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/wallpaperbackup/Controller;->wallpaperImagePath:Ljava/lang/String;

    .line 359
    iget-object v0, p0, Landroid/app/wallpaperbackup/Controller;->wallpaperImagePath:Ljava/lang/String;

    .line 360
    .local v0, "imageName":Ljava/lang/String;
    return-object v0
.end method

.method private getBackupWallpaperImageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    const-string/jumbo v0, "wallpaper/wallpaper.png"

    .line 229
    .local v0, "mImageName":Ljava/lang/String;
    return-object v0
.end method

.method private getRestoreWallpaperImageFilesPath(Ljava/lang/String;Landroid/app/wallpaperbackup/WallpaperUserPOJO;)Ljava/lang/String;
    .locals 3
    .param p1, "basePath"    # Ljava/lang/String;
    .param p2, "recItem"    # Landroid/app/wallpaperbackup/WallpaperUserPOJO;

    .prologue
    .line 364
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/app/wallpaperbackup/WallpaperUserPOJO;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/wallpaperbackup/Controller;->wallpaperImagePath:Ljava/lang/String;

    .line 365
    iget-object v0, p0, Landroid/app/wallpaperbackup/Controller;->wallpaperImagePath:Ljava/lang/String;

    .line 366
    .local v0, "imageName":Ljava/lang/String;
    return-object v0
.end method

.method private hasFile(Ljava/lang/String;)Z
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 171
    const/4 v1, 0x0

    .line 172
    .local v1, "result":Z
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 173
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    const/4 v1, 0x1

    .line 178
    :goto_0
    return v1

    .line 176
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isWallpaperUserFileExists()Z
    .locals 2

    .prologue
    .line 339
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/app/wallpaperbackup/Controller;->wallpaperUserFileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 340
    .local v0, "appsFileWallpaperUser":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method


# virtual methods
.method public decryptStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 5
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 553
    const-string v2, "AES/CBC/PKCS5Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    iput-object v2, p0, Landroid/app/wallpaperbackup/Controller;->cipher:Ljavax/crypto/Cipher;

    .line 555
    iget-object v2, p0, Landroid/app/wallpaperbackup/Controller;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v2}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v2

    new-array v0, v2, [B

    .line 556
    .local v0, "iv":[B
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    .line 557
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 559
    .local v1, "ivSpec":Ljava/security/spec/AlgorithmParameterSpec;
    iget v2, p0, Landroid/app/wallpaperbackup/Controller;->mIsSecurityLevel:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 560
    const/16 v2, 0x10

    new-array v2, v2, [B

    iput-object v2, p0, Landroid/app/wallpaperbackup/Controller;->salt:[B

    .line 561
    iget-object v2, p0, Landroid/app/wallpaperbackup/Controller;->salt:[B

    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    .line 562
    invoke-virtual {p0}, Landroid/app/wallpaperbackup/Controller;->generatePBKDF2SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v2

    iput-object v2, p0, Landroid/app/wallpaperbackup/Controller;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    .line 567
    :goto_0
    iget-object v2, p0, Landroid/app/wallpaperbackup/Controller;->cipher:Ljavax/crypto/Cipher;

    const/4 v3, 0x2

    iget-object v4, p0, Landroid/app/wallpaperbackup/Controller;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v2, v3, v4, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 568
    new-instance v2, Ljavax/crypto/CipherInputStream;

    iget-object v3, p0, Landroid/app/wallpaperbackup/Controller;->cipher:Ljavax/crypto/Cipher;

    invoke-direct {v2, p1, v3}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    return-object v2

    .line 564
    :cond_0
    invoke-virtual {p0}, Landroid/app/wallpaperbackup/Controller;->generateSHA256SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v2

    iput-object v2, p0, Landroid/app/wallpaperbackup/Controller;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    goto :goto_0
.end method

.method public drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v5, 0x0

    .line 439
    instance-of v2, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    .line 440
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 448
    :goto_0
    return-object v0

    .line 443
    .restart local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 444
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 445
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual {p1, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 446
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public encryptStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 530
    const-string v2, "AES/CBC/PKCS5Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    iput-object v2, p0, Landroid/app/wallpaperbackup/Controller;->cipher:Ljavax/crypto/Cipher;

    .line 532
    iget-object v2, p0, Landroid/app/wallpaperbackup/Controller;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v2}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v2

    new-array v0, v2, [B

    .line 533
    .local v0, "iv":[B
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 534
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 535
    .local v1, "spec":Ljava/security/spec/AlgorithmParameterSpec;
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 537
    iget v2, p0, Landroid/app/wallpaperbackup/Controller;->mIsSecurityLevel:I

    if-ne v2, v4, :cond_0

    .line 538
    invoke-virtual {p0}, Landroid/app/wallpaperbackup/Controller;->generateEncryptSalt()[B

    move-result-object v2

    iput-object v2, p0, Landroid/app/wallpaperbackup/Controller;->salt:[B

    .line 539
    iget-object v2, p0, Landroid/app/wallpaperbackup/Controller;->salt:[B

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 540
    invoke-virtual {p0}, Landroid/app/wallpaperbackup/Controller;->generatePBKDF2SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v2

    iput-object v2, p0, Landroid/app/wallpaperbackup/Controller;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    .line 546
    :goto_0
    iget-object v2, p0, Landroid/app/wallpaperbackup/Controller;->cipher:Ljavax/crypto/Cipher;

    iget-object v3, p0, Landroid/app/wallpaperbackup/Controller;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v2, v4, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 547
    new-instance v2, Ljavax/crypto/CipherOutputStream;

    iget-object v3, p0, Landroid/app/wallpaperbackup/Controller;->cipher:Ljavax/crypto/Cipher;

    invoke-direct {v2, p1, v3}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    return-object v2

    .line 543
    :cond_0
    invoke-virtual {p0}, Landroid/app/wallpaperbackup/Controller;->generateSHA256SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v2

    iput-object v2, p0, Landroid/app/wallpaperbackup/Controller;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    goto :goto_0
.end method

.method public generateEncryptSalt()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 510
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 511
    .local v1, "sr":Ljava/security/SecureRandom;
    const/16 v2, 0x10

    new-array v0, v2, [B

    .line 512
    .local v0, "salt":[B
    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 513
    return-object v0
.end method

.method public generatePBKDF2SecretKey()Ljavax/crypto/spec/SecretKeySpec;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .prologue
    .line 518
    const/16 v1, 0x3e8

    .line 519
    .local v1, "iterationCount":I
    const/16 v4, 0x100

    .line 521
    .local v4, "keyLength":I
    iget-object v6, p0, Landroid/app/wallpaperbackup/Controller;->mSuperKey:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 522
    .local v0, "chars":[C
    const-string v6, "PBKDF2WithHmacSHA1"

    invoke-static {v6}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v3

    .line 523
    .local v3, "keyFactory":Ljavax/crypto/SecretKeyFactory;
    new-instance v5, Ljavax/crypto/spec/PBEKeySpec;

    iget-object v6, p0, Landroid/app/wallpaperbackup/Controller;->salt:[B

    invoke-direct {v5, v0, v6, v1, v4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 524
    .local v5, "keySpec":Ljavax/crypto/spec/PBEKeySpec;
    invoke-virtual {v3, v5}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v2

    .line 525
    .local v2, "key":Ljavax/crypto/SecretKey;
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {v2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v7

    const-string v8, "AES"

    invoke-direct {v6, v7, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v6
.end method

.method public generateSHA256SecretKey()Ljavax/crypto/spec/SecretKeySpec;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 501
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 502
    .local v0, "digest":Ljava/security/MessageDigest;
    iget-object v2, p0, Landroid/app/wallpaperbackup/Controller;->mSuperKey:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 503
    const/16 v2, 0x10

    new-array v1, v2, [B

    .line 504
    .local v1, "keyBytes":[B
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    array-length v3, v1

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 506
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v2
.end method

.method public getWallpaperDimensions(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageNamePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 371
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v3

    .line 372
    .local v3, "wallpaperManager":Landroid/app/WallpaperManager;
    invoke-virtual {v3}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 374
    .local v2, "wallpaperDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v0, 0x0

    .line 375
    .local v0, "image":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_0

    .line 376
    invoke-virtual {p0, v2}, Landroid/app/wallpaperbackup/Controller;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 379
    :cond_0
    invoke-virtual {v3}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v4

    .line 380
    .local v4, "wpi":Landroid/app/WallpaperInfo;
    if-nez v4, :cond_2

    .line 381
    if-eqz v0, :cond_1

    .line 382
    invoke-virtual {p0, p2, v0}, Landroid/app/wallpaperbackup/Controller;->saveBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 383
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iput v5, p0, Landroid/app/wallpaperbackup/Controller;->mWidth:I

    .line 384
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iput v5, p0, Landroid/app/wallpaperbackup/Controller;->mHeight:I

    .line 386
    :cond_1
    const/4 v1, 0x1

    .line 389
    .local v1, "returnValue":Z
    :goto_0
    return v1

    .line 388
    .end local v1    # "returnValue":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "returnValue":Z
    goto :goto_0
.end method

.method public getWallpaperDimensionsForMultiSim(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageNamePath"    # Ljava/lang/String;
    .param p3, "simSlot"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 395
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    .line 396
    .local v2, "wallpaperManager":Landroid/app/WallpaperManager;
    invoke-virtual {v2, p3}, Landroid/app/WallpaperManager;->getBitmapForMultiSim(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 398
    .local v0, "image":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v3

    .line 399
    .local v3, "wpi":Landroid/app/WallpaperInfo;
    if-nez v3, :cond_1

    .line 400
    invoke-virtual {p0, p2, v0}, Landroid/app/wallpaperbackup/Controller;->saveBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 401
    if-nez p3, :cond_0

    .line 402
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iput v4, p0, Landroid/app/wallpaperbackup/Controller;->mWidth:I

    .line 403
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iput v4, p0, Landroid/app/wallpaperbackup/Controller;->mHeight:I

    .line 405
    :cond_0
    const/4 v1, 0x1

    .line 409
    .local v1, "returnValue":Z
    :goto_0
    return v1

    .line 408
    .end local v1    # "returnValue":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "returnValue":Z
    goto :goto_0
.end method

.method public pushRestoreFiles(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "basePath"    # Ljava/lang/String;
    .param p3, "securityLevel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 269
    invoke-direct {p0}, Landroid/app/wallpaperbackup/Controller;->isWallpaperUserFileExists()Z

    move-result v13

    if-eqz v13, :cond_c

    .line 270
    new-instance v3, Landroid/app/wallpaperbackup/LiveChange;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Landroid/app/wallpaperbackup/LiveChange;-><init>(Landroid/content/Context;)V

    .line 271
    .local v3, "liveChange":Landroid/app/wallpaperbackup/LiveChange;
    new-instance v12, Landroid/app/wallpaperbackup/WallpaperXmlParser;

    iget-object v13, p0, Landroid/app/wallpaperbackup/Controller;->wallpaperUserFileName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-direct {v12, v0, v13}, Landroid/app/wallpaperbackup/WallpaperXmlParser;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 272
    .local v12, "wallpaperParser":Landroid/app/wallpaperbackup/WallpaperXmlParser;
    invoke-virtual {v12}, Landroid/app/wallpaperbackup/WallpaperXmlParser;->getObject()Landroid/app/wallpaperbackup/WallpaperUserPOJO;

    move-result-object v4

    .line 273
    .local v4, "mItem":Landroid/app/wallpaperbackup/WallpaperUserPOJO;
    invoke-static/range {p1 .. p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v11

    .line 275
    .local v11, "wallpaperManager":Landroid/app/WallpaperManager;
    const/4 v8, 0x0

    .line 276
    .local v8, "stream":Ljava/io/InputStream;
    const/4 v9, 0x0

    .line 277
    .local v9, "streamSim2":Ljava/io/InputStream;
    const/4 v13, 0x1

    move/from16 v0, p3

    if-ne v0, v13, :cond_4

    .line 278
    new-instance v13, Ljava/io/FileInputStream;

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v4}, Landroid/app/wallpaperbackup/Controller;->getRestoreWallpaperImageFilesPath(Ljava/lang/String;Landroid/app/wallpaperbackup/WallpaperUserPOJO;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v13}, Landroid/app/wallpaperbackup/Controller;->decryptStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v8

    .line 283
    :goto_0
    if-eqz v8, :cond_b

    .line 285
    :try_start_0
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v13

    const/4 v14, 0x1

    if-le v13, v14, :cond_9

    .line 288
    const-string/jumbo v13, "gsm.sim.state"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 289
    .local v7, "simStateString":Ljava/lang/String;
    const-string v13, ","

    invoke-virtual {v7, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 290
    .local v6, "simState":[Ljava/lang/String;
    const-string/jumbo v13, "ril.MSIMM"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 292
    .local v5, "simSlot":Ljava/lang/String;
    const/4 v13, 0x0

    aget-object v13, v6, v13

    const-string v14, "ABSENT"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    const/4 v13, 0x1

    aget-object v13, v6, v13

    const-string v14, "ABSENT"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    :cond_0
    const-string v13, "1"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_8

    .line 293
    :cond_1
    const/4 v13, 0x0

    invoke-virtual {v11, v8, v13}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;I)V

    .line 295
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Landroid/app/wallpaperbackup/Controller;->getBackupWallpaperImageFilesPathSim2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 296
    .local v2, "imageNameWithPathSim2":Ljava/lang/String;
    invoke-direct {p0, v2}, Landroid/app/wallpaperbackup/Controller;->hasFile(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 297
    const/4 v13, 0x1

    move/from16 v0, p3

    if-ne v0, v13, :cond_5

    .line 298
    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v13}, Landroid/app/wallpaperbackup/Controller;->decryptStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v9

    .line 310
    :goto_1
    if-eqz v9, :cond_2

    .line 311
    const/4 v13, 0x1

    invoke-virtual {v11, v9, v13}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    .end local v2    # "imageNameWithPathSim2":Ljava/lang/String;
    .end local v5    # "simSlot":Ljava/lang/String;
    .end local v6    # "simState":[Ljava/lang/String;
    .end local v7    # "simStateString":Ljava/lang/String;
    :cond_2
    :goto_2
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 323
    if-eqz v9, :cond_3

    .line 324
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 336
    :cond_3
    :goto_3
    return-void

    .line 280
    :cond_4
    new-instance v8, Ljava/io/FileInputStream;

    .end local v8    # "stream":Ljava/io/InputStream;
    move-object/from16 v0, p2

    invoke-direct {p0, v0, v4}, Landroid/app/wallpaperbackup/Controller;->getRestoreWallpaperImageFilesPath(Ljava/lang/String;Landroid/app/wallpaperbackup/WallpaperUserPOJO;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v8, v13}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .restart local v8    # "stream":Ljava/io/InputStream;
    goto :goto_0

    .line 300
    .restart local v2    # "imageNameWithPathSim2":Ljava/lang/String;
    .restart local v5    # "simSlot":Ljava/lang/String;
    .restart local v6    # "simState":[Ljava/lang/String;
    .restart local v7    # "simStateString":Ljava/lang/String;
    :cond_5
    :try_start_1
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .end local v9    # "streamSim2":Ljava/io/InputStream;
    .local v10, "streamSim2":Ljava/io/InputStream;
    move-object v9, v10

    .end local v10    # "streamSim2":Ljava/io/InputStream;
    .restart local v9    # "streamSim2":Ljava/io/InputStream;
    goto :goto_1

    .line 303
    :cond_6
    const/4 v13, 0x1

    move/from16 v0, p3

    if-ne v0, v13, :cond_7

    .line 304
    new-instance v13, Ljava/io/FileInputStream;

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v4}, Landroid/app/wallpaperbackup/Controller;->getRestoreWallpaperImageFilesPath(Ljava/lang/String;Landroid/app/wallpaperbackup/WallpaperUserPOJO;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v13}, Landroid/app/wallpaperbackup/Controller;->decryptStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v9

    goto :goto_1

    .line 306
    :cond_7
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .end local v9    # "streamSim2":Ljava/io/InputStream;
    .restart local v10    # "streamSim2":Ljava/io/InputStream;
    move-object v9, v10

    .end local v10    # "streamSim2":Ljava/io/InputStream;
    .restart local v9    # "streamSim2":Ljava/io/InputStream;
    goto :goto_1

    .line 314
    .end local v2    # "imageNameWithPathSim2":Ljava/lang/String;
    :cond_8
    invoke-virtual {v11, v8}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 319
    .end local v5    # "simSlot":Ljava/lang/String;
    .end local v6    # "simState":[Ljava/lang/String;
    .end local v7    # "simStateString":Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 322
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 323
    if-eqz v9, :cond_3

    .line 324
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    goto :goto_3

    .line 317
    :cond_9
    :try_start_2
    invoke-virtual {v11, v8}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 322
    :catchall_0
    move-exception v13

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 323
    if-eqz v9, :cond_a

    .line 324
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    :cond_a
    throw v13

    .line 328
    :cond_b
    invoke-virtual {v4}, Landroid/app/wallpaperbackup/WallpaperUserPOJO;->getComponent()Ljava/lang/String;

    move-result-object v1

    .line 329
    .local v1, "com":Ljava/lang/String;
    invoke-virtual {v3, v1}, Landroid/app/wallpaperbackup/LiveChange;->set(Ljava/lang/String;)V

    goto :goto_3

    .line 334
    .end local v1    # "com":Ljava/lang/String;
    .end local v3    # "liveChange":Landroid/app/wallpaperbackup/LiveChange;
    .end local v4    # "mItem":Landroid/app/wallpaperbackup/WallpaperUserPOJO;
    .end local v8    # "stream":Ljava/io/InputStream;
    .end local v9    # "streamSim2":Ljava/io/InputStream;
    .end local v11    # "wallpaperManager":Landroid/app/WallpaperManager;
    .end local v12    # "wallpaperParser":Landroid/app/wallpaperbackup/WallpaperXmlParser;
    :cond_c
    new-instance v13, Ljava/lang/Exception;

    invoke-direct {v13}, Ljava/lang/Exception;-><init>()V

    throw v13
.end method

.method public saveBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "nameOfImageAlongWithPath"    # Ljava/lang/String;
    .param p2, "bmp"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v5, 0x64

    .line 414
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 415
    .local v2, "sd":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 416
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 418
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 419
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 423
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 424
    .local v0, "fos":Ljava/io/FileOutputStream;
    iget v3, p0, Landroid/app/wallpaperbackup/Controller;->mIsSecurityLevel:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 425
    invoke-virtual {p0, v0}, Landroid/app/wallpaperbackup/Controller;->encryptStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v1

    .line 426
    .local v1, "newfos":Ljava/io/OutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p2, v3, v5, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 427
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 428
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 435
    .end local v1    # "newfos":Ljava/io/OutputStream;
    :goto_0
    return-void

    .line 430
    :cond_1
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p2, v3, v5, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 431
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 432
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    goto :goto_0
.end method

.method public startBackup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "basePath"    # Ljava/lang/String;
    .param p3, "source"    # Ljava/lang/String;

    .prologue
    .line 89
    const-string v4, ""

    const-string v5, ""

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Landroid/app/wallpaperbackup/Controller;->startBackup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 90
    return-void
.end method

.method public startBackup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "basePath"    # Ljava/lang/String;
    .param p3, "source"    # Ljava/lang/String;
    .param p4, "session_key"    # Ljava/lang/String;
    .param p5, "session_time"    # Ljava/lang/String;
    .param p6, "securityLevel"    # I

    .prologue
    .line 95
    const-wide/16 v2, 0x0

    .line 96
    .local v2, "availableBlocks":J
    const-wide/16 v4, 0x0

    .line 97
    .local v4, "blockSizeInBytes":J
    const-wide/32 v8, 0x40000000

    .line 100
    .local v8, "freeSpaceInBytes":J
    :try_start_0
    new-instance v11, Landroid/os/StatFs;

    move-object/from16 v0, p2

    invoke-direct {v11, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 101
    .local v11, "stat":Landroid/os/StatFs;
    invoke-virtual {v11}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v12

    int-to-long v2, v12

    .line 102
    invoke-virtual {v11}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    int-to-long v4, v12

    .line 103
    mul-long v8, v2, v4

    .line 110
    .end local v11    # "stat":Landroid/os/StatFs;
    :goto_0
    move-object/from16 v0, p4

    iput-object v0, p0, Landroid/app/wallpaperbackup/Controller;->mSuperKey:Ljava/lang/String;

    .line 111
    move/from16 v0, p6

    iput v0, p0, Landroid/app/wallpaperbackup/Controller;->mIsSecurityLevel:I

    .line 112
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 114
    :try_start_1
    sget-wide v12, Landroid/app/wallpaperbackup/Controller;->REQUIRED_SIZE:J

    cmp-long v12, v8, v12

    if-gez v12, :cond_0

    .line 115
    sget-object v12, Landroid/app/wallpaperbackup/Controller$RESULT;->FAIL:Landroid/app/wallpaperbackup/Controller$RESULT;

    iput-object v12, p0, Landroid/app/wallpaperbackup/Controller;->mResult:Landroid/app/wallpaperbackup/Controller$RESULT;

    .line 116
    sget-object v12, Landroid/app/wallpaperbackup/Controller$ERR_CODE;->STORAGE_FULL:Landroid/app/wallpaperbackup/Controller$ERR_CODE;

    iput-object v12, p0, Landroid/app/wallpaperbackup/Controller;->mErrorCode:Landroid/app/wallpaperbackup/Controller$ERR_CODE;

    .line 117
    sget-object v12, Landroid/app/wallpaperbackup/Controller$REQ_SIZE;->MINIMUM_SIZE:Landroid/app/wallpaperbackup/Controller$REQ_SIZE;

    iput-object v12, p0, Landroid/app/wallpaperbackup/Controller;->mRequiredSize:Landroid/app/wallpaperbackup/Controller$REQ_SIZE;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 145
    :goto_1
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 146
    .local v7, "intent":Landroid/content/Intent;
    const-string v12, "android.intent.action.RESPONSE_BACKUP_WALLPAPER"

    invoke-virtual {v7, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    sget-object v12, Landroid/app/wallpaperbackup/Controller;->RESULT_KEY:Ljava/lang/String;

    iget-object v13, p0, Landroid/app/wallpaperbackup/Controller;->mResult:Landroid/app/wallpaperbackup/Controller$RESULT;

    invoke-virtual {v13}, Landroid/app/wallpaperbackup/Controller$RESULT;->getValue()I

    move-result v13

    invoke-virtual {v7, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 148
    sget-object v12, Landroid/app/wallpaperbackup/Controller;->ERROR_KEY:Ljava/lang/String;

    iget-object v13, p0, Landroid/app/wallpaperbackup/Controller;->mErrorCode:Landroid/app/wallpaperbackup/Controller$ERR_CODE;

    invoke-virtual {v13}, Landroid/app/wallpaperbackup/Controller$ERR_CODE;->getValue()I

    move-result v13

    invoke-virtual {v7, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 149
    sget-object v12, Landroid/app/wallpaperbackup/Controller;->REQUIRED_SIZE_KEY:Ljava/lang/String;

    iget-object v13, p0, Landroid/app/wallpaperbackup/Controller;->mRequiredSize:Landroid/app/wallpaperbackup/Controller$REQ_SIZE;

    invoke-virtual {v13}, Landroid/app/wallpaperbackup/Controller$REQ_SIZE;->getValue()I

    move-result v13

    invoke-virtual {v7, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 150
    sget-object v12, Landroid/app/wallpaperbackup/Controller;->SOURCE_KEY:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v7, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    sget-object v12, Landroid/app/wallpaperbackup/Controller;->EXTRA_EXPORT_SESSION_TIME:Ljava/lang/String;

    move-object/from16 v0, p5

    invoke-virtual {v7, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    invoke-virtual {p1, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 155
    return-void

    .line 105
    .end local v7    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v6

    .line 106
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 119
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v10, 0x0

    .line 120
    .local v10, "result":Z
    :try_start_2
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_1

    .line 122
    invoke-direct/range {p0 .. p2}, Landroid/app/wallpaperbackup/Controller;->createBackupFilesForMultiSim(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    .line 127
    :goto_2
    if-eqz v10, :cond_2

    .line 128
    sget-object v12, Landroid/app/wallpaperbackup/Controller$RESULT;->OK:Landroid/app/wallpaperbackup/Controller$RESULT;

    iput-object v12, p0, Landroid/app/wallpaperbackup/Controller;->mResult:Landroid/app/wallpaperbackup/Controller$RESULT;

    .line 129
    sget-object v12, Landroid/app/wallpaperbackup/Controller$ERR_CODE;->SUCCESS:Landroid/app/wallpaperbackup/Controller$ERR_CODE;

    iput-object v12, p0, Landroid/app/wallpaperbackup/Controller;->mErrorCode:Landroid/app/wallpaperbackup/Controller$ERR_CODE;

    .line 135
    :goto_3
    sget-object v12, Landroid/app/wallpaperbackup/Controller$REQ_SIZE;->SUCCESS:Landroid/app/wallpaperbackup/Controller$REQ_SIZE;

    iput-object v12, p0, Landroid/app/wallpaperbackup/Controller;->mRequiredSize:Landroid/app/wallpaperbackup/Controller$REQ_SIZE;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 138
    .end local v10    # "result":Z
    :catch_1
    move-exception v6

    .line 139
    .restart local v6    # "e":Ljava/lang/Exception;
    sget-object v12, Landroid/app/wallpaperbackup/Controller$RESULT;->FAIL:Landroid/app/wallpaperbackup/Controller$RESULT;

    iput-object v12, p0, Landroid/app/wallpaperbackup/Controller;->mResult:Landroid/app/wallpaperbackup/Controller$RESULT;

    .line 140
    sget-object v12, Landroid/app/wallpaperbackup/Controller$ERR_CODE;->UNKNOWN_ERROR:Landroid/app/wallpaperbackup/Controller$ERR_CODE;

    iput-object v12, p0, Landroid/app/wallpaperbackup/Controller;->mErrorCode:Landroid/app/wallpaperbackup/Controller$ERR_CODE;

    .line 141
    sget-object v12, Landroid/app/wallpaperbackup/Controller$REQ_SIZE;->SUCCESS:Landroid/app/wallpaperbackup/Controller$REQ_SIZE;

    iput-object v12, p0, Landroid/app/wallpaperbackup/Controller;->mRequiredSize:Landroid/app/wallpaperbackup/Controller$REQ_SIZE;

    goto :goto_1

    .line 124
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v10    # "result":Z
    :cond_1
    :try_start_3
    invoke-direct/range {p0 .. p2}, Landroid/app/wallpaperbackup/Controller;->createBackupFiles(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    goto :goto_2

    .line 131
    :cond_2
    sget-object v12, Landroid/app/wallpaperbackup/Controller$RESULT;->FAIL:Landroid/app/wallpaperbackup/Controller$RESULT;

    iput-object v12, p0, Landroid/app/wallpaperbackup/Controller;->mResult:Landroid/app/wallpaperbackup/Controller$RESULT;

    .line 132
    sget-object v12, Landroid/app/wallpaperbackup/Controller$ERR_CODE;->INVALID_DATA:Landroid/app/wallpaperbackup/Controller$ERR_CODE;

    iput-object v12, p0, Landroid/app/wallpaperbackup/Controller;->mErrorCode:Landroid/app/wallpaperbackup/Controller$ERR_CODE;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3
.end method

.method public startRestore(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "basePath"    # Ljava/lang/String;
    .param p3, "source"    # Ljava/lang/String;

    .prologue
    .line 234
    const-string v4, ""

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/app/wallpaperbackup/Controller;->startRestore(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 235
    return-void
.end method

.method public startRestore(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "basePath"    # Ljava/lang/String;
    .param p3, "source"    # Ljava/lang/String;
    .param p4, "sessionKey"    # Ljava/lang/String;
    .param p5, "securityLevel"    # I

    .prologue
    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 242
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "wallpaper.xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/app/wallpaperbackup/Controller;->wallpaperUserFileName:Ljava/lang/String;

    .line 243
    iput-object p4, p0, Landroid/app/wallpaperbackup/Controller;->mSuperKey:Ljava/lang/String;

    .line 244
    iput p5, p0, Landroid/app/wallpaperbackup/Controller;->mIsSecurityLevel:I

    .line 246
    :try_start_0
    invoke-virtual {p0, p1, p2, p5}, Landroid/app/wallpaperbackup/Controller;->pushRestoreFiles(Landroid/content/Context;Ljava/lang/String;I)V

    .line 247
    sget-object v2, Landroid/app/wallpaperbackup/Controller$RESULT;->OK:Landroid/app/wallpaperbackup/Controller$RESULT;

    iput-object v2, p0, Landroid/app/wallpaperbackup/Controller;->mResult:Landroid/app/wallpaperbackup/Controller$RESULT;

    .line 248
    sget-object v2, Landroid/app/wallpaperbackup/Controller$ERR_CODE;->SUCCESS:Landroid/app/wallpaperbackup/Controller$ERR_CODE;

    iput-object v2, p0, Landroid/app/wallpaperbackup/Controller;->mErrorCode:Landroid/app/wallpaperbackup/Controller$ERR_CODE;

    .line 249
    sget-object v2, Landroid/app/wallpaperbackup/Controller$REQ_SIZE;->SUCCESS:Landroid/app/wallpaperbackup/Controller$REQ_SIZE;

    iput-object v2, p0, Landroid/app/wallpaperbackup/Controller;->mRequiredSize:Landroid/app/wallpaperbackup/Controller$REQ_SIZE;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 258
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.RESPONSE_RESTORE_WALLPAPER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    sget-object v2, Landroid/app/wallpaperbackup/Controller;->RESULT_KEY:Ljava/lang/String;

    iget-object v3, p0, Landroid/app/wallpaperbackup/Controller;->mResult:Landroid/app/wallpaperbackup/Controller$RESULT;

    invoke-virtual {v3}, Landroid/app/wallpaperbackup/Controller$RESULT;->getValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 260
    sget-object v2, Landroid/app/wallpaperbackup/Controller;->ERROR_KEY:Ljava/lang/String;

    iget-object v3, p0, Landroid/app/wallpaperbackup/Controller;->mErrorCode:Landroid/app/wallpaperbackup/Controller$ERR_CODE;

    invoke-virtual {v3}, Landroid/app/wallpaperbackup/Controller$ERR_CODE;->getValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 261
    sget-object v2, Landroid/app/wallpaperbackup/Controller;->REQUIRED_SIZE_KEY:Ljava/lang/String;

    iget-object v3, p0, Landroid/app/wallpaperbackup/Controller;->mRequiredSize:Landroid/app/wallpaperbackup/Controller$REQ_SIZE;

    invoke-virtual {v3}, Landroid/app/wallpaperbackup/Controller$REQ_SIZE;->getValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 262
    sget-object v2, Landroid/app/wallpaperbackup/Controller;->SOURCE_KEY:Ljava/lang/String;

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 265
    return-void

    .line 250
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 251
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 252
    sget-object v2, Landroid/app/wallpaperbackup/Controller$RESULT;->FAIL:Landroid/app/wallpaperbackup/Controller$RESULT;

    iput-object v2, p0, Landroid/app/wallpaperbackup/Controller;->mResult:Landroid/app/wallpaperbackup/Controller$RESULT;

    .line 253
    sget-object v2, Landroid/app/wallpaperbackup/Controller$ERR_CODE;->UNKNOWN_ERROR:Landroid/app/wallpaperbackup/Controller$ERR_CODE;

    iput-object v2, p0, Landroid/app/wallpaperbackup/Controller;->mErrorCode:Landroid/app/wallpaperbackup/Controller$ERR_CODE;

    .line 254
    sget-object v2, Landroid/app/wallpaperbackup/Controller$REQ_SIZE;->SUCCESS:Landroid/app/wallpaperbackup/Controller$REQ_SIZE;

    iput-object v2, p0, Landroid/app/wallpaperbackup/Controller;->mRequiredSize:Landroid/app/wallpaperbackup/Controller$REQ_SIZE;

    goto :goto_0
.end method

.class public Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;
.super Lcom/sec/enterprise/knox/dlp/IDLPManagerPolicy$Stub;
.source "DLPManagerPolicyService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPServiceConnection;,
        Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$EnterpriseDLPpolicyReciever;,
        Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;,
        Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$ClearUserDataObserver;,
        Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPProcessObserver;
    }
.end annotation


# static fields
.field static final ContentProviderRestrictingApps:[Ljava/lang/String;

.field private static final DBG:Z

.field private static final DELIMITTER:Ljava/lang/String; = ","

.field private static final DLP_BIND_ACTION:Ljava/lang/String; = "com.samsung.android.DLP_SERVICE_BIND_ACTION"

.field private static final DLP_SERVICE_PACKAGE:Ljava/lang/String; = "com.samsung.android.dlp.service"

.field private static final DOWNLOAD_PROVIDER_PACKAGE:Ljava/lang/String; = "com.android.providers.downloads"

.field private static final EMP_DLP_CMD_NOTIFY_DLP_FILE_OPEN:I = 0x4

.field private static final EMP_DLP_CMD_NOTIFY_PROCESS_DIED:I = 0x1

.field private static final EMP_DLP_CMD_SET_EXPIRY_AFTER:I = 0x3

.field private static final EMP_DLP_CMD_SET_EXTENSIONS:I = 0x5

.field private static final EMP_DLP_CMD_SET_FILE_EXPIRY:I = 0x2

.field private static final ENTERPRISE_DLP_PERMISSION:Ljava/lang/String; = "com.sec.enterprise.permission.KNOX_DLP"

.field private static final FIXED_EXTENSIONS:[Ljava/lang/String;

.field private static final KNOX_VER_2_7_0:I = 0x10e

.field private static final MEDIA_PROVIDER_PACKAGE:Ljava/lang/String; = "com.android.providers.media"

.field private static final SERVICECONNECTIONWAIT:Ljava/lang/Object;

.field private static final SERVICE_CONNECTION_TIMEOUT:J = 0x30d40L

.field private static TAG:Ljava/lang/String;

.field private static countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private static mBootReceiver:Landroid/content/BroadcastReceiver;

.field private static mDLPConnectionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;


# instance fields
.field private dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mClearDataObserver:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$ClearUserDataObserver;

.field mContext:Landroid/content/Context;

.field private mDLPProcessObserver:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPProcessObserver;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private receiver:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$EnterpriseDLPpolicyReciever;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->DBG:Z

    const-string v0, "DLPManagerPolicyService"

    sput-object v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mDLPConnectionMap:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->SERVICECONNECTIONWAIT:Ljava/lang/Object;

    const/16 v0, 0x19

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v3, "xls"

    aput-object v3, v0, v1

    const-string/jumbo v3, "xlsx"

    aput-object v3, v0, v2

    const-string v3, "doc"

    aput-object v3, v0, v5

    const-string v3, "docx"

    aput-object v3, v0, v6

    const-string/jumbo v3, "ppt"

    aput-object v3, v0, v7

    const/4 v3, 0x5

    const-string/jumbo v4, "pptx"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "pdf"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "jpg"

    aput-object v4, v0, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "jpeg"

    aput-object v4, v0, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "zip"

    aput-object v4, v0, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "mp4"

    aput-object v4, v0, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "txt"

    aput-object v4, v0, v3

    const/16 v3, 0xc

    const-string v4, "asd"

    aput-object v4, v0, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "xlam"

    aput-object v4, v0, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "htm"

    aput-object v4, v0, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "html"

    aput-object v4, v0, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "mht"

    aput-object v4, v0, v3

    const/16 v3, 0x11

    const-string v4, "eml"

    aput-object v4, v0, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "msg"

    aput-object v4, v0, v3

    const/16 v3, 0x13

    const-string/jumbo v4, "hwp"

    aput-object v4, v0, v3

    const/16 v3, 0x14

    const-string/jumbo v4, "gul"

    aput-object v4, v0, v3

    const/16 v3, 0x15

    const-string/jumbo v4, "rtf"

    aput-object v4, v0, v3

    const/16 v3, 0x16

    const-string/jumbo v4, "mysingle"

    aput-object v4, v0, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "png"

    aput-object v4, v0, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "gif"

    aput-object v4, v0, v3

    sput-object v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->FIXED_EXTENSIONS:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->sInstance:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mBootReceiver:Landroid/content/BroadcastReceiver;

    new-array v0, v7, [Ljava/lang/String;

    const-string v3, "com.microsoft.office"

    aput-object v3, v0, v1

    const-string v1, "com.hancom.office.editor"

    aput-object v1, v0, v2

    const-string v1, "com.infraware.office"

    aput-object v1, v0, v5

    const-string v1, "com.mobisystems.editor"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->ContentProviderRestrictingApps:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    goto/16 :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/sec/enterprise/knox/dlp/IDLPManagerPolicy$Stub;-><init>()V

    iput-object v2, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mContext:Landroid/content/Context;

    iput-object v2, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    iput-object v2, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->receiver:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$EnterpriseDLPpolicyReciever;

    new-instance v1, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPProcessObserver;

    invoke-direct {v1, p0, v2}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPProcessObserver;-><init>(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$1;)V

    iput-object v1, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mDLPProcessObserver:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPProcessObserver;

    sget-boolean v1, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->DBG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string v2, "DLPManagerPolicyService Constructor"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mContext:Landroid/content/Context;

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->registerEnterpriseDLPpolicyReciever()V

    invoke-direct {p0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->registerBootReceiver()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sput-object p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->sInstance:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string v2, "DLPManagerPolicyService Constructor >> Exception Occured"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private _addPackagesToAllowDLPWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->addWhitelistApps(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z

    move-result v0

    goto :goto_0
.end method

.method private _getDLPConfig(Landroid/app/enterprise/ContextInfo;)Landroid/os/Bundle;
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getDLPConfig(Landroid/app/enterprise/ContextInfo;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method private _getPackagesFromAllowDLPWhiteList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getWhitelistApps(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method private _removePackagesFromAllowDLPWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->removeWhitelistApps(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z

    move-result v0

    goto :goto_0
.end method

.method private _setDLPConfig(Landroid/app/enterprise/ContextInfo;Landroid/os/Bundle;)Z
    .locals 30
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "config"    # Landroid/os/Bundle;

    .prologue
    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    move/from16 v23, v0

    .local v23, "userId":I
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->_getDLPConfig(Landroid/app/enterprise/ContextInfo;)Landroid/os/Bundle;

    move-result-object v21

    .local v21, "oldConfig":Landroid/os/Bundle;
    const/4 v15, 0x1

    .local v15, "finalRes":Z
    const/16 v20, 0x0

    .local v20, "notifyDLPService":Z
    if-eqz p2, :cond_e

    const/16 v22, 0x0

    .local v22, "res":Z
    :try_start_0
    const-string v25, "ExpiryAfter"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_0

    const-string v25, "ExpiryAfter"

    const/16 v26, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    .local v12, "expiry_after":I
    const-string v25, "ExpiryAfter"

    const/16 v26, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v25

    move/from16 v0, v25

    if-eq v12, v0, :cond_0

    sget-object v25, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "DLP : In setDLPExpiry userId : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " expiry_after : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1, v12}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->setDLPAdminExpiry(II)Z

    move-result v22

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-wide v8

    .local v8, "calling_uid":J
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/util/EnterprisePartitionManager;

    move-result-object v11

    .local v11, "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    const/16 v25, 0x3

    const/16 v26, 0x2

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    move/from16 v0, v25

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v11, v0, v1, v2}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->sendDLPCommand(II[Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v15, :cond_8

    if-eqz v22, :cond_8

    const/4 v15, 0x1

    :goto_0
    const-string v25, "Activate"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_0

    const/16 v20, 0x1

    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    .local v17, "in":Landroid/content/Intent;
    const-string v25, "android.intent.extra.user_handle"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    new-instance v6, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v6, v0, v1}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;-><init>(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;I)V

    .local v6, "bindAsyncTask":Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;
    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Landroid/content/Intent;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v17, v25, v26

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .end local v6    # "bindAsyncTask":Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;
    .end local v8    # "calling_uid":J
    .end local v11    # "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    .end local v12    # "expiry_after":I
    .end local v17    # "in":Landroid/content/Intent;
    :cond_0
    :goto_1
    const/16 v25, 0x10e

    :try_start_3
    invoke-static/range {v25 .. v25}, Landroid/os/PersonaManager;->isKnoxVersionSupported(I)Z

    move-result v25

    if-eqz v25, :cond_3

    const/16 v22, 0x0

    const-string v25, "Extensions"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_3

    const-string v25, "Extensions"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .local v13, "extendedExtensions":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getMergedExtensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .local v14, "extensions":Ljava/lang/String;
    if-eqz v14, :cond_2

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_2

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1, v14}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->setDLPExtension(ILjava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_1

    sget-object v25, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "DLP : Extensions set for user: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " ["

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "]"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v13, v1}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->sendSetExtensionEPMDCommand(Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_2
    if-eqz v15, :cond_9

    if-eqz v22, :cond_9

    const/4 v15, 0x1

    .end local v13    # "extendedExtensions":Ljava/lang/String;
    .end local v14    # "extensions":Ljava/lang/String;
    :cond_3
    :goto_2
    const/16 v22, 0x0

    :try_start_4
    const-string v25, "Lock"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_5

    const-string v25, "Lock"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v19

    .local v19, "isLocked":Z
    sget-object v25, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "DLP : isLocked : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v25, "Lock"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v25

    move/from16 v0, v19

    move/from16 v1, v25

    if-eq v0, v1, :cond_5

    if-eqz v19, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getWhitelistApps(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;

    move-result-object v4

    .local v4, "DLPAppList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;>;"
    if-eqz v4, :cond_a

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_a

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;

    .local v7, "dpi":Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;
    iget-object v5, v7, Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;->appIdentity:Lcom/sec/enterprise/AppIdentity;

    .local v5, "ai":Lcom/sec/enterprise/AppIdentity;
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->forceStopPackage(ILjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    .end local v4    # "DLPAppList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;>;"
    .end local v5    # "ai":Lcom/sec/enterprise/AppIdentity;
    .end local v7    # "dpi":Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v19    # "isLocked":Z
    :catch_0
    move-exception v10

    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getDLPHelperInstance()Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-result-object v25

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "_setDLPConfig Exception: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->addDumpLog(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V

    const/4 v15, 0x0

    .end local v10    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_4
    const/16 v22, 0x0

    :try_start_5
    const-string v25, "Activate"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_7

    const-string v25, "Activate"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v18

    .local v18, "isActivated":Z
    const-string v25, "Activate"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v25

    move/from16 v0, v18

    move/from16 v1, v25

    if-eq v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getWhitelistApps(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;

    move-result-object v24

    .local v24, "whiteList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;>;"
    if-eqz v24, :cond_c

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16    # "i$":Ljava/util/Iterator;
    :cond_6
    :goto_5
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_c

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;

    .restart local v7    # "dpi":Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;
    iget-object v5, v7, Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;->appIdentity:Lcom/sec/enterprise/AppIdentity;

    .restart local v5    # "ai":Lcom/sec/enterprise/AppIdentity;
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->forceStopPackage(ILjava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_5

    .end local v5    # "ai":Lcom/sec/enterprise/AppIdentity;
    .end local v7    # "dpi":Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v18    # "isActivated":Z
    .end local v24    # "whiteList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;>;"
    :catch_1
    move-exception v10

    .restart local v10    # "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getDLPHelperInstance()Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-result-object v25

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "_setDLPConfig Exception: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->addDumpLog(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V

    const/4 v15, 0x0

    .end local v10    # "e":Ljava/lang/Exception;
    .end local v22    # "res":Z
    :cond_7
    :goto_6
    if-eqz v15, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->setDLPConfig(Landroid/app/enterprise/ContextInfo;Landroid/os/Bundle;)Z

    move-result v25

    if-eqz v25, :cond_f

    const/16 v25, 0x1

    :goto_7
    return v25

    .restart local v8    # "calling_uid":J
    .restart local v12    # "expiry_after":I
    .restart local v22    # "res":Z
    :catchall_0
    move-exception v25

    :try_start_6
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v25
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .end local v8    # "calling_uid":J
    .end local v12    # "expiry_after":I
    :catch_2
    move-exception v10

    .restart local v10    # "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getDLPHelperInstance()Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-result-object v25

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "_setDLPConfig Exception: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->addDumpLog(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V

    const/4 v15, 0x0

    goto/16 :goto_1

    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v8    # "calling_uid":J
    .restart local v11    # "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    .restart local v12    # "expiry_after":I
    :cond_8
    const/4 v15, 0x0

    goto/16 :goto_0

    .end local v8    # "calling_uid":J
    .end local v11    # "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    .end local v12    # "expiry_after":I
    .restart local v13    # "extendedExtensions":Ljava/lang/String;
    .restart local v14    # "extensions":Ljava/lang/String;
    :cond_9
    const/4 v15, 0x0

    goto/16 :goto_2

    .end local v13    # "extendedExtensions":Ljava/lang/String;
    .end local v14    # "extensions":Ljava/lang/String;
    :catch_3
    move-exception v10

    .restart local v10    # "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getDLPHelperInstance()Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-result-object v25

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "_setDLPConfig Exception: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->addDumpLog(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V

    goto/16 :goto_2

    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v19    # "isLocked":Z
    :cond_a
    :try_start_7
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->setDLPLock(IZ)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    move-result v22

    if-eqz v15, :cond_b

    if-eqz v22, :cond_b

    const/4 v15, 0x1

    :goto_8
    goto/16 :goto_4

    :cond_b
    const/4 v15, 0x0

    goto :goto_8

    .end local v19    # "isLocked":Z
    .restart local v18    # "isActivated":Z
    .restart local v24    # "whiteList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;>;"
    :cond_c
    :try_start_8
    const-string v25, "com.android.providers.media"

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->forceStopPackage(ILjava/lang/String;)V

    sget-object v25, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "DLP : isActivated : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v20, :cond_d

    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    .restart local v17    # "in":Landroid/content/Intent;
    const-string v25, "android.intent.extra.user_handle"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    new-instance v6, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;

    const/16 v25, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v6, v0, v1}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;-><init>(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;I)V

    .restart local v6    # "bindAsyncTask":Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;
    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Landroid/content/Intent;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v17, v25, v26

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .end local v6    # "bindAsyncTask":Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;
    .end local v17    # "in":Landroid/content/Intent;
    :cond_d
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->registerOrUnregisterProcessObserver(Z)Z

    move-result v25

    if-nez v25, :cond_7

    sget-object v25, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "DLP : registerOrUnregisterProcessObserver failed for isActive : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_6

    .end local v18    # "isActivated":Z
    .end local v22    # "res":Z
    .end local v24    # "whiteList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;>;"
    :cond_e
    sget-object v25, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string v26, "DLP: config is null"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x0

    goto/16 :goto_6

    :cond_f
    const/16 v25, 0x0

    goto/16 :goto_7
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;
    .param p1, "x1"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->registerOrUnregisterProcessObserver(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getPackageMetaData(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100()Ljava/util/Map;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mDLPConnectionMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1200()Ljava/util/concurrent/CountDownLatch;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;)Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->sendSetExtensionEPMDCommand(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->DBG:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;)Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getDLPHelperInstance()Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;I)Lcom/sec/enterprise/knox/dlp/IFrameworkConnector;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getDLPInterface(I)Lcom/sec/enterprise/knox/dlp/IFrameworkConnector;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->bindToDLPService(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->isMdmActivated(I)Z

    move-result v0

    return v0
.end method

.method private bindToDLPService(I)V
    .locals 22
    .param p1, "userId"    # I

    .prologue
    sget-boolean v17, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->DBG:Z

    if-eqz v17, :cond_0

    sget-object v17, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "In bindToDLPService: uId is: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v5, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPServiceConnection;

    move/from16 v0, p1

    invoke-direct {v5, v0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPServiceConnection;-><init>(I)V

    .local v5, "connection":Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPServiceConnection;
    new-instance v9, Landroid/content/Intent;

    const-string v17, "com.samsung.android.DLP_SERVICE_BIND_ACTION"

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v9, "intent":Landroid/content/Intent;
    sget-boolean v17, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->DBG:Z

    if-eqz v17, :cond_1

    sget-object v17, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "In bindToDLPService: action is: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v18, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->SERVICECONNECTIONWAIT:Ljava/lang/Object;

    monitor-enter v18

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v10

    .local v10, "id":J
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .local v12, "pm":Landroid/content/pm/PackageManager;
    new-instance v16, Landroid/os/UserHandle;

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .local v16, "userHandle":Landroid/os/UserHandle;
    if-eqz v12, :cond_4

    const/16 v17, 0x0

    move/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v12, v9, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v14

    .local v14, "resList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v14, :cond_2

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v17

    if-lez v17, :cond_2

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;

    .local v13, "resInfo":Landroid/content/pm/ResolveInfo;
    iget-object v15, v13, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .local v15, "servInfo":Landroid/content/pm/ServiceInfo;
    sget-object v17, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "In bindToService: serviceInfo : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v15, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/content/ComponentName;

    iget-object v0, v15, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    iget-object v0, v15, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v4, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v4, "cn":Landroid/content/ComponentName;
    sget-object v17, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string v19, "In bindToService: Got the component name, Binding to the service..."

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v16

    invoke-virtual {v0, v9, v5, v1, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v17

    if-eqz v17, :cond_3

    sget-object v17, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string v19, "In bindToService: Success >>> Bind DLP service"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v17, Ljava/util/concurrent/CountDownLatch;

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v17, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v17, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/32 v20, 0x30d40

    sget-object v19, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v17

    move-wide/from16 v1, v20

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v6

    .local v6, "countDownTimeout":Z
    if-nez v6, :cond_2

    sget-object v17, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string v19, "In bindToService: CoutnDownLatch return false"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v4    # "cn":Landroid/content/ComponentName;
    .end local v6    # "countDownTimeout":Z
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v13    # "resInfo":Landroid/content/pm/ResolveInfo;
    .end local v14    # "resList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v15    # "servInfo":Landroid/content/pm/ServiceInfo;
    :cond_2
    :goto_1
    :try_start_3
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void

    .restart local v4    # "cn":Landroid/content/ComponentName;
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v13    # "resInfo":Landroid/content/pm/ResolveInfo;
    .restart local v14    # "resList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v15    # "servInfo":Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v7

    .local v7, "e":Ljava/lang/InterruptedException;
    :try_start_4
    sget-object v17, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string v19, "In bindToService: InterruptedException"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .end local v4    # "cn":Landroid/content/ComponentName;
    .end local v7    # "e":Ljava/lang/InterruptedException;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v12    # "pm":Landroid/content/pm/PackageManager;
    .end local v13    # "resInfo":Landroid/content/pm/ResolveInfo;
    .end local v14    # "resList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v15    # "servInfo":Landroid/content/pm/ServiceInfo;
    .end local v16    # "userHandle":Landroid/os/UserHandle;
    :catchall_0
    move-exception v17

    :try_start_5
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v17

    .end local v10    # "id":J
    :catchall_1
    move-exception v17

    monitor-exit v18
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v17

    .restart local v4    # "cn":Landroid/content/ComponentName;
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v10    # "id":J
    .restart local v12    # "pm":Landroid/content/pm/PackageManager;
    .restart local v13    # "resInfo":Landroid/content/pm/ResolveInfo;
    .restart local v14    # "resList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v15    # "servInfo":Landroid/content/pm/ServiceInfo;
    .restart local v16    # "userHandle":Landroid/os/UserHandle;
    :cond_3
    :try_start_6
    sget-object v17, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string v19, "In bindToService: Fail to bind to DLP service"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v4    # "cn":Landroid/content/ComponentName;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v13    # "resInfo":Landroid/content/pm/ResolveInfo;
    .end local v14    # "resList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v15    # "servInfo":Landroid/content/pm/ServiceInfo;
    :cond_4
    sget-object v17, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string v19, "In bindToService: PackageManager : Null"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1
.end method

.method private checkCaller()Ljava/lang/String;
    .locals 6

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .local v0, "callerPid":I
    const/4 v2, 0x0

    .local v2, "packageName":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/app/IActivityManager;->getPackageFromAppProcesses(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    sget-object v3, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "caller Uid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " package = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private checkDLPCaller()Z
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->checkCaller()Ljava/lang/String;

    move-result-object v1

    .local v1, "callerPackage":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "isDLPWhitelisted":Z
    const/4 v3, 0x0

    .local v3, "isSignaturePlatform":Z
    iget-object v8, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mContext:Landroid/content/Context;

    if-nez v8, :cond_2

    const/4 v4, 0x0

    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    :goto_0
    if-eqz v1, :cond_0

    if-eqz v4, :cond_0

    const-string v8, "android"

    invoke-virtual {v4, v8, v1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_0

    const/4 v3, 0x1

    :cond_0
    if-nez v3, :cond_3

    sget-object v7, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string v8, "checkDLPCaller(). Called from non-platform app. Return false"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return v6

    .end local v4    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_2
    iget-object v8, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    goto :goto_0

    .restart local v4    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .local v5, "uid":I
    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getDLPHelperInstance()Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-direct {p0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getDLPHelperInstance()Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-result-object v8

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-virtual {v8, v9, v1}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getAppType(ILjava/lang/String;)I

    move-result v0

    .local v0, "appType":I
    if-eq v0, v7, :cond_4

    if-nez v0, :cond_5

    :cond_4
    const/4 v2, 0x1

    .end local v0    # "appType":I
    :cond_5
    sget-object v8, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkDLPCaller(). isSignaturePlatform : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " isDLPWhitelisted : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    move v6, v7

    goto :goto_1
.end method

.method public static checkLaunchIntentForAccessDLP(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;IILjava/lang/String;II)Z
    .locals 8
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "callingPid"    # I
    .param p3, "callingUid"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "realCallingPid"    # I
    .param p6, "realCallingUid"    # I

    .prologue
    sget-object v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->sInstance:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string v1, "checkLaunchIntentForAccessDLP() DLP is not instantiated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->sInstance:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->checkLaunchIntentForAccessDLPInternal(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;IILjava/lang/String;II)Z

    move-result v0

    goto :goto_0
.end method

.method private enableClipboard(Lcom/sec/enterprise/knox/container/KnoxContainerManager;Ljava/util/List;)Z
    .locals 8
    .param p1, "kcm"    # Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/container/KnoxContainerManager;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/AppIdentity;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v1

    .local v1, "applicationPolicy":Landroid/app/enterprise/ApplicationPolicy;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .local v4, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/enterprise/AppIdentity;

    .local v0, "app":Lcom/sec/enterprise/AppIdentity;
    invoke-virtual {v0}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "pkgList["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "]: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "app":Lcom/sec/enterprise/AppIdentity;
    :cond_0
    invoke-virtual {v1, v4}, Landroid/app/enterprise/ApplicationPolicy;->removePackagesFromDisableClipboardBlackList(Ljava/util/List;)Z

    move-result v5

    return v5
.end method

.method private enableNetwork(Lcom/sec/enterprise/knox/container/KnoxContainerManager;Ljava/util/List;)Z
    .locals 10
    .param p1, "kcm"    # Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/container/KnoxContainerManager;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/AppIdentity;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getFirewall()Lcom/sec/enterprise/firewall/Firewall;

    move-result-object v1

    .local v1, "firewall":Lcom/sec/enterprise/firewall/Firewall;
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lcom/sec/enterprise/firewall/Firewall;->enableFirewall(Z)Lcom/sec/enterprise/firewall/FirewallResponse;

    move-result-object v5

    .local v5, "response":Lcom/sec/enterprise/firewall/FirewallResponse;
    if-eqz v5, :cond_0

    sget-object v7, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "firewall.enableFirewall response: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lcom/sec/enterprise/firewall/FirewallResponse;->getResult()Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v7, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "firewall.enableFirewall response message: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lcom/sec/enterprise/firewall/FirewallResponse;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getFirewallPolicy()Landroid/app/enterprise/FirewallPolicy;

    move-result-object v2

    .local v2, "firewallPolicy":Landroid/app/enterprise/FirewallPolicy;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .local v6, "rulesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/enterprise/AppIdentity;

    .local v0, "app":Lcom/sec/enterprise/AppIdentity;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "*:*;*;"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";*"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v8, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "rulelist["

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "]: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0    # "app":Lcom/sec/enterprise/AppIdentity;
    .end local v2    # "firewallPolicy":Landroid/app/enterprise/FirewallPolicy;
    .end local v3    # "i":I
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "rulesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    sget-object v7, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string v8, "Firewall response is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .restart local v2    # "firewallPolicy":Landroid/app/enterprise/FirewallPolicy;
    .restart local v3    # "i":I
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v6    # "rulesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {v2, v6}, Landroid/app/enterprise/FirewallPolicy;->removeIptablesDenyRules(Ljava/util/List;)Z

    move-result v7

    return v7
.end method

.method private enforceKnoxDLPPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "com.sec.enterprise.permission.KNOX_DLP"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private feederToMdmMigration(Landroid/app/enterprise/ContextInfo;Landroid/os/Bundle;)V
    .locals 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "config"    # Landroid/os/Bundle;

    .prologue
    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .local v3, "callerUid":I
    move-object/from16 v0, p1

    iget v5, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v5, "containerId":I
    sget-object v13, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "callerUid = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "containerId = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v13, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mContext:Landroid/content/Context;

    invoke-direct {v13, v14}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {v13, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v6

    .local v6, "containerOwner":I
    if-ne v3, v6, :cond_5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->isMdmActivated(I)Z

    move-result v13

    if-nez v13, :cond_0

    sget-object v13, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v14, "setDLPConfig: called by MDM - updating DBEntries for system and disabling the receiver"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    .local v8, "id":J
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    invoke-static {v5, v13}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    .local v2, "adminUid":I
    sget-object v13, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "AdminUid = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/ SystemCallerUid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    invoke-direct {v10, v13, v5}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    .local v10, "newCtxInfo":Landroid/app/enterprise/ContextInfo;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    invoke-virtual {v13, v10}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getDLPConfig(Landroid/app/enterprise/ContextInfo;)Landroid/os/Bundle;

    move-result-object v11

    .local v11, "oldConfig":Landroid/os/Bundle;
    const/4 v12, 0x0

    .local v12, "res":Z
    const-string v13, "Activate"

    invoke-virtual {v11, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    const-string v13, "Activate"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    const-string v13, "CLIPBOARD"

    invoke-virtual {v11, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_2

    int-to-long v14, v2

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v14, v15, v13}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->revertPolicy(Landroid/app/enterprise/ContextInfo;JZ)Z

    move-result v12

    sget-object v13, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Clipboard revert policy res : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v13, "NETWORK"

    invoke-virtual {v11, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_3

    int-to-long v14, v2

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v14, v15, v13}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->revertPolicy(Landroid/app/enterprise/ContextInfo;JZ)Z

    move-result v12

    sget-object v13, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Firewall revert policy res : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    int-to-long v14, v2

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v14, v15}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->updateAdminUid(Landroid/app/enterprise/ContextInfo;J)I

    move-result v4

    .local v4, "cnt":I
    sget-object v13, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "AdminUid updated for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " rows."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .end local v2    # "adminUid":I
    .end local v3    # "callerUid":I
    .end local v4    # "cnt":I
    .end local v5    # "containerId":I
    .end local v6    # "containerOwner":I
    .end local v8    # "id":J
    .end local v10    # "newCtxInfo":Landroid/app/enterprise/ContextInfo;
    .end local v11    # "oldConfig":Landroid/os/Bundle;
    .end local v12    # "res":Z
    :catch_0
    move-exception v7

    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getDLPHelperInstance()Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "setDLPConfig Exception: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v14}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->addDumpLog(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v2    # "adminUid":I
    .restart local v3    # "callerUid":I
    .restart local v5    # "containerId":I
    .restart local v6    # "containerOwner":I
    .restart local v8    # "id":J
    .restart local v10    # "newCtxInfo":Landroid/app/enterprise/ContextInfo;
    .restart local v11    # "oldConfig":Landroid/os/Bundle;
    .restart local v12    # "res":Z
    :cond_4
    const/4 v12, 0x1

    goto :goto_1

    .end local v2    # "adminUid":I
    .end local v10    # "newCtxInfo":Landroid/app/enterprise/ContextInfo;
    .end local v11    # "oldConfig":Landroid/os/Bundle;
    .end local v12    # "res":Z
    :catchall_0
    move-exception v13

    :try_start_3
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v13

    .end local v8    # "id":J
    :cond_5
    sget-object v13, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "setDLPConfig: caller : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " is not owner for container: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method

.method private forceStopPackage(ILjava/lang/String;)V
    .locals 12
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "id":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getActivityManager()Landroid/app/ActivityManager;

    move-result-object v0

    .local v0, "am":Landroid/app/ActivityManager;
    const-string v10, "activity"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityManagerService;

    .local v1, "ams":Lcom/android/server/am/ActivityManagerService;
    const/16 v10, 0x14

    const/16 v11, 0xb

    invoke-virtual {v1, v10, v11, p1}, Lcom/android/server/am/ActivityManagerService;->getRecentTasks(III)Ljava/util/List;

    move-result-object v9

    .local v9, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RecentTaskInfo;

    .local v7, "recentTaskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    iget-object v10, v7, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v10, :cond_1

    iget-object v10, v7, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    if-eqz v10, :cond_1

    iget-object v10, v7, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .local v8, "taskPackage":Ljava/lang/String;
    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    iget v10, v7, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/app/ActivityManager;->removeTask(II)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v1, v8, p1}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v1    # "ams":Lcom/android/server/am/ActivityManagerService;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v7    # "recentTaskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v8    # "taskPackage":Ljava/lang/String;
    .end local v9    # "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :catchall_0
    move-exception v10

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v10

    .restart local v0    # "am":Landroid/app/ActivityManager;
    .restart local v1    # "ams":Lcom/android/server/am/ActivityManagerService;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v9    # "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :cond_2
    :try_start_1
    invoke-virtual {v1, p2, p1}, Lcom/android/server/am/ActivityManagerService;->killBackgroundProcesses(Ljava/lang/String;I)V

    invoke-virtual {v1, p2, p1}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;I)V

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .local v6, "in":Landroid/content/Intent;
    const-string v10, "android.intent.extra.user_handle"

    invoke-virtual {v6, v10, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v10, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v6, v10, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;

    const/4 v10, 0x3

    invoke-direct {v2, p0, v10}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;-><init>(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;I)V

    .local v2, "bindAsyncTask":Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;
    const/4 v10, 0x1

    new-array v10, v10, [Landroid/content/Intent;

    const/4 v11, 0x0

    aput-object v6, v10, v11

    invoke-virtual {v2, v10}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0
.end method

.method public static getAccessInfo(ILjava/lang/String;)I
    .locals 5
    .param p0, "userId"    # I
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .local v0, "accessInfo":I
    sget-object v3, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->sInstance:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    if-nez v3, :cond_1

    sget-object v3, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string v4, "DLP is not instantiated"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-static {p0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->isActivated(I)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v2, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->sInstance:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    invoke-direct {v2}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getDLPHelperInstance()Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getAppType(ILjava/lang/String;)I

    move-result v1

    .local v1, "app_type":I
    if-nez v1, :cond_3

    const/16 v0, 0x80

    :cond_2
    :goto_1
    sget-object v2, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getAccessInfo END "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v0

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    const/16 v0, 0x100

    goto :goto_1

    :cond_4
    const-string v2, "com.android.providers.media"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v0, 0x80

    goto :goto_1

    :cond_5
    const-string v2, "com.android.providers.downloads"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v0, 0x80

    goto :goto_1
.end method

.method private getActivityManager()Landroid/app/ActivityManager;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mActivityManager:Landroid/app/ActivityManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mActivityManager:Landroid/app/ActivityManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mActivityManager:Landroid/app/ActivityManager;

    return-object v0
.end method

.method private getDLPHelperInstance()Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    return-object v0
.end method

.method private getDLPInterface(I)Lcom/sec/enterprise/knox/dlp/IFrameworkConnector;
    .locals 10
    .param p1, "userId"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    sget-object v1, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mDLPConnectionMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mDLPConnectionMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPServiceConnection;

    invoke-virtual {v1}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPServiceConnection;->getDLPService()Lcom/sec/enterprise/knox/dlp/IFrameworkConnector;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .local v8, "id":J
    :try_start_0
    const-string/jumbo v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    .local v0, "pm":Landroid/content/pm/IPackageManager;
    const-string v1, "com.samsung.android.dlp.service"

    invoke-interface {v0, v1, p1}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v3, :cond_1

    const-string v1, "com.samsung.android.dlp.service"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move v4, p1

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    sget-object v1, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string v2, "DLP : dlp service enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v0    # "pm":Landroid/content/pm/IPackageManager;
    :goto_1
    move-object v1, v7

    goto :goto_0

    :catch_0
    move-exception v6

    .local v6, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method private getDLPManagerService()Lcom/android/server/DLPManagerService;
    .locals 2

    .prologue
    const-string v1, "dlp"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/DLPManagerService;

    .local v0, "service":Lcom/android/server/DLPManagerService;
    return-object v0
.end method

.method private getDelimFormattedExtensionList(Ljava/util/HashSet;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "extnList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const-string v3, ""

    :goto_0
    return-object v3

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, "ext":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .end local v0    # "ext":Ljava/lang/String;
    :cond_3
    sget-object v3, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Extension list : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getMergedExtensions(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "extendedExt"    # Ljava/lang/String;

    .prologue
    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, "extendedExtensions":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "mergedExtnSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    array-length v3, v1

    if-nez v3, :cond_2

    :cond_1
    new-instance v2, Ljava/util/HashSet;

    .end local v2    # "mergedExtnSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .restart local v2    # "mergedExtnSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_0
    sget-object v3, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->FIXED_EXTENSIONS:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getDelimFormattedExtensionList(Ljava/util/HashSet;)Ljava/lang/String;

    move-result-object v0

    .local v0, "delimString":Ljava/lang/String;
    sget-object v3, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Returning extension list : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .end local v0    # "delimString":Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/util/HashSet;

    .end local v2    # "mergedExtnSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .restart local v2    # "mergedExtnSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    goto :goto_0
.end method

.method private getPackageMetaData(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    sget-object v2, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getPackageMetaData: getting metadata for : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-interface {v2, p1, v3, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .local v1, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    sget-object v2, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getPackageMetaData: Application Meta data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isActivated(I)Z
    .locals 4
    .param p0, "userId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v3, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->sInstance:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    if-nez v3, :cond_0

    sget-object v1, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "isActivated() DLP is not instantiated"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_0
    sget-object v3, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->sInstance:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    invoke-direct {v3}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getDLPHelperInstance()Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->isActivated(I)I

    move-result v0

    .local v0, "activated":I
    if-ne v0, v1, :cond_1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private isDLPKernelEnabled()Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x0

    .local v0, "dev":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v6, "/dev/sdp_dlp"

    invoke-direct {v1, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "dev":Ljava/io/FileOutputStream;
    .local v1, "dev":Ljava/io/FileOutputStream;
    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    const/4 v5, 0x1

    move-object v0, v1

    .end local v1    # "dev":Ljava/io/FileOutputStream;
    .restart local v0    # "dev":Ljava/io/FileOutputStream;
    :cond_1
    :goto_1
    return v5

    .end local v0    # "dev":Ljava/io/FileOutputStream;
    .restart local v1    # "dev":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .local v2, "err":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .end local v1    # "dev":Ljava/io/FileOutputStream;
    .end local v2    # "err":Ljava/io/IOException;
    .restart local v0    # "dev":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v3

    .local v3, "fnfe":Ljava/io/FileNotFoundException;
    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v2

    .restart local v2    # "err":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .end local v2    # "err":Ljava/io/IOException;
    .end local v3    # "fnfe":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v4

    .local v4, "ioe":Ljava/io/IOException;
    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_1

    :catch_4
    move-exception v2

    .restart local v2    # "err":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .end local v2    # "err":Ljava/io/IOException;
    .end local v4    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    if-eqz v0, :cond_2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    :cond_2
    :goto_2
    throw v5

    :catch_5
    move-exception v2

    .restart local v2    # "err":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public static isFirewallDenyRuleEnabledForUid(Landroid/content/Context;I)Z
    .locals 13
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "uid"    # I

    .prologue
    const/4 v9, 0x0

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .local v0, "containerId":I
    const/4 v5, 0x0

    .local v5, "isConsumerApp":Z
    invoke-static {v0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->isActivated(I)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v10

    const/16 v11, 0x3e8

    if-eq v10, v11, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v10, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v8

    .local v8, "pkgNames":[Ljava/lang/String;
    if-nez v8, :cond_1

    sget-object v10, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "pkgNames is null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v8    # "pkgNames":[Ljava/lang/String;
    :cond_0
    :goto_0
    return v9

    .restart local v8    # "pkgNames":[Ljava/lang/String;
    :cond_1
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    array-length v10, v8

    if-ge v6, v10, :cond_2

    const/16 v10, 0x100

    aget-object v11, v8, v6

    invoke-static {v0, v11}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getAccessInfo(ILjava/lang/String;)I

    move-result v11

    if-ne v10, v11, :cond_3

    sget-object v10, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Package is consumer app:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v8, v6

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    :cond_2
    if-eqz v5, :cond_0

    new-instance v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-direct {v1, p0}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;)V

    .local v1, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getFirewall()Lcom/sec/enterprise/firewall/Firewall;

    move-result-object v2

    .local v2, "firewallPolicy":Lcom/sec/enterprise/firewall/Firewall;
    if-eqz v2, :cond_7

    const/4 v10, 0x2

    sget-object v11, Lcom/sec/enterprise/firewall/FirewallRule$Status;->ENABLED:Lcom/sec/enterprise/firewall/FirewallRule$Status;

    invoke-virtual {v2, v10, v11}, Lcom/sec/enterprise/firewall/Firewall;->getRules(ILcom/sec/enterprise/firewall/FirewallRule$Status;)[Lcom/sec/enterprise/firewall/FirewallRule;

    move-result-object v3

    .local v3, "firewallRule":[Lcom/sec/enterprise/firewall/FirewallRule;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    array-length v10, v3

    if-ge v4, v10, :cond_0

    aget-object v10, v3, v4

    if-eqz v10, :cond_6

    const-string v10, "*"

    aget-object v11, v3, v4

    invoke-virtual {v11}, Lcom/sec/enterprise/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const-string v10, "*"

    aget-object v11, v3, v4

    invoke-virtual {v11}, Lcom/sec/enterprise/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/4 v7, 0x0

    .local v7, "k":I
    :goto_3
    array-length v10, v8

    if-ge v7, v10, :cond_6

    aget-object v10, v3, v4

    invoke-virtual {v10}, Lcom/sec/enterprise/firewall/FirewallRule;->getPackageName()Ljava/lang/String;

    move-result-object v10

    aget-object v11, v8, v7

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    sget-object v9, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Network is  blocked for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v8, v7

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x1

    goto/16 :goto_0

    .end local v1    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v2    # "firewallPolicy":Lcom/sec/enterprise/firewall/Firewall;
    .end local v3    # "firewallRule":[Lcom/sec/enterprise/firewall/FirewallRule;
    .end local v4    # "i":I
    .end local v7    # "k":I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .restart local v1    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .restart local v2    # "firewallPolicy":Lcom/sec/enterprise/firewall/Firewall;
    .restart local v3    # "firewallRule":[Lcom/sec/enterprise/firewall/FirewallRule;
    .restart local v4    # "i":I
    .restart local v7    # "k":I
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .end local v7    # "k":I
    :cond_5
    sget-object v10, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "pkgNames is null OR firewall rules are not fully deny rules"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v3    # "firewallRule":[Lcom/sec/enterprise/firewall/FirewallRule;
    .end local v4    # "i":I
    :cond_7
    sget-object v10, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "firewallPolicy is null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static isLocked(I)Z
    .locals 6
    .param p0, "userId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v3, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->sInstance:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    if-nez v3, :cond_0

    sget-object v1, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "isLocked() DLP is not instantiated"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_0
    sget-object v3, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->sInstance:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    invoke-direct {v3}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getDLPHelperInstance()Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->isLocked(I)I

    move-result v0

    .local v0, "isLocked":I
    sget-object v3, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isLocked() END "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, v1, :cond_1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private isMdmActivated(I)Z
    .locals 14
    .param p1, "userID"    # I

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getDLPHelperInstance()Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-result-object v4

    .local v4, "dbHelper":Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;
    const/4 v7, 0x0

    .local v7, "isMdmActivated":Z
    invoke-virtual {v4}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getPolicyConfigOwners()Landroid/util/SparseLongArray;

    move-result-object v8

    .local v8, "policyConfigOwners":Landroid/util/SparseLongArray;
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Landroid/util/SparseLongArray;->size()I

    move-result v9

    if-lez v9, :cond_3

    new-instance v5, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v9, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .local v5, "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {v8}, Landroid/util/SparseLongArray;->size()I

    move-result v9

    if-ge v6, v9, :cond_0

    invoke-virtual {v8, v6}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v1

    .local v1, "containerId":I
    if-ne p1, v1, :cond_2

    invoke-virtual {v8, v1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v2

    .local v2, "adminUid":J
    invoke-virtual {v5, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v0

    .local v0, "actualOwnerUid":I
    invoke-static {v1, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v9

    int-to-long v10, v9

    .local v10, "realContainerOwnerUid":J
    sget-object v9, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "getPolicyOwner:: For containerId: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", actual ownerId: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v9, v2, v10

    if-nez v9, :cond_1

    const/4 v7, 0x1

    .end local v0    # "actualOwnerUid":I
    .end local v1    # "containerId":I
    .end local v2    # "adminUid":J
    .end local v10    # "realContainerOwnerUid":J
    :cond_0
    :goto_1
    move v9, v7

    .end local v5    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .end local v6    # "i":I
    :goto_2
    return v9

    .restart local v0    # "actualOwnerUid":I
    .restart local v1    # "containerId":I
    .restart local v2    # "adminUid":J
    .restart local v5    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .restart local v6    # "i":I
    .restart local v10    # "realContainerOwnerUid":J
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .end local v0    # "actualOwnerUid":I
    .end local v2    # "adminUid":J
    .end local v10    # "realContainerOwnerUid":J
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .end local v1    # "containerId":I
    .end local v5    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .end local v6    # "i":I
    :cond_3
    sget-object v9, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string v12, "No config entry found in DB !"

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    goto :goto_2
.end method

.method private registerBootReceiver()V
    .locals 3

    .prologue
    sget-object v1, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mBootReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v0, "intentFilter":Landroid/content/IntentFilter;
    new-instance v1, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$1;-><init>(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;)V

    sput-object v1, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mBootReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mBootReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private registerOrUnregisterProcessObserver(Z)Z
    .locals 4
    .param p1, "isActivated"    # Z

    .prologue
    iget-object v2, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mDLPProcessObserver:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPProcessObserver;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    sget-object v2, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string v3, "DLP: registerOrUnregisterProcessObserver :: calling clear calling identity on binder"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "token":J
    if-eqz p1, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mDLPProcessObserver:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPProcessObserver;

    invoke-virtual {v2}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPProcessObserver;->registerObserver()V

    :goto_1
    sget-object v2, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string v3, "DLP: registerOrUnregisterProcessObserver :: restoring identity on binder"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mDLPProcessObserver:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPProcessObserver;

    invoke-virtual {v2}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPProcessObserver;->unregister()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private revertPolicy(Landroid/app/enterprise/ContextInfo;JZ)Z
    .locals 10
    .param p1, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "adminUid"    # J
    .param p4, "CF"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x1

    .local v1, "finalRes":Z
    iget-object v7, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    invoke-virtual {v7, p1, v5, p2, p3}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getWhitelistApps(Landroid/app/enterprise/ContextInfo;IJ)Ljava/util/List;

    move-result-object v3

    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/AppIdentity;>;"
    if-eqz v3, :cond_5

    invoke-static {}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getInstance()Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    move-result-object v0

    .local v0, "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    if-eqz v0, :cond_4

    iget-object v7, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7, p1}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Lcom/sec/enterprise/knox/container/KnoxContainerManager;

    move-result-object v2

    .local v2, "kcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    if-nez v2, :cond_0

    sget-object v5, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Knox container manager is null:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    .end local v2    # "kcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    :goto_0
    return v6

    .restart local v0    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    .restart local v2    # "kcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    :cond_0
    const/4 v4, 0x0

    .local v4, "res":Z
    if-eqz p4, :cond_2

    invoke-direct {p0, v2, v3}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->enableClipboard(Lcom/sec/enterprise/knox/container/KnoxContainerManager;Ljava/util/List;)Z

    move-result v4

    if-eqz v1, :cond_1

    if-eqz v4, :cond_1

    move v1, v5

    .end local v0    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    .end local v2    # "kcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .end local v4    # "res":Z
    :goto_1
    move v6, v1

    goto :goto_0

    .restart local v0    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    .restart local v2    # "kcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .restart local v4    # "res":Z
    :cond_1
    move v1, v6

    goto :goto_1

    :cond_2
    invoke-direct {p0, v2, v3}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->enableNetwork(Lcom/sec/enterprise/knox/container/KnoxContainerManager;Ljava/util/List;)Z

    move-result v4

    if-eqz v1, :cond_3

    if-eqz v4, :cond_3

    move v1, v5

    :goto_2
    goto :goto_1

    :cond_3
    move v1, v6

    goto :goto_2

    .end local v2    # "kcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .end local v4    # "res":Z
    :cond_4
    sget-object v5, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EnterpriseKnoxManager is null:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    :cond_5
    sget-object v5, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string v6, "OldList is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private sendSetExtensionEPMDCommand(Ljava/lang/String;I)V
    .locals 9
    .param p1, "extendedExtensions"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    if-nez p1, :cond_0

    sget-object v4, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string v5, "Extended extension is null, making it empty"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, ""

    :cond_0
    new-instance v4, Ljava/util/HashSet;

    const-string v5, ","

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getDelimFormattedExtensionList(Ljava/util/HashSet;)Ljava/lang/String;

    move-result-object v3

    .local v3, "extendedExtns":Ljava/lang/String;
    sget-object v4, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sending EPMD command with additional extensions: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "calling_uid":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/util/EnterprisePartitionManager;

    move-result-object v2

    .local v2, "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    const/4 v4, 0x5

    const/4 v5, 0x2

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    invoke-virtual {v2, v4, v5, v6}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->sendDLPCommand(II[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .end local v2    # "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    :catchall_0
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private setDLPAdminExpiry(II)Z
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "expiry"    # I

    .prologue
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "calling_uid":J
    const/4 v2, 0x0

    .local v2, "res":Z
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getDLPManagerService()Lcom/android/server/DLPManagerService;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/android/server/DLPManagerService;->setDLPExpiry(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private setDLPExtension(ILjava/lang/String;)Z
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "mergedExtensions"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "calling_uid":J
    const/4 v2, 0x0

    .local v2, "res":Z
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getDLPManagerService()Lcom/android/server/DLPManagerService;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/android/server/DLPManagerService;->setDLPExtensions(ILjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private setDLPLock(IZ)Z
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "lockStatus"    # Z

    .prologue
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "calling_uid":J
    const/4 v2, 0x0

    .local v2, "res":Z
    if-eqz p2, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getDLPManagerService()Lcom/android/server/DLPManagerService;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/DLPManagerService;->lockDLP(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getDLPManagerService()Lcom/android/server/DLPManagerService;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/DLPManagerService;->unlockDLP(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method


# virtual methods
.method public addPackagesToAllowDLPWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;>;"
    const/4 v6, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->enforceKnoxDLPPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getDLPHelperInstance()Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-result-object v7

    if-nez v7, :cond_2

    sget-object v7, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string v8, "In addPackagesToAllowDLPWhiteList: DLPHelper is not initialized"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v5, "userId":I
    iget-object v6, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    invoke-virtual {v6, p1}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getDLPConfig(Landroid/app/enterprise/ContextInfo;)Landroid/os/Bundle;

    move-result-object v6

    invoke-direct {p0, p1, v6}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->feederToMdmMigration(Landroid/app/enterprise/ContextInfo;Landroid/os/Bundle;)V

    invoke-static {v5}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->isActivated(I)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;

    .local v1, "dpi":Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;
    if-eqz v1, :cond_3

    iget-object v0, v1, Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;->appIdentity:Lcom/sec/enterprise/AppIdentity;

    .local v0, "ai":Lcom/sec/enterprise/AppIdentity;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/sec/enterprise/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v4

    .local v4, "signature":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    invoke-virtual {v6, p1, v3, v4}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->isListAppsContainsDLPPackageInfo(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-direct {p0, v5, v3}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->forceStopPackage(ILjava/lang/String;)V

    goto :goto_1

    .end local v0    # "ai":Lcom/sec/enterprise/AppIdentity;
    .end local v1    # "dpi":Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "signature":Ljava/lang/String;
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->_addPackagesToAllowDLPWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z

    move-result v6

    goto :goto_0
.end method

.method public checkLaunchIntentForAccessDLPInternal(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;IILjava/lang/String;II)Z
    .locals 19
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "callingPid"    # I
    .param p4, "callingUid"    # I
    .param p5, "callingPackage"    # Ljava/lang/String;
    .param p6, "realCallingPid"    # I
    .param p7, "realCallingUid"    # I

    .prologue
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .local v2, "uri":Landroid/net/Uri;
    if-nez v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v8

    .local v8, "authority":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p2

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .local v9, "calleePkgName":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v18

    .local v18, "userid":I
    if-nez v9, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v15, 0x0

    .local v15, "isInterestedApp":Z
    sget-object v7, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->ContentProviderRestrictingApps:[Ljava/lang/String;

    .local v7, "arr$":[Ljava/lang/String;
    array-length v0, v7

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    :goto_1
    move/from16 v0, v16

    if-ge v14, v0, :cond_4

    aget-object v17, v7, v14

    .local v17, "pkgName":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v15, 0x1

    .end local v17    # "pkgName":Ljava/lang/String;
    :cond_4
    if-nez v15, :cond_6

    const/4 v1, 0x1

    goto :goto_0

    .restart local v17    # "pkgName":Ljava/lang/String;
    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .end local v17    # "pkgName":Ljava/lang/String;
    :cond_6
    invoke-static/range {v18 .. v18}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->isActivated(I)Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v1, 0x1

    goto :goto_0

    :cond_7
    move/from16 v0, v18

    invoke-static {v0, v9}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getAccessInfo(ILjava/lang/String;)I

    move-result v1

    const/16 v3, 0x100

    if-eq v1, v3, :cond_8

    const/4 v1, 0x1

    goto :goto_0

    :cond_8
    const-string/jumbo v1, "media"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "@media"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "downloads"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "@downloads"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_9
    invoke-virtual {v2}, Landroid/net/Uri;->getEncodedUserInfo()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "@"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_data"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .local v10, "cur":Landroid/database/Cursor;
    if-eqz v10, :cond_c

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .local v13, "filepath":Ljava/lang/String;
    if-eqz v13, :cond_b

    const-string v1, "/"

    invoke-virtual {v13, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "file://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .local v12, "file_uri":Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .end local v12    # "file_uri":Landroid/net/Uri;
    .end local v13    # "filepath":Ljava/lang/String;
    :cond_b
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v7    # "arr$":[Ljava/lang/String;
    .end local v9    # "calleePkgName":Ljava/lang/String;
    .end local v10    # "cur":Landroid/database/Cursor;
    .end local v14    # "i$":I
    .end local v15    # "isInterestedApp":Z
    .end local v16    # "len$":I
    .end local v18    # "userid":I
    :cond_c
    :goto_2
    const/4 v1, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v11

    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump DLPManagerPolicyService from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " without permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getDLPHelperInstance()Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getDLPConfig(Landroid/app/enterprise/ContextInfo;)Landroid/os/Bundle;
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .local v0, "ret":Landroid/os/Bundle;
    if-nez p1, :cond_0

    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getDLPHelperInstance()Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-result-object v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string v3, "In getDLPConfig: DLPHelper is not initialized"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->_getDLPConfig(Landroid/app/enterprise/ContextInfo;)Landroid/os/Bundle;

    move-result-object v0

    move-object v1, v0

    goto :goto_0
.end method

.method public getPackagesFromAllowDLPWhiteList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getDLPHelperInstance()Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string v2, "In getPackagesFromAllowDLPWhiteList: DLPHelper is not initialized"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->_getPackagesFromAllowDLPWhiteList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public isDLPActivated(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    invoke-static {p1}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->isActivated(I)Z

    move-result v0

    return v0
.end method

.method public isDLPLocked(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    invoke-static {p1}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->isLocked(I)Z

    move-result v0

    return v0
.end method

.method public isShareAllowed(Landroid/app/enterprise/ContextInfo;[Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 25
    .param p1, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "selectionArgs"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .param p5, "callingUid"    # I

    .prologue
    const/4 v13, 0x1

    .local v13, "isShareAllowed":Z
    :try_start_0
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->isActivated(I)Z

    move-result v22

    if-eqz v22, :cond_c

    const/16 v22, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v23

    packed-switch v23, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v22, :pswitch_data_1

    sget-object v22, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string v23, "In the default case"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v22, 0x0

    :goto_1
    return v22

    :pswitch_0
    const-string/jumbo v23, "isAllowedToShare"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_0

    const/16 v22, 0x0

    goto :goto_0

    :pswitch_1
    if-nez p2, :cond_1

    sget-object v22, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v23, "isShareAllowed. selectionArgs is null. return true"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v22, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getPackagesFromAllowDLPWhiteList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;

    move-result-object v17

    .local v17, "pkgInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;>;"
    const/4 v11, 0x0

    .local v11, "isConsumerAppDLP":Z
    const/4 v10, 0x0

    .local v10, "isCallerAppDLP":Z
    if-eqz v17, :cond_a

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v22

    if-lez v22, :cond_a

    const-string/jumbo v22, "package"

    invoke-static/range {v22 .. v22}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v19

    .local v19, "pm":Landroid/content/pm/IPackageManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string v23, "android"

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, p4

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v5

    .local v5, "ctx":Landroid/content/Context;
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_6

    const/16 v22, 0x0

    aget-object v22, p2, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .local v21, "uid":I
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;

    .local v16, "pkgInfo":Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;->appIdentity:Lcom/sec/enterprise/AppIdentity;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .local v14, "packageName":Ljava/lang/String;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;->appIdentity:Lcom/sec/enterprise/AppIdentity;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/enterprise/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v20

    .local v20, "signature":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    .local v8, "identity":J
    :try_start_1
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_2

    move-object/from16 v0, v20

    invoke-static {v5, v14, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->comparePackageSignature(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_4

    :cond_2
    move-object/from16 v0, v19

    move/from16 v1, p4

    invoke-interface {v0, v14, v1}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v18

    .local v18, "pkguid":I
    move/from16 v0, v21

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    const/4 v11, 0x1

    :cond_3
    move/from16 v0, p5

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    const/4 v10, 0x1

    .end local v18    # "pkguid":I
    :cond_4
    :try_start_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .end local v5    # "ctx":Landroid/content/Context;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "identity":J
    .end local v10    # "isCallerAppDLP":Z
    .end local v11    # "isConsumerAppDLP":Z
    .end local v14    # "packageName":Ljava/lang/String;
    .end local v16    # "pkgInfo":Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;
    .end local v17    # "pkgInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;>;"
    .end local v19    # "pm":Landroid/content/pm/IPackageManager;
    .end local v20    # "signature":Ljava/lang/String;
    .end local v21    # "uid":I
    :catch_0
    move-exception v6

    .local v6, "e":Ljava/lang/Exception;
    const/4 v13, 0x0

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .end local v6    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_3
    move/from16 v22, v13

    goto/16 :goto_1

    .restart local v5    # "ctx":Landroid/content/Context;
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v8    # "identity":J
    .restart local v10    # "isCallerAppDLP":Z
    .restart local v11    # "isConsumerAppDLP":Z
    .restart local v14    # "packageName":Ljava/lang/String;
    .restart local v16    # "pkgInfo":Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;
    .restart local v17    # "pkgInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;>;"
    .restart local v19    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v20    # "signature":Ljava/lang/String;
    .restart local v21    # "uid":I
    :catchall_0
    move-exception v22

    :try_start_3
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v22

    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "identity":J
    .end local v14    # "packageName":Ljava/lang/String;
    .end local v16    # "pkgInfo":Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;
    .end local v20    # "signature":Ljava/lang/String;
    .end local v21    # "uid":I
    :cond_6
    const/16 v22, 0x0

    aget-object v22, p2, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .restart local v21    # "uid":I
    const/16 v22, 0x1

    aget-object v22, p2, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .local v15, "pid":I
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v0, v15}, Landroid/app/IActivityManager;->getPackageFromAppProcesses(I)Ljava/lang/String;

    move-result-object v4

    .local v4, "consumerPkgName":Ljava/lang/String;
    sget-object v22, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "isShareAllowed consumerPkgName : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;

    .restart local v16    # "pkgInfo":Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;->appIdentity:Lcom/sec/enterprise/AppIdentity;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .restart local v14    # "packageName":Ljava/lang/String;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;->appIdentity:Lcom/sec/enterprise/AppIdentity;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/enterprise/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v20

    .restart local v20    # "signature":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-wide v8

    .restart local v8    # "identity":J
    :try_start_4
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_7

    move-object/from16 v0, v20

    invoke-static {v5, v14, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->comparePackageSignature(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_9

    :cond_7
    move-object/from16 v0, v19

    move/from16 v1, p4

    invoke-interface {v0, v14, v1}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v18

    .restart local v18    # "pkguid":I
    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v22

    if-eqz v22, :cond_8

    const/4 v11, 0x1

    :cond_8
    move/from16 v0, p5

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    const/4 v10, 0x1

    .end local v18    # "pkguid":I
    :cond_9
    :try_start_5
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_4

    :catchall_1
    move-exception v22

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v22

    .end local v4    # "consumerPkgName":Ljava/lang/String;
    .end local v5    # "ctx":Landroid/content/Context;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "identity":J
    .end local v14    # "packageName":Ljava/lang/String;
    .end local v15    # "pid":I
    .end local v16    # "pkgInfo":Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;
    .end local v19    # "pm":Landroid/content/pm/IPackageManager;
    .end local v20    # "signature":Ljava/lang/String;
    .end local v21    # "uid":I
    :cond_a
    if-eqz v10, :cond_5

    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->isLocked(I)Z

    move-result v12

    .local v12, "isLocked":Z
    if-eqz v11, :cond_b

    if-eqz v11, :cond_5

    if-eqz v12, :cond_5

    :cond_b
    sget-object v22, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "isShareAllowed is false - isLocked:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " isCallerAppDLP:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " isConsumerAppDLP:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    goto/16 :goto_3

    .end local v10    # "isCallerAppDLP":Z
    .end local v11    # "isConsumerAppDLP":Z
    .end local v12    # "isLocked":Z
    .end local v17    # "pkgInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/dlp/DLPPackageInfo;>;"
    :cond_c
    sget-object v22, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string v23, "DLP Is not activated"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x67e79726
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public notifyDLPOpenedFile(Landroid/app/enterprise/ContextInfo;ILjava/lang/String;)Z
    .locals 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "processId"    # I
    .param p3, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .local v8, "ret":Z
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .local v9, "uid":I
    sget-boolean v10, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->DBG:Z

    if-eqz v10, :cond_0

    sget-object v10, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "notifyDLPOpenedFile() called with containerID = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    iget v12, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " processId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " filePath = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "Calling UID = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v10, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .local v6, "packageManager":Landroid/content/pm/PackageManager;
    const-string v10, "com.android.providers.media"

    move-object/from16 v0, p1

    iget v11, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v6, v10, v11}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v10

    if-eq v9, v10, :cond_1

    const-string v10, "com.android.providers.downloads"

    move-object/from16 v0, p1

    iget v11, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v6, v10, v11}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v10

    if-eq v9, v10, :cond_1

    sget-object v10, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "notifyDLPOpenedFile() caller is not authorised permission denied"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v10, 0x0

    .end local v6    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v9    # "uid":I
    :goto_0
    return v10

    :catch_0
    move-exception v4

    .local v4, "e":Ljava/lang/Exception;
    sget-object v10, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception occured : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    goto :goto_0

    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v6    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v9    # "uid":I
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "calling_uid":J
    :try_start_1
    move-object/from16 v0, p1

    iget v10, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    move-object/from16 v0, p3

    invoke-static {v0, v10}, Lcom/sec/knox/container/util/PathTranslator;->getRealPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .local v7, "realPath":Ljava/lang/String;
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_4

    :cond_2
    sget-boolean v10, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->DBG:Z

    if-eqz v10, :cond_3

    sget-object v10, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "path translation failed for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object/from16 v7, p3

    :cond_4
    iget-object v10, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/util/EnterprisePartitionManager;

    move-result-object v5

    .local v5, "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p1

    iget v14, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    aput-object v7, v12, v13

    invoke-virtual {v5, v10, v11, v12}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->sendDLPCommand(II[Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v10, v8

    goto :goto_0

    .end local v5    # "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    .end local v7    # "realPath":Ljava/lang/String;
    :catchall_0
    move-exception v10

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v10
.end method

.method public onAdminAdded(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    return-void
.end method

.method public registerEnterpriseDLPpolicyReciever()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    sget-boolean v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerEnterpriseDLPpolicyReciever - Binding the receiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$EnterpriseDLPpolicyReciever;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$EnterpriseDLPpolicyReciever;-><init>(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;)V

    iput-object v0, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->receiver:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$EnterpriseDLPpolicyReciever;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .local v3, "systemFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->receiver:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$EnterpriseDLPpolicyReciever;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public removeDLPFiles(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "onlyExpired"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .local v0, "ret":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->enforceKnoxDLPPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 v0, 0x0

    .end local v0    # "ret":Z
    :cond_0
    :goto_0
    return v0

    .restart local v0    # "ret":Z
    :cond_1
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v2, "userId":I
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getDLPInterface(I)Lcom/sec/enterprise/knox/dlp/IFrameworkConnector;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->bindToDLPService(I)V

    :cond_2
    invoke-direct {p0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getDLPHelperInstance()Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeDLPFiles => onlyExpired: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->addDumpLog(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getDLPInterface(I)Lcom/sec/enterprise/knox/dlp/IFrameworkConnector;

    move-result-object v1

    .local v1, "serviceConn":Lcom/sec/enterprise/knox/dlp/IFrameworkConnector;
    if-eqz v1, :cond_0

    sget-object v3, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string v4, "DLP : notify DLPService"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1, p2}, Lcom/sec/enterprise/knox/dlp/IFrameworkConnector;->removeDLPFiles(Z)Z

    move-result v0

    goto :goto_0
.end method

.method public removePackagesFromAllowDLPWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->enforceKnoxDLPPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getDLPHelperInstance()Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-result-object v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string v5, "In removePackagesFromAllowDLPWhiteList: DLPHelper is not initialized"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getDLPConfig(Landroid/app/enterprise/ContextInfo;)Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->feederToMdmMigration(Landroid/app/enterprise/ContextInfo;Landroid/os/Bundle;)V

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v2, "userId":I
    invoke-static {v2}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->isActivated(I)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v1, v4}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->isListAppsContainsDLPPackageInfo(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, v2, v1}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->forceStopPackage(ILjava/lang/String;)V

    goto :goto_1

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->_removePackagesFromAllowDLPWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z

    move-result v3

    goto :goto_0
.end method

.method public setDLPConfig(Landroid/app/enterprise/ContextInfo;Landroid/os/Bundle;)Z
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "config"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .local v0, "ret":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->enforceKnoxDLPPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object v2, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string v3, "DLP: cxtInfo is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->isDLPKernelEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getDLPHelperInstance()Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-result-object v2

    const-string/jumbo v3, "setDLPConfig /dev/sdp_dlp is not found, need to port DLP Kernel"

    invoke-virtual {v2, p1, v3}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->addDumpLog(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V

    sget-object v2, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string v3, "In setDLPConfig: /dev/sdp_dlp is not found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getDLPHelperInstance()Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-result-object v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string v3, "In setDLPConfig: DLPHelper is not initialized"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->feederToMdmMigration(Landroid/app/enterprise/ContextInfo;Landroid/os/Bundle;)V

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->_setDLPConfig(Landroid/app/enterprise/ContextInfo;Landroid/os/Bundle;)Z

    move-result v0

    move v1, v0

    goto :goto_0
.end method

.method public setExpiryDate(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;J)Z
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "time"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .local v4, "ret":Z
    sget-object v6, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setExpiryDate() called with containerID = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " file name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " time = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->checkDLPCaller()Z

    move-result v6

    if-nez v6, :cond_0

    sget-object v6, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "setExpiryDate() caller is not authorised permission denied"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v5

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "calling_uid":J
    :try_start_0
    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {p2, v5}, Lcom/sec/knox/container/util/PathTranslator;->getRealPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .local v3, "realPath":Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    sget-object v5, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "path translation failed for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, p2

    :cond_2
    iget-object v5, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/util/EnterprisePartitionManager;

    move-result-object v2

    .local v2, "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v3, v7, v8

    const/4 v8, 0x2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v2, v5, v6, v7}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->sendDLPCommand(II[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v5, v4

    goto :goto_0

    .end local v2    # "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    .end local v3    # "realPath":Ljava/lang/String;
    :catchall_0
    move-exception v5

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public systemReady()V
    .locals 0

    .prologue
    return-void
.end method

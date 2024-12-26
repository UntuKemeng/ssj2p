.class Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
.super Ljava/lang/Object;
.source "FingerprintService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/FingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientMonitor"
.end annotation


# instance fields
.field attribute:Landroid/os/Bundle;

.field currentUserId:I

.field isDone:Z

.field isFromFPMS:Z

.field mPrivilegedAttr:I

.field needRetry:Z

.field opPackageName:Ljava/lang/String;

.field owner:Ljava/lang/String;

.field receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

.field restricted:Z

.field final synthetic this$0:Lcom/android/server/fingerprint/FingerprintService;

.field token:Landroid/os/IBinder;

.field userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIZLjava/lang/String;)V
    .locals 3
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p4, "currentUserId"    # I
    .param p5, "userId"    # I
    .param p6, "restricted"    # Z
    .param p7, "owner"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1230
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1221
    iput-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->attribute:Landroid/os/Bundle;

    .line 1222
    iput-boolean v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->isFromFPMS:Z

    .line 1223
    iput-boolean v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->isDone:Z

    .line 1224
    iput-boolean v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->needRetry:Z

    .line 1225
    iput v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->mPrivilegedAttr:I

    .line 1226
    iput-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->opPackageName:Ljava/lang/String;

    .line 1231
    iput-object p2, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    .line 1232
    iput-object p3, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .line 1233
    iput p5, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->userId:I

    .line 1234
    iput p4, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->currentUserId:I

    .line 1235
    iput-boolean p6, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->restricted:Z

    .line 1236
    iput-object p7, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->owner:Ljava/lang/String;

    .line 1238
    if-eqz p2, :cond_0

    .line 1239
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p2, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1244
    :cond_0
    :goto_0
    return-void

    .line 1241
    :catch_0
    move-exception v0

    .line 1242
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintService"

    const-string v2, "caught remote exception in linkToDeath: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIZLjava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p4, "currentUserId"    # I
    .param p5, "userId"    # I
    .param p6, "restricted"    # Z
    .param p7, "owner"    # Ljava/lang/String;
    .param p8, "attr"    # Landroid/os/Bundle;

    .prologue
    .line 1248
    invoke-direct/range {p0 .. p7}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIZLjava/lang/String;)V

    .line 1249
    if-eqz p8, :cond_2

    .line 1250
    iput-object p8, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->attribute:Landroid/os/Bundle;

    .line 1251
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->attribute:Landroid/os/Bundle;

    const-string/jumbo v1, "packageName"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->opPackageName:Ljava/lang/String;

    .line 1252
    # getter for: Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/fingerprint/FingerprintService;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1253
    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClientMonitor: packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->opPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    :cond_0
    if-nez p6, :cond_2

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->opPackageName:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1256
    const-string v0, "com.samsung.android.fingerprint.service"

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->opPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->isFromFPMS:Z

    .line 1259
    :cond_1
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->opPackageName:Ljava/lang/String;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mKeyguardPackage:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/fingerprint/FingerprintService;->access$1200(Lcom/android/server/fingerprint/FingerprintService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1260
    const v0, -0x7ffffff9

    iput v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->mPrivilegedAttr:I

    .line 1268
    :cond_2
    :goto_0
    # getter for: Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/fingerprint/FingerprintService;->access$100()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1269
    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClientMonitor: token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClientMonitor: restricted ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClientMonitor: privilegedAttr=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->mPrivilegedAttr:I

    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    :cond_3
    return-void

    .line 1264
    :cond_4
    const-string/jumbo v0, "privileged_attr"

    const/4 v1, 0x0

    invoke-virtual {p8, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->mPrivilegedAttr:I

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
    .param p1, "x1"    # I

    .prologue
    .line 1215
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendAcquired(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;III)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 1215
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendEnrollResult(III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 1215
    invoke-direct {p0, p1, p2}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendRemoved(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
    .param p1, "x1"    # I

    .prologue
    .line 1215
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendError(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 1215
    invoke-direct {p0, p1, p2}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendAuthenticated(II)Z

    move-result v0

    return v0
.end method

.method private isQualityFailedInfo(I)Z
    .locals 1
    .param p1, "acquiredInfo"    # I

    .prologue
    .line 1443
    sparse-switch p1, :sswitch_data_0

    .line 1453
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1451
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1443
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
        0x3e9 -> :sswitch_0
        0x3ea -> :sswitch_0
    .end sparse-switch
.end method

.method private sendAcquired(I)Z
    .locals 12
    .param p1, "acquiredInfo"    # I

    .prologue
    const/4 v6, 0x1

    .line 1460
    # getter for: Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/fingerprint/FingerprintService;->access$100()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1461
    const-string v7, "FingerprintService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ClientMonitor["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] : sendAcquired : acquiredInfo="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    :cond_0
    iget-object v7, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-nez v7, :cond_2

    .line 1464
    const-string v7, "FingerprintService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ClientMonitor["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] : sendAcquired : receiver is null"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    :cond_1
    :goto_0
    return v6

    .line 1468
    :cond_2
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->isQualityFailedInfo(I)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->hasPrivilegedAttr(I)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1469
    iget-object v7, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v7}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/fingerprint/FingerprintUtils;->vibrateFingerprintError(Landroid/content/Context;)V

    .line 1471
    :cond_3
    iget-object v7, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iget-object v8, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J
    invoke-static {v8}, Lcom/android/server/fingerprint/FingerprintService;->access$1600(Lcom/android/server/fingerprint/FingerprintService;)J

    move-result-wide v8

    invoke-interface {v7, v8, v9, p1}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAcquired(JI)V

    .line 1472
    const/16 v7, 0x2714

    if-eq p1, v7, :cond_4

    const/16 v7, 0x2717

    if-ne p1, v7, :cond_6

    :cond_4
    iget-boolean v7, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->isFromFPMS:Z

    if-eqz v7, :cond_6

    .line 1475
    iget-object v7, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v7}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v2

    .line 1476
    .local v2, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-eqz v2, :cond_7

    .line 1477
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1478
    .local v0, "begin":J
    invoke-interface {v2}, Landroid/hardware/fingerprint/IFingerprintDaemon;->cancelAuthentication()I

    move-result v5

    .line 1479
    .local v5, "result":I
    const-string v7, "FingerprintService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ClientMonitor["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] : sendAcquired : cancelAuthentication FP_FINISH ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v0

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "ms) RESULT: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    if-eqz v5, :cond_5

    .line 1481
    const-string v7, "FingerprintService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ClientMonitor["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] : sendAcquired : cancelAuthentication failed, result="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1498
    :cond_5
    if-nez p1, :cond_1

    .line 1499
    iget-object v7, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/fingerprint/FingerprintService;->userActivity()V
    invoke-static {v7}, Lcom/android/server/fingerprint/FingerprintService;->access$1900(Lcom/android/server/fingerprint/FingerprintService;)V

    goto/16 :goto_0

    .line 1485
    .end local v0    # "begin":J
    .end local v2    # "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    .end local v5    # "result":I
    :cond_6
    const/16 v7, 0x2719

    if-ne p1, v7, :cond_7

    .line 1498
    if-nez p1, :cond_1

    .line 1499
    iget-object v7, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/fingerprint/FingerprintService;->userActivity()V
    invoke-static {v7}, Lcom/android/server/fingerprint/FingerprintService;->access$1900(Lcom/android/server/fingerprint/FingerprintService;)V

    goto/16 :goto_0

    .line 1488
    :cond_7
    const/4 v6, 0x0

    .line 1498
    if-nez p1, :cond_1

    .line 1499
    iget-object v7, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/fingerprint/FingerprintService;->userActivity()V
    invoke-static {v7}, Lcom/android/server/fingerprint/FingerprintService;->access$1900(Lcom/android/server/fingerprint/FingerprintService;)V

    goto/16 :goto_0

    .line 1489
    :catch_0
    move-exception v3

    .line 1490
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v7, "FingerprintService"

    const-string v8, "Failed to invoke sendAcquired:"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1498
    if-nez p1, :cond_1

    .line 1499
    iget-object v7, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/fingerprint/FingerprintService;->userActivity()V
    invoke-static {v7}, Lcom/android/server/fingerprint/FingerprintService;->access$1900(Lcom/android/server/fingerprint/FingerprintService;)V

    goto/16 :goto_0

    .line 1492
    .end local v3    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v4

    .line 1493
    .local v4, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string v7, "FingerprintService"

    const-string v8, "Failed to notify sendAcquired:"

    invoke-static {v7, v8, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1498
    if-nez p1, :cond_1

    .line 1499
    iget-object v7, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/fingerprint/FingerprintService;->userActivity()V
    invoke-static {v7}, Lcom/android/server/fingerprint/FingerprintService;->access$1900(Lcom/android/server/fingerprint/FingerprintService;)V

    goto/16 :goto_0

    .line 1498
    .end local v4    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-nez p1, :cond_8

    .line 1499
    iget-object v7, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/fingerprint/FingerprintService;->userActivity()V
    invoke-static {v7}, Lcom/android/server/fingerprint/FingerprintService;->access$1900(Lcom/android/server/fingerprint/FingerprintService;)V

    :cond_8
    throw v6
.end method

.method private sendAuthenticated(II)Z
    .locals 17
    .param p1, "fpId"    # I
    .param p2, "groupId"    # I

    .prologue
    .line 1374
    # getter for: Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/fingerprint/FingerprintService;->access$100()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ClientMonitor["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] : sendAuthenticated : fpId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", groupId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    :cond_0
    const/16 v16, 0x0

    .line 1376
    .local v16, "result":Z
    if-eqz p1, :cond_4

    const/4 v10, 0x1

    .line 1377
    .local v10, "authenticated":Z
    :goto_0
    if-eqz p1, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->attribute:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    .line 1378
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->attribute:Landroid/os/Bundle;

    const-string/jumbo v3, "request_template_index_list"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v8

    .line 1379
    .local v8, "allowIndexes":[I
    if-eqz v8, :cond_1

    .line 1380
    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ClientMonitor["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] : sendAuthenticated : allowIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v8}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    const/4 v10, 0x0

    .line 1382
    move-object v9, v8

    .local v9, "arr$":[I
    array-length v15, v9

    .local v15, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    :goto_1
    if-ge v14, v15, :cond_1

    aget v13, v9, v14

    .line 1383
    .local v13, "i":I
    move/from16 v0, p1

    if-ne v13, v0, :cond_5

    .line 1384
    const/4 v10, 0x1

    .line 1390
    .end local v8    # "allowIndexes":[I
    .end local v9    # "arr$":[I
    .end local v13    # "i":I
    .end local v14    # "i$":I
    .end local v15    # "len$":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz v2, :cond_9

    .line 1392
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->access$300(Lcom/android/server/fingerprint/FingerprintService;)Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0xfc

    invoke-static {v2, v3, v10}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 1394
    if-nez v10, :cond_6

    .line 1395
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J
    invoke-static {v3}, Lcom/android/server/fingerprint/FingerprintService;->access$1600(Lcom/android/server/fingerprint/FingerprintService;)J

    move-result-wide v4

    invoke-interface {v2, v4, v5}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAuthenticationFailed(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1413
    :goto_2
    if-nez v10, :cond_b

    .line 1414
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->hasPrivilegedAttr(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1415
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v2}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintUtils;->vibrateFingerprintError(Landroid/content/Context;)V

    .line 1417
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    move-object/from16 v0, p0

    # invokes: Lcom/android/server/fingerprint/FingerprintService;->handleFailedAttempt(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)Z
    invoke-static {v2, v0}, Lcom/android/server/fingerprint/FingerprintService;->access$1700(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)Z

    move-result v2

    or-int v16, v16, v2

    .line 1418
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->isFromFPMS:Z

    if-nez v2, :cond_3

    .line 1419
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/fingerprint/FingerprintService;->inLockoutMode()Z
    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->access$1800(Lcom/android/server/fingerprint/FingerprintService;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1420
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    const-string v3, "FPIB"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->opPackageName:Ljava/lang/String;

    const-wide/16 v6, -0x1

    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/android/server/fingerprint/FingerprintService;->insertSurveyLog(Ljava/lang/String;Ljava/lang/String;J)V

    .line 1439
    :cond_3
    :goto_3
    return v16

    .line 1376
    .end local v10    # "authenticated":Z
    :cond_4
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 1382
    .restart local v8    # "allowIndexes":[I
    .restart local v9    # "arr$":[I
    .restart local v10    # "authenticated":Z
    .restart local v13    # "i":I
    .restart local v14    # "i$":I
    .restart local v15    # "len$":I
    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 1397
    .end local v8    # "allowIndexes":[I
    .end local v9    # "arr$":[I
    .end local v13    # "i":I
    .end local v14    # "i$":I
    .end local v15    # "len$":I
    :cond_6
    :try_start_1
    # getter for: Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/fingerprint/FingerprintService;->access$100()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1398
    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onAuthenticated(owner="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
    invoke-static {v4}, Lcom/android/server/fingerprint/FingerprintService;->access$1300(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->owner:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", gp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->restricted:Z

    if-nez v2, :cond_8

    new-instance v2, Landroid/hardware/fingerprint/Fingerprint;

    const-string v3, ""

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J
    invoke-static {v4}, Lcom/android/server/fingerprint/FingerprintService;->access$1600(Lcom/android/server/fingerprint/FingerprintService;)J

    move-result-wide v6

    move/from16 v4, p2

    move/from16 v5, p1

    invoke-direct/range {v2 .. v7}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    move-object v12, v2

    .line 1403
    .local v12, "fp":Landroid/hardware/fingerprint/Fingerprint;
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J
    invoke-static {v3}, Lcom/android/server/fingerprint/FingerprintService;->access$1600(Lcom/android/server/fingerprint/FingerprintService;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->currentUserId:I

    invoke-interface {v2, v4, v5, v12, v3}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAuthenticationSucceeded(JLandroid/hardware/fingerprint/Fingerprint;I)V

    .line 1404
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->isDone:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 1406
    .end local v12    # "fp":Landroid/hardware/fingerprint/Fingerprint;
    :catch_0
    move-exception v11

    .line 1407
    .local v11, "e":Landroid/os/RemoteException;
    const-string v2, "FingerprintService"

    const-string v3, "Failed to notify Authenticated:"

    invoke-static {v2, v3, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1408
    const/16 v16, 0x1

    .line 1409
    goto/16 :goto_2

    .line 1401
    .end local v11    # "e":Landroid/os/RemoteException;
    :cond_8
    const/4 v12, 0x0

    goto :goto_4

    .line 1411
    :cond_9
    const/16 v16, 0x1

    goto/16 :goto_2

    .line 1422
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    const-string v3, "FPIF"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->opPackageName:Ljava/lang/String;

    const-wide/16 v6, -0x1

    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/android/server/fingerprint/FingerprintService;->insertSurveyLog(Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_3

    .line 1433
    :cond_b
    or-int/lit8 v16, v16, 0x1

    .line 1434
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/fingerprint/FingerprintService;->resetFailedAttempts()V
    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->access$400(Lcom/android/server/fingerprint/FingerprintService;)V

    .line 1435
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->isFromFPMS:Z

    if-nez v2, :cond_3

    .line 1436
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    const-string v3, "FPIS"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->opPackageName:Ljava/lang/String;

    const-wide/16 v6, -0x1

    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/android/server/fingerprint/FingerprintService;->insertSurveyLog(Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_3
.end method

.method private sendEnrollResult(III)Z
    .locals 8
    .param p1, "fpId"    # I
    .param p2, "groupId"    # I
    .param p3, "remaining"    # I

    .prologue
    const/4 v7, 0x1

    .line 1354
    # getter for: Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/fingerprint/FingerprintService;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClientMonitor : sendEnrollResult : fpId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", groupId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", remaining="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    :cond_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-nez v1, :cond_1

    .line 1366
    :goto_0
    return v7

    .line 1356
    :cond_1
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v1}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintUtils;->vibrateFingerprintSuccess(Landroid/content/Context;)V

    .line 1357
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->access$300(Lcom/android/server/fingerprint/FingerprintService;)Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0xfb

    invoke-static {v1, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 1359
    :try_start_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J
    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->access$1600(Lcom/android/server/fingerprint/FingerprintService;)J

    move-result-wide v2

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-interface/range {v1 .. v6}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onEnrollResult(JIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1364
    :catch_0
    move-exception v0

    .line 1365
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintService"

    const-string v2, "Failed to notify EnrollResult:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private sendError(I)Z
    .locals 7
    .param p1, "error"    # I

    .prologue
    const/4 v6, 0x1

    .line 1508
    iget-boolean v2, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->isDone:Z

    if-eqz v2, :cond_1

    .line 1509
    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ClientMonitor["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] : skip error - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    :cond_0
    :goto_0
    return v6

    .line 1512
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->needRetry:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x5

    if-ne p1, v2, :cond_2

    .line 1513
    const/16 p1, 0x1388

    .line 1515
    :cond_2
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz v2, :cond_0

    .line 1517
    :try_start_0
    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ClientMonitor["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] : sendError : error="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J
    invoke-static {v3}, Lcom/android/server/fingerprint/FingerprintService;->access$1600(Lcom/android/server/fingerprint/FingerprintService;)J

    move-result-wide v4

    invoke-interface {v2, v4, v5, p1}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onError(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1519
    :catch_0
    move-exception v0

    .line 1520
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "FingerprintService"

    const-string v3, "Failed to invoke sendError:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1521
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 1522
    .local v1, "ex":Ljava/lang/Exception;
    const-string v2, "FingerprintService"

    const-string v3, "Failed to invoke sendError:"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private sendRemoved(II)Z
    .locals 4
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I

    .prologue
    .line 1339
    # getter for: Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/fingerprint/FingerprintService;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClientMonitor["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] : sendRemoved : fingerId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", groupId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    :cond_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 1347
    :goto_0
    return v1

    .line 1342
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J
    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->access$1600(Lcom/android/server/fingerprint/FingerprintService;)J

    move-result-wide v2

    invoke-interface {v1, v2, v3, p1, p2}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onRemoved(JII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1347
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 1344
    :catch_0
    move-exception v0

    .line 1345
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintService"

    const-string v2, "Failed to notify Removed:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 1298
    # getter for: Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/fingerprint/FingerprintService;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClientMonitor["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] : binderDied"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor$1;

    invoke-direct {v1, p0}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor$1;-><init>(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1321
    return-void
.end method

.method public destroy()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1283
    # getter for: Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/fingerprint/FingerprintService;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClientMonitor : destroy, token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    :cond_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    if-eqz v1, :cond_1

    .line 1286
    :try_start_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1291
    :goto_0
    iput-object v5, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    .line 1293
    :cond_1
    iput-object v5, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .line 1294
    return-void

    .line 1287
    :catch_0
    move-exception v0

    .line 1289
    .local v0, "e":Ljava/util/NoSuchElementException;
    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "destroy(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Exception;

    const-string/jumbo v4, "here"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1326
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    if-eqz v0, :cond_1

    .line 1327
    # getter for: Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/fingerprint/FingerprintService;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removing leaked reference: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V
    invoke-static {v0, p0}, Lcom/android/server/fingerprint/FingerprintService;->access$1500(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1331
    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1333
    return-void

    .line 1331
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public hasPrivilegedAttr(I)Z
    .locals 1
    .param p1, "attr"    # I

    .prologue
    .line 1276
    iget v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->mPrivilegedAttr:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    .line 1277
    const/4 v0, 0x1

    .line 1279
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

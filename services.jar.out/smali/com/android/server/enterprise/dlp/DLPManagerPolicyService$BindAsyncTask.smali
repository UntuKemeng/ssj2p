.class Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;
.super Landroid/os/AsyncTask;
.source "DLPManagerPolicyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BindAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/Intent;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field public static final ACTIVATE:I = 0x2

.field public static final DELETE_APP_DATA:I = 0x3

.field public static final EXPIRY_AFTER:I = 0x1

.field public static final FEEDER_INSTALLATION:I


# instance fields
.field private opcode:I

.field final synthetic this$0:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;I)V
    .locals 0
    .param p2, "opcode"    # I

    .prologue
    .line 351
    iput-object p1, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;->this$0:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    .line 352
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 353
    iput p2, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;->opcode:I

    .line 354
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 345
    check-cast p1, [Landroid/content/Intent;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;->doInBackground([Landroid/content/Intent;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/content/Intent;)Ljava/lang/Void;
    .locals 14
    .param p1, "arg"    # [Landroid/content/Intent;

    .prologue
    const/4 v13, 0x0

    const/4 v10, 0x0

    .line 373
    aget-object v3, p1, v10

    .line 375
    .local v3, "in":Landroid/content/Intent;
    if-nez v3, :cond_1

    .line 376
    :try_start_0
    # getter for: Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$400()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 377
    # getter for: Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$000()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "in bindAsyncTask: doInBackground : Intent is null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_0
    :goto_0
    return-object v13

    .line 381
    :cond_1
    const-string v10, "android.intent.extra.user_handle"

    const/4 v11, -0x1

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 382
    .local v9, "userId":I
    iget-object v10, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;->this$0:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    # invokes: Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getDLPInterface(I)Lcom/sec/enterprise/knox/dlp/IFrameworkConnector;
    invoke-static {v10, v9}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$700(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;I)Lcom/sec/enterprise/knox/dlp/IFrameworkConnector;

    move-result-object v10

    if-nez v10, :cond_2

    .line 383
    iget-object v10, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;->this$0:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    # invokes: Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->bindToDLPService(I)V
    invoke-static {v10, v9}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$800(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;I)V

    .line 385
    :cond_2
    iget-object v10, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;->this$0:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    # invokes: Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getDLPInterface(I)Lcom/sec/enterprise/knox/dlp/IFrameworkConnector;
    invoke-static {v10, v9}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$700(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;I)Lcom/sec/enterprise/knox/dlp/IFrameworkConnector;

    move-result-object v7

    .line 386
    .local v7, "serviceConn":Lcom/sec/enterprise/knox/dlp/IFrameworkConnector;
    if-nez v7, :cond_4

    .line 387
    # getter for: Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$400()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 388
    # getter for: Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$000()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "in bindAsyncTask: doInBackground : Could not bind to Samsung DLP Service"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 427
    .end local v7    # "serviceConn":Lcom/sec/enterprise/knox/dlp/IFrameworkConnector;
    .end local v9    # "userId":I
    :catch_0
    move-exception v1

    .line 428
    .local v1, "e":Landroid/os/RemoteException;
    # getter for: Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$400()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 429
    # getter for: Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$000()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "in bindAsyncTask: doInBackground:  got  RemoteException while retrieving Package Name"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_3
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 392
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v7    # "serviceConn":Lcom/sec/enterprise/knox/dlp/IFrameworkConnector;
    .restart local v9    # "userId":I
    :cond_4
    :try_start_1
    iget v10, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;->opcode:I

    packed-switch v10, :pswitch_data_0

    goto :goto_0

    .line 395
    :pswitch_0
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 396
    const-string v10, "android.intent.extra.UID"

    const/4 v11, -0x1

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 397
    .local v8, "uID":I
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v6

    .line 398
    .local v6, "pckgName":Ljava/lang/String;
    # getter for: Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$400()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 399
    # getter for: Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$000()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "in bindAsyncTask: doInBackground:  Package Name = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": userid = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " uid: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_5
    invoke-interface {v7, v6}, Lcom/sec/enterprise/knox/dlp/IFrameworkConnector;->getDLPConfig(Ljava/lang/String;)Lcom/sec/enterprise/knox/dlp/DLPConfig;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 432
    .end local v6    # "pckgName":Ljava/lang/String;
    .end local v7    # "serviceConn":Lcom/sec/enterprise/knox/dlp/IFrameworkConnector;
    .end local v8    # "uID":I
    .end local v9    # "userId":I
    :catch_1
    move-exception v1

    .line 433
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 407
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v7    # "serviceConn":Lcom/sec/enterprise/knox/dlp/IFrameworkConnector;
    .restart local v9    # "userId":I
    :pswitch_1
    :try_start_2
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 408
    .local v0, "config":Landroid/os/Bundle;
    # getter for: Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$000()Ljava/lang/String;

    move-result-object v10

    const-string v11, "DLP : notify DLPService change expiryAfter"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    const-string v10, "ExpiryAfter"

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 410
    .local v2, "expiry_after":I
    const/4 v10, 0x1

    invoke-interface {v7, v10, v2}, Lcom/sec/enterprise/knox/dlp/IFrameworkConnector;->configureDLPFileHandling(ZI)V

    goto/16 :goto_0

    .line 414
    .end local v0    # "config":Landroid/os/Bundle;
    .end local v2    # "expiry_after":I
    :pswitch_2
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 415
    .restart local v0    # "config":Landroid/os/Bundle;
    # getter for: Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$000()Ljava/lang/String;

    move-result-object v10

    const-string v11, "DLP : notify DLPService"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    const-string v10, "ExpiryAfter"

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 417
    .restart local v2    # "expiry_after":I
    const-string v10, "Activate"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 418
    .local v4, "isActivated":Z
    invoke-interface {v7, v4, v2}, Lcom/sec/enterprise/knox/dlp/IFrameworkConnector;->configureDLPFileHandling(ZI)V

    goto/16 :goto_0

    .line 422
    .end local v0    # "config":Landroid/os/Bundle;
    .end local v2    # "expiry_after":I
    .end local v4    # "isActivated":Z
    :pswitch_3
    const-string v10, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v3, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 423
    .local v5, "packageName":Ljava/lang/String;
    invoke-interface {v7, v5}, Lcom/sec/enterprise/knox/dlp/IFrameworkConnector;->deletePackageData(Ljava/lang/String;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 392
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 345
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$BindAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 358
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 359
    # getter for: Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    # getter for: Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "in bindAsyncTask: onPostExecute "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 365
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 366
    # getter for: Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    # getter for: Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "in bindAsyncTask: onPreExecute"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_0
    return-void
.end method
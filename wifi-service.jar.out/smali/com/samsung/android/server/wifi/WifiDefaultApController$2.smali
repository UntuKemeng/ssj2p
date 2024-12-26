.class Lcom/samsung/android/server/wifi/WifiDefaultApController$2;
.super Landroid/content/BroadcastReceiver;
.source "WifiDefaultApController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/WifiDefaultApController;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiServiceImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/WifiDefaultApController;)V
    .locals 0

    .prologue
    .line 367
    iput-object p1, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$2;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 370
    iget-object v6, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$2;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$100(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "wifi_generalinfo_nwinfo"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 372
    .local v4, "generalinfonw":Ljava/lang/String;
    const/4 v2, 0x0

    .line 373
    .local v2, "generalFW":Ljava/io/FileOutputStream;
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->DBG:Z
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$200()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 374
    const-string v6, "WifiDefaultApController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "String Matched General Info List"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_0
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathGeneralNwInfo:Ljava/io/File;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$1100()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 378
    const-string v6, "WifiDefaultApController"

    const-string v7, "GeneralInfo file delete is called"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathGeneralNwInfo:Ljava/io/File;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$1100()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 381
    :cond_1
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathPrevNwInfo:Ljava/io/File;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$1200()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 382
    const-string v6, "WifiDefaultApController"

    const-string v7, "mfilePathPrevNwInfo file delete is called"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathPrevNwInfo:Ljava/io/File;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$1200()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 385
    :cond_2
    iget-object v6, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$2;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    invoke-virtual {v6}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->clearGeneralNwInfoList()V

    .line 386
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    .line 387
    .local v5, "length":I
    if-nez v5, :cond_4

    .line 388
    const-string v6, "WifiDefaultApController"

    const-string v7, "Settings.Secure.WIFI_GENERALINFO_NWINFO is empty"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_3
    :goto_0
    return-void

    .line 393
    :cond_4
    :try_start_0
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathGeneralNwInfo:Ljava/io/File;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$1100()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    .line 394
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    const-string v7, "chmod 664 /data/misc/wifi/generalinfo_nw.conf"

    invoke-virtual {v6, v7}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 395
    new-instance v3, Ljava/io/FileOutputStream;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathGeneralNwInfo:Ljava/io/File;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$1100()Ljava/io/File;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct {v3, v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 396
    .end local v2    # "generalFW":Ljava/io/FileOutputStream;
    .local v3, "generalFW":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 405
    if-eqz v3, :cond_5

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_5
    move-object v2, v3

    .line 408
    .end local v3    # "generalFW":Ljava/io/FileOutputStream;
    .restart local v2    # "generalFW":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 406
    .end local v2    # "generalFW":Ljava/io/FileOutputStream;
    .restart local v3    # "generalFW":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 407
    .local v1, "e2":Ljava/lang/Exception;
    const-string v6, "WifiDefaultApController"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 409
    .end local v3    # "generalFW":Ljava/io/FileOutputStream;
    .restart local v2    # "generalFW":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 397
    .end local v1    # "e2":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 398
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    const-string v6, "WifiDefaultApController"

    const-string v7, "GeneralNwInfo File Create Not Found "

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 405
    if-eqz v2, :cond_3

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 406
    :catch_2
    move-exception v1

    .line 407
    .restart local v1    # "e2":Ljava/lang/Exception;
    const-string v6, "WifiDefaultApController"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 399
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v1    # "e2":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 400
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 405
    if-eqz v2, :cond_3

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 406
    :catch_4
    move-exception v1

    .line 407
    .restart local v1    # "e2":Ljava/lang/Exception;
    const-string v6, "WifiDefaultApController"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 401
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e2":Ljava/lang/Exception;
    :catch_5
    move-exception v0

    .line 402
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_7
    const-string v6, "WifiDefaultApController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "generalinfofilepath create file failed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 405
    if-eqz v2, :cond_3

    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    goto/16 :goto_0

    .line 406
    :catch_6
    move-exception v1

    .line 407
    .restart local v1    # "e2":Ljava/lang/Exception;
    const-string v6, "WifiDefaultApController"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 404
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "e2":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 405
    :goto_4
    if-eqz v2, :cond_6

    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 408
    :cond_6
    :goto_5
    throw v6

    .line 406
    :catch_7
    move-exception v1

    .line 407
    .restart local v1    # "e2":Ljava/lang/Exception;
    const-string v7, "WifiDefaultApController"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 404
    .end local v1    # "e2":Ljava/lang/Exception;
    .end local v2    # "generalFW":Ljava/io/FileOutputStream;
    .restart local v3    # "generalFW":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "generalFW":Ljava/io/FileOutputStream;
    .restart local v2    # "generalFW":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 401
    .end local v2    # "generalFW":Ljava/io/FileOutputStream;
    .restart local v3    # "generalFW":Ljava/io/FileOutputStream;
    :catch_8
    move-exception v0

    move-object v2, v3

    .end local v3    # "generalFW":Ljava/io/FileOutputStream;
    .restart local v2    # "generalFW":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 399
    .end local v2    # "generalFW":Ljava/io/FileOutputStream;
    .restart local v3    # "generalFW":Ljava/io/FileOutputStream;
    :catch_9
    move-exception v0

    move-object v2, v3

    .end local v3    # "generalFW":Ljava/io/FileOutputStream;
    .restart local v2    # "generalFW":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 397
    .end local v2    # "generalFW":Ljava/io/FileOutputStream;
    .restart local v3    # "generalFW":Ljava/io/FileOutputStream;
    :catch_a
    move-exception v0

    move-object v2, v3

    .end local v3    # "generalFW":Ljava/io/FileOutputStream;
    .restart local v2    # "generalFW":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

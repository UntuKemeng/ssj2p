.class Lcom/samsung/android/server/wifi/WifiDefaultApController$1;
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$1;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v17, "cred_conf"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .local v13, "hs20Profile":Ljava/lang/String;
    if-eqz v13, :cond_12

    new-instance v4, Ljava/io/File;

    const-string v17, "/data/misc/wifi/cred.conf"

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v4, "cred_conf":Ljava/io/File;
    const/4 v7, 0x0

    .local v7, "fos":Ljava/io/FileOutputStream;
    const/4 v9, 0x0

    .local v9, "fr":Ljava/io/FileReader;
    const/4 v2, 0x0

    .local v2, "br":Ljava/io/BufferedReader;
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_1

    new-instance v10, Ljava/io/FileReader;

    invoke-direct {v10, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v9    # "fr":Ljava/io/FileReader;
    .local v10, "fr":Ljava/io/FileReader;
    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_18
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_15
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .end local v2    # "br":Ljava/io/BufferedReader;
    .local v3, "br":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    .local v15, "previousVersion":Ljava/lang/String;
    if-nez v15, :cond_6

    const-string v17, "WifiDefaultApController"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "/data/misc/wifi/cred.conf parse error: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v17, "WifiDefaultApController"

    const-string v18, "/data/misc/wifi/cred.conf deleted"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_19
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_16
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-object v2, v3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10    # "fr":Ljava/io/FileReader;
    .end local v15    # "previousVersion":Ljava/lang/String;
    .restart local v9    # "fr":Ljava/io/FileReader;
    :cond_1
    :try_start_3
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v17

    const-string v18, "chmod 664 /data/misc/wifi/cred.conf"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    new-instance v8, Ljava/io/FileOutputStream;

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-direct {v8, v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .local v8, "fos":Ljava/io/FileOutputStream;
    :try_start_4
    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/io/FileOutputStream;->write([B)V

    const-string v17, "WifiDefaultApController"

    const-string v18, "/data/misc/wifi/cred.conf created"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1d
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_17
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    if-eqz v8, :cond_2

    :try_start_5
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    :cond_3
    if-eqz v9, :cond_4

    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :cond_4
    move-object v7, v8

    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v4    # "cred_conf":Ljava/io/File;
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .end local v9    # "fr":Ljava/io/FileReader;
    :cond_5
    :goto_0
    return-void

    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "cred_conf":Ljava/io/File;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v10    # "fr":Ljava/io/FileReader;
    .restart local v15    # "previousVersion":Ljava/lang/String;
    :cond_6
    :try_start_6
    invoke-virtual {v13, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    const-string v17, "WifiDefaultApController"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "/data/misc/wifi/cred.conf is not changed, not going to be updated: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1c
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_19
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_16
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eqz v7, :cond_7

    :try_start_7
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    :cond_7
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    :cond_8
    if-eqz v10, :cond_5

    invoke-virtual {v10}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    .local v6, "e2":Ljava/lang/Exception;
    const-string v17, "WifiDefaultApController"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v6    # "e2":Ljava/lang/Exception;
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v10    # "fr":Ljava/io/FileReader;
    .end local v15    # "previousVersion":Ljava/lang/String;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fr":Ljava/io/FileReader;
    :catch_1
    move-exception v6

    .restart local v6    # "e2":Ljava/lang/Exception;
    const-string v17, "WifiDefaultApController"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0

    .end local v6    # "e2":Ljava/lang/Exception;
    :catch_2
    move-exception v5

    .local v5, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_8
    const-string v17, "WifiDefaultApController"

    const-string v18, "/data/misc/wifi/cred.conf Not Found"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v7, :cond_9

    :try_start_9
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    :cond_9
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    :cond_a
    if-eqz v9, :cond_5

    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_0

    :catch_3
    move-exception v6

    .restart local v6    # "e2":Ljava/lang/Exception;
    const-string v17, "WifiDefaultApController"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v5    # "e":Ljava/io/FileNotFoundException;
    .end local v6    # "e2":Ljava/lang/Exception;
    :catch_4
    move-exception v5

    .local v5, "e":Ljava/io/IOException;
    :goto_2
    :try_start_a
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v7, :cond_b

    :try_start_b
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    :cond_b
    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    :cond_c
    if-eqz v9, :cond_5

    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_0

    :catch_5
    move-exception v6

    .restart local v6    # "e2":Ljava/lang/Exception;
    const-string v17, "WifiDefaultApController"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v5    # "e":Ljava/io/IOException;
    .end local v6    # "e2":Ljava/lang/Exception;
    :catch_6
    move-exception v5

    .local v5, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_c
    const-string v17, "WifiDefaultApController"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "/data/misc/wifi/cred.conf create failed "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eqz v7, :cond_d

    :try_start_d
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    :cond_d
    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    :cond_e
    if-eqz v9, :cond_5

    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    goto/16 :goto_0

    :catch_7
    move-exception v6

    .restart local v6    # "e2":Ljava/lang/Exception;
    const-string v17, "WifiDefaultApController"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "e2":Ljava/lang/Exception;
    :catchall_0
    move-exception v17

    :goto_4
    if-eqz v7, :cond_f

    :try_start_e
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    :cond_f
    if-eqz v2, :cond_10

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    :cond_10
    if-eqz v9, :cond_11

    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8

    :cond_11
    :goto_5
    throw v17

    :catch_8
    move-exception v6

    .restart local v6    # "e2":Ljava/lang/Exception;
    const-string v18, "WifiDefaultApController"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v4    # "cred_conf":Ljava/io/File;
    .end local v6    # "e2":Ljava/lang/Exception;
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v9    # "fr":Ljava/io/FileReader;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$1;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v17, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$100(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "wifi_defaultap_profile"

    invoke-static/range {v17 .. v18}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .local v16, "wifidefaultapprofile":Ljava/lang/String;
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->DBG:Z
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$200()Z

    move-result v17

    if-eqz v17, :cond_13

    const-string v17, "WifiDefaultApController"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "String AP List"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    const/4 v11, 0x0

    .local v11, "fw":Ljava/io/FileOutputStream;
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathDefaultAp:Ljava/io/File;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$300()Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$1;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiProfile:Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;

    move-object/from16 v17, v0

    # invokes: Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->getVendorApInfo()V
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->access$400(Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;)V

    const/16 v17, 0x0

    # setter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mflagForGotVendorAp:Z
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$502(Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$1;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v17, v0

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiService:Lcom/android/server/wifi/WifiServiceImpl;
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$600(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Lcom/android/server/wifi/WifiServiceImpl;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wifi/WifiServiceImpl;->getWifiEnabledState()I

    move-result v17

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$1;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiProfile:Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;

    move-object/from16 v17, v0

    # invokes: Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->removeVendorWifiProfile()V
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->access$700(Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;)V

    :goto_6
    const-string v17, "WifiDefaultApController"

    const-string v18, "default_ap.conf file delete is called"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathDefaultAp:Ljava/io/File;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$300()Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->REMOVABLE_DEFAULT_AP:Z
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$900()Z

    move-result v17

    if-eqz v17, :cond_15

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathDefaultApCheck:Ljava/io/File;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$1000()Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_15

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->DBG:Z
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$200()Z

    move-result v17

    if-eqz v17, :cond_14

    const-string v17, "WifiDefaultApController"

    const-string v18, "As defaut_ap.conf file changed, remove DefaultApCheck file"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathDefaultApCheck:Ljava/io/File;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$1000()Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$1;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->clearDefaultApList()V

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v14

    .local v14, "length":I
    if-nez v14, :cond_17

    const-string v17, "WifiDefaultApController"

    const-string v18, "Settings.Secure.WIFI_DEFAULTAP_PROFILE is empty"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v14    # "length":I
    :cond_16
    :try_start_f
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathCscUpdateDoneCheck:Ljava/io/File;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$800()Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->createNewFile()Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_9

    goto :goto_6

    :catch_9
    move-exception v5

    .restart local v5    # "e":Ljava/lang/Exception;
    const-string v17, "WifiDefaultApController"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "mfilePathCscUpdateDoneCheck create file failed "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v14    # "length":I
    :cond_17
    :try_start_10
    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathDefaultAp:Ljava/io/File;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$300()Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->createNewFile()Z

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v17

    const-string v18, "chmod 664 /data/misc/wifi/default_ap.conf"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    new-instance v12, Ljava/io/FileOutputStream;

    # getter for: Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathDefaultAp:Ljava/io/File;
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->access$300()Ljava/io/File;

    move-result-object v17

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v12, v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_b
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_d
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_f
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .end local v11    # "fw":Ljava/io/FileOutputStream;
    .local v12, "fw":Ljava/io/FileOutputStream;
    :try_start_11
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_14
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_13
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_12
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    if-eqz v12, :cond_18

    :try_start_12
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_a

    :cond_18
    move-object v11, v12

    .end local v12    # "fw":Ljava/io/FileOutputStream;
    .restart local v11    # "fw":Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .end local v11    # "fw":Ljava/io/FileOutputStream;
    .restart local v12    # "fw":Ljava/io/FileOutputStream;
    :catch_a
    move-exception v6

    .restart local v6    # "e2":Ljava/lang/Exception;
    const-string v17, "WifiDefaultApController"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v11, v12

    .end local v12    # "fw":Ljava/io/FileOutputStream;
    .restart local v11    # "fw":Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .end local v6    # "e2":Ljava/lang/Exception;
    :catch_b
    move-exception v5

    .local v5, "e":Ljava/io/FileNotFoundException;
    :goto_7
    :try_start_13
    const-string v17, "WifiDefaultApController"

    const-string v18, "WiFi Profile File Create Not Found "

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    if-eqz v11, :cond_5

    :try_start_14
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_c

    goto/16 :goto_0

    :catch_c
    move-exception v6

    .restart local v6    # "e2":Ljava/lang/Exception;
    const-string v17, "WifiDefaultApController"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v5    # "e":Ljava/io/FileNotFoundException;
    .end local v6    # "e2":Ljava/lang/Exception;
    :catch_d
    move-exception v5

    .local v5, "e":Ljava/io/IOException;
    :goto_8
    :try_start_15
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    if-eqz v11, :cond_5

    :try_start_16
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_e

    goto/16 :goto_0

    :catch_e
    move-exception v6

    .restart local v6    # "e2":Ljava/lang/Exception;
    const-string v17, "WifiDefaultApController"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v5    # "e":Ljava/io/IOException;
    .end local v6    # "e2":Ljava/lang/Exception;
    :catch_f
    move-exception v5

    .local v5, "e":Ljava/lang/Exception;
    :goto_9
    :try_start_17
    const-string v17, "WifiDefaultApController"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "profilefilepath create file failed "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    if-eqz v11, :cond_5

    :try_start_18
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_10

    goto/16 :goto_0

    :catch_10
    move-exception v6

    .restart local v6    # "e2":Ljava/lang/Exception;
    const-string v17, "WifiDefaultApController"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "e2":Ljava/lang/Exception;
    :catchall_1
    move-exception v17

    :goto_a
    if-eqz v11, :cond_19

    :try_start_19
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_11

    :cond_19
    :goto_b
    throw v17

    :catch_11
    move-exception v6

    .restart local v6    # "e2":Ljava/lang/Exception;
    const-string v18, "WifiDefaultApController"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .end local v6    # "e2":Ljava/lang/Exception;
    .end local v11    # "fw":Ljava/io/FileOutputStream;
    .restart local v12    # "fw":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v17

    move-object v11, v12

    .end local v12    # "fw":Ljava/io/FileOutputStream;
    .restart local v11    # "fw":Ljava/io/FileOutputStream;
    goto :goto_a

    .end local v11    # "fw":Ljava/io/FileOutputStream;
    .restart local v12    # "fw":Ljava/io/FileOutputStream;
    :catch_12
    move-exception v5

    move-object v11, v12

    .end local v12    # "fw":Ljava/io/FileOutputStream;
    .restart local v11    # "fw":Ljava/io/FileOutputStream;
    goto :goto_9

    .end local v11    # "fw":Ljava/io/FileOutputStream;
    .restart local v12    # "fw":Ljava/io/FileOutputStream;
    :catch_13
    move-exception v5

    move-object v11, v12

    .end local v12    # "fw":Ljava/io/FileOutputStream;
    .restart local v11    # "fw":Ljava/io/FileOutputStream;
    goto :goto_8

    .end local v11    # "fw":Ljava/io/FileOutputStream;
    .restart local v12    # "fw":Ljava/io/FileOutputStream;
    :catch_14
    move-exception v5

    move-object v11, v12

    .end local v12    # "fw":Ljava/io/FileOutputStream;
    .restart local v11    # "fw":Ljava/io/FileOutputStream;
    goto :goto_7

    .end local v11    # "fw":Ljava/io/FileOutputStream;
    .end local v14    # "length":I
    .end local v16    # "wifidefaultapprofile":Ljava/lang/String;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "cred_conf":Ljava/io/File;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v10    # "fr":Ljava/io/FileReader;
    :catchall_3
    move-exception v17

    move-object v9, v10

    .end local v10    # "fr":Ljava/io/FileReader;
    .restart local v9    # "fr":Ljava/io/FileReader;
    goto/16 :goto_4

    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v9    # "fr":Ljava/io/FileReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v10    # "fr":Ljava/io/FileReader;
    :catchall_4
    move-exception v17

    move-object v2, v3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10    # "fr":Ljava/io/FileReader;
    .restart local v9    # "fr":Ljava/io/FileReader;
    goto/16 :goto_4

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catchall_5
    move-exception v17

    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_4

    .end local v9    # "fr":Ljava/io/FileReader;
    .restart local v10    # "fr":Ljava/io/FileReader;
    :catch_15
    move-exception v5

    move-object v9, v10

    .end local v10    # "fr":Ljava/io/FileReader;
    .restart local v9    # "fr":Ljava/io/FileReader;
    goto/16 :goto_3

    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v9    # "fr":Ljava/io/FileReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v10    # "fr":Ljava/io/FileReader;
    :catch_16
    move-exception v5

    move-object v2, v3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10    # "fr":Ljava/io/FileReader;
    .restart local v9    # "fr":Ljava/io/FileReader;
    goto/16 :goto_3

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catch_17
    move-exception v5

    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_3

    .end local v9    # "fr":Ljava/io/FileReader;
    .restart local v10    # "fr":Ljava/io/FileReader;
    :catch_18
    move-exception v5

    move-object v9, v10

    .end local v10    # "fr":Ljava/io/FileReader;
    .restart local v9    # "fr":Ljava/io/FileReader;
    goto/16 :goto_2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v9    # "fr":Ljava/io/FileReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v10    # "fr":Ljava/io/FileReader;
    :catch_19
    move-exception v5

    move-object v2, v3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10    # "fr":Ljava/io/FileReader;
    .restart local v9    # "fr":Ljava/io/FileReader;
    goto/16 :goto_2

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catch_1a
    move-exception v5

    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_2

    .end local v9    # "fr":Ljava/io/FileReader;
    .restart local v10    # "fr":Ljava/io/FileReader;
    :catch_1b
    move-exception v5

    move-object v9, v10

    .end local v10    # "fr":Ljava/io/FileReader;
    .restart local v9    # "fr":Ljava/io/FileReader;
    goto/16 :goto_1

    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v9    # "fr":Ljava/io/FileReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v10    # "fr":Ljava/io/FileReader;
    :catch_1c
    move-exception v5

    move-object v2, v3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10    # "fr":Ljava/io/FileReader;
    .restart local v9    # "fr":Ljava/io/FileReader;
    goto/16 :goto_1

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catch_1d
    move-exception v5

    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_1
.end method

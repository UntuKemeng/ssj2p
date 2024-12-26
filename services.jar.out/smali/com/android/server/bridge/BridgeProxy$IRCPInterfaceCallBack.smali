.class Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;
.super Landroid/content/IRCPInterface$Stub;
.source "BridgeProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/bridge/BridgeProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IRCPInterfaceCallBack"
.end annotation


# static fields
.field public static final EACCES:I = -0xd

.field public static final EBUSY:I = -0x10

.field public static final ENAMETOOLONG:I = -0x24

.field public static final ENOENT:I = -0x2

.field public static final ENOSPC:I = -0x1c

.field public static final POLICY_NOT_ALLOWED:I = -0xf4240

.field public static final REGISTRATION_EXCEPTION:I = -0xf4241

.field public static final REMOTE_EXCEPTION:I = -0xf4242

.field public static final SUCCESS:I


# instance fields
.field final synthetic this$0:Lcom/android/server/bridge/BridgeProxy;


# direct methods
.method private constructor <init>(Lcom/android/server/bridge/BridgeProxy;)V
    .locals 0

    .prologue
    .line 1624
    iput-object p1, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-direct {p0}, Landroid/content/IRCPInterface$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/bridge/BridgeProxy;Lcom/android/server/bridge/BridgeProxy$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/bridge/BridgeProxy;
    .param p2, "x1"    # Lcom/android/server/bridge/BridgeProxy$1;

    .prologue
    .line 1624
    invoke-direct {p0, p1}, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;-><init>(Lcom/android/server/bridge/BridgeProxy;)V

    return-void
.end method

.method private changeExtSdPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "srcFilePath"    # Ljava/lang/String;
    .param p2, "destFilePath"    # Ljava/lang/String;

    .prologue
    .line 2135
    move-object v1, p2

    .line 2137
    .local v1, "retFilePath":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2138
    const-string v2, "/mnt/extSdCard"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2139
    const-string v2, "^/mnt/extSdCard"

    const-string v3, "/mnt/sdcard"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2154
    :cond_0
    :goto_0
    return-object v1

    .line 2141
    :cond_1
    const-string v2, "/storage/extSdCard"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2142
    const-string v2, "^/storage/extSdCard"

    const-string v3, "/mnt/sdcard"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2144
    :cond_2
    const-string v2, "/storage/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/mnt/sdcard"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    const-string v4, "/storage/"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 2149
    :catch_0
    move-exception v0

    .line 2150
    .local v0, "npe":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 2151
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v2

    const-string v3, "changeExtSdPath(): npe has occured"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private copyListToFile(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1716
    .local p1, "srcPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "dstPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 1717
    .local v10, "fosrc":Ljava/io/FileOutputStream;
    const/4 v8, 0x0

    .line 1718
    .local v8, "fosdst":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 1719
    .local v2, "bridgeProxyDir":Ljava/io/File;
    const/4 v13, 0x0

    .line 1720
    .local v13, "srcFile":Ljava/io/File;
    const/4 v4, 0x0

    .line 1723
    .local v4, "destFile":Ljava/io/File;
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v16, "/data/misc/BridgeProxy"

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1724
    .end local v2    # "bridgeProxyDir":Ljava/io/File;
    .local v3, "bridgeProxyDir":Ljava/io/File;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 1726
    new-instance v14, Ljava/io/File;

    const-string/jumbo v16, "srcCreateFile"

    move-object/from16 v0, v16

    invoke-direct {v14, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1727
    .end local v13    # "srcFile":Ljava/io/File;
    .local v14, "srcFile":Ljava/io/File;
    const/16 v16, 0x1

    const/16 v17, 0x0

    :try_start_2
    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 1728
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1730
    .end local v10    # "fosrc":Ljava/io/FileOutputStream;
    .local v11, "fosrc":Ljava/io/FileOutputStream;
    :try_start_3
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v16

    const-string v17, " FILE opened : "

    invoke-static/range {v16 .. v17}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1731
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v12, v0, :cond_0

    .line 1732
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 1733
    .local v15, "srcPath":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 1734
    const-string/jumbo v16, "line.separator"

    invoke-static/range {v16 .. v16}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 1731
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1737
    .end local v15    # "srcPath":Ljava/lang/String;
    :cond_0
    new-instance v5, Ljava/io/File;

    const-string v16, "dstCreateFile"

    move-object/from16 v0, v16

    invoke-direct {v5, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1738
    .end local v4    # "destFile":Ljava/io/File;
    .local v5, "destFile":Ljava/io/File;
    const/16 v16, 0x1

    const/16 v17, 0x0

    :try_start_4
    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 1739
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 1741
    .end local v8    # "fosdst":Ljava/io/FileOutputStream;
    .local v9, "fosdst":Ljava/io/FileOutputStream;
    const/4 v12, 0x0

    :goto_1
    :try_start_5
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v12, v0, :cond_1

    .line 1742
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1743
    .local v6, "dstPath":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 1744
    const-string/jumbo v16, "line.separator"

    invoke-static/range {v16 .. v16}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 1741
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1746
    .end local v6    # "dstPath":Ljava/lang/String;
    :cond_1
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v16

    const-string v17, " FILE closed "

    invoke-static/range {v16 .. v17}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 1753
    if-eqz v11, :cond_2

    .line 1754
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    .line 1755
    :cond_2
    if-eqz v9, :cond_3

    .line 1756
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 1757
    :cond_3
    if-eqz v3, :cond_4

    .line 1758
    const/16 v16, 0x1

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 1759
    const/16 v16, 0x1

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 1761
    :cond_4
    if-eqz v14, :cond_5

    .line 1762
    const/16 v16, 0x1

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 1763
    const/16 v16, 0x1

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 1765
    :cond_5
    if-eqz v5, :cond_10

    .line 1766
    const/16 v16, 0x1

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 1767
    const/16 v16, 0x1

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    move-object v4, v5

    .end local v5    # "destFile":Ljava/io/File;
    .restart local v4    # "destFile":Ljava/io/File;
    move-object v13, v14

    .end local v14    # "srcFile":Ljava/io/File;
    .restart local v13    # "srcFile":Ljava/io/File;
    move-object v2, v3

    .end local v3    # "bridgeProxyDir":Ljava/io/File;
    .restart local v2    # "bridgeProxyDir":Ljava/io/File;
    move-object v8, v9

    .end local v9    # "fosdst":Ljava/io/FileOutputStream;
    .restart local v8    # "fosdst":Ljava/io/FileOutputStream;
    move-object v10, v11

    .line 1770
    .end local v11    # "fosrc":Ljava/io/FileOutputStream;
    .end local v12    # "i":I
    .restart local v10    # "fosrc":Ljava/io/FileOutputStream;
    :cond_6
    :goto_2
    return-void

    .line 1749
    :catch_0
    move-exception v7

    .line 1750
    .local v7, "fe":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_6
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v16

    const-string v17, "BridgeFileNotFOundexception"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1751
    invoke-virtual {v7}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1753
    if-eqz v10, :cond_7

    .line 1754
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 1755
    :cond_7
    if-eqz v8, :cond_8

    .line 1756
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 1757
    :cond_8
    if-eqz v2, :cond_9

    .line 1758
    const/16 v16, 0x1

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 1759
    const/16 v16, 0x1

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 1761
    :cond_9
    if-eqz v13, :cond_a

    .line 1762
    const/16 v16, 0x1

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 1763
    const/16 v16, 0x1

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 1765
    :cond_a
    if-eqz v4, :cond_6

    .line 1766
    const/16 v16, 0x1

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 1767
    const/16 v16, 0x1

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    goto :goto_2

    .line 1753
    .end local v7    # "fe":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v16

    :goto_4
    if-eqz v10, :cond_b

    .line 1754
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 1755
    :cond_b
    if-eqz v8, :cond_c

    .line 1756
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 1757
    :cond_c
    if-eqz v2, :cond_d

    .line 1758
    const/16 v17, 0x1

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 1759
    const/16 v17, 0x1

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 1761
    :cond_d
    if-eqz v13, :cond_e

    .line 1762
    const/16 v17, 0x1

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 1763
    const/16 v17, 0x1

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 1765
    :cond_e
    if-eqz v4, :cond_f

    .line 1766
    const/16 v17, 0x1

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 1767
    const/16 v17, 0x1

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    :cond_f
    throw v16

    .line 1753
    .end local v2    # "bridgeProxyDir":Ljava/io/File;
    .restart local v3    # "bridgeProxyDir":Ljava/io/File;
    :catchall_1
    move-exception v16

    move-object v2, v3

    .end local v3    # "bridgeProxyDir":Ljava/io/File;
    .restart local v2    # "bridgeProxyDir":Ljava/io/File;
    goto :goto_4

    .end local v2    # "bridgeProxyDir":Ljava/io/File;
    .end local v13    # "srcFile":Ljava/io/File;
    .restart local v3    # "bridgeProxyDir":Ljava/io/File;
    .restart local v14    # "srcFile":Ljava/io/File;
    :catchall_2
    move-exception v16

    move-object v13, v14

    .end local v14    # "srcFile":Ljava/io/File;
    .restart local v13    # "srcFile":Ljava/io/File;
    move-object v2, v3

    .end local v3    # "bridgeProxyDir":Ljava/io/File;
    .restart local v2    # "bridgeProxyDir":Ljava/io/File;
    goto :goto_4

    .end local v2    # "bridgeProxyDir":Ljava/io/File;
    .end local v10    # "fosrc":Ljava/io/FileOutputStream;
    .end local v13    # "srcFile":Ljava/io/File;
    .restart local v3    # "bridgeProxyDir":Ljava/io/File;
    .restart local v11    # "fosrc":Ljava/io/FileOutputStream;
    .restart local v14    # "srcFile":Ljava/io/File;
    :catchall_3
    move-exception v16

    move-object v13, v14

    .end local v14    # "srcFile":Ljava/io/File;
    .restart local v13    # "srcFile":Ljava/io/File;
    move-object v2, v3

    .end local v3    # "bridgeProxyDir":Ljava/io/File;
    .restart local v2    # "bridgeProxyDir":Ljava/io/File;
    move-object v10, v11

    .end local v11    # "fosrc":Ljava/io/FileOutputStream;
    .restart local v10    # "fosrc":Ljava/io/FileOutputStream;
    goto :goto_4

    .end local v2    # "bridgeProxyDir":Ljava/io/File;
    .end local v4    # "destFile":Ljava/io/File;
    .end local v10    # "fosrc":Ljava/io/FileOutputStream;
    .end local v13    # "srcFile":Ljava/io/File;
    .restart local v3    # "bridgeProxyDir":Ljava/io/File;
    .restart local v5    # "destFile":Ljava/io/File;
    .restart local v11    # "fosrc":Ljava/io/FileOutputStream;
    .restart local v12    # "i":I
    .restart local v14    # "srcFile":Ljava/io/File;
    :catchall_4
    move-exception v16

    move-object v4, v5

    .end local v5    # "destFile":Ljava/io/File;
    .restart local v4    # "destFile":Ljava/io/File;
    move-object v13, v14

    .end local v14    # "srcFile":Ljava/io/File;
    .restart local v13    # "srcFile":Ljava/io/File;
    move-object v2, v3

    .end local v3    # "bridgeProxyDir":Ljava/io/File;
    .restart local v2    # "bridgeProxyDir":Ljava/io/File;
    move-object v10, v11

    .end local v11    # "fosrc":Ljava/io/FileOutputStream;
    .restart local v10    # "fosrc":Ljava/io/FileOutputStream;
    goto :goto_4

    .end local v2    # "bridgeProxyDir":Ljava/io/File;
    .end local v4    # "destFile":Ljava/io/File;
    .end local v8    # "fosdst":Ljava/io/FileOutputStream;
    .end local v10    # "fosrc":Ljava/io/FileOutputStream;
    .end local v13    # "srcFile":Ljava/io/File;
    .restart local v3    # "bridgeProxyDir":Ljava/io/File;
    .restart local v5    # "destFile":Ljava/io/File;
    .restart local v9    # "fosdst":Ljava/io/FileOutputStream;
    .restart local v11    # "fosrc":Ljava/io/FileOutputStream;
    .restart local v14    # "srcFile":Ljava/io/File;
    :catchall_5
    move-exception v16

    move-object v4, v5

    .end local v5    # "destFile":Ljava/io/File;
    .restart local v4    # "destFile":Ljava/io/File;
    move-object v13, v14

    .end local v14    # "srcFile":Ljava/io/File;
    .restart local v13    # "srcFile":Ljava/io/File;
    move-object v2, v3

    .end local v3    # "bridgeProxyDir":Ljava/io/File;
    .restart local v2    # "bridgeProxyDir":Ljava/io/File;
    move-object v8, v9

    .end local v9    # "fosdst":Ljava/io/FileOutputStream;
    .restart local v8    # "fosdst":Ljava/io/FileOutputStream;
    move-object v10, v11

    .end local v11    # "fosrc":Ljava/io/FileOutputStream;
    .restart local v10    # "fosrc":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 1749
    .end local v2    # "bridgeProxyDir":Ljava/io/File;
    .end local v12    # "i":I
    .restart local v3    # "bridgeProxyDir":Ljava/io/File;
    :catch_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "bridgeProxyDir":Ljava/io/File;
    .restart local v2    # "bridgeProxyDir":Ljava/io/File;
    goto/16 :goto_3

    .end local v2    # "bridgeProxyDir":Ljava/io/File;
    .end local v13    # "srcFile":Ljava/io/File;
    .restart local v3    # "bridgeProxyDir":Ljava/io/File;
    .restart local v14    # "srcFile":Ljava/io/File;
    :catch_2
    move-exception v7

    move-object v13, v14

    .end local v14    # "srcFile":Ljava/io/File;
    .restart local v13    # "srcFile":Ljava/io/File;
    move-object v2, v3

    .end local v3    # "bridgeProxyDir":Ljava/io/File;
    .restart local v2    # "bridgeProxyDir":Ljava/io/File;
    goto/16 :goto_3

    .end local v2    # "bridgeProxyDir":Ljava/io/File;
    .end local v10    # "fosrc":Ljava/io/FileOutputStream;
    .end local v13    # "srcFile":Ljava/io/File;
    .restart local v3    # "bridgeProxyDir":Ljava/io/File;
    .restart local v11    # "fosrc":Ljava/io/FileOutputStream;
    .restart local v14    # "srcFile":Ljava/io/File;
    :catch_3
    move-exception v7

    move-object v13, v14

    .end local v14    # "srcFile":Ljava/io/File;
    .restart local v13    # "srcFile":Ljava/io/File;
    move-object v2, v3

    .end local v3    # "bridgeProxyDir":Ljava/io/File;
    .restart local v2    # "bridgeProxyDir":Ljava/io/File;
    move-object v10, v11

    .end local v11    # "fosrc":Ljava/io/FileOutputStream;
    .restart local v10    # "fosrc":Ljava/io/FileOutputStream;
    goto/16 :goto_3

    .end local v2    # "bridgeProxyDir":Ljava/io/File;
    .end local v4    # "destFile":Ljava/io/File;
    .end local v10    # "fosrc":Ljava/io/FileOutputStream;
    .end local v13    # "srcFile":Ljava/io/File;
    .restart local v3    # "bridgeProxyDir":Ljava/io/File;
    .restart local v5    # "destFile":Ljava/io/File;
    .restart local v11    # "fosrc":Ljava/io/FileOutputStream;
    .restart local v12    # "i":I
    .restart local v14    # "srcFile":Ljava/io/File;
    :catch_4
    move-exception v7

    move-object v4, v5

    .end local v5    # "destFile":Ljava/io/File;
    .restart local v4    # "destFile":Ljava/io/File;
    move-object v13, v14

    .end local v14    # "srcFile":Ljava/io/File;
    .restart local v13    # "srcFile":Ljava/io/File;
    move-object v2, v3

    .end local v3    # "bridgeProxyDir":Ljava/io/File;
    .restart local v2    # "bridgeProxyDir":Ljava/io/File;
    move-object v10, v11

    .end local v11    # "fosrc":Ljava/io/FileOutputStream;
    .restart local v10    # "fosrc":Ljava/io/FileOutputStream;
    goto/16 :goto_3

    .end local v2    # "bridgeProxyDir":Ljava/io/File;
    .end local v4    # "destFile":Ljava/io/File;
    .end local v8    # "fosdst":Ljava/io/FileOutputStream;
    .end local v10    # "fosrc":Ljava/io/FileOutputStream;
    .end local v13    # "srcFile":Ljava/io/File;
    .restart local v3    # "bridgeProxyDir":Ljava/io/File;
    .restart local v5    # "destFile":Ljava/io/File;
    .restart local v9    # "fosdst":Ljava/io/FileOutputStream;
    .restart local v11    # "fosrc":Ljava/io/FileOutputStream;
    .restart local v14    # "srcFile":Ljava/io/File;
    :catch_5
    move-exception v7

    move-object v4, v5

    .end local v5    # "destFile":Ljava/io/File;
    .restart local v4    # "destFile":Ljava/io/File;
    move-object v13, v14

    .end local v14    # "srcFile":Ljava/io/File;
    .restart local v13    # "srcFile":Ljava/io/File;
    move-object v2, v3

    .end local v3    # "bridgeProxyDir":Ljava/io/File;
    .restart local v2    # "bridgeProxyDir":Ljava/io/File;
    move-object v8, v9

    .end local v9    # "fosdst":Ljava/io/FileOutputStream;
    .restart local v8    # "fosdst":Ljava/io/FileOutputStream;
    move-object v10, v11

    .end local v11    # "fosrc":Ljava/io/FileOutputStream;
    .restart local v10    # "fosrc":Ljava/io/FileOutputStream;
    goto/16 :goto_3

    .end local v2    # "bridgeProxyDir":Ljava/io/File;
    .end local v4    # "destFile":Ljava/io/File;
    .end local v8    # "fosdst":Ljava/io/FileOutputStream;
    .end local v10    # "fosrc":Ljava/io/FileOutputStream;
    .end local v13    # "srcFile":Ljava/io/File;
    .restart local v3    # "bridgeProxyDir":Ljava/io/File;
    .restart local v5    # "destFile":Ljava/io/File;
    .restart local v9    # "fosdst":Ljava/io/FileOutputStream;
    .restart local v11    # "fosrc":Ljava/io/FileOutputStream;
    .restart local v14    # "srcFile":Ljava/io/File;
    :cond_10
    move-object v4, v5

    .end local v5    # "destFile":Ljava/io/File;
    .restart local v4    # "destFile":Ljava/io/File;
    move-object v13, v14

    .end local v14    # "srcFile":Ljava/io/File;
    .restart local v13    # "srcFile":Ljava/io/File;
    move-object v2, v3

    .end local v3    # "bridgeProxyDir":Ljava/io/File;
    .restart local v2    # "bridgeProxyDir":Ljava/io/File;
    move-object v8, v9

    .end local v9    # "fosdst":Ljava/io/FileOutputStream;
    .restart local v8    # "fosdst":Ljava/io/FileOutputStream;
    move-object v10, v11

    .end local v11    # "fosrc":Ljava/io/FileOutputStream;
    .restart local v10    # "fosrc":Ljava/io/FileOutputStream;
    goto/16 :goto_2
.end method

.method private isContainerStateIsValid(I)Z
    .locals 5
    .param p1, "moveToDstCId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2104
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 2105
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Move to Personal mode. return true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2131
    :goto_0
    return v1

    .line 2108
    :cond_0
    iget-object v3, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mPm:Landroid/os/PersonaManager;
    invoke-static {v3}, Lcom/android/server/bridge/BridgeProxy;->access$700(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/PersonaManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/os/PersonaManager;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v0

    .line 2109
    .local v0, "info":Landroid/content/pm/PersonaInfo;
    if-nez v0, :cond_1

    .line 2110
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t get a persona info. moveToDstCId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 2111
    goto :goto_0

    .line 2114
    :cond_1
    iget-object v3, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mPm:Landroid/os/PersonaManager;
    invoke-static {v3}, Lcom/android/server/bridge/BridgeProxy;->access$700(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/PersonaManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v3

    sget-object v4, Landroid/content/pm/PersonaState;->SUPER_LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {v3, v4}, Landroid/os/PersonaManager$StateManager;->inState(Landroid/content/pm/PersonaState;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2115
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Persona is superlocked"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 2116
    goto :goto_0

    .line 2117
    :cond_2
    iget-boolean v3, v0, Landroid/content/pm/PersonaInfo;->partial:Z

    if-eqz v3, :cond_3

    .line 2118
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Persona is partially created"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 2119
    goto :goto_0

    .line 2120
    :cond_3
    iget-boolean v3, v0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    if-eqz v3, :cond_4

    .line 2121
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Persona is removed"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 2122
    goto :goto_0

    .line 2124
    :cond_4
    iget-object v3, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mPm:Landroid/os/PersonaManager;
    invoke-static {v3}, Lcom/android/server/bridge/BridgeProxy;->access$700(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/PersonaManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v3

    sget-object v4, Landroid/content/pm/PersonaState;->DELETING:Landroid/content/pm/PersonaState;

    invoke-virtual {v3, v4}, Landroid/os/PersonaManager$StateManager;->inState(Landroid/content/pm/PersonaState;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mPm:Landroid/os/PersonaManager;
    invoke-static {v3}, Lcom/android/server/bridge/BridgeProxy;->access$700(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/PersonaManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v3

    sget-object v4, Landroid/content/pm/PersonaState;->CREATING:Landroid/content/pm/PersonaState;

    invoke-virtual {v3, v4}, Landroid/os/PersonaManager$StateManager;->inState(Landroid/content/pm/PersonaState;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2126
    :cond_5
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Persona state is invalid for moving files "

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 2127
    goto/16 :goto_0

    .line 2130
    :cond_6
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Persona state is valid for moving files"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public cancel(J)V
    .locals 5
    .param p1, "threadId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2354
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string v3, "cancel"

    # invokes: Lcom/android/server/bridge/BridgeProxy;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy;->access$1800(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    .line 2355
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancel() threadId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2357
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.knox.bridge.service.ACTION_FILE_OPERATIONS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2360
    .local v1, "mIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mBridgePackage:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/bridge/BridgeProxy;->access$3200(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2361
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2362
    .local v0, "mBundle":Landroid/os/Bundle;
    const-string/jumbo v2, "task"

    const-string v3, "TASK_CANCEL_FILE_OPERATION"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2363
    const-string/jumbo v2, "sessionId"

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2364
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2365
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "moveFiles(), Starting FileOperationsHandler service TASK_CANCEL_FILE_OPERATION"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2367
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;
    invoke-static {v3}, Lcom/android/server/bridge/BridgeProxy;->access$900(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 2368
    return-void
.end method

.method public cancelCopyChunks(J)V
    .locals 3
    .param p1, "sessionId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2346
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string v1, "cancelCopyChunks"

    # invokes: Lcom/android/server/bridge/BridgeProxy;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy;->access$1800(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    .line 2347
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelCopyChunks() sessionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2348
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mbridge:Landroid/os/RCPManager;
    invoke-static {v0}, Lcom/android/server/bridge/BridgeProxy;->access$3000(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/RCPManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/RCPManager;->cancelCopyChunks(J)V

    .line 2349
    return-void
.end method

.method public copyChunks(ILjava/lang/String;ILjava/lang/String;JIJZ)I
    .locals 2
    .param p1, "srcContainerId"    # I
    .param p2, "srcFilePath"    # Ljava/lang/String;
    .param p3, "destContainerId"    # I
    .param p4, "destFilePath"    # Ljava/lang/String;
    .param p5, "offset"    # J
    .param p7, "length"    # I
    .param p8, "sessionId"    # J
    .param p10, "deleteSrc"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2340
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Warning!!!!  copyChunks() is disabled!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2341
    const v0, -0x2ed993

    return v0
.end method

.method public copyFile(ILjava/lang/String;ILjava/lang/String;)I
    .locals 5
    .param p1, "srcContainerId"    # I
    .param p2, "srcFilePath"    # Ljava/lang/String;
    .param p3, "destContainerId"    # I
    .param p4, "destFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2035
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string v3, "copyFile"

    # invokes: Lcom/android/server/bridge/BridgeProxy;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy;->access$1800(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    .line 2036
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "copyFile() srcContainerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; srcFilePath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; destContainerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; destFilePath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2041
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const/4 v3, 0x1

    # invokes: Lcom/android/server/bridge/BridgeProxy;->getFilesPolicy(II)I
    invoke-static {v2, p1, v3}, Lcom/android/server/bridge/BridgeProxy;->access$3500(Lcom/android/server/bridge/BridgeProxy;II)I

    move-result v0

    .line 2042
    .local v0, "exportCheck":I
    if-eqz v0, :cond_0

    .line 2043
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "copyFile(): Permissions (POLICY_NOT_ALLOWED)  or error for srcContainerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; exportCheck="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2060
    .end local v0    # "exportCheck":I
    :goto_0
    return v0

    .line 2050
    .restart local v0    # "exportCheck":I
    :cond_0
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const/4 v3, 0x2

    # invokes: Lcom/android/server/bridge/BridgeProxy;->getFilesPolicy(II)I
    invoke-static {v2, p3, v3}, Lcom/android/server/bridge/BridgeProxy;->access$3500(Lcom/android/server/bridge/BridgeProxy;II)I

    move-result v1

    .line 2051
    .local v1, "importCheck":I
    if-eqz v1, :cond_1

    .line 2052
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "copyFile(): Permissions (POLICY_NOT_ALLOWED) or error for destContainerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; importCheck="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 2055
    goto :goto_0

    .line 2058
    :cond_1
    invoke-direct {p0, p2, p4}, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->changeExtSdPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 2060
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mbridge:Landroid/os/RCPManager;
    invoke-static {v2}, Lcom/android/server/bridge/BridgeProxy;->access$3000(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/RCPManager;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/os/RCPManager;->copyFileInternal(ILjava/lang/String;ILjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public copyFiles(ILjava/util/List;ILjava/util/List;Landroid/content/IRCPInterfaceCallback;)J
    .locals 8
    .param p1, "srcContainerId"    # I
    .param p3, "destContainerId"    # I
    .param p5, "callback"    # Landroid/content/IRCPInterfaceCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/IRCPInterfaceCallback;",
            ")J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1646
    .local p2, "srcFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "destFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string v5, "copyFiles"

    # invokes: Lcom/android/server/bridge/BridgeProxy;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static {v4, v5}, Lcom/android/server/bridge/BridgeProxy;->access$1800(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    .line 1647
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "copyFiles() srcContainerId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; srcFilePaths="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; destContainerId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; destFilePaths="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1652
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.sec.knox.bridge.service.ACTION_FILE_OPERATIONS"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1655
    .local v2, "mIntent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mBridgePackage:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/bridge/BridgeProxy;->access$3200(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1656
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1657
    .local v0, "mBundle":Landroid/os/Bundle;
    const-string/jumbo v4, "task"

    const-string v5, "TASK_COPY_FILES"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1658
    const-string/jumbo v4, "srcContainerId"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1659
    const-string v4, "destContainerId"

    invoke-virtual {v0, v4, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1660
    const-string/jumbo v4, "srcFilePaths"

    check-cast p2, Ljava/util/ArrayList;

    .end local p2    # "srcFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1661
    const-string v4, "destFilePaths"

    check-cast p4, Ljava/util/ArrayList;

    .end local p4    # "destFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0, v4, p4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1663
    new-instance v1, Landroid/os/Messenger;

    invoke-interface {p5}, Landroid/content/IRCPInterfaceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    .line 1664
    .local v1, "mCallBackMessenger":Landroid/os/Messenger;
    const-string v4, "callBackMessenger"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1666
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide v6, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v4, v6

    double-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1667
    .local v3, "mSessionId":Ljava/lang/Long;
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "copyFiles() ,mSessionId :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    const-string/jumbo v4, "sessionId"

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1670
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1671
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v4

    const-string v5, "copyFiles(), Starting FileOperationsHandler service TASK_COPY_FILES"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    iget-object v4, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;
    invoke-static {v5}, Lcom/android/server/bridge/BridgeProxy;->access$900(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1673
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    return-wide v4
.end method

.method public getErrorMessage(I)Ljava/lang/String;
    .locals 5
    .param p1, "errorId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2263
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string/jumbo v3, "getErrorMessage"

    # invokes: Lcom/android/server/bridge/BridgeProxy;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy;->access$1800(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    .line 2264
    const/16 v1, 0x1f4

    .line 2266
    .local v1, "resourceId":I
    sparse-switch p1, :sswitch_data_0

    .line 2296
    :try_start_0
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string v3, "UNDEFINED"

    # invokes: Lcom/android/server/bridge/BridgeProxy;->getBridgeStringResourceId(Ljava/lang/String;)I
    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy;->access$3600(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    move-result v1

    .line 2299
    :goto_0
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string v3, "REGISTRATION_EXCEPTION"

    # invokes: Lcom/android/server/bridge/BridgeProxy;->getBridgeStringResourceId(Ljava/lang/String;)I
    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy;->access$3600(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 2300
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    iget-object v3, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mCurrentInvalidKnoxName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/bridge/BridgeProxy;->access$3300(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/bridge/BridgeProxy;->getBridgeStringResource(ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v1, v3}, Lcom/android/server/bridge/BridgeProxy;->access$3700(Lcom/android/server/bridge/BridgeProxy;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2309
    :goto_1
    return-object v2

    .line 2268
    :sswitch_0
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string v3, "SUCCESS"

    # invokes: Lcom/android/server/bridge/BridgeProxy;->getBridgeStringResourceId(Ljava/lang/String;)I
    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy;->access$3600(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    move-result v1

    .line 2269
    goto :goto_0

    .line 2272
    :sswitch_1
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string v3, "ENOSPC"

    # invokes: Lcom/android/server/bridge/BridgeProxy;->getBridgeStringResourceId(Ljava/lang/String;)I
    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy;->access$3600(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    move-result v1

    .line 2273
    goto :goto_0

    .line 2276
    :sswitch_2
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string v3, "POLICY_NOT_ALLOWED"

    # invokes: Lcom/android/server/bridge/BridgeProxy;->getBridgeStringResourceId(Ljava/lang/String;)I
    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy;->access$3600(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    move-result v1

    .line 2277
    goto :goto_0

    .line 2280
    :sswitch_3
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string v3, "REGISTRATION_EXCEPTION"

    # invokes: Lcom/android/server/bridge/BridgeProxy;->getBridgeStringResourceId(Ljava/lang/String;)I
    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy;->access$3600(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    move-result v1

    .line 2281
    goto :goto_0

    .line 2292
    :sswitch_4
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string v3, "UNDEFINED"

    # invokes: Lcom/android/server/bridge/BridgeProxy;->getBridgeStringResourceId(Ljava/lang/String;)I
    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy;->access$3600(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    move-result v1

    .line 2293
    goto :goto_0

    .line 2302
    :cond_0
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # invokes: Lcom/android/server/bridge/BridgeProxy;->getBridgeStringResource(I)Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/android/server/bridge/BridgeProxy;->access$3800(Lcom/android/server/bridge/BridgeProxy;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_1

    .line 2304
    :catch_0
    move-exception v0

    .line 2305
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getErrorMessage(): cannot get error resource for resourceId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2309
    const-string v2, "General error"

    goto :goto_1

    .line 2266
    nop

    :sswitch_data_0
    .sparse-switch
        -0xf4242 -> :sswitch_4
        -0xf4241 -> :sswitch_3
        -0xf4240 -> :sswitch_2
        -0x24 -> :sswitch_4
        -0x1c -> :sswitch_1
        -0x10 -> :sswitch_4
        -0xd -> :sswitch_4
        -0x2 -> :sswitch_4
        0x0 -> :sswitch_0
        0x1 -> :sswitch_4
        0x6 -> :sswitch_4
        0x8 -> :sswitch_1
        0xa -> :sswitch_4
        0xb -> :sswitch_2
        0xc -> :sswitch_3
        0xd -> :sswitch_4
        0xe -> :sswitch_4
    .end sparse-switch
.end method

.method public getFileInfo(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "containerId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2326
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string/jumbo v1, "getFileInfo"

    # invokes: Lcom/android/server/bridge/BridgeProxy;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy;->access$1800(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    .line 2327
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getFileInfo(): path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; containerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2328
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mbridge:Landroid/os/RCPManager;
    invoke-static {v0}, Lcom/android/server/bridge/BridgeProxy;->access$3000(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/RCPManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/RCPManager;->getFileInfo(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getFiles(Ljava/lang/String;I)Ljava/util/List;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "containerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2320
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string/jumbo v1, "getFiles"

    # invokes: Lcom/android/server/bridge/BridgeProxy;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy;->access$1800(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    .line 2321
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mbridge:Landroid/os/RCPManager;
    invoke-static {v0}, Lcom/android/server/bridge/BridgeProxy;->access$3000(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/RCPManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/RCPManager;->getFiles(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method isContainerIdIsValid(II)Z
    .locals 1
    .param p1, "srcContainerId"    # I
    .param p2, "destContainerId"    # I

    .prologue
    .line 2159
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->isContainerIdIsValid(IIZ)Z

    move-result v0

    return v0
.end method

.method isContainerIdIsValid(IIZ)Z
    .locals 3
    .param p1, "srcContainerId"    # I
    .param p2, "destContainerId"    # I
    .param p3, "isMoveOperation"    # Z

    .prologue
    const/4 v1, 0x0

    .line 2163
    if-eqz p3, :cond_4

    .line 2164
    if-ne p1, p2, :cond_1

    .line 2194
    :cond_0
    :goto_0
    return v1

    .line 2167
    :cond_1
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 2171
    const/4 v0, 0x0

    .line 2172
    .local v0, "uid":I
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I
    invoke-static {v2}, Lcom/android/server/bridge/BridgeProxy;->access$600(Lcom/android/server/bridge/BridgeProxy;)I

    move-result v0

    .line 2174
    if-nez v0, :cond_3

    .line 2175
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mPm:Landroid/os/PersonaManager;
    invoke-static {v2}, Lcom/android/server/bridge/BridgeProxy;->access$700(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/PersonaManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez p1, :cond_0

    .line 2194
    .end local v0    # "uid":I
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 2178
    .restart local v0    # "uid":I
    :cond_3
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mPm:Landroid/os/PersonaManager;
    invoke-static {v2}, Lcom/android/server/bridge/BridgeProxy;->access$700(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/PersonaManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2179
    if-nez p2, :cond_0

    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mPm:Landroid/os/PersonaManager;
    invoke-static {v2}, Lcom/android/server/bridge/BridgeProxy;->access$700(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/PersonaManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 2186
    .end local v0    # "uid":I
    :cond_4
    if-ne p1, p2, :cond_0

    .line 2189
    if-ltz p1, :cond_0

    if-gez p2, :cond_2

    goto :goto_0
.end method

.method public isFileExist(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "containerId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2314
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string/jumbo v1, "isFileExist"

    # invokes: Lcom/android/server/bridge/BridgeProxy;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy;->access$1800(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    .line 2315
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mbridge:Landroid/os/RCPManager;
    invoke-static {v0}, Lcom/android/server/bridge/BridgeProxy;->access$3000(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/RCPManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/RCPManager;->isFileExist(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method isMoveFilesAllowed(II)Z
    .locals 12
    .param p1, "srcContainerId"    # I
    .param p2, "destContainerId"    # I

    .prologue
    .line 2199
    const/4 v4, 0x0

    .line 2201
    .local v4, "pi":Landroid/content/pm/PersonaInfo;
    iget-object v9, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mPm:Landroid/os/PersonaManager;
    invoke-static {v9}, Lcom/android/server/bridge/BridgeProxy;->access$700(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/PersonaManager;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 2202
    iget-object v9, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mPm:Landroid/os/PersonaManager;
    invoke-static {v9}, Lcom/android/server/bridge/BridgeProxy;->access$700(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/PersonaManager;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2203
    iget-object v9, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mPm:Landroid/os/PersonaManager;
    invoke-static {v9}, Lcom/android/server/bridge/BridgeProxy;->access$700(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/PersonaManager;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/os/PersonaManager;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v4

    .line 2209
    :cond_0
    :goto_0
    if-eqz v4, :cond_2

    iget-boolean v9, v4, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    if-eqz v9, :cond_2

    .line 2210
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "isMoveFilesAllowed : user managed container. return true"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2211
    const/4 v6, 0x1

    .line 2256
    :goto_1
    return v6

    .line 2205
    :cond_1
    iget-object v9, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mPm:Landroid/os/PersonaManager;
    invoke-static {v9}, Lcom/android/server/bridge/BridgeProxy;->access$700(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/PersonaManager;

    move-result-object v9

    invoke-virtual {v9, p2}, Landroid/os/PersonaManager;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v4

    goto :goto_0

    .line 2214
    :cond_2
    invoke-static {}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getInstance()Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    move-result-object v2

    .line 2215
    .local v2, "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    iget-object v9, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I
    invoke-static {v9}, Lcom/android/server/bridge/BridgeProxy;->access$600(Lcom/android/server/bridge/BridgeProxy;)I

    move-result v8

    .line 2216
    .local v8, "uid":I
    const/4 v7, 0x0

    .line 2217
    .local v7, "retToOwner":Z
    const/4 v6, 0x1

    .line 2219
    .local v6, "retToKnox":Z
    if-nez v8, :cond_4

    .line 2221
    :try_start_0
    iget-object v9, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v2, v9, p2}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;I)Lcom/sec/enterprise/knox/container/KnoxContainerManager;

    move-result-object v0

    .line 2224
    .local v0, "containerMgr":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    if-eqz v0, :cond_3

    .line 2225
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getRCPPolicy()Lcom/sec/enterprise/knox/container/RCPPolicy;

    move-result-object v5

    .line 2226
    .local v5, "rcpPolicy":Lcom/sec/enterprise/knox/container/RCPPolicy;
    if-eqz v5, :cond_3

    .line 2227
    invoke-virtual {v5}, Lcom/sec/enterprise/knox/container/RCPPolicy;->isMoveFilesToContainerAllowed()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    .line 2236
    .end local v0    # "containerMgr":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .end local v5    # "rcpPolicy":Lcom/sec/enterprise/knox/container/RCPPolicy;
    :cond_3
    :goto_2
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "isMoveFilesAllowed : retToKnox = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2229
    :catch_0
    move-exception v1

    .line 2230
    .local v1, "e":Ljava/lang/SecurityException;
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "isMoveFilesAllowed : SecurityException occured"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2231
    const/4 v6, 0x1

    .line 2235
    goto :goto_2

    .line 2232
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v3

    .line 2233
    .local v3, "npe":Ljava/lang/NullPointerException;
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "isMoveFilesAllowed : NullPointerException occured"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2234
    const/4 v6, 0x1

    goto :goto_2

    .line 2239
    .end local v3    # "npe":Ljava/lang/NullPointerException;
    :cond_4
    iget-object v9, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mPm:Landroid/os/PersonaManager;
    invoke-static {v9}, Lcom/android/server/bridge/BridgeProxy;->access$700(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/PersonaManager;

    move-result-object v9

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mPm:Landroid/os/PersonaManager;
    invoke-static {v9}, Lcom/android/server/bridge/BridgeProxy;->access$700(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/PersonaManager;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2241
    :try_start_1
    iget-object v9, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v2, v9, v8}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;I)Lcom/sec/enterprise/knox/container/KnoxContainerManager;

    move-result-object v0

    .line 2242
    .restart local v0    # "containerMgr":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getRCPPolicy()Lcom/sec/enterprise/knox/container/RCPPolicy;

    move-result-object v5

    .line 2243
    .restart local v5    # "rcpPolicy":Lcom/sec/enterprise/knox/container/RCPPolicy;
    invoke-virtual {v5}, Lcom/sec/enterprise/knox/container/RCPPolicy;->isMoveFilesToOwnerAllowed()Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v7

    .line 2251
    .end local v0    # "containerMgr":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .end local v5    # "rcpPolicy":Lcom/sec/enterprise/knox/container/RCPPolicy;
    :goto_3
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "isMoveFilesAllowed : retToOwner = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v7}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 2252
    goto/16 :goto_1

    .line 2244
    :catch_2
    move-exception v1

    .line 2245
    .restart local v1    # "e":Ljava/lang/SecurityException;
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "isMoveFilesAllowed : SecurityException occured"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2246
    const/4 v7, 0x0

    .line 2250
    goto :goto_3

    .line 2247
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_3
    move-exception v3

    .line 2248
    .restart local v3    # "npe":Ljava/lang/NullPointerException;
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "isMoveFilesAllowed : NullPointerException occured"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2249
    const/4 v7, 0x0

    goto :goto_3

    .line 2255
    .end local v3    # "npe":Ljava/lang/NullPointerException;
    :cond_5
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "isMoveFilesAllowed : End of function. Return false"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2256
    const/4 v6, 0x0

    goto/16 :goto_1
.end method

.method public moveFile(ILjava/lang/String;ILjava/lang/String;)I
    .locals 6
    .param p1, "srcContainerId"    # I
    .param p2, "srcFilePath"    # Ljava/lang/String;
    .param p3, "destContainerId"    # I
    .param p4, "destFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2066
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string/jumbo v3, "moveFile"

    # invokes: Lcom/android/server/bridge/BridgeProxy;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy;->access$1800(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    .line 2067
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "moveFile() srcContainerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; srcFilePath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; destContainerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; destFilePath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2071
    invoke-virtual {p0, p1, p3}, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->isContainerIdIsValid(II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2072
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "moveFile() containerID is not valid"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2073
    const/4 v2, 0x6

    .line 2099
    :goto_0
    return v2

    .line 2076
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->isContainerStateIsValid(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2077
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "fileOperation() container state is not valid"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2080
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 2081
    .local v1, "um":Landroid/os/UserManager;
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mPm:Landroid/os/PersonaManager;
    invoke-static {v2}, Lcom/android/server/bridge/BridgeProxy;->access$700(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/PersonaManager;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/os/PersonaManager;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 2082
    .local v0, "ui":Landroid/content/pm/UserInfo;
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    iget-object v3, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mPm:Landroid/os/PersonaManager;
    invoke-static {v3}, Lcom/android/server/bridge/BridgeProxy;->access$700(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/PersonaManager;

    move-result-object v3

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    iget-object v5, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/PersonaManager;->getContainerName(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/android/server/bridge/BridgeProxy;->mCurrentInvalidKnoxName:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy;->access$3302(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)Ljava/lang/String;

    .line 2084
    const v2, -0xf4241

    goto :goto_0

    .line 2087
    .end local v0    # "ui":Landroid/content/pm/UserInfo;
    .end local v1    # "um":Landroid/os/UserManager;
    :cond_1
    invoke-virtual {p0, p1, p3}, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->isMoveFilesAllowed(II)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2088
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "moveFile() policy is denied"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2089
    const/16 v2, 0xb

    goto :goto_0

    .line 2092
    :cond_2
    invoke-static {p2}, Lcom/android/server/bridge/util/FileUtils;->isAllowedFileName(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2093
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "moveFile() not allowed file name"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2094
    const/4 v2, 0x5

    goto :goto_0

    .line 2097
    :cond_3
    invoke-direct {p0, p2, p4}, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->changeExtSdPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 2099
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mbridge:Landroid/os/RCPManager;
    invoke-static {v2}, Lcom/android/server/bridge/BridgeProxy;->access$3000(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/RCPManager;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/os/RCPManager;->moveFile(ILjava/lang/String;ILjava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public moveFiles(ILjava/util/List;ILjava/util/List;Landroid/content/IRCPInterfaceCallback;)J
    .locals 10
    .param p1, "srcContainerId"    # I
    .param p3, "destContainerId"    # I
    .param p5, "callback"    # Landroid/content/IRCPInterfaceCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/IRCPInterfaceCallback;",
            ")J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1680
    .local p2, "srcFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "destFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string/jumbo v7, "moveFiles"

    # invokes: Lcom/android/server/bridge/BridgeProxy;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static {v6, v7}, Lcom/android/server/bridge/BridgeProxy;->access$1800(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    .line 1681
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "moveFiles() srcContainerId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; srcFilePaths="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; destContainerId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; destFilePaths="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1685
    if-eqz p3, :cond_0

    .line 1686
    iget-object v6, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "user"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    .line 1687
    .local v5, "um":Landroid/os/UserManager;
    iget-object v6, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mPm:Landroid/os/PersonaManager;
    invoke-static {v6}, Lcom/android/server/bridge/BridgeProxy;->access$700(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/PersonaManager;

    move-result-object v6

    invoke-virtual {v6, p3}, Landroid/os/PersonaManager;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v5, v6}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 1688
    .local v4, "ui":Landroid/content/pm/UserInfo;
    iget-object v6, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    iget-object v7, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mPm:Landroid/os/PersonaManager;
    invoke-static {v7}, Lcom/android/server/bridge/BridgeProxy;->access$700(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/PersonaManager;

    move-result-object v7

    iget v8, v4, Landroid/content/pm/UserInfo;->id:I

    iget-object v9, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/os/PersonaManager;->getContainerName(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    # setter for: Lcom/android/server/bridge/BridgeProxy;->mCurrentInvalidKnoxName:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/server/bridge/BridgeProxy;->access$3302(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)Ljava/lang/String;

    .line 1690
    .end local v4    # "ui":Landroid/content/pm/UserInfo;
    .end local v5    # "um":Landroid/os/UserManager;
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.sec.knox.bridge.service.ACTION_FILE_OPERATIONS"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1693
    .local v2, "mIntent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mBridgePackage:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/bridge/BridgeProxy;->access$3200(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1694
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1695
    .local v0, "mBundle":Landroid/os/Bundle;
    const-string/jumbo v6, "task"

    const-string v7, "TASK_MOVE_FILES"

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1696
    const-string/jumbo v6, "srcContainerId"

    invoke-virtual {v0, v6, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1697
    const-string v6, "destContainerId"

    invoke-virtual {v0, v6, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1698
    const-string/jumbo v6, "srcFilePaths"

    check-cast p2, Ljava/util/ArrayList;

    .end local p2    # "srcFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0, v6, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1699
    const-string v6, "destFilePaths"

    check-cast p4, Ljava/util/ArrayList;

    .end local p4    # "destFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0, v6, p4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1701
    new-instance v1, Landroid/os/Messenger;

    invoke-interface {p5}, Landroid/content/IRCPInterfaceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    .line 1702
    .local v1, "mCallBackMessenger":Landroid/os/Messenger;
    const-string v6, "callBackMessenger"

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1704
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v6, v8

    double-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1705
    .local v3, "mSessionId":Ljava/lang/Long;
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "moveFiles ,mSessionId :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    const-string/jumbo v6, "sessionId"

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v0, v6, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1708
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1709
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "moveFiles(), Starting FileOperationsHandler service TASK_MOVE_FILES"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1710
    iget-object v6, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;
    invoke-static {v7}, Lcom/android/server/bridge/BridgeProxy;->access$900(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1711
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    return-wide v6
.end method

.method public moveFilesForApp(ILjava/util/List;Ljava/util/List;)J
    .locals 28
    .param p1, "requestApp"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 1775
    .local p2, "srcFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "destFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v25, v0

    const-string/jumbo v26, "moveFilesForApp"

    # invokes: Lcom/android/server/bridge/BridgeProxy;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static/range {v25 .. v26}, Lcom/android/server/bridge/BridgeProxy;->access$1800(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    .line 1777
    const/4 v11, 0x0

    .line 1779
    .local v11, "isFileCreate":Z
    :try_start_0
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v25

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "moveFilesForApp() srcFilePaths="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "; destFilePaths="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "reqApp = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1784
    new-instance v24, Ljava/util/ArrayList;

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1785
    .local v24, "srcPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    move-object/from16 v0, p3

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1787
    .local v6, "dstPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    .line 1788
    .local v17, "moveTo":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mBridgePackage:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Lcom/android/server/bridge/BridgeProxy;->access$3200(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v25

    const-string v26, "com.sec.knox.bridge.activity.MoveToKnoxActivity"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1789
    const-string/jumbo v25, "requestApp"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1790
    const-string/jumbo v25, "launchAfterLockCheck"

    const/16 v26, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1792
    const/high16 v25, 0x10000000

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1795
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v25

    const/16 v26, 0xc8

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v25

    const/16 v26, 0xc8

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_0

    .line 1797
    const/4 v11, 0x1

    .line 1798
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v25

    const-string v26, " src_FILE_READ_OPERATION "

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1800
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v6}, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->copyListToFile(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1801
    const-string/jumbo v25, "isFileCreated"

    const/16 v26, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1802
    const-string/jumbo v25, "srcFilePath"

    const-string v26, "/data/misc/BridgeProxy/srcCreateFile"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1803
    const-string v25, "destFilePath"

    const-string v26, "/data/misc/BridgeProxy/dstCreateFile"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1814
    :goto_0
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;
    invoke-static/range {v25 .. v25}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/os/PersonaManager;->getKnoxInfoForApp(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v13

    .line 1815
    .local v13, "mKnoxInfoForApp":Landroid/os/Bundle;
    const-string v25, "KnoxIdNamePair"

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v12

    check-cast v12, Ljava/util/HashMap;

    .line 1818
    .local v12, "mKnoxIdNamePair":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I
    invoke-static/range {v25 .. v25}, Lcom/android/server/bridge/BridgeProxy;->access$600(Lcom/android/server/bridge/BridgeProxy;)I

    move-result v16

    .line 1820
    .local v16, "mMoveToSrcCId":I
    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v25

    move/from16 v0, v16

    move/from16 v1, v25

    if-eq v0, v1, :cond_1

    .line 1821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;
    invoke-static/range {v25 .. v25}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;
    invoke-static/range {v26 .. v26}, Lcom/android/server/bridge/BridgeProxy;->access$900(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/UserHandle;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1822
    const-wide/16 v26, 0x0

    .line 1885
    .end local v6    # "dstPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12    # "mKnoxIdNamePair":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v13    # "mKnoxInfoForApp":Landroid/os/Bundle;
    .end local v16    # "mMoveToSrcCId":I
    .end local v17    # "moveTo":Landroid/content/Intent;
    .end local v24    # "srcPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    return-wide v26

    .line 1804
    .restart local v6    # "dstPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v17    # "moveTo":Landroid/content/Intent;
    .restart local v24    # "srcPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v7

    .line 1805
    .local v7, "e":Ljava/io/IOException;
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v25

    const-string v26, "copyListToFile - IOException"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1806
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1881
    .end local v6    # "dstPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "e":Ljava/io/IOException;
    .end local v17    # "moveTo":Landroid/content/Intent;
    .end local v24    # "srcPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_1
    move-exception v7

    .line 1882
    .local v7, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v7}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 1885
    .end local v7    # "e":Landroid/content/ActivityNotFoundException;
    :goto_2
    const-wide/16 v26, 0x0

    goto :goto_1

    .line 1809
    .restart local v6    # "dstPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v17    # "moveTo":Landroid/content/Intent;
    .restart local v24    # "srcPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :try_start_3
    const-string/jumbo v25, "srcFilePaths"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1810
    const-string v25, "dstFilePaths"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_0

    .line 1825
    .restart local v12    # "mKnoxIdNamePair":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v13    # "mKnoxInfoForApp":Landroid/os/Bundle;
    .restart local v16    # "mMoveToSrcCId":I
    :cond_1
    if-eqz v12, :cond_3

    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_3

    .line 1827
    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 1828
    .local v9, "idSet":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v14, 0x0

    .line 1829
    .local v14, "mMoveToDstCId":I
    const/4 v15, 0x0

    .line 1830
    .local v15, "mMoveToDstName":Ljava/lang/String;
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_2

    .line 1831
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 1832
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "mMoveToDstName":Ljava/lang/String;
    check-cast v15, Ljava/lang/String;

    .restart local v15    # "mMoveToDstName":Ljava/lang/String;
    goto :goto_3

    .line 1834
    :cond_2
    const-string/jumbo v25, "moveToDstCId"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1835
    const-string/jumbo v25, "mMoveToDstName"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1836
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;
    invoke-static/range {v25 .. v25}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;
    invoke-static/range {v26 .. v26}, Lcom/android/server/bridge/BridgeProxy;->access$900(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/UserHandle;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_2

    .line 1843
    .end local v9    # "idSet":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v14    # "mMoveToDstCId":I
    .end local v15    # "mMoveToDstName":Ljava/lang/String;
    :cond_3
    new-instance v20, Landroid/os/Bundle;

    invoke-direct/range {v20 .. v20}, Landroid/os/Bundle;-><init>()V

    .line 1844
    .local v20, "movetoBundle":Landroid/os/Bundle;
    if-nez v11, :cond_4

    .line 1845
    const-string/jumbo v25, "srcFilePaths"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1846
    const-string v25, "dstFilePaths"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1852
    :goto_4
    const-string/jumbo v25, "requestApp"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1853
    const-string/jumbo v25, "launchAfterLockCheck"

    const/16 v26, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1854
    const-string/jumbo v25, "moveToDstCId"

    const/16 v26, -0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1855
    const-string/jumbo v25, "moveToFor"

    const-string v26, "File"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1856
    new-instance v18, Landroid/content/Intent;

    const-string v25, "com.sec.knox.bridge.MOVE_TO_KNOX"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1857
    .local v18, "moveToIntent":Landroid/content/Intent;
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1858
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 1859
    .local v19, "moveToIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;
    invoke-static/range {v25 .. v25}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v25

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v27, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I
    invoke-static/range {v27 .. v27}, Lcom/android/server/bridge/BridgeProxy;->access$600(Lcom/android/server/bridge/BridgeProxy;)I

    move-result v27

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v22

    .line 1860
    .local v22, "resInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_6

    .line 1861
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/pm/ResolveInfo;

    .line 1862
    .local v23, "resolveInfo":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 1863
    .local v21, "packageName":Ljava/lang/String;
    new-instance v5, Landroid/content/ComponentName;

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-direct {v5, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1864
    .local v5, "compName":Landroid/content/ComponentName;
    new-instance v10, Landroid/content/Intent;

    const-string v25, "com.sec.knox.bridge.MOVE_TO_KNOX"

    move-object/from16 v0, v25

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1865
    .local v10, "intent":Landroid/content/Intent;
    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1866
    invoke-virtual {v10, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1867
    const-string v25, "com.sec.knox.switcher.SwitchB2bActivityI"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 1868
    const/16 v25, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-interface {v0, v1, v10}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_5

    .line 1848
    .end local v5    # "compName":Landroid/content/ComponentName;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v18    # "moveToIntent":Landroid/content/Intent;
    .end local v19    # "moveToIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .end local v21    # "packageName":Ljava/lang/String;
    .end local v22    # "resInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v23    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_4
    const-string/jumbo v25, "isFileCreated"

    const/16 v26, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1849
    const-string/jumbo v25, "srcFilePath"

    const-string v26, "/data/misc/BridgeProxy/srcCreateFile"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1850
    const-string v25, "destFilePath"

    const-string v26, "/data/misc/BridgeProxy/dstCreateFile"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1870
    .restart local v5    # "compName":Landroid/content/ComponentName;
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v10    # "intent":Landroid/content/Intent;
    .restart local v18    # "moveToIntent":Landroid/content/Intent;
    .restart local v19    # "moveToIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .restart local v21    # "packageName":Ljava/lang/String;
    .restart local v22    # "resInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v23    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_5
    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 1873
    .end local v5    # "compName":Landroid/content/ComponentName;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v21    # "packageName":Ljava/lang/String;
    .end local v23    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_6
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v25

    add-int/lit8 v25, v25, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v26, v0

    const-string/jumbo v27, "move_to_knox"

    # invokes: Lcom/android/server/bridge/BridgeProxy;->getBridgeStringResource(Ljava/lang/String;)Ljava/lang/String;
    invoke-static/range {v26 .. v27}, Lcom/android/server/bridge/BridgeProxy;->access$3400(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v4

    .line 1876
    .local v4, "chooserInten":Landroid/content/Intent;
    const-string v26, "android.intent.extra.INITIAL_INTENTS"

    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [Landroid/os/Parcelable;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v25

    check-cast v25, [Landroid/os/Parcelable;

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1878
    const/high16 v25, 0x10000000

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1879
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;
    invoke-static/range {v25 .. v25}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;
    invoke-static/range {v26 .. v26}, Lcom/android/server/bridge/BridgeProxy;->access$900(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/UserHandle;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v4, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2
.end method

.method public moveFilesForAppEx(ILjava/util/List;Ljava/util/List;I)J
    .locals 33
    .param p1, "requestApp"    # I
    .param p4, "containerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)J"
        }
    .end annotation

    .prologue
    .line 1891
    .local p2, "srcFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "destFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v30, v0

    const-string/jumbo v31, "moveFilesForApp"

    # invokes: Lcom/android/server/bridge/BridgeProxy;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static/range {v30 .. v31}, Lcom/android/server/bridge/BridgeProxy;->access$1800(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    .line 1893
    const/4 v12, 0x0

    .line 1896
    .local v12, "isFileCreate":Z
    :try_start_0
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v30

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "moveFilesForAppEx() srcFilePaths="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "; destFilePaths="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, "reqApp = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " containerId "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1901
    new-instance v27, Ljava/util/ArrayList;

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1902
    .local v27, "srcPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    move-object/from16 v0, p3

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1904
    .local v6, "dstPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v20, Landroid/content/Intent;

    invoke-direct/range {v20 .. v20}, Landroid/content/Intent;-><init>()V

    .line 1905
    .local v20, "moveTo":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v30, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mBridgePackage:Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Lcom/android/server/bridge/BridgeProxy;->access$3200(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v30

    const-string v31, "com.sec.knox.bridge.activity.MoveToKnoxActivity"

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1906
    const-string/jumbo v30, "requestApp"

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1907
    const-string/jumbo v30, "launchAfterLockCheck"

    const/16 v31, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1909
    const/high16 v30, 0x10000000

    move-object/from16 v0, v20

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1912
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v30

    const/16 v31, 0xc8

    move/from16 v0, v30

    move/from16 v1, v31

    if-lt v0, v1, :cond_2

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v30

    const/16 v31, 0xc8

    move/from16 v0, v30

    move/from16 v1, v31

    if-lt v0, v1, :cond_2

    .line 1914
    const/4 v12, 0x1

    .line 1915
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v30

    const-string v31, " src_FILE_READ_OPERATION "

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1917
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v6}, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->copyListToFile(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1918
    const-string/jumbo v30, "isFileCreated"

    const/16 v31, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1919
    const-string/jumbo v30, "srcFilePath"

    const-string v31, "/data/misc/BridgeProxy/srcCreateFile"

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1920
    const-string v30, "destFilePath"

    const-string v31, "/data/misc/BridgeProxy/dstCreateFile"

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1931
    :goto_0
    :try_start_2
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 1935
    .local v14, "mKnoxIdNamePair":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v30, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;
    invoke-static/range {v30 .. v30}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v30

    const-string/jumbo v31, "user"

    invoke-virtual/range {v30 .. v31}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/os/UserManager;

    .line 1936
    .local v29, "um":Landroid/os/UserManager;
    const/16 v28, 0x0

    .line 1937
    .local v28, "ui":Landroid/content/pm/UserInfo;
    const/16 v30, -0x1

    move/from16 v0, p4

    move/from16 v1, v30

    if-eq v0, v1, :cond_0

    .line 1938
    move-object/from16 v0, v29

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v28

    .line 1939
    :cond_0
    const-string v19, "KNOX"

    .line 1940
    .local v19, "message":Ljava/lang/String;
    const/16 v30, -0x1

    move/from16 v0, p4

    move/from16 v1, v30

    if-ne v0, v1, :cond_3

    .line 1941
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v30, v0

    const-string/jumbo v31, "move_to_knox"

    # invokes: Lcom/android/server/bridge/BridgeProxy;->getBridgeStringResource(Ljava/lang/String;)Ljava/lang/String;
    invoke-static/range {v30 .. v31}, Lcom/android/server/bridge/BridgeProxy;->access$3400(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1942
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v30, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;
    invoke-static/range {v30 .. v30}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Landroid/os/PersonaManager;->getKnoxInfoForApp(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v15

    .line 1943
    .local v15, "mKnoxInfoForApp":Landroid/os/Bundle;
    const-string v30, "KnoxIdNamePair"

    move-object/from16 v0, v30

    invoke-virtual {v15, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v13

    check-cast v13, Ljava/util/HashMap;

    .line 1944
    .local v13, "localMap":Ljava/util/HashMap;
    invoke-virtual {v13}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 1945
    .local v10, "idSet":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_1
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_4

    .line 1946
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 1948
    .local v9, "id":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v30, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mPm:Landroid/os/PersonaManager;
    invoke-static/range {v30 .. v30}, Lcom/android/server/bridge/BridgeProxy;->access$700(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/PersonaManager;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v30

    invoke-static/range {v30 .. v30}, Landroid/os/PersonaManager;->isSecureFolderId(I)Z

    move-result v30

    if-nez v30, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v30, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mPm:Landroid/os/PersonaManager;
    invoke-static/range {v30 .. v30}, Lcom/android/server/bridge/BridgeProxy;->access$700(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/PersonaManager;

    move-result-object v30

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Landroid/os/PersonaManager;->isECContainer(I)Z

    move-result v30

    if-nez v30, :cond_1

    .line 1950
    invoke-virtual {v13, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    move-object/from16 v0, v30

    invoke-virtual {v14, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 2024
    .end local v6    # "dstPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "id":Ljava/lang/Integer;
    .end local v10    # "idSet":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v13    # "localMap":Ljava/util/HashMap;
    .end local v14    # "mKnoxIdNamePair":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v15    # "mKnoxInfoForApp":Landroid/os/Bundle;
    .end local v19    # "message":Ljava/lang/String;
    .end local v20    # "moveTo":Landroid/content/Intent;
    .end local v27    # "srcPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v28    # "ui":Landroid/content/pm/UserInfo;
    .end local v29    # "um":Landroid/os/UserManager;
    :catch_0
    move-exception v7

    .line 2025
    .local v7, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v7}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 2028
    .end local v7    # "e":Landroid/content/ActivityNotFoundException;
    :goto_2
    const-wide/16 v30, 0x0

    :goto_3
    return-wide v30

    .line 1921
    .restart local v6    # "dstPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v20    # "moveTo":Landroid/content/Intent;
    .restart local v27    # "srcPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_1
    move-exception v7

    .line 1922
    .local v7, "e":Ljava/io/IOException;
    :try_start_3
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v30

    const-string v31, "copyListToFile - IOException"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1923
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 1926
    .end local v7    # "e":Ljava/io/IOException;
    :cond_2
    const-string/jumbo v30, "srcFilePaths"

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1927
    const-string v30, "dstFilePaths"

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 1953
    .restart local v14    # "mKnoxIdNamePair":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v19    # "message":Ljava/lang/String;
    .restart local v28    # "ui":Landroid/content/pm/UserInfo;
    .restart local v29    # "um":Landroid/os/UserManager;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v30, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mPm:Landroid/os/PersonaManager;
    invoke-static/range {v30 .. v30}, Lcom/android/server/bridge/BridgeProxy;->access$700(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/PersonaManager;

    invoke-static/range {p4 .. p4}, Landroid/os/PersonaManager;->isSecureFolderId(I)Z

    move-result v30

    if-eqz v30, :cond_5

    .line 1954
    const-string v19, "Secure Folder"

    .line 1955
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1961
    :cond_4
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v30, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I
    invoke-static/range {v30 .. v30}, Lcom/android/server/bridge/BridgeProxy;->access$600(Lcom/android/server/bridge/BridgeProxy;)I

    move-result v18

    .line 1963
    .local v18, "mMoveToSrcCId":I
    const/16 v30, 0x0

    invoke-static/range {v30 .. v30}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v30

    move/from16 v0, v18

    move/from16 v1, v30

    if-eq v0, v1, :cond_6

    .line 1964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v30, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;
    invoke-static/range {v30 .. v30}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v31, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;
    invoke-static/range {v31 .. v31}, Lcom/android/server/bridge/BridgeProxy;->access$900(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/UserHandle;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v20

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1965
    const-wide/16 v30, 0x0

    goto :goto_3

    .line 1956
    .end local v18    # "mMoveToSrcCId":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v30, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mPm:Landroid/os/PersonaManager;
    invoke-static/range {v30 .. v30}, Lcom/android/server/bridge/BridgeProxy;->access$700(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/PersonaManager;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/PersonaManager;->isECContainer(I)Z

    move-result v30

    if-eqz v30, :cond_4

    .line 1957
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v30, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mPm:Landroid/os/PersonaManager;
    invoke-static/range {v30 .. v30}, Lcom/android/server/bridge/BridgeProxy;->access$700(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/PersonaManager;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/PersonaManager;->getECName(I)Ljava/lang/String;

    move-result-object v19

    .line 1958
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v31, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mPm:Landroid/os/PersonaManager;
    invoke-static/range {v31 .. v31}, Lcom/android/server/bridge/BridgeProxy;->access$700(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/PersonaManager;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/PersonaManager;->getECName(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 1968
    .restart local v18    # "mMoveToSrcCId":I
    :cond_6
    if-eqz v14, :cond_8

    invoke-virtual {v14}, Ljava/util/HashMap;->size()I

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_8

    .line 1970
    invoke-virtual {v14}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 1971
    .restart local v10    # "idSet":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/16 v16, 0x0

    .line 1972
    .local v16, "mMoveToDstCId":I
    const/16 v17, 0x0

    .line 1973
    .local v17, "mMoveToDstName":Ljava/lang/String;
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_7

    .line 1974
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/Integer;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 1975
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "mMoveToDstName":Ljava/lang/String;
    check-cast v17, Ljava/lang/String;

    .restart local v17    # "mMoveToDstName":Ljava/lang/String;
    goto :goto_5

    .line 1977
    :cond_7
    const-string/jumbo v30, "moveToDstCId"

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1978
    const-string/jumbo v30, "mMoveToDstName"

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1979
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v30, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;
    invoke-static/range {v30 .. v30}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v31, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;
    invoke-static/range {v31 .. v31}, Lcom/android/server/bridge/BridgeProxy;->access$900(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/UserHandle;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v20

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_2

    .line 1986
    .end local v10    # "idSet":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v16    # "mMoveToDstCId":I
    .end local v17    # "mMoveToDstName":Ljava/lang/String;
    :cond_8
    new-instance v23, Landroid/os/Bundle;

    invoke-direct/range {v23 .. v23}, Landroid/os/Bundle;-><init>()V

    .line 1987
    .local v23, "movetoBundle":Landroid/os/Bundle;
    if-nez v12, :cond_9

    .line 1988
    const-string/jumbo v30, "srcFilePaths"

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1989
    const-string v30, "dstFilePaths"

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1995
    :goto_6
    const-string/jumbo v30, "requestApp"

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1996
    const-string/jumbo v30, "launchAfterLockCheck"

    const/16 v31, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1997
    const-string/jumbo v30, "moveToDstCId"

    const/16 v31, -0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1998
    const-string/jumbo v30, "moveToFor"

    const-string v31, "File"

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1999
    new-instance v21, Landroid/content/Intent;

    const-string v30, "com.sec.knox.bridge.MOVE_TO_KNOX"

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2000
    .local v21, "moveToIntent":Landroid/content/Intent;
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2001
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 2002
    .local v22, "moveToIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v30, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;
    invoke-static/range {v30 .. v30}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v30

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v32, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I
    invoke-static/range {v32 .. v32}, Lcom/android/server/bridge/BridgeProxy;->access$600(Lcom/android/server/bridge/BridgeProxy;)I

    move-result v32

    move-object/from16 v0, v30

    move-object/from16 v1, v21

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v25

    .line 2003
    .local v25, "resInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->isEmpty()Z

    move-result v30

    if-nez v30, :cond_b

    .line 2004
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/content/pm/ResolveInfo;

    .line 2005
    .local v26, "resolveInfo":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 2006
    .local v24, "packageName":Ljava/lang/String;
    new-instance v5, Landroid/content/ComponentName;

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-direct {v5, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2007
    .local v5, "compName":Landroid/content/ComponentName;
    new-instance v11, Landroid/content/Intent;

    const-string v30, "com.sec.knox.bridge.MOVE_TO_KNOX"

    move-object/from16 v0, v30

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2008
    .local v11, "intent":Landroid/content/Intent;
    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2009
    invoke-virtual {v11, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2010
    const-string v30, "com.sec.knox.switcher.SwitchB2bActivityI"

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_a

    .line 2011
    const/16 v30, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v30

    invoke-interface {v0, v1, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_7

    .line 1991
    .end local v5    # "compName":Landroid/content/ComponentName;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v21    # "moveToIntent":Landroid/content/Intent;
    .end local v22    # "moveToIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .end local v24    # "packageName":Ljava/lang/String;
    .end local v25    # "resInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v26    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_9
    const-string/jumbo v30, "isFileCreated"

    const/16 v31, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1992
    const-string/jumbo v30, "srcFilePath"

    const-string v31, "/data/misc/BridgeProxy/srcCreateFile"

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1993
    const-string v30, "destFilePath"

    const-string v31, "/data/misc/BridgeProxy/dstCreateFile"

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 2013
    .restart local v5    # "compName":Landroid/content/ComponentName;
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v11    # "intent":Landroid/content/Intent;
    .restart local v21    # "moveToIntent":Landroid/content/Intent;
    .restart local v22    # "moveToIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .restart local v24    # "packageName":Ljava/lang/String;
    .restart local v25    # "resInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v26    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_a
    move-object/from16 v0, v22

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 2016
    .end local v5    # "compName":Landroid/content/ComponentName;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v24    # "packageName":Ljava/lang/String;
    .end local v26    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_b
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v30

    add-int/lit8 v30, v30, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/content/Intent;

    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v4

    .line 2019
    .local v4, "chooserInten":Landroid/content/Intent;
    const-string v31, "android.intent.extra.INITIAL_INTENTS"

    const/16 v30, 0x0

    move/from16 v0, v30

    new-array v0, v0, [Landroid/os/Parcelable;

    move-object/from16 v30, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v30

    check-cast v30, [Landroid/os/Parcelable;

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2021
    const/high16 v30, 0x10000000

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2022
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v30, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;
    invoke-static/range {v30 .. v30}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v31, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;
    invoke-static/range {v31 .. v31}, Lcom/android/server/bridge/BridgeProxy;->access$900(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/UserHandle;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v0, v4, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2
.end method

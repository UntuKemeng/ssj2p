.class Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;
.super Ljava/lang/Object;
.source "WifiP2pServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "P2pBigDataLog"
.end annotation


# static fields
.field private static final KEY_CNM:Ljava/lang/String; = "WCVN"

.field private static final KEY_CONN_PERIOD:Ljava/lang/String; = "CONP"

.field private static final KEY_CONN_RECEIVED:Ljava/lang/String; = "CSOR"

.field private static final KEY_DISCONNECT_REASON:Ljava/lang/String; = "DISR"

.field private static final KEY_DRV_VER:Ljava/lang/String; = "WDRV"

.field private static final KEY_FREQ:Ljava/lang/String; = "FREQ"

.field private static final KEY_FW_VER:Ljava/lang/String; = "WFWV"

.field private static final KEY_GROUP_FORMATION_RESULT:Ljava/lang/String; = "GRFR"

.field private static final KEY_GROUP_NEGO:Ljava/lang/String; = "GRNE"

.field private static final KEY_IS_GO:Ljava/lang/String; = "ISGO"

.field private static final KEY_NOA_PERIOD:Ljava/lang/String; = "NOAP"

.field private static final KEY_NUM_CLIENT:Ljava/lang/String; = "NOCL"

.field private static final KEY_PEER_DEVICE_TYPE:Ljava/lang/String; = "DEVT"

.field private static final KEY_PEER_GO_INTENT:Ljava/lang/String; = "PINT"

.field private static final KEY_PEER_MANUFACTURER:Ljava/lang/String; = "MANU"

.field private static final KEY_PERSISTENT:Ljava/lang/String; = "PSTC"

.field private static final KEY_PKG_NAME:Ljava/lang/String; = "PKGN"

.field private static final PATH_OF_WIFIVER_INFO:Ljava/lang/String; = "/data/.wifiver.info"

.field private static final TAG:Ljava/lang/String; = "P2pBigDataLog"

.field private static final WIFI_VER_PREFIX_BRCM:Ljava/lang/String; = "HD_ver"

.field private static final WIFI_VER_PREFIX_MAVL:Ljava/lang/String; = "received"

.field private static final WIFI_VER_PREFIX_QCA:Ljava/lang/String; = "FW:"

.field private static final WIFI_VER_PREFIX_QCOM:Ljava/lang/String; = "CNSS"

.field private static final WIFI_VER_PREFIX_SPRTRM:Ljava/lang/String; = "is 0x"


# instance fields
.field private final APP_ID:Ljava/lang/String;

.field public mChipsetName:Ljava/lang/String;

.field public mConnReceived:Ljava/lang/String;

.field public mConnectionPeriod:Ljava/lang/String;

.field public mDisconnectReason:Ljava/lang/String;

.field public mDriverVer:Ljava/lang/String;

.field public mFirmwareVer:Ljava/lang/String;

.field public mFreq:Ljava/lang/String;

.field public mGroupNego:Ljava/lang/String;

.field public mIsGroupOwner:Ljava/lang/String;

.field public mNoaPeriod:Ljava/lang/String;

.field public mNumClient:Ljava/lang/String;

.field public mPeerDevType:Ljava/lang/String;

.field public mPeerGOIntent:Ljava/lang/String;

.field public mPeerManufacturer:Ljava/lang/String;

.field public mPersistent:Ljava/lang/String;

.field public mPkgName:Ljava/lang/String;

.field public mResult:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)V
    .locals 1

    .prologue
    .line 1265
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1243
    const-string v0, "android.net.wifi.p2p"

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->APP_ID:Ljava/lang/String;

    .line 1266
    return-void
.end method

.method private convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 1643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getChipsetName()Ljava/lang/String;
    .locals 10

    .prologue
    .line 1592
    const/4 v4, 0x0

    .line 1593
    .local v4, "fr":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 1594
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v7, 0x0

    .line 1595
    .local v7, "verString":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1598
    .local v6, "retString":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    const-string v8, "/data/.wifiver.info"

    invoke-direct {v5, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1599
    .end local v4    # "fr":Ljava/io/FileReader;
    .local v5, "fr":Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1601
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 1603
    if-eqz v7, :cond_12

    .line 1604
    const-string v8, "HD_ver"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1605
    const-string v8, "1"
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1629
    if-eqz v1, :cond_0

    .line 1630
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 1632
    :cond_0
    if-eqz v5, :cond_1

    .line 1633
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 1639
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    :cond_2
    :goto_0
    return-object v8

    .line 1635
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_0
    move-exception v3

    .line 1636
    .local v3, "e2":Ljava/io/IOException;
    const-string v8, "File Close error"

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_0

    .line 1606
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e2":Ljava/io/IOException;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :cond_3
    :try_start_4
    const-string v8, "CNSS"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1607
    const-string v8, "2"
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_c
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1629
    if-eqz v1, :cond_4

    .line 1630
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 1632
    :cond_4
    if-eqz v5, :cond_5

    .line 1633
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_5
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 1636
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_0

    .line 1635
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_1
    move-exception v3

    .line 1636
    .restart local v3    # "e2":Ljava/io/IOException;
    const-string v8, "File Close error"

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_0

    .line 1608
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e2":Ljava/io/IOException;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :cond_6
    :try_start_6
    const-string v8, "FW:"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1609
    const-string v8, "3"
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_c
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1629
    if-eqz v1, :cond_7

    .line 1630
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 1632
    :cond_7
    if-eqz v5, :cond_8

    .line 1633
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_8
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 1636
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_0

    .line 1635
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_2
    move-exception v3

    .line 1636
    .restart local v3    # "e2":Ljava/io/IOException;
    const-string v8, "File Close error"

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_0

    .line 1610
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e2":Ljava/io/IOException;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :cond_9
    :try_start_8
    const-string v8, "received"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 1611
    const-string v8, "4"
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_c
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1629
    if-eqz v1, :cond_a

    .line 1630
    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 1632
    :cond_a
    if-eqz v5, :cond_b

    .line 1633
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    :cond_b
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 1636
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_0

    .line 1635
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_3
    move-exception v3

    .line 1636
    .restart local v3    # "e2":Ljava/io/IOException;
    const-string v8, "File Close error"

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_0

    .line 1612
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e2":Ljava/io/IOException;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :cond_c
    :try_start_a
    const-string v8, "is 0x"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 1613
    const-string v8, "5"
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_c
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 1629
    if-eqz v1, :cond_d

    .line 1630
    :try_start_b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 1632
    :cond_d
    if-eqz v5, :cond_e

    .line 1633
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    :cond_e
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 1636
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_0

    .line 1635
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_4
    move-exception v3

    .line 1636
    .restart local v3    # "e2":Ljava/io/IOException;
    const-string v8, "File Close error"

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_0

    .line 1615
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e2":Ljava/io/IOException;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :cond_f
    :try_start_c
    const-string v6, "NG"

    .line 1618
    const-string v8, "NG"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 1619
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown String format..Full string is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    move-result-object v8

    .line 1629
    if-eqz v1, :cond_10

    .line 1630
    :try_start_d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 1632
    :cond_10
    if-eqz v5, :cond_11

    .line 1633
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    :cond_11
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 1636
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto/16 :goto_0

    .line 1635
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_5
    move-exception v3

    .line 1636
    .restart local v3    # "e2":Ljava/io/IOException;
    const-string v8, "File Close error"

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto/16 :goto_0

    .line 1622
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e2":Ljava/io/IOException;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :cond_12
    :try_start_e
    const-string v8, "file is null .. !"
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_c
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 1629
    if-eqz v1, :cond_13

    .line 1630
    :try_start_f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 1632
    :cond_13
    if-eqz v5, :cond_14

    .line 1633
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_6

    :cond_14
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 1636
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto/16 :goto_0

    .line 1635
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_6
    move-exception v3

    .line 1636
    .restart local v3    # "e2":Ljava/io/IOException;
    const-string v8, "File Close error"

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto/16 :goto_0

    .line 1629
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e2":Ljava/io/IOException;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :cond_15
    if-eqz v1, :cond_16

    .line 1630
    :try_start_10
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 1632
    :cond_16
    if-eqz v5, :cond_17

    .line 1633
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_7

    .line 1639
    :cond_17
    const-string v8, "error"

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto/16 :goto_0

    .line 1635
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_7
    move-exception v3

    .line 1636
    .restart local v3    # "e2":Ljava/io/IOException;
    const-string v8, "File Close error"

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto/16 :goto_0

    .line 1624
    .end local v3    # "e2":Ljava/io/IOException;
    :catch_8
    move-exception v2

    .line 1625
    .local v2, "e1":Ljava/io/IOException;
    :goto_1
    :try_start_11
    const-string v8, "/data/.wifiver.info doesn\'t exist or there are something wrong on handling it"
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 1629
    if-eqz v0, :cond_18

    .line 1630
    :try_start_12
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 1632
    :cond_18
    if-eqz v4, :cond_2

    .line 1633
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_9

    goto/16 :goto_0

    .line 1635
    :catch_9
    move-exception v3

    .line 1636
    .restart local v3    # "e2":Ljava/io/IOException;
    const-string v8, "File Close error"

    goto/16 :goto_0

    .line 1628
    .end local v2    # "e1":Ljava/io/IOException;
    .end local v3    # "e2":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 1629
    :goto_2
    if-eqz v0, :cond_19

    .line 1630
    :try_start_13
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 1632
    :cond_19
    if-eqz v4, :cond_1a

    .line 1633
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_a

    .line 1636
    :cond_1a
    throw v8

    .line 1635
    :catch_a
    move-exception v3

    .line 1636
    .restart local v3    # "e2":Ljava/io/IOException;
    const-string v8, "File Close error"

    goto/16 :goto_0

    .line 1628
    .end local v3    # "e2":Ljava/io/IOException;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_2

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catchall_2
    move-exception v8

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_2

    .line 1624
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_b
    move-exception v2

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_1

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_c
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_1
.end method

.method private getDriverVer()Ljava/lang/String;
    .locals 14

    .prologue
    const/4 v13, -0x1

    .line 1488
    const/4 v4, 0x0

    .line 1489
    .local v4, "fr":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 1490
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v10, 0x0

    .line 1491
    .local v10, "verString":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1493
    .local v7, "retString":Ljava/lang/String;
    const/4 v9, 0x0

    .line 1494
    .local v9, "verStart":I
    const/4 v8, 0x0

    .line 1495
    .local v8, "verEnd":I
    const/4 v6, 0x0

    .line 1498
    .local v6, "lineNumber":I
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    const-string v11, "/data/.wifiver.info"

    invoke-direct {v5, v11}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1499
    .end local v4    # "fr":Ljava/io/FileReader;
    .local v5, "fr":Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1501
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .line 1503
    if-eqz v10, :cond_1a

    .line 1504
    const-string v11, "HD_ver"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 1506
    if-eqz v10, :cond_6

    .line 1507
    const-string v11, "HD_ver:"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 1509
    if-eq v9, v13, :cond_3

    .line 1510
    const-string v11, "HD_ver:"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v11, v9

    add-int/lit8 v9, v11, 0x1

    .line 1511
    const-string v11, " "

    invoke-virtual {v10, v11, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v8

    .line 1512
    invoke-virtual {v10, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_d
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v7

    .line 1579
    if-eqz v1, :cond_0

    .line 1580
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 1582
    :cond_0
    if-eqz v5, :cond_1

    .line 1583
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    move-object v11, v7

    .line 1589
    :cond_2
    :goto_0
    return-object v11

    .line 1585
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_0
    move-exception v3

    .line 1586
    .local v3, "e2":Ljava/io/IOException;
    const-string v11, "File Close error"

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_0

    .line 1515
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e2":Ljava/io/IOException;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :cond_3
    :try_start_4
    const-string v7, "NG"

    .line 1568
    :goto_1
    const-string v11, "NG"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_d
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result v11

    if-eqz v11, :cond_1d

    .line 1579
    if-eqz v1, :cond_4

    .line 1580
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 1582
    :cond_4
    if-eqz v5, :cond_5

    .line 1583
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    :cond_5
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    move-object v11, v10

    .line 1586
    goto :goto_0

    .line 1518
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :cond_6
    :try_start_6
    const-string v7, "NG"

    .line 1519
    const-string v11, "file was damaged, it need check !"
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_d
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1579
    if-eqz v1, :cond_7

    .line 1580
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 1582
    :cond_7
    if-eqz v5, :cond_8

    .line 1583
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :cond_8
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 1586
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_0

    .line 1585
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_1
    move-exception v3

    .line 1586
    .restart local v3    # "e2":Ljava/io/IOException;
    const-string v11, "File Close error"

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_0

    .line 1521
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e2":Ljava/io/IOException;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :cond_9
    :try_start_8
    const-string v11, "CNSS"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 1522
    const-string v11, "v"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 1524
    if-eq v9, v13, :cond_c

    .line 1525
    const-string v11, "v"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v9, v11

    .line 1526
    const-string v11, " CNSS"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 1527
    invoke-virtual {v10, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_d
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-result-object v7

    .line 1579
    if-eqz v1, :cond_a

    .line 1580
    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 1582
    :cond_a
    if-eqz v5, :cond_b

    .line 1583
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    :cond_b
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    move-object v11, v7

    .line 1586
    goto :goto_0

    .line 1585
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_2
    move-exception v3

    .line 1586
    .restart local v3    # "e2":Ljava/io/IOException;
    const-string v11, "File Close error"

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_0

    .line 1530
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e2":Ljava/io/IOException;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :cond_c
    :try_start_a
    const-string v7, "NG"

    goto :goto_1

    .line 1532
    :cond_d
    const-string v11, "FW:"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 1533
    const-string v11, "SW"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 1535
    if-eq v9, v13, :cond_10

    .line 1536
    const-string v11, "SW"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v11, v9

    add-int/lit8 v9, v11, 0x1

    .line 1537
    const-string v11, "FW"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    add-int/lit8 v8, v11, -0x2

    .line 1538
    invoke-virtual {v10, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_d
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-result-object v7

    .line 1579
    if-eqz v1, :cond_e

    .line 1580
    :try_start_b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 1582
    :cond_e
    if-eqz v5, :cond_f

    .line 1583
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    :cond_f
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    move-object v11, v7

    .line 1586
    goto/16 :goto_0

    .line 1585
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_3
    move-exception v3

    .line 1586
    .restart local v3    # "e2":Ljava/io/IOException;
    const-string v11, "File Close error"

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto/16 :goto_0

    .line 1541
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e2":Ljava/io/IOException;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :cond_10
    :try_start_c
    const-string v7, "NG"

    goto/16 :goto_1

    .line 1543
    :cond_11
    const-string v11, "received"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_15

    .line 1544
    const-string v11, "-GPL"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    add-int/lit8 v9, v11, -0x4

    .line 1546
    if-eq v9, v13, :cond_14

    .line 1547
    const-string v11, "-GPL"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 1548
    invoke-virtual {v10, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_d
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    move-result-object v7

    .line 1579
    if-eqz v1, :cond_12

    .line 1580
    :try_start_d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 1582
    :cond_12
    if-eqz v5, :cond_13

    .line 1583
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    :cond_13
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    move-object v11, v7

    .line 1586
    goto/16 :goto_0

    .line 1585
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_4
    move-exception v3

    .line 1586
    .restart local v3    # "e2":Ljava/io/IOException;
    const-string v11, "File Close error"

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto/16 :goto_0

    .line 1551
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e2":Ljava/io/IOException;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :cond_14
    :try_start_e
    const-string v7, "NG"

    goto/16 :goto_1

    .line 1553
    :cond_15
    const-string v11, "is 0x"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_19

    .line 1554
    const-string v11, "cp version is "

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const-string v12, "cp version is "

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int v9, v11, v12

    .line 1556
    if-eq v9, v13, :cond_18

    .line 1557
    const-string v11, "date"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    add-int/lit8 v8, v11, -0x2

    .line 1558
    invoke-virtual {v10, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_d
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    move-result-object v7

    .line 1579
    if-eqz v1, :cond_16

    .line 1580
    :try_start_f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 1582
    :cond_16
    if-eqz v5, :cond_17

    .line 1583
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5

    :cond_17
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    move-object v11, v7

    .line 1586
    goto/16 :goto_0

    .line 1585
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_5
    move-exception v3

    .line 1586
    .restart local v3    # "e2":Ljava/io/IOException;
    const-string v11, "File Close error"

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto/16 :goto_0

    .line 1562
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e2":Ljava/io/IOException;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :cond_18
    :try_start_10
    const-string v7, "NG"

    goto/16 :goto_1

    .line 1565
    :cond_19
    const-string v7, "NG"
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_d
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    goto/16 :goto_1

    .line 1585
    :catch_6
    move-exception v3

    .line 1586
    .restart local v3    # "e2":Ljava/io/IOException;
    const-string v11, "File Close error"

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto/16 :goto_0

    .line 1572
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e2":Ljava/io/IOException;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :cond_1a
    :try_start_11
    const-string v11, "file is null .. !"
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_d
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 1579
    if-eqz v1, :cond_1b

    .line 1580
    :try_start_12
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 1582
    :cond_1b
    if-eqz v5, :cond_1c

    .line 1583
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_7

    :cond_1c
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 1586
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto/16 :goto_0

    .line 1585
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_7
    move-exception v3

    .line 1586
    .restart local v3    # "e2":Ljava/io/IOException;
    const-string v11, "File Close error"

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto/16 :goto_0

    .line 1579
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e2":Ljava/io/IOException;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :cond_1d
    if-eqz v1, :cond_1e

    .line 1580
    :try_start_13
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 1582
    :cond_1e
    if-eqz v5, :cond_1f

    .line 1583
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_8

    .line 1589
    :cond_1f
    const-string v11, "error"

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto/16 :goto_0

    .line 1585
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_8
    move-exception v3

    .line 1586
    .restart local v3    # "e2":Ljava/io/IOException;
    const-string v11, "File Close error"

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto/16 :goto_0

    .line 1574
    .end local v3    # "e2":Ljava/io/IOException;
    :catch_9
    move-exception v2

    .line 1575
    .local v2, "e1":Ljava/io/IOException;
    :goto_2
    :try_start_14
    const-string v11, "/data/.wifiver.info doesn\'t exist or there are something wrong on handling it"
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 1579
    if-eqz v0, :cond_20

    .line 1580
    :try_start_15
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 1582
    :cond_20
    if-eqz v4, :cond_2

    .line 1583
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_a

    goto/16 :goto_0

    .line 1585
    :catch_a
    move-exception v3

    .line 1586
    .restart local v3    # "e2":Ljava/io/IOException;
    const-string v11, "File Close error"

    goto/16 :goto_0

    .line 1578
    .end local v2    # "e1":Ljava/io/IOException;
    .end local v3    # "e2":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    .line 1579
    :goto_3
    if-eqz v0, :cond_21

    .line 1580
    :try_start_16
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 1582
    :cond_21
    if-eqz v4, :cond_22

    .line 1583
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_b

    .line 1586
    :cond_22
    throw v11

    .line 1585
    :catch_b
    move-exception v3

    .line 1586
    .restart local v3    # "e2":Ljava/io/IOException;
    const-string v11, "File Close error"

    goto/16 :goto_0

    .line 1578
    .end local v3    # "e2":Ljava/io/IOException;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catchall_1
    move-exception v11

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_3

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catchall_2
    move-exception v11

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_3

    .line 1574
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_c
    move-exception v2

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_2

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_d
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_2
.end method

.method private getFirmwareVer()Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v12, -0x1

    .line 1385
    const/4 v4, 0x0

    .line 1386
    .local v4, "fr":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 1387
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v9, 0x0

    .line 1388
    .local v9, "verString":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1390
    .local v6, "retString":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1391
    .local v8, "verStart":I
    const/4 v7, 0x0

    .line 1394
    .local v7, "verEnd":I
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    const-string v10, "/data/.wifiver.info"

    invoke-direct {v5, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1395
    .end local v4    # "fr":Ljava/io/FileReader;
    .local v5, "fr":Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1397
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 1399
    if-eqz v9, :cond_1a

    .line 1400
    const-string v10, "HD_ver"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1401
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 1403
    if-eqz v9, :cond_6

    .line 1404
    const-string v10, "version"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 1406
    if-eq v8, v12, :cond_3

    .line 1407
    const-string v10, "version"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v8

    add-int/lit8 v8, v10, 0x1

    .line 1408
    const-string v10, " "

    invoke-virtual {v9, v10, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    .line 1409
    invoke-virtual {v9, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_d
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v6

    .line 1475
    if-eqz v1, :cond_0

    .line 1476
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 1478
    :cond_0
    if-eqz v5, :cond_1

    .line 1479
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    move-object v10, v6

    .line 1485
    :cond_2
    :goto_0
    return-object v10

    .line 1481
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_0
    move-exception v3

    .line 1482
    .local v3, "e2":Ljava/io/IOException;
    const-string v10, "File Close error"

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_0

    .line 1412
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e2":Ljava/io/IOException;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :cond_3
    :try_start_4
    const-string v6, "NG"

    .line 1464
    :goto_1
    const-string v10, "NG"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_d
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result v10

    if-eqz v10, :cond_1d

    .line 1475
    if-eqz v1, :cond_4

    .line 1476
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 1478
    :cond_4
    if-eqz v5, :cond_5

    .line 1479
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    :cond_5
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    move-object v10, v9

    .line 1482
    goto :goto_0

    .line 1415
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :cond_6
    :try_start_6
    const-string v6, "NG"

    .line 1416
    const-string v10, "file was damaged, it need check !"
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_d
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1475
    if-eqz v1, :cond_7

    .line 1476
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 1478
    :cond_7
    if-eqz v5, :cond_8

    .line 1479
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :cond_8
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 1482
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_0

    .line 1481
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_1
    move-exception v3

    .line 1482
    .restart local v3    # "e2":Ljava/io/IOException;
    const-string v10, "File Close error"

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_0

    .line 1418
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e2":Ljava/io/IOException;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :cond_9
    :try_start_8
    const-string v10, "CNSS"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 1419
    const-string v10, "CNSS"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 1421
    if-eq v8, v12, :cond_c

    .line 1422
    const-string v10, "CNSS-PR-"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v8, v10

    .line 1423
    invoke-virtual {v9, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_d
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-result-object v6

    .line 1475
    if-eqz v1, :cond_a

    .line 1476
    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 1478
    :cond_a
    if-eqz v5, :cond_b

    .line 1479
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    :cond_b
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    move-object v10, v6

    .line 1482
    goto :goto_0

    .line 1481
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_2
    move-exception v3

    .line 1482
    .restart local v3    # "e2":Ljava/io/IOException;
    const-string v10, "File Close error"

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_0

    .line 1426
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e2":Ljava/io/IOException;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :cond_c
    :try_start_a
    const-string v6, "NG"

    goto :goto_1

    .line 1428
    :cond_d
    const-string v10, "FW:"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 1429
    const-string v10, "FW"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 1431
    if-eq v8, v12, :cond_10

    .line 1432
    const-string v10, "FW"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v8

    add-int/lit8 v8, v10, 0x1

    .line 1433
    const-string v10, "HW"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v7, v10, -0x2

    .line 1434
    invoke-virtual {v9, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_d
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-result-object v6

    .line 1475
    if-eqz v1, :cond_e

    .line 1476
    :try_start_b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 1478
    :cond_e
    if-eqz v5, :cond_f

    .line 1479
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    :cond_f
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    move-object v10, v6

    .line 1482
    goto/16 :goto_0

    .line 1481
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_3
    move-exception v3

    .line 1482
    .restart local v3    # "e2":Ljava/io/IOException;
    const-string v10, "File Close error"

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto/16 :goto_0

    .line 1437
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e2":Ljava/io/IOException;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :cond_10
    :try_start_c
    const-string v6, "NG"

    goto/16 :goto_1

    .line 1439
    :cond_11
    const-string v10, "received"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 1440
    const-string v10, ".p"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v8, v10, 0x1

    .line 1441
    invoke-virtual {v9, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 1443
    if-eq v8, v12, :cond_14

    .line 1444
    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 1445
    const/4 v10, 0x0

    invoke-virtual {v9, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_d
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    move-result-object v6

    .line 1475
    if-eqz v1, :cond_12

    .line 1476
    :try_start_d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 1478
    :cond_12
    if-eqz v5, :cond_13

    .line 1479
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    :cond_13
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    move-object v10, v6

    .line 1482
    goto/16 :goto_0

    .line 1481
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_4
    move-exception v3

    .line 1482
    .restart local v3    # "e2":Ljava/io/IOException;
    const-string v10, "File Close error"

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto/16 :goto_0

    .line 1448
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e2":Ljava/io/IOException;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :cond_14
    :try_start_e
    const-string v6, "NG"

    goto/16 :goto_1

    .line 1450
    :cond_15
    const-string v10, "is 0x"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_19

    .line 1451
    const-string v10, "driver version is "

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const-string v11, "driver version is "

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v10, v11

    add-int/lit8 v8, v10, 0x1

    .line 1453
    if-eq v8, v12, :cond_18

    .line 1454
    const-string v10, "] ["

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 1455
    const/4 v10, 0x0

    invoke-virtual {v9, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_d
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    move-result-object v6

    .line 1475
    if-eqz v1, :cond_16

    .line 1476
    :try_start_f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 1478
    :cond_16
    if-eqz v5, :cond_17

    .line 1479
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5

    :cond_17
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    move-object v10, v6

    .line 1482
    goto/16 :goto_0

    .line 1481
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_5
    move-exception v3

    .line 1482
    .restart local v3    # "e2":Ljava/io/IOException;
    const-string v10, "File Close error"

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto/16 :goto_0

    .line 1458
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e2":Ljava/io/IOException;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :cond_18
    :try_start_10
    const-string v6, "NG"

    goto/16 :goto_1

    .line 1461
    :cond_19
    const-string v6, "NG"
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_d
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    goto/16 :goto_1

    .line 1481
    :catch_6
    move-exception v3

    .line 1482
    .restart local v3    # "e2":Ljava/io/IOException;
    const-string v10, "File Close error"

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto/16 :goto_0

    .line 1468
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e2":Ljava/io/IOException;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :cond_1a
    :try_start_11
    const-string v10, "file is null .. !"
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_d
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 1475
    if-eqz v1, :cond_1b

    .line 1476
    :try_start_12
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 1478
    :cond_1b
    if-eqz v5, :cond_1c

    .line 1479
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_7

    :cond_1c
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 1482
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto/16 :goto_0

    .line 1481
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_7
    move-exception v3

    .line 1482
    .restart local v3    # "e2":Ljava/io/IOException;
    const-string v10, "File Close error"

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto/16 :goto_0

    .line 1475
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e2":Ljava/io/IOException;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :cond_1d
    if-eqz v1, :cond_1e

    .line 1476
    :try_start_13
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 1478
    :cond_1e
    if-eqz v5, :cond_1f

    .line 1479
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_8

    .line 1485
    :cond_1f
    const-string v10, "error"

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto/16 :goto_0

    .line 1481
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_8
    move-exception v3

    .line 1482
    .restart local v3    # "e2":Ljava/io/IOException;
    const-string v10, "File Close error"

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto/16 :goto_0

    .line 1470
    .end local v3    # "e2":Ljava/io/IOException;
    :catch_9
    move-exception v2

    .line 1471
    .local v2, "e1":Ljava/io/IOException;
    :goto_2
    :try_start_14
    const-string v10, "/data/.wifiver.info doesn\'t exist or there are something wrong on handling it"
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 1475
    if-eqz v0, :cond_20

    .line 1476
    :try_start_15
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 1478
    :cond_20
    if-eqz v4, :cond_2

    .line 1479
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_a

    goto/16 :goto_0

    .line 1481
    :catch_a
    move-exception v3

    .line 1482
    .restart local v3    # "e2":Ljava/io/IOException;
    const-string v10, "File Close error"

    goto/16 :goto_0

    .line 1474
    .end local v2    # "e1":Ljava/io/IOException;
    .end local v3    # "e2":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 1475
    :goto_3
    if-eqz v0, :cond_21

    .line 1476
    :try_start_16
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 1478
    :cond_21
    if-eqz v4, :cond_22

    .line 1479
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_b

    .line 1482
    :cond_22
    throw v10

    .line 1481
    :catch_b
    move-exception v3

    .line 1482
    .restart local v3    # "e2":Ljava/io/IOException;
    const-string v10, "File Close error"

    goto/16 :goto_0

    .line 1474
    .end local v3    # "e2":Ljava/io/IOException;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catchall_1
    move-exception v10

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_3

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catchall_2
    move-exception v10

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_3

    .line 1470
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_c
    move-exception v2

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_2

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_d
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_2
.end method

.method private removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 1647
    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 1652
    .end local p1    # "string":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 1648
    .restart local p1    # "string":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1649
    .local v0, "length":I
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 1650
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public getJsonFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "feature"    # Ljava/lang/String;

    .prologue
    .line 1291
    if-nez p1, :cond_0

    .line 1292
    const/4 v0, 0x0

    .line 1331
    :goto_0
    return-object v0

    .line 1294
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1295
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1296
    const-string v2, "WDCL"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1297
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WFWV"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mFirmwareVer:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1298
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WDRV"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mDriverVer:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1299
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WCVN"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mChipsetName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1301
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISGO"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mIsGroupOwner:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1302
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NOCL"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mNumClient:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1303
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FREQ"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mFreq:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1304
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PKGN"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mPkgName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1305
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CONP"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mConnectionPeriod:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1306
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NOAP"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mNoaPeriod:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1307
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MANU"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mPeerManufacturer:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1308
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEVT"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mPeerDevType:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1309
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DISR"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mDisconnectReason:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1325
    :cond_1
    :goto_1
    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1327
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1331
    .local v0, "result":Ljava/lang/String;
    goto/16 :goto_0

    .line 1311
    .end local v0    # "result":Ljava/lang/String;
    :cond_2
    const-string v2, "WDGF"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1312
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WFWV"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mFirmwareVer:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1313
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WDRV"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mDriverVer:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1314
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WCVN"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mChipsetName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1316
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PKGN"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mPkgName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1317
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CSOR"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mConnReceived:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1318
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PSTC"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mPersistent:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1319
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GRNE"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mGroupNego:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1320
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MANU"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mPeerManufacturer:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1321
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEVT"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mPeerDevType:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1322
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PINT"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mPeerGOIntent:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1323
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GRFR"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mResult:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1
.end method

.method public initialize()V
    .locals 1

    .prologue
    .line 1269
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->getFirmwareVer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mFirmwareVer:Ljava/lang/String;

    .line 1270
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->getDriverVer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mDriverVer:Ljava/lang/String;

    .line 1271
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->getChipsetName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mChipsetName:Ljava/lang/String;

    .line 1273
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mIsGroupOwner:Ljava/lang/String;

    .line 1274
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mNumClient:Ljava/lang/String;

    .line 1275
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mFreq:Ljava/lang/String;

    .line 1276
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mConnectionPeriod:Ljava/lang/String;

    .line 1277
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mNoaPeriod:Ljava/lang/String;

    .line 1278
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mPeerManufacturer:Ljava/lang/String;

    .line 1279
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mPeerDevType:Ljava/lang/String;

    .line 1280
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mDisconnectReason:Ljava/lang/String;

    .line 1282
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mPkgName:Ljava/lang/String;

    .line 1283
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mConnReceived:Ljava/lang/String;

    .line 1284
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mPersistent:Ljava/lang/String;

    .line 1285
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mGroupNego:Ljava/lang/String;

    .line 1286
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mPeerGOIntent:Ljava/lang/String;

    .line 1287
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mResult:Ljava/lang/String;

    .line 1288
    return-void
.end method

.method public parseData(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1336
    const/4 v1, 0x0

    .line 1337
    .local v1, "index":I
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1381
    :cond_0
    :goto_0
    return v3

    .line 1340
    :cond_1
    const-string v5, "\\s+"

    invoke-virtual {p2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1345
    .local v0, "array":[Ljava/lang/String;
    const-string v5, "WDCL"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1346
    array-length v5, v0

    const/16 v6, 0x9

    if-eq v5, v6, :cond_2

    .line 1347
    const-string v4, "P2pBigDataLog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wrong parseData for WDCL, length : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1351
    :cond_2
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .local v2, "index":I
    aget-object v3, v0, v1

    iput-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mIsGroupOwner:Ljava/lang/String;

    .line 1352
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aget-object v3, v0, v2

    iput-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mNumClient:Ljava/lang/String;

    .line 1353
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    aget-object v3, v0, v1

    iput-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mFreq:Ljava/lang/String;

    .line 1354
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aget-object v3, v0, v2

    iput-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mPkgName:Ljava/lang/String;

    .line 1355
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    aget-object v3, v0, v1

    iput-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mConnectionPeriod:Ljava/lang/String;

    .line 1356
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aget-object v3, v0, v2

    iput-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mNoaPeriod:Ljava/lang/String;

    .line 1357
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    aget-object v3, v0, v1

    iput-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mPeerManufacturer:Ljava/lang/String;

    .line 1358
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aget-object v3, v0, v2

    iput-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mPeerDevType:Ljava/lang/String;

    .line 1359
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    aget-object v3, v0, v1

    iput-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mDisconnectReason:Ljava/lang/String;

    move v1, v2

    .end local v2    # "index":I
    .restart local v1    # "index":I
    move v3, v4

    .line 1361
    goto :goto_0

    .line 1363
    :cond_3
    const-string v5, "WDGF"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1364
    array-length v5, v0

    const/16 v6, 0x8

    if-eq v5, v6, :cond_4

    .line 1365
    const-string v4, "P2pBigDataLog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wrong parseData for WDGF, length : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1369
    :cond_4
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    aget-object v3, v0, v1

    iput-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mPkgName:Ljava/lang/String;

    .line 1370
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aget-object v3, v0, v2

    iput-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mConnReceived:Ljava/lang/String;

    .line 1371
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    aget-object v3, v0, v1

    iput-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mPersistent:Ljava/lang/String;

    .line 1372
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aget-object v3, v0, v2

    iput-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mGroupNego:Ljava/lang/String;

    .line 1373
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    aget-object v3, v0, v1

    iput-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mPeerManufacturer:Ljava/lang/String;

    .line 1374
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aget-object v3, v0, v2

    iput-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mPeerDevType:Ljava/lang/String;

    .line 1375
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    aget-object v3, v0, v1

    iput-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mPeerGOIntent:Ljava/lang/String;

    .line 1376
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aget-object v3, v0, v2

    iput-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mResult:Ljava/lang/String;

    move v3, v4

    .line 1378
    goto/16 :goto_0
.end method

.class Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;
.super Ljava/lang/Object;
.source "WifiP2pServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiP2pConnectReqInfo"
.end annotation


# instance fields
.field private connectionReceived:I

.field private isJoin:I

.field private isPersistent:I

.field private peerDev:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private peerDevType:I

.field private peerGOIntentValue:I

.field private peerManufacturer:Ljava/lang/String;

.field private pkgName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 7069
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7066
    iput v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;->peerDevType:I

    .line 7067
    iput v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;->peerGOIntentValue:I

    .line 7070
    return-void
.end method

.method static synthetic access$12400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;

    .prologue
    .line 7059
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;->peerDev:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$12500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;

    .prologue
    .line 7059
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;->pkgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$12502(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 7059
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;->pkgName:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public reset()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 7091
    iput-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;->peerDev:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 7092
    iput-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;->pkgName:Ljava/lang/String;

    .line 7093
    iput v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;->connectionReceived:I

    .line 7094
    iput v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;->isPersistent:I

    .line 7095
    iput v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;->isJoin:I

    .line 7096
    iput-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;->peerManufacturer:Ljava/lang/String;

    .line 7097
    iput v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;->peerDevType:I

    .line 7098
    iput v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;->peerGOIntentValue:I

    .line 7099
    return-void
.end method

.method public set(Landroid/net/wifi/p2p/WifiP2pDevice;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "dev"    # Landroid/net/wifi/p2p/WifiP2pDevice;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "conn"    # I
    .param p4, "p"    # I
    .param p5, "j"    # I
    .param p6, "ma"    # Ljava/lang/String;
    .param p7, "typeStr"    # Ljava/lang/String;

    .prologue
    .line 7074
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;->peerDev:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 7075
    iput-object p2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;->pkgName:Ljava/lang/String;

    .line 7076
    iput p3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;->connectionReceived:I

    .line 7077
    iput p4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;->isPersistent:I

    .line 7078
    iput p5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;->isJoin:I

    .line 7079
    iput-object p6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;->peerManufacturer:Ljava/lang/String;

    .line 7080
    if-eqz p7, :cond_0

    .line 7081
    const-string v2, "-"

    invoke-virtual {p7, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 7083
    .local v1, "tokens":[Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;->peerDevType:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7088
    .end local v1    # "tokens":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 7084
    .restart local v1    # "tokens":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 7085
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v2, "WifiP2pService"

    const-string v3, "NumberFormatException while getting peerDevType"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setPeerGOIntentValue(I)V
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 7102
    iput p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;->peerGOIntentValue:I

    .line 7103
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 7106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;->connectionReceived:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;->isPersistent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;->isJoin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;->peerManufacturer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;->peerDevType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;->peerGOIntentValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Landroid/net/wifi/WifiApWhiteList$WhiteList;
.super Ljava/lang/Object;
.source "WifiApWhiteList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiApWhiteList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WhiteList"
.end annotation


# instance fields
.field private mMac:Ljava/lang/String;

.field private mName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/WifiApWhiteList$WhiteList;->mMac:Ljava/lang/String;

    iput-object p2, p0, Landroid/net/wifi/WifiApWhiteList$WhiteList;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMac()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiApWhiteList$WhiteList;->mMac:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiApWhiteList$WhiteList;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Landroid/net/wifi/WifiApWhiteList$WhiteList;->mName:Ljava/lang/String;

    return-void
.end method

.class final Landroid/net/wifi/WifiInfo$1;
.super Ljava/lang/Object;
.source "WifiInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/net/wifi/WifiInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiInfo;
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    new-instance v0, Landroid/net/wifi/WifiInfo;

    invoke-direct {v0}, Landroid/net/wifi/WifiInfo;-><init>()V

    .local v0, "info":Landroid/net/wifi/WifiInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setRssi(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setLinkSpeed(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setFrequency(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setInetAddress(Ljava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_1

    sget-object v1, Landroid/net/wifi/WifiSsid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiSsid;

    # setter for: Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;
    invoke-static {v0, v1}, Landroid/net/wifi/WifiInfo;->access$002(Landroid/net/wifi/WifiInfo;Landroid/net/wifi/WifiSsid;)Landroid/net/wifi/WifiSsid;

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/net/wifi/WifiInfo;->access$102(Landroid/net/wifi/WifiInfo;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/net/wifi/WifiInfo;->access$202(Landroid/net/wifi/WifiInfo;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    # setter for: Landroid/net/wifi/WifiInfo;->mMeteredHint:Z
    invoke-static {v0, v1}, Landroid/net/wifi/WifiInfo;->access$302(Landroid/net/wifi/WifiInfo;Z)Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_2
    # setter for: Landroid/net/wifi/WifiInfo;->mEphemeral:Z
    invoke-static {v0, v1}, Landroid/net/wifi/WifiInfo;->access$402(Landroid/net/wifi/WifiInfo;Z)Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiInfo;->score:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    iput-wide v4, v0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    iput-wide v4, v0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    iput-wide v4, v0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    iput-wide v4, v0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiInfo;->lowRssiCount:I

    sget-object v1, Landroid/net/wifi/SupplicantState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/SupplicantState;

    # setter for: Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;
    invoke-static {v0, v1}, Landroid/net/wifi/WifiInfo;->access$502(Landroid/net/wifi/WifiInfo;Landroid/net/wifi/SupplicantState;)Landroid/net/wifi/SupplicantState;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_4

    move v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setSkipInternetCheck(Z)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_5

    move v1, v2

    :goto_4
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setSkipInternetCheckConfirmedOnThisConnection(Z)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_6

    move v1, v2

    :goto_5
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setCaptivePortal(Z)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_7

    move v1, v2

    :goto_6
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setAuthenticated(Z)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_8

    move v1, v2

    :goto_7
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setManualConnection(Z)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Landroid/net/wifi/WifiInfo;->mLoginUrl:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/net/wifi/WifiInfo;->access$602(Landroid/net/wifi/WifiInfo;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_9

    move v1, v2

    :goto_8
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setDefaultAp(Z)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_a

    move v1, v2

    :goto_9
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setSharedAp(Z)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Landroid/net/wifi/WifiInfo;->mExpiration:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/net/wifi/WifiInfo;->access$702(Landroid/net/wifi/WifiInfo;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_b

    move v1, v2

    :goto_a
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setVerifiedPassword(Z)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_c

    move v1, v2

    :goto_b
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setCheckVsieForSns(Z)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_d

    move v1, v2

    :goto_c
    iput-boolean v1, v0, Landroid/net/wifi/WifiInfo;->isGigaAp:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_e

    :goto_d
    iput-boolean v2, v0, Landroid/net/wifi/WifiInfo;->isVendorAp:Z

    return-object v0

    :cond_2
    move v1, v3

    goto/16 :goto_1

    :cond_3
    move v1, v3

    goto/16 :goto_2

    :cond_4
    move v1, v3

    goto :goto_3

    :cond_5
    move v1, v3

    goto :goto_4

    :cond_6
    move v1, v3

    goto :goto_5

    :cond_7
    move v1, v3

    goto :goto_6

    :cond_8
    move v1, v3

    goto :goto_7

    :cond_9
    move v1, v3

    goto :goto_8

    :cond_a
    move v1, v3

    goto :goto_9

    :cond_b
    move v1, v3

    goto :goto_a

    :cond_c
    move v1, v3

    goto :goto_b

    :cond_d
    move v1, v3

    goto :goto_c

    :cond_e
    move v2, v3

    goto :goto_d

    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/WifiInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    new-array v0, p1, [Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiInfo$1;->newArray(I)[Landroid/net/wifi/WifiInfo;

    move-result-object v0

    return-object v0
.end method

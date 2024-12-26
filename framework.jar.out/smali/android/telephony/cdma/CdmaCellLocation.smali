.class public Landroid/telephony/cdma/CdmaCellLocation;
.super Landroid/telephony/CellLocation;
.source "CdmaCellLocation.java"


# static fields
.field public static final INVALID_LAT_LONG:I = 0x7fffffff


# instance fields
.field private mBaseStationId:I

.field private mBaseStationLatitude:I

.field private mBaseStationLongitude:I

.field private mDataPlmn:Ljava/lang/String;

.field private mLteCellId:I

.field private mNetworkId:I

.field private mSystemId:I

.field private mTac:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const v2, 0x7fffffff

    const/4 v1, -0x1

    .line 65
    invoke-direct {p0}, Landroid/telephony/CellLocation;-><init>()V

    .line 26
    iput v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationId:I

    .line 39
    iput v2, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLatitude:I

    .line 47
    iput v2, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLongitude:I

    .line 49
    iput v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mSystemId:I

    .line 50
    iput v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mNetworkId:I

    .line 53
    iput v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mTac:I

    .line 54
    iput v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mLteCellId:I

    .line 57
    const-string v0, ""

    iput-object v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mDataPlmn:Ljava/lang/String;

    .line 66
    iput v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationId:I

    .line 67
    iput v2, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLatitude:I

    .line 68
    iput v2, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLongitude:I

    .line 69
    iput v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mSystemId:I

    .line 70
    iput v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mNetworkId:I

    .line 72
    iput v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mTac:I

    .line 73
    iput v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mLteCellId:I

    .line 76
    const-string v0, ""

    iput-object v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mDataPlmn:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const v1, 0x7fffffff

    const/4 v0, -0x1

    .line 83
    invoke-direct {p0}, Landroid/telephony/CellLocation;-><init>()V

    .line 26
    iput v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationId:I

    .line 39
    iput v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLatitude:I

    .line 47
    iput v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLongitude:I

    .line 49
    iput v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mSystemId:I

    .line 50
    iput v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mNetworkId:I

    .line 53
    iput v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mTac:I

    .line 54
    iput v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mLteCellId:I

    .line 57
    const-string v0, ""

    iput-object v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mDataPlmn:Ljava/lang/String;

    .line 84
    const-string v0, "baseStationId"

    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationId:I

    .line 85
    const-string v0, "baseStationLatitude"

    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLatitude:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLatitude:I

    .line 86
    const-string v0, "baseStationLongitude"

    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLongitude:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLongitude:I

    .line 87
    const-string/jumbo v0, "systemId"

    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mSystemId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mSystemId:I

    .line 88
    const-string/jumbo v0, "networkId"

    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mNetworkId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mNetworkId:I

    .line 90
    const-string/jumbo v0, "mTac"

    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mTac:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mTac:I

    .line 91
    const-string/jumbo v0, "mLteCellId"

    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mLteCellId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mLteCellId:I

    .line 94
    const-string/jumbo v0, "mDataPlmn"

    iget-object v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mDataPlmn:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mDataPlmn:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public static convertQuartSecToDecDegrees(I)D
    .locals 4
    .param p0, "quartSec"    # I

    .prologue
    .line 336
    int-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, -0x278d00

    if-lt p0, v0, :cond_0

    const v0, 0x278d00

    if-le p0, v0, :cond_1

    .line 338
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid coordiante value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 340
    :cond_1
    int-to-double v0, p0

    const-wide v2, 0x40cc200000000000L    # 14400.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private static equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .prologue
    .line 289
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 244
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    .local v2, "s":Landroid/telephony/cdma/CdmaCellLocation;
    if-nez p1, :cond_1

    .line 253
    .end local v2    # "s":Landroid/telephony/cdma/CdmaCellLocation;
    :cond_0
    :goto_0
    return v3

    .line 245
    :catch_0
    move-exception v1

    .line 246
    .local v1, "ex":Ljava/lang/ClassCastException;
    goto :goto_0

    .line 253
    .end local v1    # "ex":Ljava/lang/ClassCastException;
    .restart local v2    # "s":Landroid/telephony/cdma/CdmaCellLocation;
    :cond_1
    iget v4, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/cdma/CdmaCellLocation;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLatitude:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLatitude:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/cdma/CdmaCellLocation;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLongitude:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLongitude:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/cdma/CdmaCellLocation;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Landroid/telephony/cdma/CdmaCellLocation;->mSystemId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/cdma/CdmaCellLocation;->mSystemId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/cdma/CdmaCellLocation;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Landroid/telephony/cdma/CdmaCellLocation;->mNetworkId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/cdma/CdmaCellLocation;->mNetworkId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/cdma/CdmaCellLocation;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Landroid/telephony/cdma/CdmaCellLocation;->mTac:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/cdma/CdmaCellLocation;->mTac:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/cdma/CdmaCellLocation;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Landroid/telephony/cdma/CdmaCellLocation;->mLteCellId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/cdma/CdmaCellLocation;->mLteCellId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/cdma/CdmaCellLocation;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/telephony/cdma/CdmaCellLocation;->mDataPlmn:Ljava/lang/String;

    iget-object v5, v2, Landroid/telephony/cdma/CdmaCellLocation;->mDataPlmn:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/telephony/cdma/CdmaCellLocation;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto/16 :goto_0
.end method

.method public fillInNotifierBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundleToFill"    # Landroid/os/Bundle;

    .prologue
    .line 298
    const-string v0, "baseStationId"

    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 299
    const-string v0, "baseStationLatitude"

    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLatitude:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 300
    const-string v0, "baseStationLongitude"

    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLongitude:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 301
    const-string/jumbo v0, "systemId"

    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mSystemId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 302
    const-string/jumbo v0, "networkId"

    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mNetworkId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 304
    const-string/jumbo v0, "mTac"

    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mTac:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 305
    const-string/jumbo v0, "mLteCellId"

    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mLteCellId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 308
    const-string/jumbo v0, "mDataPlmn"

    iget-object v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mDataPlmn:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    return-void
.end method

.method public getBaseStationId()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationId:I

    return v0
.end method

.method public getBaseStationLatitude()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLatitude:I

    return v0
.end method

.method public getBaseStationLongitude()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLongitude:I

    return v0
.end method

.method public getDataPlmn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mDataPlmn:Ljava/lang/String;

    return-object v0
.end method

.method public getLteCellId()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mLteCellId:I

    return v0
.end method

.method public getLteTac()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mTac:I

    return v0
.end method

.method public getNetworkId()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mNetworkId:I

    return v0
.end method

.method public getSystemId()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mSystemId:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 235
    iget v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationId:I

    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLatitude:I

    xor-int/2addr v0, v1

    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLongitude:I

    xor-int/2addr v0, v1

    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mSystemId:I

    xor-int/2addr v0, v1

    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mNetworkId:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public isEmpty()Z
    .locals 3

    .prologue
    const v2, 0x7fffffff

    const/4 v1, -0x1

    .line 316
    iget v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationId:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLatitude:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLongitude:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mSystemId:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mTac:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mLteCellId:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mNetworkId:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCellLocationData(III)V
    .locals 0
    .param p1, "baseStationId"    # I
    .param p2, "baseStationLatitude"    # I
    .param p3, "baseStationLongitude"    # I

    .prologue
    .line 215
    iput p1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationId:I

    .line 216
    iput p2, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLatitude:I

    .line 217
    iput p3, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLongitude:I

    .line 218
    return-void
.end method

.method public setCellLocationData(IIIII)V
    .locals 0
    .param p1, "baseStationId"    # I
    .param p2, "baseStationLatitude"    # I
    .param p3, "baseStationLongitude"    # I
    .param p4, "systemId"    # I
    .param p5, "networkId"    # I

    .prologue
    .line 226
    iput p1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationId:I

    .line 227
    iput p2, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLatitude:I

    .line 228
    iput p3, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLongitude:I

    .line 229
    iput p4, p0, Landroid/telephony/cdma/CdmaCellLocation;->mSystemId:I

    .line 230
    iput p5, p0, Landroid/telephony/cdma/CdmaCellLocation;->mNetworkId:I

    .line 231
    return-void
.end method

.method public setDataPlmn(Ljava/lang/String;)V
    .locals 0
    .param p1, "dataPlmn"    # Ljava/lang/String;

    .prologue
    .line 187
    iput-object p1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mDataPlmn:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public setLteCellId(I)V
    .locals 0
    .param p1, "cid"    # I

    .prologue
    .line 171
    iput p1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mLteCellId:I

    .line 172
    return-void
.end method

.method public setLteTac(I)V
    .locals 0
    .param p1, "tac"    # I

    .prologue
    .line 164
    iput p1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mTac:I

    .line 165
    return-void
.end method

.method public setStateInvalid()V
    .locals 2

    .prologue
    const v1, 0x7fffffff

    const/4 v0, -0x1

    .line 195
    iput v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationId:I

    .line 196
    iput v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLatitude:I

    .line 197
    iput v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLongitude:I

    .line 198
    iput v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mSystemId:I

    .line 199
    iput v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mNetworkId:I

    .line 201
    iput v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mTac:I

    .line 202
    iput v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mLteCellId:I

    .line 205
    const-string v0, ""

    iput-object v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mDataPlmn:Ljava/lang/String;

    .line 207
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLatitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLongitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mSystemId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mNetworkId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mTac:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mLteCellId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

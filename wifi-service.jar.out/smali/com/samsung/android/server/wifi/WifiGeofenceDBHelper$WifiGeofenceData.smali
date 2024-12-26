.class public Lcom/samsung/android/server/wifi/WifiGeofenceDBHelper$WifiGeofenceData;
.super Ljava/lang/Object;
.source "WifiGeofenceDBHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/WifiGeofenceDBHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WifiGeofenceData"
.end annotation


# instance fields
.field private mBssid:Ljava/lang/String;

.field private mConfigKey:Ljava/lang/String;

.field private mIsGeofenceEnter:I

.field private mLastConnectedTime:J

.field private mLocationid:I

.field private mNetworkid:I

.field final synthetic this$0:Lcom/samsung/android/server/wifi/WifiGeofenceDBHelper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/WifiGeofenceDBHelper;IILjava/lang/String;Ljava/lang/String;J)V
    .locals 2
    .param p2, "locationId"    # I
    .param p3, "networkId"    # I
    .param p4, "configKey"    # Ljava/lang/String;
    .param p5, "bssid"    # Ljava/lang/String;
    .param p6, "lastConnectedTime"    # J

    .prologue
    .line 262
    iput-object p1, p0, Lcom/samsung/android/server/wifi/WifiGeofenceDBHelper$WifiGeofenceData;->this$0:Lcom/samsung/android/server/wifi/WifiGeofenceDBHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    iput p2, p0, Lcom/samsung/android/server/wifi/WifiGeofenceDBHelper$WifiGeofenceData;->mLocationid:I

    .line 264
    iput p3, p0, Lcom/samsung/android/server/wifi/WifiGeofenceDBHelper$WifiGeofenceData;->mNetworkid:I

    .line 265
    iput-object p4, p0, Lcom/samsung/android/server/wifi/WifiGeofenceDBHelper$WifiGeofenceData;->mConfigKey:Ljava/lang/String;

    .line 266
    iput-object p5, p0, Lcom/samsung/android/server/wifi/WifiGeofenceDBHelper$WifiGeofenceData;->mBssid:Ljava/lang/String;

    .line 267
    iput-wide p6, p0, Lcom/samsung/android/server/wifi/WifiGeofenceDBHelper$WifiGeofenceData;->mLastConnectedTime:J

    .line 268
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/server/wifi/WifiGeofenceDBHelper$WifiGeofenceData;->mIsGeofenceEnter:I

    .line 269
    return-void
.end method


# virtual methods
.method public getBssid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiGeofenceDBHelper$WifiGeofenceData;->mBssid:Ljava/lang/String;

    return-object v0
.end method

.method public getConfigKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiGeofenceDBHelper$WifiGeofenceData;->mConfigKey:Ljava/lang/String;

    return-object v0
.end method

.method public getGeofenceStateToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 299
    const-string v0, ""

    .line 300
    .local v0, "retVal":Ljava/lang/String;
    iget v1, p0, Lcom/samsung/android/server/wifi/WifiGeofenceDBHelper$WifiGeofenceData;->mIsGeofenceEnter:I

    packed-switch v1, :pswitch_data_0

    .line 314
    :goto_0
    return-object v0

    .line 302
    :pswitch_0
    const-string v0, "EXIT"

    .line 303
    goto :goto_0

    .line 305
    :pswitch_1
    const-string v0, "ENTER"

    .line 306
    goto :goto_0

    .line 308
    :pswitch_2
    const-string v0, "UNKNOWN"

    .line 309
    goto :goto_0

    .line 300
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getIsGeofenceEnter()I
    .locals 1

    .prologue
    .line 296
    iget v0, p0, Lcom/samsung/android/server/wifi/WifiGeofenceDBHelper$WifiGeofenceData;->mIsGeofenceEnter:I

    return v0
.end method

.method public getLastConnectedTime()J
    .locals 2

    .prologue
    .line 287
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/WifiGeofenceDBHelper$WifiGeofenceData;->mLastConnectedTime:J

    return-wide v0
.end method

.method public getLocationId()I
    .locals 1

    .prologue
    .line 272
    iget v0, p0, Lcom/samsung/android/server/wifi/WifiGeofenceDBHelper$WifiGeofenceData;->mLocationid:I

    return v0
.end method

.method public getNetworkId()I
    .locals 1

    .prologue
    .line 275
    iget v0, p0, Lcom/samsung/android/server/wifi/WifiGeofenceDBHelper$WifiGeofenceData;->mNetworkid:I

    return v0
.end method

.method public printDump()Ljava/lang/String;
    .locals 4

    .prologue
    .line 317
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/samsung/android/server/wifi/WifiGeofenceDBHelper$WifiGeofenceData;->mLocationid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/server/wifi/WifiGeofenceDBHelper$WifiGeofenceData;->mNetworkid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiGeofenceDBHelper$WifiGeofenceData;->mConfigKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/samsung/android/server/wifi/WifiGeofenceDBHelper$WifiGeofenceData;->mLastConnectedTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/server/wifi/WifiGeofenceDBHelper$WifiGeofenceData;->mIsGeofenceEnter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/WifiGeofenceDBHelper$WifiGeofenceData;->getGeofenceStateToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 319
    .local v0, "dump":Ljava/lang/String;
    return-object v0
.end method

.method public setConfigKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "configKey"    # Ljava/lang/String;

    .prologue
    .line 281
    iput-object p1, p0, Lcom/samsung/android/server/wifi/WifiGeofenceDBHelper$WifiGeofenceData;->mConfigKey:Ljava/lang/String;

    .line 282
    return-void
.end method

.method public setIsGeofenceEnter(I)V
    .locals 0
    .param p1, "isEnter"    # I

    .prologue
    .line 293
    iput p1, p0, Lcom/samsung/android/server/wifi/WifiGeofenceDBHelper$WifiGeofenceData;->mIsGeofenceEnter:I

    .line 294
    return-void
.end method

.method public setLastConnectedTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 290
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/WifiGeofenceDBHelper$WifiGeofenceData;->mLastConnectedTime:J

    .line 291
    return-void
.end method

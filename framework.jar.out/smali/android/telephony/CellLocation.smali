.class public abstract Landroid/telephony/CellLocation;
.super Ljava/lang/Object;
.source "CellLocation.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEmpty()Landroid/telephony/CellLocation;
    .locals 1

    .prologue
    .line 121
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 127
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 123
    :pswitch_0
    new-instance v0, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-direct {v0}, Landroid/telephony/cdma/CdmaCellLocation;-><init>()V

    goto :goto_0

    .line 125
    :pswitch_1
    new-instance v0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v0}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V

    goto :goto_0

    .line 121
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static newFromBundle(Landroid/os/Bundle;)Landroid/telephony/CellLocation;
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 71
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v0

    .line 72
    .local v0, "subId":I
    invoke-static {p0, v0}, Landroid/telephony/CellLocation;->newFromBundle(Landroid/os/Bundle;I)Landroid/telephony/CellLocation;

    move-result-object v1

    return-object v1
.end method

.method public static newFromBundle(Landroid/os/Bundle;I)Landroid/telephony/CellLocation;
    .locals 6
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "subId"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 80
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-le v0, v5, :cond_0

    const-string v0, "CTC"

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    const-string v0, "READY"

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    invoke-static {v4}, Lcom/samsung/android/telephony/MultiSimManager;->getSubscriptionId(I)[I

    move-result-object v1

    aget v1, v1, v4

    const-string v2, "gsm.sim.state"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "READY"

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    invoke-static {v5}, Lcom/samsung/android/telephony/MultiSimManager;->getSubscriptionId(I)[I

    move-result-object v1

    aget v1, v1, v4

    const-string v2, "gsm.sim.state"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    invoke-static {v5}, Lcom/samsung/android/telephony/MultiSimManager;->getSubscriptionId(I)[I

    move-result-object v0

    aget p1, v0, v4

    .line 92
    :cond_0
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 99
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 85
    :cond_1
    const-string v0, "ABSENT"

    const-string v1, "gsm.sim.state"

    const-string v2, ""

    invoke-static {v1, v4, v2}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "READY"

    const-string v1, "gsm.sim.state"

    const-string v2, ""

    invoke-static {v1, v5, v2}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-static {v5}, Lcom/samsung/android/telephony/MultiSimManager;->getSubscriptionId(I)[I

    move-result-object v0

    aget p1, v0, v4

    goto :goto_0

    .line 95
    :pswitch_0
    new-instance v0, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-direct {v0, p0}, Landroid/telephony/cdma/CdmaCellLocation;-><init>(Landroid/os/Bundle;)V

    goto :goto_1

    .line 97
    :pswitch_1
    new-instance v0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v0, p0}, Landroid/telephony/gsm/GsmCellLocation;-><init>(Landroid/os/Bundle;)V

    goto :goto_1

    .line 92
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static requestLocationUpdate()V
    .locals 2

    .prologue
    .line 48
    :try_start_0
    const-string/jumbo v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 49
    .local v0, "phone":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_0

    .line 50
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->updateServiceLocation()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public abstract fillInNotifierBundle(Landroid/os/Bundle;)V
.end method

.method public abstract isEmpty()Z
.end method

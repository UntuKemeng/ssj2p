.class public abstract Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService$Stub;
.super Landroid/os/Binder;
.source "IDeviceRootKeyService.java"

# interfaces
.implements Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.service.DeviceRootKeyService.IDeviceRootKeyService"

.field static final TRANSACTION_createServiceKeySession:I = 0x3

.field static final TRANSACTION_getDeviceRootKeyUID:I = 0x2

.field static final TRANSACTION_isExistDeviceRootKey:I = 0x1

.field static final TRANSACTION_releaseServiceKeySession:I = 0x4

.field static final TRANSACTION_setDeviceRootKey:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.service.DeviceRootKeyService.IDeviceRootKeyService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.samsung.android.service.DeviceRootKeyService.IDeviceRootKeyService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    :sswitch_0
    const-string v4, "com.samsung.android.service.DeviceRootKeyService.IDeviceRootKeyService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v4, "com.samsung.android.service.DeviceRootKeyService.IDeviceRootKeyService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService$Stub;->isExistDeviceRootKey(I)Z

    move-result v3

    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_0

    move v4, v5

    :goto_1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_2
    const-string v4, "com.samsung.android.service.DeviceRootKeyService.IDeviceRootKeyService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService$Stub;->getDeviceRootKeyUID(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_3
    const-string v4, "com.samsung.android.service.DeviceRootKeyService.IDeviceRootKeyService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

    .local v2, "_arg2":Lcom/samsung/android/service/DeviceRootKeyService/Tlv;
    :goto_2
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService$Stub;->createServiceKeySession(Ljava/lang/String;ILcom/samsung/android/service/DeviceRootKeyService/Tlv;)[B

    move-result-object v3

    .local v3, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    .end local v2    # "_arg2":Lcom/samsung/android/service/DeviceRootKeyService/Tlv;
    .end local v3    # "_result":[B
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Lcom/samsung/android/service/DeviceRootKeyService/Tlv;
    goto :goto_2

    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Lcom/samsung/android/service/DeviceRootKeyService/Tlv;
    :sswitch_4
    const-string v4, "com.samsung.android.service.DeviceRootKeyService.IDeviceRootKeyService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService$Stub;->releaseServiceKeySession()I

    move-result v3

    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v3    # "_result":I
    :sswitch_5
    const-string v4, "com.samsung.android.service.DeviceRootKeyService.IDeviceRootKeyService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .local v0, "_arg0":[B
    invoke-virtual {p0, v0}, Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService$Stub;->setDeviceRootKey([B)I

    move-result v3

    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

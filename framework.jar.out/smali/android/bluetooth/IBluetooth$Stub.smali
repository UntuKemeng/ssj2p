.class public abstract Landroid/bluetooth/IBluetooth$Stub;
.super Landroid/os/Binder;
.source "IBluetooth.java"

# interfaces
.implements Landroid/bluetooth/IBluetooth;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetooth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetooth$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetooth"

.field static final TRANSACTION_cancelBondProcess:I = 0x19

.field static final TRANSACTION_cancelDiscovery:I = 0x12

.field static final TRANSACTION_clearAutoConnDevice:I = 0x57

.field static final TRANSACTION_configHciSnoopLog:I = 0x43

.field static final TRANSACTION_configHciSnoopLogForExternal:I = 0x65

.field static final TRANSACTION_configScoLoopback:I = 0x30

.field static final TRANSACTION_connectSocket:I = 0x3c

.field static final TRANSACTION_controlTxPower:I = 0x31

.field static final TRANSACTION_createBond:I = 0x18

.field static final TRANSACTION_createBondOutOfBandEx:I = 0x61

.field static final TRANSACTION_createOutOfBandData:I = 0x5f

.field static final TRANSACTION_createSocketChannel:I = 0x3d

.field static final TRANSACTION_disable:I = 0x5

.field static final TRANSACTION_dump:I = 0x5b

.field static final TRANSACTION_dutModeConfigure:I = 0x2a

.field static final TRANSACTION_enable:I = 0x3

.field static final TRANSACTION_enableNoAutoConnect:I = 0x4

.field static final TRANSACTION_factoryReset:I = 0x44

.field static final TRANSACTION_fetchRemoteUuids:I = 0x23

.field static final TRANSACTION_getActivityEnergyInfoFromController:I = 0x4b

.field static final TRANSACTION_getAdapterConnectionState:I = 0x14

.field static final TRANSACTION_getAddress:I = 0x6

.field static final TRANSACTION_getBondState:I = 0x1b

.field static final TRANSACTION_getBondedDevices:I = 0x17

.field static final TRANSACTION_getConnectedDeviceList:I = 0x10

.field static final TRANSACTION_getConnectionState:I = 0x1c

.field static final TRANSACTION_getDiscoverableTimeout:I = 0xc

.field static final TRANSACTION_getGearIsConnected:I = 0x52

.field static final TRANSACTION_getGearManagerName:I = 0x51

.field static final TRANSACTION_getHighRssi:I = 0x56

.field static final TRANSACTION_getLastConnectedDevice:I = 0xf

.field static final TRANSACTION_getLeDeviceType:I = 0x50

.field static final TRANSACTION_getLowRssi:I = 0x54

.field static final TRANSACTION_getMessageAccessPermission:I = 0x34

.field static final TRANSACTION_getMidRssi:I = 0x55

.field static final TRANSACTION_getName:I = 0x9

.field static final TRANSACTION_getPhonebookAccessPermission:I = 0x32

.field static final TRANSACTION_getProfileConnectedDevice:I = 0x16

.field static final TRANSACTION_getProfileConnectionState:I = 0x15

.field static final TRANSACTION_getRemoteAlias:I = 0x1f

.field static final TRANSACTION_getRemoteAppearance:I = 0x4f

.field static final TRANSACTION_getRemoteClass:I = 0x21

.field static final TRANSACTION_getRemoteName:I = 0x1d

.field static final TRANSACTION_getRemoteType:I = 0x1e

.field static final TRANSACTION_getRemoteUuids:I = 0x22

.field static final TRANSACTION_getScanMode:I = 0xa

.field static final TRANSACTION_getSimAccessPermission:I = 0x36

.field static final TRANSACTION_getState:I = 0x2

.field static final TRANSACTION_getUuids:I = 0x7

.field static final TRANSACTION_isActivityAndEnergyReportingSupported:I = 0x4a

.field static final TRANSACTION_isAoBleSupported:I = 0x4d

.field static final TRANSACTION_isBLEAutoconnectSupport:I = 0x4e

.field static final TRANSACTION_isDiscovering:I = 0x13

.field static final TRANSACTION_isEnabled:I = 0x1

.field static final TRANSACTION_isMultiAdvertisementSupported:I = 0x46

.field static final TRANSACTION_isOffloadedFilteringSupported:I = 0x48

.field static final TRANSACTION_isOffloadedScanBatchingSupported:I = 0x49

.field static final TRANSACTION_isPeripheralModeSupported:I = 0x47

.field static final TRANSACTION_isProfileStarted:I = 0x66

.field static final TRANSACTION_isScmstSupported:I = 0x3f

.field static final TRANSACTION_isSecureModeEnabled:I = 0x64

.field static final TRANSACTION_isSinkServiceSupported:I = 0x40

.field static final TRANSACTION_isUsingSinkProxy:I = 0x41

.field static final TRANSACTION_leTestMode:I = 0x2b

.field static final TRANSACTION_monitorRawRssi:I = 0x29

.field static final TRANSACTION_onBrEdrDown:I = 0x5e

.field static final TRANSACTION_onLeServiceUp:I = 0x5c

.field static final TRANSACTION_onLeServiceUpQuietMode:I = 0x5d

.field static final TRANSACTION_readOutOfBandDataEx:I = 0x60

.field static final TRANSACTION_readRawRssi:I = 0x28

.field static final TRANSACTION_registerCallback:I = 0x3a

.field static final TRANSACTION_removeBond:I = 0x1a

.field static final TRANSACTION_reportActivityInfo:I = 0x4c

.field static final TRANSACTION_sdpSearch:I = 0x24

.field static final TRANSACTION_selectstream:I = 0x42

.field static final TRANSACTION_sendCallerInfo:I = 0x63

.field static final TRANSACTION_sendConnectionStateChange:I = 0x39

.field static final TRANSACTION_sendRawHci:I = 0x38

.field static final TRANSACTION_setConnectionScanParameter:I = 0x59

.field static final TRANSACTION_setDeviceOutOfBandDataEx:I = 0x62

.field static final TRANSACTION_setDeviceTypeAndDmtSupport:I = 0x58

.field static final TRANSACTION_setDiscoverableTimeout:I = 0xd

.field static final TRANSACTION_setEdrRxFrequency:I = 0x2e

.field static final TRANSACTION_setEdrTestEnd:I = 0x2f

.field static final TRANSACTION_setEdrTxFrequency:I = 0x2d

.field static final TRANSACTION_setManufacturerData:I = 0xe

.field static final TRANSACTION_setMessageAccessPermission:I = 0x35

.field static final TRANSACTION_setName:I = 0x8

.field static final TRANSACTION_setPairingConfirmation:I = 0x27

.field static final TRANSACTION_setPasskey:I = 0x26

.field static final TRANSACTION_setPhonebookAccessPermission:I = 0x33

.field static final TRANSACTION_setPin:I = 0x25

.field static final TRANSACTION_setRPAGeneration:I = 0x5a

.field static final TRANSACTION_setRemoteAlias:I = 0x20

.field static final TRANSACTION_setRemoteClass:I = 0x45

.field static final TRANSACTION_setRfcommConnected:I = 0x53

.field static final TRANSACTION_setScanMode:I = 0xb

.field static final TRANSACTION_setScmstContentProtection:I = 0x3e

.field static final TRANSACTION_setSimAccessPermission:I = 0x37

.field static final TRANSACTION_sspDebugConfigure:I = 0x2c

.field static final TRANSACTION_startDiscovery:I = 0x11

.field static final TRANSACTION_unregisterCallback:I = 0x3b


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/bluetooth/IBluetooth;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Landroid/bluetooth/IBluetooth$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/bluetooth/IBluetooth$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
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
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 1289
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_0
    return v8

    .line 47
    :sswitch_0
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->isEnabled()Z

    move-result v6

    .line 54
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v6, :cond_0

    move v0, v8

    :goto_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    move v0, v9

    goto :goto_1

    .line 60
    .end local v6    # "_result":Z
    :sswitch_2
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->getState()I

    move-result v6

    .line 62
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 68
    .end local v6    # "_result":I
    :sswitch_3
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->enable()Z

    move-result v6

    .line 70
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    if-eqz v6, :cond_1

    move v9, v8

    :cond_1
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 76
    .end local v6    # "_result":Z
    :sswitch_4
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->enableNoAutoConnect()Z

    move-result v6

    .line 78
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    if-eqz v6, :cond_2

    move v9, v8

    :cond_2
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 84
    .end local v6    # "_result":Z
    :sswitch_5
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->disable()Z

    move-result v6

    .line 86
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    if-eqz v6, :cond_3

    move v9, v8

    :cond_3
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 92
    .end local v6    # "_result":Z
    :sswitch_6
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->getAddress()Ljava/lang/String;

    move-result-object v6

    .line 94
    .local v6, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 100
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_7
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v6

    .line 102
    .local v6, "_result":[Landroid/os/ParcelUuid;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    invoke-virtual {p3, v6, v8}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 108
    .end local v6    # "_result":[Landroid/os/ParcelUuid;
    :sswitch_8
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->setName(Ljava/lang/String;)Z

    move-result v6

    .line 112
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    if-eqz v6, :cond_4

    move v9, v8

    :cond_4
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 118
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v6    # "_result":Z
    :sswitch_9
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->getName()Ljava/lang/String;

    move-result-object v6

    .line 120
    .local v6, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 126
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_a
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->getScanMode()I

    move-result v6

    .line 128
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 134
    .end local v6    # "_result":I
    :sswitch_b
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 138
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 139
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->setScanMode(II)Z

    move-result v6

    .line 140
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    if-eqz v6, :cond_5

    move v9, v8

    :cond_5
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 146
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Z
    :sswitch_c
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->getDiscoverableTimeout()I

    move-result v6

    .line 148
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 154
    .end local v6    # "_result":I
    :sswitch_d
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 157
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->setDiscoverableTimeout(I)Z

    move-result v6

    .line 158
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    if-eqz v6, :cond_6

    move v9, v8

    :cond_6
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 164
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_e
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->setManufacturerData()V

    .line 166
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 171
    :sswitch_f
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->getLastConnectedDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    .line 173
    .local v6, "_result":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    if-eqz v6, :cond_7

    .line 175
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    invoke-virtual {v6, p3, v8}, Landroid/bluetooth/BluetoothDevice;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 179
    :cond_7
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 185
    .end local v6    # "_result":Landroid/bluetooth/BluetoothDevice;
    :sswitch_10
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->getConnectedDeviceList()Ljava/util/List;

    move-result-object v7

    .line 187
    .local v7, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 193
    .end local v7    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_11
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->startDiscovery()Z

    move-result v6

    .line 195
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    if-eqz v6, :cond_8

    move v9, v8

    :cond_8
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 201
    .end local v6    # "_result":Z
    :sswitch_12
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->cancelDiscovery()Z

    move-result v6

    .line 203
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    if-eqz v6, :cond_9

    move v9, v8

    :cond_9
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 209
    .end local v6    # "_result":Z
    :sswitch_13
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->isDiscovering()Z

    move-result v6

    .line 211
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    if-eqz v6, :cond_a

    move v9, v8

    :cond_a
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 217
    .end local v6    # "_result":Z
    :sswitch_14
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->getAdapterConnectionState()I

    move-result v6

    .line 219
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 225
    .end local v6    # "_result":I
    :sswitch_15
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 228
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getProfileConnectionState(I)I

    move-result v6

    .line 229
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 235
    .end local v1    # "_arg0":I
    .end local v6    # "_result":I
    :sswitch_16
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 238
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getProfileConnectedDevice(I)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    .line 239
    .local v6, "_result":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    if-eqz v6, :cond_b

    .line 241
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    invoke-virtual {v6, p3, v8}, Landroid/bluetooth/BluetoothDevice;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 245
    :cond_b
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 251
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Landroid/bluetooth/BluetoothDevice;
    :sswitch_17
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->getBondedDevices()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    .line 253
    .local v6, "_result":[Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    invoke-virtual {p3, v6, v8}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 259
    .end local v6    # "_result":[Landroid/bluetooth/BluetoothDevice;
    :sswitch_18
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d

    .line 262
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 268
    .local v1, "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 269
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->createBond(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v6

    .line 270
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    if-eqz v6, :cond_c

    move v9, v8

    :cond_c
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 265
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Z
    :cond_d
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_2

    .line 276
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_19
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f

    .line 279
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 284
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_3
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->cancelBondProcess(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v6

    .line 285
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    if-eqz v6, :cond_e

    move v9, v8

    :cond_e
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 282
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v6    # "_result":Z
    :cond_f
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_3

    .line 291
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_1a
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_11

    .line 294
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 299
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_4
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->removeBond(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v6

    .line 300
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    if-eqz v6, :cond_10

    move v9, v8

    :cond_10
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 297
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v6    # "_result":Z
    :cond_11
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_4

    .line 306
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_1b
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 308
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_12

    .line 309
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 314
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_5
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getBondState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    .line 315
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 312
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v6    # "_result":I
    :cond_12
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_5

    .line 321
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_1c
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_13

    .line 324
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 329
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_6
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    .line 330
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 327
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v6    # "_result":I
    :cond_13
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_6

    .line 336
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_1d
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_14

    .line 339
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 344
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_7
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v6

    .line 345
    .local v6, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 346
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 342
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v6    # "_result":Ljava/lang/String;
    :cond_14
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_7

    .line 351
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_1e
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 353
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_15

    .line 354
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 359
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_8
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteType(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    .line 360
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 357
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v6    # "_result":I
    :cond_15
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_8

    .line 366
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_1f
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_16

    .line 369
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 374
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_9
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteAlias(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v6

    .line 375
    .local v6, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 376
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 372
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v6    # "_result":Ljava/lang/String;
    :cond_16
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_9

    .line 381
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_20
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 383
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_18

    .line 384
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 390
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 391
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->setRemoteAlias(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z

    move-result v6

    .line 392
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 393
    if-eqz v6, :cond_17

    move v9, v8

    :cond_17
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 387
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v6    # "_result":Z
    :cond_18
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_a

    .line 398
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_21
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 400
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_19

    .line 401
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 406
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_b
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteClass(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    .line 407
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 408
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 404
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v6    # "_result":I
    :cond_19
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_b

    .line 413
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_22
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 415
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1a

    .line 416
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 421
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_c
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteUuids(Landroid/bluetooth/BluetoothDevice;)[Landroid/os/ParcelUuid;

    move-result-object v6

    .line 422
    .local v6, "_result":[Landroid/os/ParcelUuid;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 423
    invoke-virtual {p3, v6, v8}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 419
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v6    # "_result":[Landroid/os/ParcelUuid;
    :cond_1a
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_c

    .line 428
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_23
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 430
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1c

    .line 431
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 436
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_d
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->fetchRemoteUuids(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v6

    .line 437
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 438
    if-eqz v6, :cond_1b

    move v9, v8

    :cond_1b
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 434
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v6    # "_result":Z
    :cond_1c
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_d

    .line 443
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_24
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 445
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1e

    .line 446
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 452
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1f

    .line 453
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    .line 458
    .local v2, "_arg1":Landroid/os/ParcelUuid;
    :goto_f
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->sdpSearch(Landroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;)Z

    move-result v6

    .line 459
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 460
    if-eqz v6, :cond_1d

    move v9, v8

    :cond_1d
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 449
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":Landroid/os/ParcelUuid;
    .end local v6    # "_result":Z
    :cond_1e
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_e

    .line 456
    :cond_1f
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/os/ParcelUuid;
    goto :goto_f

    .line 465
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":Landroid/os/ParcelUuid;
    :sswitch_25
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 467
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_21

    .line 468
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 474
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_22

    move v2, v8

    .line 476
    .local v2, "_arg1":Z
    :goto_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 478
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 479
    .local v4, "_arg3":[B
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->setPin(Landroid/bluetooth/BluetoothDevice;ZI[B)Z

    move-result v6

    .line 480
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 481
    if-eqz v6, :cond_20

    move v9, v8

    :cond_20
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 471
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":[B
    .end local v6    # "_result":Z
    :cond_21
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_10

    :cond_22
    move v2, v9

    .line 474
    goto :goto_11

    .line 486
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_26
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 488
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_24

    .line 489
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 495
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_25

    move v2, v8

    .line 497
    .restart local v2    # "_arg1":Z
    :goto_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 499
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 500
    .restart local v4    # "_arg3":[B
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->setPasskey(Landroid/bluetooth/BluetoothDevice;ZI[B)Z

    move-result v6

    .line 501
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 502
    if-eqz v6, :cond_23

    move v9, v8

    :cond_23
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 492
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":[B
    .end local v6    # "_result":Z
    :cond_24
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_12

    :cond_25
    move v2, v9

    .line 495
    goto :goto_13

    .line 507
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_27
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 509
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_27

    .line 510
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 516
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_28

    move v2, v8

    .line 517
    .restart local v2    # "_arg1":Z
    :goto_15
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->setPairingConfirmation(Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result v6

    .line 518
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 519
    if-eqz v6, :cond_26

    move v9, v8

    :cond_26
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 513
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":Z
    .end local v6    # "_result":Z
    :cond_27
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_14

    :cond_28
    move v2, v9

    .line 516
    goto :goto_15

    .line 524
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_28
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 526
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2a

    .line 527
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 532
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_16
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->readRawRssi(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v6

    .line 533
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 534
    if-eqz v6, :cond_29

    move v9, v8

    :cond_29
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 530
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v6    # "_result":Z
    :cond_2a
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_16

    .line 539
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_29
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 541
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2c

    .line 542
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 548
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 550
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 552
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 553
    .local v4, "_arg3":I
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->monitorRawRssi(Landroid/bluetooth/BluetoothDevice;III)Z

    move-result v6

    .line 554
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 555
    if-eqz v6, :cond_2b

    move v9, v8

    :cond_2b
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 545
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v6    # "_result":Z
    :cond_2c
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_17

    .line 560
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_2a
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 562
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2e

    move v1, v8

    .line 563
    .local v1, "_arg0":Z
    :goto_18
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->dutModeConfigure(Z)Z

    move-result v6

    .line 564
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 565
    if-eqz v6, :cond_2d

    move v9, v8

    :cond_2d
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    .end local v6    # "_result":Z
    :cond_2e
    move v1, v9

    .line 562
    goto :goto_18

    .line 570
    :sswitch_2b
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 572
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 574
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 576
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 578
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 579
    .restart local v4    # "_arg3":I
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->leTestMode(IIII)Z

    move-result v6

    .line 580
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 581
    if-eqz v6, :cond_2f

    move v9, v8

    :cond_2f
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 586
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v6    # "_result":Z
    :sswitch_2c
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 588
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_31

    move v1, v8

    .line 589
    .local v1, "_arg0":Z
    :goto_19
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->sspDebugConfigure(Z)Z

    move-result v6

    .line 590
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 591
    if-eqz v6, :cond_30

    move v9, v8

    :cond_30
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    .end local v6    # "_result":Z
    :cond_31
    move v1, v9

    .line 588
    goto :goto_19

    .line 596
    :sswitch_2d
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 598
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 600
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 601
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->setEdrTxFrequency(II)Z

    move-result v6

    .line 602
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 603
    if-eqz v6, :cond_32

    move v9, v8

    :cond_32
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 608
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Z
    :sswitch_2e
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 610
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 611
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->setEdrRxFrequency(I)Z

    move-result v6

    .line 612
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 613
    if-eqz v6, :cond_33

    move v9, v8

    :cond_33
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 618
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_2f
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 619
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->setEdrTestEnd()Z

    move-result v6

    .line 620
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 621
    if-eqz v6, :cond_34

    move v9, v8

    :cond_34
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 626
    .end local v6    # "_result":Z
    :sswitch_30
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 628
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_36

    move v1, v8

    .line 629
    .local v1, "_arg0":Z
    :goto_1a
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->configScoLoopback(Z)Z

    move-result v6

    .line 630
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 631
    if-eqz v6, :cond_35

    move v9, v8

    :cond_35
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    .end local v6    # "_result":Z
    :cond_36
    move v1, v9

    .line 628
    goto :goto_1a

    .line 636
    :sswitch_31
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 638
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_38

    move v1, v8

    .line 639
    .restart local v1    # "_arg0":Z
    :goto_1b
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->controlTxPower(Z)Z

    move-result v6

    .line 640
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 641
    if-eqz v6, :cond_37

    move v9, v8

    :cond_37
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    .end local v6    # "_result":Z
    :cond_38
    move v1, v9

    .line 638
    goto :goto_1b

    .line 646
    :sswitch_32
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 648
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_39

    .line 649
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 654
    .local v1, "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_1c
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getPhonebookAccessPermission(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    .line 655
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 656
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 652
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v6    # "_result":I
    :cond_39
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_1c

    .line 661
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_33
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 663
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3b

    .line 664
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 670
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 671
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->setPhonebookAccessPermission(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v6

    .line 672
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 673
    if-eqz v6, :cond_3a

    move v9, v8

    :cond_3a
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 667
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Z
    :cond_3b
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_1d

    .line 678
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_34
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 680
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3c

    .line 681
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 686
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_1e
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getMessageAccessPermission(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    .line 687
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 688
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 684
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v6    # "_result":I
    :cond_3c
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_1e

    .line 693
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_35
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 695
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3e

    .line 696
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 702
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 703
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->setMessageAccessPermission(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v6

    .line 704
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 705
    if-eqz v6, :cond_3d

    move v9, v8

    :cond_3d
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 699
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Z
    :cond_3e
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_1f

    .line 710
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_36
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 712
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3f

    .line 713
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 718
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_20
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getSimAccessPermission(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    .line 719
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 720
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 716
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v6    # "_result":I
    :cond_3f
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_20

    .line 725
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_37
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 727
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_41

    .line 728
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 734
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 735
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->setSimAccessPermission(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v6

    .line 736
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 737
    if-eqz v6, :cond_40

    move v9, v8

    :cond_40
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 731
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Z
    :cond_41
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_21

    .line 742
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_38
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 744
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 746
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 748
    .local v2, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 749
    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/bluetooth/IBluetooth$Stub;->sendRawHci(I[BI)I

    move-result v6

    .line 750
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 751
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 756
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":I
    .end local v6    # "_result":I
    :sswitch_39
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 758
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_42

    .line 759
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 765
    .local v1, "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 767
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 769
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 770
    .restart local v4    # "_arg3":I
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->sendConnectionStateChange(Landroid/bluetooth/BluetoothDevice;III)V

    .line 771
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 762
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    :cond_42
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_22

    .line 776
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_3a
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 778
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/IBluetoothCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothCallback;

    move-result-object v1

    .line 779
    .local v1, "_arg0":Landroid/bluetooth/IBluetoothCallback;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->registerCallback(Landroid/bluetooth/IBluetoothCallback;)V

    .line 780
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 785
    .end local v1    # "_arg0":Landroid/bluetooth/IBluetoothCallback;
    :sswitch_3b
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 787
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/IBluetoothCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothCallback;

    move-result-object v1

    .line 788
    .restart local v1    # "_arg0":Landroid/bluetooth/IBluetoothCallback;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->unregisterCallback(Landroid/bluetooth/IBluetoothCallback;)V

    .line 789
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 794
    .end local v1    # "_arg0":Landroid/bluetooth/IBluetoothCallback;
    :sswitch_3c
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 796
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_43

    .line 797
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 803
    .local v1, "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 805
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_44

    .line 806
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelUuid;

    .line 812
    .local v3, "_arg2":Landroid/os/ParcelUuid;
    :goto_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 814
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg4":I
    move-object v0, p0

    .line 815
    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/IBluetooth$Stub;->connectSocket(Landroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;II)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 816
    .local v6, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 817
    if-eqz v6, :cond_45

    .line 818
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 819
    invoke-virtual {v6, p3, v8}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 800
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/os/ParcelUuid;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_43
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_23

    .line 809
    .restart local v2    # "_arg1":I
    :cond_44
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/os/ParcelUuid;
    goto :goto_24

    .line 822
    .restart local v4    # "_arg3":I
    .restart local v5    # "_arg4":I
    .restart local v6    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_45
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 828
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/os/ParcelUuid;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_result":Landroid/os/ParcelFileDescriptor;
    :sswitch_3d
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 830
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 832
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 834
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_46

    .line 835
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelUuid;

    .line 841
    .restart local v3    # "_arg2":Landroid/os/ParcelUuid;
    :goto_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 843
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg4":I
    move-object v0, p0

    .line 844
    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/IBluetooth$Stub;->createSocketChannel(ILjava/lang/String;Landroid/os/ParcelUuid;II)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 845
    .restart local v6    # "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 846
    if-eqz v6, :cond_47

    .line 847
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 848
    invoke-virtual {v6, p3, v8}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 838
    .end local v3    # "_arg2":Landroid/os/ParcelUuid;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_46
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/os/ParcelUuid;
    goto :goto_25

    .line 851
    .restart local v4    # "_arg3":I
    .restart local v5    # "_arg4":I
    .restart local v6    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_47
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 857
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/os/ParcelUuid;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_result":Landroid/os/ParcelFileDescriptor;
    :sswitch_3e
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 859
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_49

    move v1, v8

    .line 860
    .local v1, "_arg0":Z
    :goto_26
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->setScmstContentProtection(Z)Z

    move-result v6

    .line 861
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 862
    if-eqz v6, :cond_48

    move v9, v8

    :cond_48
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    .end local v6    # "_result":Z
    :cond_49
    move v1, v9

    .line 859
    goto :goto_26

    .line 867
    :sswitch_3f
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 868
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->isScmstSupported()Z

    move-result v6

    .line 869
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 870
    if-eqz v6, :cond_4a

    move v9, v8

    :cond_4a
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 875
    .end local v6    # "_result":Z
    :sswitch_40
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 876
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->isSinkServiceSupported()Z

    move-result v6

    .line 877
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 878
    if-eqz v6, :cond_4b

    move v9, v8

    :cond_4b
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 883
    .end local v6    # "_result":Z
    :sswitch_41
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 884
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->isUsingSinkProxy()Z

    move-result v6

    .line 885
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 886
    if-eqz v6, :cond_4c

    move v9, v8

    :cond_4c
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 891
    .end local v6    # "_result":Z
    :sswitch_42
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 893
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4e

    .line 894
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 899
    .local v1, "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_27
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->selectstream(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v6

    .line 900
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 901
    if-eqz v6, :cond_4d

    move v9, v8

    :cond_4d
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 897
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v6    # "_result":Z
    :cond_4e
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_27

    .line 906
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_43
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 908
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_50

    move v1, v8

    .line 909
    .local v1, "_arg0":Z
    :goto_28
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->configHciSnoopLog(Z)Z

    move-result v6

    .line 910
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 911
    if-eqz v6, :cond_4f

    move v9, v8

    :cond_4f
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    .end local v6    # "_result":Z
    :cond_50
    move v1, v9

    .line 908
    goto :goto_28

    .line 916
    :sswitch_44
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 917
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->factoryReset()Z

    move-result v6

    .line 918
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 919
    if-eqz v6, :cond_51

    move v9, v8

    :cond_51
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 924
    .end local v6    # "_result":Z
    :sswitch_45
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 926
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_53

    .line 927
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 933
    .local v1, "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 934
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->setRemoteClass(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v6

    .line 935
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 936
    if-eqz v6, :cond_52

    move v9, v8

    :cond_52
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 930
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Z
    :cond_53
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_29

    .line 941
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_46
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 942
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->isMultiAdvertisementSupported()Z

    move-result v6

    .line 943
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 944
    if-eqz v6, :cond_54

    move v9, v8

    :cond_54
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 949
    .end local v6    # "_result":Z
    :sswitch_47
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 950
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->isPeripheralModeSupported()Z

    move-result v6

    .line 951
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 952
    if-eqz v6, :cond_55

    move v9, v8

    :cond_55
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 957
    .end local v6    # "_result":Z
    :sswitch_48
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 958
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->isOffloadedFilteringSupported()Z

    move-result v6

    .line 959
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 960
    if-eqz v6, :cond_56

    move v9, v8

    :cond_56
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 965
    .end local v6    # "_result":Z
    :sswitch_49
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 966
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->isOffloadedScanBatchingSupported()Z

    move-result v6

    .line 967
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 968
    if-eqz v6, :cond_57

    move v9, v8

    :cond_57
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 973
    .end local v6    # "_result":Z
    :sswitch_4a
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 974
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->isActivityAndEnergyReportingSupported()Z

    move-result v6

    .line 975
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 976
    if-eqz v6, :cond_58

    move v9, v8

    :cond_58
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 981
    .end local v6    # "_result":Z
    :sswitch_4b
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 982
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->getActivityEnergyInfoFromController()V

    .line 983
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 988
    :sswitch_4c
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 989
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->reportActivityInfo()Landroid/bluetooth/BluetoothActivityEnergyInfo;

    move-result-object v6

    .line 990
    .local v6, "_result":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 991
    if-eqz v6, :cond_59

    .line 992
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 993
    invoke-virtual {v6, p3, v8}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 996
    :cond_59
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1002
    .end local v6    # "_result":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    :sswitch_4d
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1003
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->isAoBleSupported()I

    move-result v6

    .line 1004
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1005
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1010
    .end local v6    # "_result":I
    :sswitch_4e
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1011
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->isBLEAutoconnectSupport()I

    move-result v6

    .line 1012
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1013
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1018
    .end local v6    # "_result":I
    :sswitch_4f
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1020
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5a

    .line 1021
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 1026
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_2a
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteAppearance(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    .line 1027
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1028
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1024
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v6    # "_result":I
    :cond_5a
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_2a

    .line 1033
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_50
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1035
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5b

    .line 1036
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 1041
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_2b
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getLeDeviceType(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    .line 1042
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1043
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1039
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v6    # "_result":I
    :cond_5b
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_2b

    .line 1048
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_51
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1050
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5c

    .line 1051
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 1056
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_2c
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getGearManagerName(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v6

    .line 1057
    .local v6, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1058
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 1054
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v6    # "_result":[B
    :cond_5c
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_2c

    .line 1063
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_52
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1065
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5e

    .line 1066
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 1071
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_2d
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getGearIsConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v6

    .line 1072
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1073
    if-eqz v6, :cond_5d

    move v9, v8

    :cond_5d
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1069
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v6    # "_result":Z
    :cond_5e
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_2d

    .line 1078
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_53
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1080
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5f

    .line 1081
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 1087
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_60

    move v2, v8

    .line 1088
    .local v2, "_arg1":Z
    :goto_2f
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->setRfcommConnected(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 1089
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1084
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":Z
    :cond_5f
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_2e

    :cond_60
    move v2, v9

    .line 1087
    goto :goto_2f

    .line 1094
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_54
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1095
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->getLowRssi()I

    move-result v6

    .line 1096
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1097
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1102
    .end local v6    # "_result":I
    :sswitch_55
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1103
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->getMidRssi()I

    move-result v6

    .line 1104
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1105
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1110
    .end local v6    # "_result":I
    :sswitch_56
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1111
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->getHighRssi()I

    move-result v6

    .line 1112
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1113
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1118
    .end local v6    # "_result":I
    :sswitch_57
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1119
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->clearAutoConnDevice()V

    .line 1120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1125
    :sswitch_58
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1127
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_62

    .line 1128
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 1134
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_30
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1136
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_63

    move v3, v8

    .line 1137
    .local v3, "_arg2":Z
    :goto_31
    invoke-virtual {p0, v1, v2, v3}, Landroid/bluetooth/IBluetooth$Stub;->setDeviceTypeAndDmtSupport(Landroid/bluetooth/BluetoothDevice;IZ)Z

    move-result v6

    .line 1138
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1139
    if-eqz v6, :cond_61

    move v9, v8

    :cond_61
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1131
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Z
    .end local v6    # "_result":Z
    :cond_62
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_30

    .restart local v2    # "_arg1":I
    :cond_63
    move v3, v9

    .line 1136
    goto :goto_31

    .line 1144
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":I
    :sswitch_59
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1146
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1148
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1149
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->setConnectionScanParameter(II)V

    .line 1150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1155
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_5a
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1157
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_64

    move v1, v8

    .line 1158
    .local v1, "_arg0":Z
    :goto_32
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->setRPAGeneration(Z)V

    .line 1159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    :cond_64
    move v1, v9

    .line 1157
    goto :goto_32

    .line 1164
    :sswitch_5b
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1166
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_65

    .line 1167
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 1172
    .local v1, "_arg0":Landroid/os/ParcelFileDescriptor;
    :goto_33
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->dump(Landroid/os/ParcelFileDescriptor;)V

    .line 1173
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1170
    .end local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :cond_65
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_33

    .line 1178
    .end local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :sswitch_5c
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1179
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->onLeServiceUp()V

    .line 1180
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1185
    :sswitch_5d
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1186
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->onLeServiceUpQuietMode()V

    .line 1187
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1192
    :sswitch_5e
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1193
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->onBrEdrDown()V

    .line 1194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1199
    :sswitch_5f
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1200
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->createOutOfBandData()Z

    move-result v6

    .line 1201
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1202
    if-eqz v6, :cond_66

    move v9, v8

    :cond_66
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1207
    .end local v6    # "_result":Z
    :sswitch_60
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1208
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->readOutOfBandDataEx()Landroid/bluetooth/BluetoothOobData;

    move-result-object v6

    .line 1209
    .local v6, "_result":Landroid/bluetooth/BluetoothOobData;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1210
    if-eqz v6, :cond_67

    .line 1211
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1212
    invoke-virtual {v6, p3, v8}, Landroid/bluetooth/BluetoothOobData;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 1215
    :cond_67
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1221
    .end local v6    # "_result":Landroid/bluetooth/BluetoothOobData;
    :sswitch_61
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1223
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_69

    .line 1224
    sget-object v0, Landroid/bluetooth/BluetoothOobData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothOobData;

    .line 1229
    .local v1, "_arg0":Landroid/bluetooth/BluetoothOobData;
    :goto_34
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->createBondOutOfBandEx(Landroid/bluetooth/BluetoothOobData;)Z

    move-result v6

    .line 1230
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1231
    if-eqz v6, :cond_68

    move v9, v8

    :cond_68
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1227
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothOobData;
    .end local v6    # "_result":Z
    :cond_69
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothOobData;
    goto :goto_34

    .line 1236
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothOobData;
    :sswitch_62
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1238
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6b

    .line 1239
    sget-object v0, Landroid/bluetooth/BluetoothOobData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothOobData;

    .line 1244
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothOobData;
    :goto_35
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->setDeviceOutOfBandDataEx(Landroid/bluetooth/BluetoothOobData;)Z

    move-result v6

    .line 1245
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1246
    if-eqz v6, :cond_6a

    move v9, v8

    :cond_6a
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1242
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothOobData;
    .end local v6    # "_result":Z
    :cond_6b
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothOobData;
    goto :goto_35

    .line 1251
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothOobData;
    :sswitch_63
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1253
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1255
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6c

    move v2, v8

    .line 1256
    .local v2, "_arg1":Z
    :goto_36
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->sendCallerInfo(Ljava/lang/String;Z)V

    .line 1257
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v2    # "_arg1":Z
    :cond_6c
    move v2, v9

    .line 1255
    goto :goto_36

    .line 1262
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_64
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1263
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->isSecureModeEnabled()Z

    move-result v6

    .line 1264
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1265
    if-eqz v6, :cond_6d

    move v9, v8

    :cond_6d
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1270
    .end local v6    # "_result":Z
    :sswitch_65
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1272
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6f

    move v1, v8

    .line 1273
    .local v1, "_arg0":Z
    :goto_37
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->configHciSnoopLogForExternal(Z)Z

    move-result v6

    .line 1274
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1275
    if-eqz v6, :cond_6e

    move v9, v8

    :cond_6e
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    .end local v6    # "_result":Z
    :cond_6f
    move v1, v9

    .line 1272
    goto :goto_37

    .line 1280
    :sswitch_66
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1282
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1283
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->isProfileStarted(Ljava/lang/String;)Z

    move-result v6

    .line 1284
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1285
    if-eqz v6, :cond_70

    move v9, v8

    :cond_70
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 43
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_56
        0x57 -> :sswitch_57
        0x58 -> :sswitch_58
        0x59 -> :sswitch_59
        0x5a -> :sswitch_5a
        0x5b -> :sswitch_5b
        0x5c -> :sswitch_5c
        0x5d -> :sswitch_5d
        0x5e -> :sswitch_5e
        0x5f -> :sswitch_5f
        0x60 -> :sswitch_60
        0x61 -> :sswitch_61
        0x62 -> :sswitch_62
        0x63 -> :sswitch_63
        0x64 -> :sswitch_64
        0x65 -> :sswitch_65
        0x66 -> :sswitch_66
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

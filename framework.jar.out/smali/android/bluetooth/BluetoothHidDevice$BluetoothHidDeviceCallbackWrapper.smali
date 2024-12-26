.class Landroid/bluetooth/BluetoothHidDevice$BluetoothHidDeviceCallbackWrapper;
.super Landroid/bluetooth/IBluetoothHidDeviceCallback$Stub;
.source "BluetoothHidDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothHidDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BluetoothHidDeviceCallbackWrapper"
.end annotation


# instance fields
.field private mCallback:Landroid/bluetooth/BluetoothHidDeviceCallback;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothHidDeviceCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/bluetooth/BluetoothHidDeviceCallback;

    .prologue
    .line 106
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothHidDeviceCallback$Stub;-><init>()V

    .line 107
    iput-object p1, p0, Landroid/bluetooth/BluetoothHidDevice$BluetoothHidDeviceCallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothHidDeviceCallback;

    .line 108
    return-void
.end method


# virtual methods
.method public onAppStatusChanged(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;Z)V
    .locals 1
    .param p1, "pluggedDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "config"    # Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;
    .param p3, "registered"    # Z

    .prologue
    .line 113
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$BluetoothHidDeviceCallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothHidDeviceCallback;

    invoke-virtual {v0, p1, p2, p3}, Landroid/bluetooth/BluetoothHidDeviceCallback;->onAppStatusChanged(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;Z)V

    .line 114
    return-void
.end method

.method public onConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I

    .prologue
    .line 118
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$BluetoothHidDeviceCallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothHidDeviceCallback;

    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothHidDeviceCallback;->onConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;I)V

    .line 119
    return-void
.end method

.method public onGetReport(BBI)V
    .locals 1
    .param p1, "type"    # B
    .param p2, "id"    # B
    .param p3, "bufferSize"    # I

    .prologue
    .line 123
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$BluetoothHidDeviceCallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothHidDeviceCallback;

    invoke-virtual {v0, p1, p2, p3}, Landroid/bluetooth/BluetoothHidDeviceCallback;->onGetReport(BBI)V

    .line 124
    return-void
.end method

.method public onIntrData(B[B)V
    .locals 1
    .param p1, "reportId"    # B
    .param p2, "data"    # [B

    .prologue
    .line 138
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$BluetoothHidDeviceCallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothHidDeviceCallback;

    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothHidDeviceCallback;->onIntrData(B[B)V

    .line 139
    return-void
.end method

.method public onSetProtocol(B)V
    .locals 1
    .param p1, "protocol"    # B

    .prologue
    .line 133
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$BluetoothHidDeviceCallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothHidDeviceCallback;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHidDeviceCallback;->onSetProtocol(B)V

    .line 134
    return-void
.end method

.method public onSetReport(BB[B)V
    .locals 1
    .param p1, "type"    # B
    .param p2, "id"    # B
    .param p3, "data"    # [B

    .prologue
    .line 128
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$BluetoothHidDeviceCallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothHidDeviceCallback;

    invoke-virtual {v0, p1, p2, p3}, Landroid/bluetooth/BluetoothHidDeviceCallback;->onSetReport(BB[B)V

    .line 129
    return-void
.end method

.method public onVirtualCableUnplug()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$BluetoothHidDeviceCallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothHidDeviceCallback;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHidDeviceCallback;->onVirtualCableUnplug()V

    .line 144
    return-void
.end method

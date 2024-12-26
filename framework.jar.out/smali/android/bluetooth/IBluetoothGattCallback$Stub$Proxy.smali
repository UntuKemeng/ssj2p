.class Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IBluetoothGattCallback.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothGattCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothGattCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 496
    iput-object p1, p0, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 497
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 504
    const-string v0, "android.bluetooth.IBluetoothGattCallback"

    return-object v0
.end method

.method public onBatchScanResults(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 554
    .local p1, "batchResults":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanResult;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 556
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 557
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 558
    iget-object v1, p0, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 561
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 563
    return-void

    .line 561
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onCharacteristicRead(Ljava/lang/String;IIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;[B)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "srvcType"    # I
    .param p4, "srvcInstId"    # I
    .param p5, "srvcUuid"    # Landroid/os/ParcelUuid;
    .param p6, "charInstId"    # I
    .param p7, "charUuid"    # Landroid/os/ParcelUuid;
    .param p8, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 697
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 699
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 700
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 701
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 702
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 703
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 704
    if-eqz p5, :cond_0

    .line 705
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 706
    const/4 v1, 0x0

    invoke-virtual {p5, v0, v1}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 711
    :goto_0
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 712
    if-eqz p7, :cond_1

    .line 713
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 714
    const/4 v1, 0x0

    invoke-virtual {p7, v0, v1}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 719
    :goto_1
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 720
    iget-object v1, p0, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 723
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 725
    return-void

    .line 709
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 723
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1

    .line 717
    :cond_1
    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public onCharacteristicWrite(Ljava/lang/String;IIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "srvcType"    # I
    .param p4, "srvcInstId"    # I
    .param p5, "srvcUuid"    # Landroid/os/ParcelUuid;
    .param p6, "charInstId"    # I
    .param p7, "charUuid"    # Landroid/os/ParcelUuid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 728
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 730
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 731
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 732
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 733
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 734
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 735
    if-eqz p5, :cond_0

    .line 736
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 737
    const/4 v1, 0x0

    invoke-virtual {p5, v0, v1}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 742
    :goto_0
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 743
    if-eqz p7, :cond_1

    .line 744
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 745
    const/4 v1, 0x0

    invoke-virtual {p7, v0, v1}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 750
    :goto_1
    iget-object v1, p0, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xb

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 753
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 755
    return-void

    .line 740
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 753
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1

    .line 748
    :cond_1
    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public onClientConnParamsChanged(Ljava/lang/String;II)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "interval"    # I
    .param p3, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 971
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 973
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 974
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 975
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 976
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 977
    iget-object v1, p0, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x16

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 980
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 982
    return-void

    .line 980
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onClientConnectionState(IIZLjava/lang/String;)V
    .locals 5
    .param p1, "status"    # I
    .param p2, "clientIf"    # I
    .param p3, "connected"    # Z
    .param p4, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 521
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 523
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 524
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 525
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 526
    if-eqz p3, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 527
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 528
    iget-object v1, p0, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 531
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 533
    return-void

    .line 526
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 531
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onClientRegistered(II)V
    .locals 5
    .param p1, "status"    # I
    .param p2, "clientIf"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 508
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 510
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 511
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 512
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 513
    iget-object v1, p0, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 516
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 518
    return-void

    .line 516
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onConfigureMTU(Ljava/lang/String;II)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "mtu"    # I
    .param p3, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 937
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 939
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 940
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 941
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 942
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 943
    iget-object v1, p0, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x14

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 946
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 948
    return-void

    .line 946
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onDescriptorRead(Ljava/lang/String;IIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;[B)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "srvcType"    # I
    .param p4, "srvcInstId"    # I
    .param p5, "srvcUuid"    # Landroid/os/ParcelUuid;
    .param p6, "charInstId"    # I
    .param p7, "charUuid"    # Landroid/os/ParcelUuid;
    .param p8, "descrInstId"    # I
    .param p9, "descrUuid"    # Landroid/os/ParcelUuid;
    .param p10, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 771
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 773
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 774
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 775
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 776
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 777
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 778
    if-eqz p5, :cond_0

    .line 779
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 780
    const/4 v1, 0x0

    invoke-virtual {p5, v0, v1}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 785
    :goto_0
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 786
    if-eqz p7, :cond_1

    .line 787
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 788
    const/4 v1, 0x0

    invoke-virtual {p7, v0, v1}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 793
    :goto_1
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 794
    if-eqz p9, :cond_2

    .line 795
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 796
    const/4 v1, 0x0

    invoke-virtual {p9, v0, v1}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 801
    :goto_2
    invoke-virtual {v0, p10}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 802
    iget-object v1, p0, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xd

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 805
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 807
    return-void

    .line 783
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 805
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1

    .line 791
    :cond_1
    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 799
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public onDescriptorWrite(Ljava/lang/String;IIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "srvcType"    # I
    .param p4, "srvcInstId"    # I
    .param p5, "srvcUuid"    # Landroid/os/ParcelUuid;
    .param p6, "charInstId"    # I
    .param p7, "charUuid"    # Landroid/os/ParcelUuid;
    .param p8, "descrInstId"    # I
    .param p9, "descrUuid"    # Landroid/os/ParcelUuid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 810
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 812
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 813
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 814
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 815
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 816
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 817
    if-eqz p5, :cond_0

    .line 818
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 819
    const/4 v1, 0x0

    invoke-virtual {p5, v0, v1}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 824
    :goto_0
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 825
    if-eqz p7, :cond_1

    .line 826
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 827
    const/4 v1, 0x0

    invoke-virtual {p7, v0, v1}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 832
    :goto_1
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 833
    if-eqz p9, :cond_2

    .line 834
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 835
    const/4 v1, 0x0

    invoke-virtual {p9, v0, v1}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 840
    :goto_2
    iget-object v1, p0, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xe

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 843
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 845
    return-void

    .line 822
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 843
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1

    .line 830
    :cond_1
    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 838
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public onExecuteWrite(Ljava/lang/String;I)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 758
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 760
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 761
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 762
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 763
    iget-object v1, p0, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xc

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 766
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 768
    return-void

    .line 766
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onFoundOrLost(ZLandroid/bluetooth/le/ScanResult;)V
    .locals 5
    .param p1, "onFound"    # Z
    .param p2, "scanResult"    # Landroid/bluetooth/le/ScanResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 951
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 953
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 954
    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 955
    if-eqz p2, :cond_1

    .line 956
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 957
    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/bluetooth/le/ScanResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 962
    :goto_1
    iget-object v1, p0, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x15

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 965
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 967
    return-void

    :cond_0
    move v1, v2

    .line 954
    goto :goto_0

    .line 960
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 965
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onGetCharacteristic(Ljava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;I)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "srvcType"    # I
    .param p3, "srvcInstId"    # I
    .param p4, "srvcUuid"    # Landroid/os/ParcelUuid;
    .param p5, "charInstId"    # I
    .param p6, "charUuid"    # Landroid/os/ParcelUuid;
    .param p7, "charProps"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 617
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 619
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 620
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 621
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 622
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 623
    if-eqz p4, :cond_0

    .line 624
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 625
    const/4 v1, 0x0

    invoke-virtual {p4, v0, v1}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 630
    :goto_0
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 631
    if-eqz p6, :cond_1

    .line 632
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 633
    const/4 v1, 0x0

    invoke-virtual {p6, v0, v1}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 638
    :goto_1
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 639
    iget-object v1, p0, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 642
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 644
    return-void

    .line 628
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 642
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1

    .line 636
    :cond_1
    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public onGetDescriptor(Ljava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "srvcType"    # I
    .param p3, "srvcInstId"    # I
    .param p4, "srvcUuid"    # Landroid/os/ParcelUuid;
    .param p5, "charInstId"    # I
    .param p6, "charUuid"    # Landroid/os/ParcelUuid;
    .param p7, "descrInstId"    # I
    .param p8, "descrUuid"    # Landroid/os/ParcelUuid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 647
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 649
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 650
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 651
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 652
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 653
    if-eqz p4, :cond_0

    .line 654
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 655
    const/4 v1, 0x0

    invoke-virtual {p4, v0, v1}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 660
    :goto_0
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 661
    if-eqz p6, :cond_1

    .line 662
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 663
    const/4 v1, 0x0

    invoke-virtual {p6, v0, v1}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 668
    :goto_1
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 669
    if-eqz p8, :cond_2

    .line 670
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 671
    const/4 v1, 0x0

    invoke-virtual {p8, v0, v1}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 676
    :goto_2
    iget-object v1, p0, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 679
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 681
    return-void

    .line 658
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 679
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1

    .line 666
    :cond_1
    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 674
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public onGetIncludedService(Ljava/lang/String;IILandroid/os/ParcelUuid;IILandroid/os/ParcelUuid;)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "srvcType"    # I
    .param p3, "srvcInstId"    # I
    .param p4, "srvcUuid"    # Landroid/os/ParcelUuid;
    .param p5, "inclSrvcType"    # I
    .param p6, "inclSrvcInstId"    # I
    .param p7, "inclSrvcUuid"    # Landroid/os/ParcelUuid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 587
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 589
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 590
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 591
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 592
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 593
    if-eqz p4, :cond_0

    .line 594
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 595
    const/4 v1, 0x0

    invoke-virtual {p4, v0, v1}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 600
    :goto_0
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 601
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 602
    if-eqz p7, :cond_1

    .line 603
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 604
    const/4 v1, 0x0

    invoke-virtual {p7, v0, v1}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 609
    :goto_1
    iget-object v1, p0, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 612
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 614
    return-void

    .line 598
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 612
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1

    .line 607
    :cond_1
    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public onGetService(Ljava/lang/String;IILandroid/os/ParcelUuid;)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "srvcType"    # I
    .param p3, "srvcInstId"    # I
    .param p4, "srvcUuid"    # Landroid/os/ParcelUuid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 566
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 568
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 569
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 570
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 571
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 572
    if-eqz p4, :cond_0

    .line 573
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 574
    const/4 v1, 0x0

    invoke-virtual {p4, v0, v1}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 579
    :goto_0
    iget-object v1, p0, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 582
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 584
    return-void

    .line 577
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 582
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onMonitorRssi(Ljava/lang/String;I)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "rssi"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 924
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 926
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 927
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 928
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 929
    iget-object v1, p0, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x13

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 932
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 934
    return-void

    .line 932
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onMultiAdvertiseCallback(IZLandroid/bluetooth/le/AdvertiseSettings;)V
    .locals 5
    .param p1, "status"    # I
    .param p2, "isStart"    # Z
    .param p3, "advertiseSettings"    # Landroid/bluetooth/le/AdvertiseSettings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 892
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 894
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 895
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 896
    if-eqz p2, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 897
    if-eqz p3, :cond_1

    .line 898
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 899
    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/bluetooth/le/AdvertiseSettings;->writeToParcel(Landroid/os/Parcel;I)V

    .line 904
    :goto_1
    iget-object v1, p0, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x11

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 907
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 909
    return-void

    :cond_0
    move v1, v2

    .line 896
    goto :goto_0

    .line 902
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 907
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onNotify(Ljava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;[B)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "srvcType"    # I
    .param p3, "srvcInstId"    # I
    .param p4, "srvcUuid"    # Landroid/os/ParcelUuid;
    .param p5, "charInstId"    # I
    .param p6, "charUuid"    # Landroid/os/ParcelUuid;
    .param p7, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 848
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 850
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 851
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 852
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 853
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 854
    if-eqz p4, :cond_0

    .line 855
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 856
    const/4 v1, 0x0

    invoke-virtual {p4, v0, v1}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 861
    :goto_0
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 862
    if-eqz p6, :cond_1

    .line 863
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 864
    const/4 v1, 0x0

    invoke-virtual {p6, v0, v1}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 869
    :goto_1
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 870
    iget-object v1, p0, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xf

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 873
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 875
    return-void

    .line 859
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 873
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1

    .line 867
    :cond_1
    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public onReadRemoteRssi(Ljava/lang/String;II)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "rssi"    # I
    .param p3, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 878
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 880
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 881
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 882
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 883
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 884
    iget-object v1, p0, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x10

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 887
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 889
    return-void

    .line 887
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onScanManagerErrorCallback(I)V
    .locals 5
    .param p1, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 912
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 914
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 915
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 916
    iget-object v1, p0, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x12

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 919
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 921
    return-void

    .line 919
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onScanResult(Landroid/bluetooth/le/ScanResult;)V
    .locals 5
    .param p1, "scanResult"    # Landroid/bluetooth/le/ScanResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 536
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 538
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 539
    if-eqz p1, :cond_0

    .line 540
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 541
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/bluetooth/le/ScanResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 546
    :goto_0
    iget-object v1, p0, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 549
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 551
    return-void

    .line 544
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 549
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onSearchComplete(Ljava/lang/String;I)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 684
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 686
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 687
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 688
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 689
    iget-object v1, p0, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 692
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 694
    return-void

    .line 692
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.class public abstract Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService$Stub;
.super Landroid/os/Binder;
.source "IVaultKeeperService.java"

# interfaces
.implements Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.service.vaultkeeper.IVaultKeeperService"

.field static final TRANSACTION_destroy:I = 0x4

.field static final TRANSACTION_getNonce:I = 0x8

.field static final TRANSACTION_getPackageName:I = 0x1

.field static final TRANSACTION_initialize:I = 0x3

.field static final TRANSACTION_isInitialized:I = 0x2

.field static final TRANSACTION_readData:I = 0x6

.field static final TRANSACTION_readState:I = 0x5

.field static final TRANSACTION_verifyCertificate:I = 0x9

.field static final TRANSACTION_verifyComplete:I = 0xb

.field static final TRANSACTION_verifyRequest:I = 0xa

.field static final TRANSACTION_write:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.samsung.android.service.vaultkeeper.IVaultKeeperService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    .line 30
    :cond_0
    const-string v1, "com.samsung.android.service.vaultkeeper.IVaultKeeperService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
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
    const/4 v0, 0x0

    const/4 v9, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 210
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    :goto_0
    return v9

    .line 46
    :sswitch_0
    const-string v0, "com.samsung.android.service.vaultkeeper.IVaultKeeperService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v0, "com.samsung.android.service.vaultkeeper.IVaultKeeperService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService$Stub;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 55
    .local v8, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 61
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_2
    const-string v10, "com.samsung.android.service.vaultkeeper.IVaultKeeperService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 65
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService$Stub;->isInitialized(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    .line 67
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    if-eqz v8, :cond_0

    move v0, v9

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 73
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v8    # "_result":Z
    :sswitch_3
    const-string v0, "com.samsung.android.service.vaultkeeper.IVaultKeeperService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 77
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 79
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 81
    .local v3, "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 83
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 85
    .local v5, "_arg4":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 87
    .local v6, "_arg5":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    .local v7, "_arg6":[B
    move-object v0, p0

    .line 88
    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService$Stub;->initialize(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;[B[B[B)I

    move-result v8

    .line 89
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 95
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":[B
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":[B
    .end local v6    # "_arg5":[B
    .end local v7    # "_arg6":[B
    .end local v8    # "_result":I
    :sswitch_4
    const-string v0, "com.samsung.android.service.vaultkeeper.IVaultKeeperService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 99
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 101
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 102
    .restart local v3    # "_arg2":[B
    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService$Stub;->destroy(Ljava/lang/String;Ljava/lang/String;[B)I

    move-result v8

    .line 103
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 109
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":[B
    .end local v8    # "_result":I
    :sswitch_5
    const-string v0, "com.samsung.android.service.vaultkeeper.IVaultKeeperService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 113
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 114
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService$Stub;->readState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 115
    .local v8, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 121
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_6
    const-string v0, "com.samsung.android.service.vaultkeeper.IVaultKeeperService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 125
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 126
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService$Stub;->readData(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v8

    .line 127
    .local v8, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 133
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v8    # "_result":[B
    :sswitch_7
    const-string v0, "com.samsung.android.service.vaultkeeper.IVaultKeeperService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 137
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 139
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 141
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 143
    .local v4, "_arg3":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 145
    .restart local v5    # "_arg4":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .restart local v6    # "_arg5":[B
    move-object v0, p0

    .line 146
    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService$Stub;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B[B)I

    move-result v8

    .line 147
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 153
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":[B
    .end local v5    # "_arg4":[B
    .end local v6    # "_arg5":[B
    .end local v8    # "_result":I
    :sswitch_8
    const-string v0, "com.samsung.android.service.vaultkeeper.IVaultKeeperService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 157
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 158
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService$Stub;->getNonce(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v8

    .line 159
    .local v8, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 165
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v8    # "_result":[B
    :sswitch_9
    const-string v10, "com.samsung.android.service.vaultkeeper.IVaultKeeperService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 169
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 171
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 172
    .local v3, "_arg2":[B
    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService$Stub;->verifyCertificate(Ljava/lang/String;Ljava/lang/String;[B)Z

    move-result v8

    .line 173
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    if-eqz v8, :cond_1

    move v0, v9

    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 179
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":[B
    .end local v8    # "_result":Z
    :sswitch_a
    const-string v0, "com.samsung.android.service.vaultkeeper.IVaultKeeperService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 183
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 185
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 186
    .restart local v3    # "_arg2":[B
    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService$Stub;->verifyRequest(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v8

    .line 187
    .local v8, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 193
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":[B
    .end local v8    # "_result":[B
    :sswitch_b
    const-string v0, "com.samsung.android.service.vaultkeeper.IVaultKeeperService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 197
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 199
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 201
    .restart local v3    # "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 203
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .restart local v5    # "_arg4":[B
    move-object v0, p0

    .line 204
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService$Stub;->verifyComplete(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;[B)I

    move-result v8

    .line 205
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 42
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

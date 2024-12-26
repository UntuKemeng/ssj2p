.class public abstract Lcom/samsung/android/camera/iris/IIrisDaemon$Stub;
.super Landroid/os/Binder;
.source "IIrisDaemon.java"

# interfaces
.implements Lcom/samsung/android/camera/iris/IIrisDaemon;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/iris/IIrisDaemon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/iris/IIrisDaemon$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.camera.iris.IIrisDaemon"

.field static final TRANSACTION_authenticate:I = 0x1

.field static final TRANSACTION_cancelAuthentication:I = 0x2

.field static final TRANSACTION_cancelEnrollment:I = 0x4

.field static final TRANSACTION_closeHal:I = 0xa

.field static final TRANSACTION_enroll:I = 0x3

.field static final TRANSACTION_getAuthenticatorId:I = 0x7

.field static final TRANSACTION_init:I = 0xb

.field static final TRANSACTION_openHal:I = 0x9

.field static final TRANSACTION_postEnroll:I = 0xc

.field static final TRANSACTION_preEnroll:I = 0x5

.field static final TRANSACTION_processIRImage:I = 0xe

.field static final TRANSACTION_remove:I = 0x6

.field static final TRANSACTION_request:I = 0xd

.field static final TRANSACTION_sendIRProperty:I = 0xf

.field static final TRANSACTION_setActiveGroup:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.samsung.android.camera.iris.IIrisDaemon"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/camera/iris/IIrisDaemon;
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
    const-string v1, "com.samsung.android.camera.iris.IIrisDaemon"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/camera/iris/IIrisDaemon;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/samsung/android/camera/iris/IIrisDaemon;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v8, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 225
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_0
    return v8

    .line 46
    :sswitch_0
    const-string v9, "com.samsung.android.camera.iris.IIrisDaemon"

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v9, "com.samsung.android.camera.iris.IIrisDaemon"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 55
    .local v0, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 57
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 58
    .local v3, "_arg2":[B
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub;->authenticate(JI[B)I

    move-result v6

    .line 59
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 65
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":[B
    .end local v6    # "_result":I
    :sswitch_2
    const-string v9, "com.samsung.android.camera.iris.IIrisDaemon"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub;->cancelAuthentication()I

    move-result v6

    .line 67
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 73
    .end local v6    # "_result":I
    :sswitch_3
    const-string v9, "com.samsung.android.camera.iris.IIrisDaemon"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 77
    .local v0, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 79
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 80
    .local v3, "_arg2":I
    invoke-virtual {p0, v0, v2, v3}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub;->enroll([BII)I

    move-result v6

    .line 81
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 87
    .end local v0    # "_arg0":[B
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v6    # "_result":I
    :sswitch_4
    const-string v9, "com.samsung.android.camera.iris.IIrisDaemon"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub;->cancelEnrollment()I

    move-result v6

    .line 89
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 95
    .end local v6    # "_result":I
    :sswitch_5
    const-string v9, "com.samsung.android.camera.iris.IIrisDaemon"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub;->preEnroll()J

    move-result-wide v6

    .line 97
    .local v6, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    invoke-virtual {p3, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    .line 103
    .end local v6    # "_result":J
    :sswitch_6
    const-string v9, "com.samsung.android.camera.iris.IIrisDaemon"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 107
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 108
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub;->remove(II)I

    move-result v6

    .line 109
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 115
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v6    # "_result":I
    :sswitch_7
    const-string v9, "com.samsung.android.camera.iris.IIrisDaemon"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub;->getAuthenticatorId()J

    move-result-wide v6

    .line 117
    .local v6, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    invoke-virtual {p3, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 123
    .end local v6    # "_result":J
    :sswitch_8
    const-string v9, "com.samsung.android.camera.iris.IIrisDaemon"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 127
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 128
    .local v2, "_arg1":[B
    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub;->setActiveGroup(I[B)I

    move-result v6

    .line 129
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 135
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":[B
    .end local v6    # "_result":I
    :sswitch_9
    const-string v9, "com.samsung.android.camera.iris.IIrisDaemon"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub;->openHal()J

    move-result-wide v6

    .line 137
    .local v6, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    invoke-virtual {p3, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 143
    .end local v6    # "_result":J
    :sswitch_a
    const-string v9, "com.samsung.android.camera.iris.IIrisDaemon"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub;->closeHal()I

    move-result v6

    .line 145
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 151
    .end local v6    # "_result":I
    :sswitch_b
    const-string v9, "com.samsung.android.camera.iris.IIrisDaemon"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/camera/iris/IIrisDaemonCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/camera/iris/IIrisDaemonCallback;

    move-result-object v0

    .line 154
    .local v0, "_arg0":Lcom/samsung/android/camera/iris/IIrisDaemonCallback;
    invoke-virtual {p0, v0}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub;->init(Lcom/samsung/android/camera/iris/IIrisDaemonCallback;)V

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 160
    .end local v0    # "_arg0":Lcom/samsung/android/camera/iris/IIrisDaemonCallback;
    :sswitch_c
    const-string v9, "com.samsung.android.camera.iris.IIrisDaemon"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub;->postEnroll()I

    move-result v6

    .line 162
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 168
    .end local v6    # "_result":I
    :sswitch_d
    const-string v9, "com.samsung.android.camera.iris.IIrisDaemon"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 172
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 174
    .restart local v2    # "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 175
    .local v4, "_arg2_length":I
    if-gez v4, :cond_0

    .line 176
    const/4 v3, 0x0

    .line 182
    .local v3, "_arg2":[B
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 183
    .local v5, "_arg3":I
    invoke-virtual {p0, v0, v2, v3, v5}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub;->request(I[B[BI)I

    move-result v6

    .line 184
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 179
    .end local v3    # "_arg2":[B
    .end local v5    # "_arg3":I
    .end local v6    # "_result":I
    :cond_0
    new-array v3, v4, [B

    .restart local v3    # "_arg2":[B
    goto :goto_1

    .line 191
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":[B
    .end local v4    # "_arg2_length":I
    :sswitch_e
    const-string v9, "com.samsung.android.camera.iris.IIrisDaemon"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_1

    .line 194
    sget-object v9, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 200
    .local v0, "_arg0":Landroid/os/ParcelFileDescriptor;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 202
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 204
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 205
    .restart local v5    # "_arg3":I
    invoke-virtual {p0, v0, v2, v3, v5}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub;->processIRImage(Landroid/os/ParcelFileDescriptor;III)V

    .line 206
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 197
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v5    # "_arg3":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_2

    .line 211
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :sswitch_f
    const-string v9, "com.samsung.android.camera.iris.IIrisDaemon"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 217
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 219
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 220
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v3, v5}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub;->sendIRProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

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
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
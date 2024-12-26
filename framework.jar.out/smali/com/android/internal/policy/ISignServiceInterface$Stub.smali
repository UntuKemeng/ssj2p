.class public abstract Lcom/android/internal/policy/ISignServiceInterface$Stub;
.super Landroid/os/Binder;
.source "ISignServiceInterface.java"

# interfaces
.implements Lcom/android/internal/policy/ISignServiceInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/ISignServiceInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/ISignServiceInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.policy.ISignServiceInterface"

.field static final TRANSACTION_addOnePoint:I = 0x5

.field static final TRANSACTION_addSignatureModel:I = 0xe

.field static final TRANSACTION_checkSignatureData:I = 0x17

.field static final TRANSACTION_delUser:I = 0xb

.field static final TRANSACTION_endOneStroke:I = 0x6

.field static final TRANSACTION_endWriting:I = 0x4

.field static final TRANSACTION_getEngineStatus:I = 0x2

.field static final TRANSACTION_getEngineWorkStatus:I = 0x1a

.field static final TRANSACTION_getModelNum:I = 0xd

.field static final TRANSACTION_getOriginalPointsPath:I = 0x18

.field static final TRANSACTION_getRegisterViewH:I = 0x16

.field static final TRANSACTION_getRegisterViewW:I = 0x15

.field static final TRANSACTION_getRegisterViewX:I = 0x13

.field static final TRANSACTION_getRegisterViewY:I = 0x14

.field static final TRANSACTION_initEngine:I = 0x1

.field static final TRANSACTION_isPenDown:I = 0xa

.field static final TRANSACTION_isUsingOldData:I = 0x1b

.field static final TRANSACTION_isWriting:I = 0x9

.field static final TRANSACTION_readSignatureData:I = 0x10

.field static final TRANSACTION_replaceSignatureData:I = 0x11

.field static final TRANSACTION_reset:I = 0x7

.field static final TRANSACTION_saveSignatureData:I = 0xf

.field static final TRANSACTION_setEngineStatus:I = 0x19

.field static final TRANSACTION_setPointZero:I = 0x8

.field static final TRANSACTION_setRegisterViewXY:I = 0x12

.field static final TRANSACTION_startWriting:I = 0x3

.field static final TRANSACTION_verify:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.android.internal.policy.ISignServiceInterface"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/policy/ISignServiceInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/ISignServiceInterface;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    const-string v1, "com.android.internal.policy.ISignServiceInterface"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/policy/ISignServiceInterface;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/android/internal/policy/ISignServiceInterface;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Lcom/android/internal/policy/ISignServiceInterface$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/policy/ISignServiceInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
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
    const/4 v1, 0x0

    const/4 v7, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 299
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 43
    :sswitch_0
    const-string v1, "com.android.internal.policy.ISignServiceInterface"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v8, "com.android.internal.policy.ISignServiceInterface"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/android/internal/policy/ISignServiceInterface$Stub;->initEngine()Z

    move-result v0

    .line 50
    .local v0, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    if-eqz v0, :cond_0

    move v1, v7

    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 56
    .end local v0    # "_result":Z
    :sswitch_2
    const-string v8, "com.android.internal.policy.ISignServiceInterface"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/android/internal/policy/ISignServiceInterface$Stub;->getEngineStatus()Z

    move-result v0

    .line 58
    .restart local v0    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    if-eqz v0, :cond_1

    move v1, v7

    :cond_1
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 64
    .end local v0    # "_result":Z
    :sswitch_3
    const-string v1, "com.android.internal.policy.ISignServiceInterface"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 68
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 69
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/ISignServiceInterface$Stub;->startWriting(II)V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 75
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :sswitch_4
    const-string v1, "com.android.internal.policy.ISignServiceInterface"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/android/internal/policy/ISignServiceInterface$Stub;->endWriting()V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 82
    :sswitch_5
    const-string v1, "com.android.internal.policy.ISignServiceInterface"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 86
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 88
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 90
    .local v4, "_arg2":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg3":I
    move-object v1, p0

    .line 91
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/policy/ISignServiceInterface$Stub;->addOnePoint(IIJI)V

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 97
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":J
    .end local v6    # "_arg3":I
    :sswitch_6
    const-string v1, "com.android.internal.policy.ISignServiceInterface"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/internal/policy/ISignServiceInterface$Stub;->endOneStroke()V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 104
    :sswitch_7
    const-string v1, "com.android.internal.policy.ISignServiceInterface"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcom/android/internal/policy/ISignServiceInterface$Stub;->reset()V

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 111
    :sswitch_8
    const-string v1, "com.android.internal.policy.ISignServiceInterface"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/android/internal/policy/ISignServiceInterface$Stub;->setPointZero()V

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 118
    :sswitch_9
    const-string v8, "com.android.internal.policy.ISignServiceInterface"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/android/internal/policy/ISignServiceInterface$Stub;->isWriting()Z

    move-result v0

    .line 120
    .restart local v0    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    if-eqz v0, :cond_2

    move v1, v7

    :cond_2
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 126
    .end local v0    # "_result":Z
    :sswitch_a
    const-string v8, "com.android.internal.policy.ISignServiceInterface"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lcom/android/internal/policy/ISignServiceInterface$Stub;->isPenDown()Z

    move-result v0

    .line 128
    .restart local v0    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    if-eqz v0, :cond_3

    move v1, v7

    :cond_3
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 134
    .end local v0    # "_result":Z
    :sswitch_b
    const-string v1, "com.android.internal.policy.ISignServiceInterface"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 137
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/ISignServiceInterface$Stub;->delUser(I)I

    move-result v0

    .line 138
    .local v0, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 144
    .end local v0    # "_result":I
    .end local v2    # "_arg0":I
    :sswitch_c
    const-string v1, "com.android.internal.policy.ISignServiceInterface"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 148
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 150
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 151
    .local v4, "_arg2":I
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/policy/ISignServiceInterface$Stub;->verify(III)I

    move-result v0

    .line 152
    .restart local v0    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 158
    .end local v0    # "_result":I
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :sswitch_d
    const-string v1, "com.android.internal.policy.ISignServiceInterface"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 161
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/ISignServiceInterface$Stub;->getModelNum(I)I

    move-result v0

    .line 162
    .restart local v0    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 168
    .end local v0    # "_result":I
    .end local v2    # "_arg0":I
    :sswitch_e
    const-string v1, "com.android.internal.policy.ISignServiceInterface"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 172
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 173
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/ISignServiceInterface$Stub;->addSignatureModel(II)I

    move-result v0

    .line 174
    .restart local v0    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 180
    .end local v0    # "_result":I
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :sswitch_f
    const-string v1, "com.android.internal.policy.ISignServiceInterface"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0}, Lcom/android/internal/policy/ISignServiceInterface$Stub;->saveSignatureData()I

    move-result v0

    .line 182
    .restart local v0    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 188
    .end local v0    # "_result":I
    :sswitch_10
    const-string v1, "com.android.internal.policy.ISignServiceInterface"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 191
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/ISignServiceInterface$Stub;->readSignatureData(Ljava/lang/String;)I

    move-result v0

    .line 192
    .restart local v0    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 198
    .end local v0    # "_result":I
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_11
    const-string v1, "com.android.internal.policy.ISignServiceInterface"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Lcom/android/internal/policy/ISignServiceInterface$Stub;->replaceSignatureData()I

    move-result v0

    .line 200
    .restart local v0    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 206
    .end local v0    # "_result":I
    :sswitch_12
    const-string v1, "com.android.internal.policy.ISignServiceInterface"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 210
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 212
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 214
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 215
    .restart local v6    # "_arg3":I
    invoke-virtual {p0, v2, v3, v4, v6}, Lcom/android/internal/policy/ISignServiceInterface$Stub;->setRegisterViewXY(IIII)V

    .line 216
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 221
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v6    # "_arg3":I
    :sswitch_13
    const-string v1, "com.android.internal.policy.ISignServiceInterface"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p0}, Lcom/android/internal/policy/ISignServiceInterface$Stub;->getRegisterViewX()I

    move-result v0

    .line 223
    .restart local v0    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 229
    .end local v0    # "_result":I
    :sswitch_14
    const-string v1, "com.android.internal.policy.ISignServiceInterface"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0}, Lcom/android/internal/policy/ISignServiceInterface$Stub;->getRegisterViewY()I

    move-result v0

    .line 231
    .restart local v0    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 237
    .end local v0    # "_result":I
    :sswitch_15
    const-string v1, "com.android.internal.policy.ISignServiceInterface"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Lcom/android/internal/policy/ISignServiceInterface$Stub;->getRegisterViewW()I

    move-result v0

    .line 239
    .restart local v0    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 245
    .end local v0    # "_result":I
    :sswitch_16
    const-string v1, "com.android.internal.policy.ISignServiceInterface"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0}, Lcom/android/internal/policy/ISignServiceInterface$Stub;->getRegisterViewH()I

    move-result v0

    .line 247
    .restart local v0    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 253
    .end local v0    # "_result":I
    :sswitch_17
    const-string v1, "com.android.internal.policy.ISignServiceInterface"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 257
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 258
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/ISignServiceInterface$Stub;->checkSignatureData(II)I

    move-result v0

    .line 259
    .restart local v0    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 265
    .end local v0    # "_result":I
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :sswitch_18
    const-string v1, "com.android.internal.policy.ISignServiceInterface"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 268
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/ISignServiceInterface$Stub;->getOriginalPointsPath(I)Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 275
    .end local v0    # "_result":Ljava/lang/String;
    .end local v2    # "_arg0":I
    :sswitch_19
    const-string v1, "com.android.internal.policy.ISignServiceInterface"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 278
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/ISignServiceInterface$Stub;->setEngineStatus(I)V

    .line 279
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 284
    .end local v2    # "_arg0":I
    :sswitch_1a
    const-string v1, "com.android.internal.policy.ISignServiceInterface"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p0}, Lcom/android/internal/policy/ISignServiceInterface$Stub;->getEngineWorkStatus()I

    move-result v0

    .line 286
    .local v0, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 292
    .end local v0    # "_result":I
    :sswitch_1b
    const-string v8, "com.android.internal.policy.ISignServiceInterface"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p0}, Lcom/android/internal/policy/ISignServiceInterface$Stub;->isUsingOldData()Z

    move-result v0

    .line 294
    .local v0, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    if-eqz v0, :cond_4

    move v1, v7

    :cond_4
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 39
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

.class public abstract Landroid/os/ICustomFrequencyManager$Stub;
.super Landroid/os/Binder;
.source "ICustomFrequencyManager.java"

# interfaces
.implements Landroid/os/ICustomFrequencyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ICustomFrequencyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ICustomFrequencyManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.ICustomFrequencyManager"

.field static final TRANSACTION_acquireDVFSLock:I = 0x21

.field static final TRANSACTION_acquireGovernorParameter:I = 0x3d

.field static final TRANSACTION_acquirePersistentDVFSLock:I = 0x23

.field static final TRANSACTION_checkCPUBoostRange:I = 0x1f

.field static final TRANSACTION_checkFrameRateRange:I = 0xa

.field static final TRANSACTION_checkGPUFrequencyRange:I = 0x2

.field static final TRANSACTION_checkSysBusFrequencyRange:I = 0x6

.field static final TRANSACTION_deleteBatteryStatsDatabase:I = 0x2f

.field static final TRANSACTION_disableCPUCState:I = 0x13

.field static final TRANSACTION_disableCpuCtl:I = 0x1e

.field static final TRANSACTION_disableCpuSet:I = 0x1c

.field static final TRANSACTION_disableHotplugDisable:I = 0x18

.field static final TRANSACTION_disableLegacyScheduler:I = 0x16

.field static final TRANSACTION_disablePCIePSMDisable:I = 0x1a

.field static final TRANSACTION_enableCPUCState:I = 0x14

.field static final TRANSACTION_enableCpuCtl:I = 0x1d

.field static final TRANSACTION_enableCpuSet:I = 0x1b

.field static final TRANSACTION_enableHotplugDisable:I = 0x17

.field static final TRANSACTION_enableLegacyScheduler:I = 0x15

.field static final TRANSACTION_enablePCIePSMDisable:I = 0x19

.field static final TRANSACTION_getAbusiveAppList:I = 0x33

.field static final TRANSACTION_getBatteryDeltaSum:I = 0x30

.field static final TRANSACTION_getBatteryRemainingUsageTime:I = 0x2d

.field static final TRANSACTION_getBatteryStatistics:I = 0x2e

.field static final TRANSACTION_getBatteryTotalCapacity:I = 0x31

.field static final TRANSACTION_getDvfsPolicyByHint:I = 0x34

.field static final TRANSACTION_getFrequentlyUsedAppListByLocation:I = 0x3b

.field static final TRANSACTION_getGameThrottlingLevel:I = 0x37

.field static final TRANSACTION_getLeastRecentlyUsedAppList:I = 0x3c

.field static final TRANSACTION_getSavedTimeAfterKillingApp:I = 0x32

.field static final TRANSACTION_getStandbyTimeInPowerSavingMode:I = 0x2b

.field static final TRANSACTION_getStandbyTimeInUltraPowerSavingMode:I = 0x2a

.field static final TRANSACTION_getSupportedCPUCoreNum:I = 0x10

.field static final TRANSACTION_getSupportedCPUFrequency:I = 0x20

.field static final TRANSACTION_getSupportedGPUFrequency:I = 0x1

.field static final TRANSACTION_getSupportedLCDFrequency:I = 0x9

.field static final TRANSACTION_getSupportedSysBusFrequency:I = 0x5

.field static final TRANSACTION_mpdUpdate:I = 0xf

.field static final TRANSACTION_notifyWmAniationState:I = 0x27

.field static final TRANSACTION_releaseCPUCore:I = 0x12

.field static final TRANSACTION_releaseDVFSLock:I = 0x22

.field static final TRANSACTION_releaseGPU:I = 0x4

.field static final TRANSACTION_releaseGovernorParameter:I = 0x3e

.field static final TRANSACTION_releasePersistentDVFSLock:I = 0x24

.field static final TRANSACTION_releaseSysBus:I = 0x8

.field static final TRANSACTION_requestCPUCore:I = 0x11

.field static final TRANSACTION_requestCPUUpdate:I = 0xe

.field static final TRANSACTION_requestGPU:I = 0x3

.field static final TRANSACTION_requestLCDFrameRate:I = 0xb

.field static final TRANSACTION_requestMMCBurstRate:I = 0x25

.field static final TRANSACTION_requestMpParameterUpdate:I = 0xd

.field static final TRANSACTION_requestSysBus:I = 0x7

.field static final TRANSACTION_restoreLCDFrameRate:I = 0xc

.field static final TRANSACTION_restoreMMCBurstRate:I = 0x26

.field static final TRANSACTION_reviewPackage:I = 0x29

.field static final TRANSACTION_sendCommandToSSRM:I = 0x28

.field static final TRANSACTION_setGameFps:I = 0x36

.field static final TRANSACTION_setGamePowerSaving:I = 0x35

.field static final TRANSACTION_setGameTouchParam:I = 0x39

.field static final TRANSACTION_setGameTurboMode:I = 0x38

.field static final TRANSACTION_setHglPolicy:I = 0x2c

.field static final TRANSACTION_unsetGameTouchParam:I = 0x3a


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.os.ICustomFrequencyManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/ICustomFrequencyManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/ICustomFrequencyManager;
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
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/ICustomFrequencyManager;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/os/ICustomFrequencyManager;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Landroid/os/ICustomFrequencyManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/os/ICustomFrequencyManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v1, 0x0

    const/4 v7, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 708
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 43
    :sswitch_0
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Landroid/os/ICustomFrequencyManager$Stub;->getSupportedGPUFrequency()[I

    move-result-object v8

    .line 50
    .local v8, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_0

    .line 56
    .end local v8    # "_result":[I
    :sswitch_2
    const-string v10, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 59
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/os/ICustomFrequencyManager$Stub;->checkGPUFrequencyRange(I)Z

    move-result v8

    .line 60
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-eqz v8, :cond_0

    move v1, v7

    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 66
    .end local v2    # "_arg0":I
    .end local v8    # "_result":Z
    :sswitch_3
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 70
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 72
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 74
    .local v6, "_arg2":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v2, v4, v6, v0}, Landroid/os/ICustomFrequencyManager$Stub;->requestGPU(IILandroid/os/IBinder;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 81
    .end local v0    # "_arg3":Ljava/lang/String;
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v6    # "_arg2":Landroid/os/IBinder;
    :sswitch_4
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 85
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 87
    .local v4, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 88
    .local v6, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v2, v4, v6}, Landroid/os/ICustomFrequencyManager$Stub;->releaseGPU(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 94
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Landroid/os/IBinder;
    .end local v6    # "_arg2":Ljava/lang/String;
    :sswitch_5
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Landroid/os/ICustomFrequencyManager$Stub;->getSupportedSysBusFrequency()[I

    move-result-object v8

    .line 96
    .local v8, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_0

    .line 102
    .end local v8    # "_result":[I
    :sswitch_6
    const-string v10, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 105
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Landroid/os/ICustomFrequencyManager$Stub;->checkSysBusFrequencyRange(I)Z

    move-result v8

    .line 106
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    if-eqz v8, :cond_1

    move v1, v7

    :cond_1
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 112
    .end local v2    # "_arg0":I
    .end local v8    # "_result":Z
    :sswitch_7
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 116
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 118
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 120
    .local v6, "_arg2":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 121
    .restart local v0    # "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v2, v4, v6, v0}, Landroid/os/ICustomFrequencyManager$Stub;->requestSysBus(IILandroid/os/IBinder;Ljava/lang/String;)V

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 127
    .end local v0    # "_arg3":Ljava/lang/String;
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v6    # "_arg2":Landroid/os/IBinder;
    :sswitch_8
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 131
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 133
    .local v4, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 134
    .local v6, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v2, v4, v6}, Landroid/os/ICustomFrequencyManager$Stub;->releaseSysBus(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 140
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Landroid/os/IBinder;
    .end local v6    # "_arg2":Ljava/lang/String;
    :sswitch_9
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Landroid/os/ICustomFrequencyManager$Stub;->getSupportedLCDFrequency()[I

    move-result-object v8

    .line 142
    .local v8, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 148
    .end local v8    # "_result":[I
    :sswitch_a
    const-string v10, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 151
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Landroid/os/ICustomFrequencyManager$Stub;->checkFrameRateRange(I)Z

    move-result v8

    .line 152
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    if-eqz v8, :cond_2

    move v1, v7

    :cond_2
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 158
    .end local v2    # "_arg0":I
    .end local v8    # "_result":Z
    :sswitch_b
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 162
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 164
    .restart local v4    # "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 165
    .restart local v6    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v2, v4, v6}, Landroid/os/ICustomFrequencyManager$Stub;->requestLCDFrameRate(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 166
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 171
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Landroid/os/IBinder;
    .end local v6    # "_arg2":Ljava/lang/String;
    :sswitch_c
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 175
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 176
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v4}, Landroid/os/ICustomFrequencyManager$Stub;->restoreLCDFrameRate(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 177
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 182
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_d
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 185
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/os/ICustomFrequencyManager$Stub;->requestMpParameterUpdate(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 191
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_e
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 195
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 196
    .local v4, "_arg1":I
    invoke-virtual {p0, v2, v4}, Landroid/os/ICustomFrequencyManager$Stub;->requestCPUUpdate(II)V

    .line 197
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 202
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":I
    :sswitch_f
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 205
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Landroid/os/ICustomFrequencyManager$Stub;->mpdUpdate(I)V

    .line 206
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 211
    .end local v2    # "_arg0":I
    :sswitch_10
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0}, Landroid/os/ICustomFrequencyManager$Stub;->getSupportedCPUCoreNum()[I

    move-result-object v8

    .line 213
    .local v8, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 219
    .end local v8    # "_result":[I
    :sswitch_11
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 223
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 225
    .restart local v4    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 227
    .local v6, "_arg2":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 228
    .restart local v0    # "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v2, v4, v6, v0}, Landroid/os/ICustomFrequencyManager$Stub;->requestCPUCore(IILandroid/os/IBinder;Ljava/lang/String;)V

    .line 229
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 234
    .end local v0    # "_arg3":Ljava/lang/String;
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v6    # "_arg2":Landroid/os/IBinder;
    :sswitch_12
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 238
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 240
    .local v4, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 241
    .local v6, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v2, v4, v6}, Landroid/os/ICustomFrequencyManager$Stub;->releaseCPUCore(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 242
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 247
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Landroid/os/IBinder;
    .end local v6    # "_arg2":Ljava/lang/String;
    :sswitch_13
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 251
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 252
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v4}, Landroid/os/ICustomFrequencyManager$Stub;->disableCPUCState(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 253
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 258
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_14
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 262
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 263
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v4}, Landroid/os/ICustomFrequencyManager$Stub;->enableCPUCState(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 264
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 269
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_15
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 273
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 274
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v4}, Landroid/os/ICustomFrequencyManager$Stub;->enableLegacyScheduler(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 275
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 280
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_16
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 284
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 285
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v4}, Landroid/os/ICustomFrequencyManager$Stub;->disableLegacyScheduler(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 286
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 291
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_17
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 295
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 296
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v4}, Landroid/os/ICustomFrequencyManager$Stub;->enableHotplugDisable(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 297
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 302
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_18
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 306
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 307
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v4}, Landroid/os/ICustomFrequencyManager$Stub;->disableHotplugDisable(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 308
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 313
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_19
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 317
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 318
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v4}, Landroid/os/ICustomFrequencyManager$Stub;->enablePCIePSMDisable(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 319
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 324
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_1a
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 328
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 329
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v4}, Landroid/os/ICustomFrequencyManager$Stub;->disablePCIePSMDisable(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 330
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 335
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_1b
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 337
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 339
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 340
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v4}, Landroid/os/ICustomFrequencyManager$Stub;->enableCpuSet(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 341
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 346
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_1c
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 348
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 350
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 351
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v4}, Landroid/os/ICustomFrequencyManager$Stub;->disableCpuSet(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 352
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 357
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_1d
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 359
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 361
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 362
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v4}, Landroid/os/ICustomFrequencyManager$Stub;->enableCpuCtl(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 363
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 368
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_1e
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 370
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 372
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 373
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v4}, Landroid/os/ICustomFrequencyManager$Stub;->disableCpuCtl(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 374
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 379
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_1f
    const-string v10, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 382
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/os/ICustomFrequencyManager$Stub;->checkCPUBoostRange(I)Z

    move-result v8

    .line 383
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 384
    if-eqz v8, :cond_3

    move v1, v7

    :cond_3
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 389
    .end local v2    # "_arg0":I
    .end local v8    # "_result":Z
    :sswitch_20
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 390
    invoke-virtual {p0}, Landroid/os/ICustomFrequencyManager$Stub;->getSupportedCPUFrequency()[I

    move-result-object v8

    .line 391
    .local v8, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 392
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 397
    .end local v8    # "_result":[I
    :sswitch_21
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 399
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 401
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 403
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 405
    .local v6, "_arg2":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 406
    .restart local v0    # "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v2, v4, v6, v0}, Landroid/os/ICustomFrequencyManager$Stub;->acquireDVFSLock(IILandroid/os/IBinder;Ljava/lang/String;)V

    .line 407
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 412
    .end local v0    # "_arg3":Ljava/lang/String;
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v6    # "_arg2":Landroid/os/IBinder;
    :sswitch_22
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 414
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 416
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 417
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v4}, Landroid/os/ICustomFrequencyManager$Stub;->releaseDVFSLock(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 418
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 423
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_23
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 425
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 427
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 429
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 431
    .local v6, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 432
    .restart local v0    # "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v2, v4, v6, v0}, Landroid/os/ICustomFrequencyManager$Stub;->acquirePersistentDVFSLock(IIILjava/lang/String;)V

    .line 433
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 438
    .end local v0    # "_arg3":Ljava/lang/String;
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v6    # "_arg2":I
    :sswitch_24
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 440
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 442
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 443
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v4}, Landroid/os/ICustomFrequencyManager$Stub;->releasePersistentDVFSLock(ILjava/lang/String;)V

    .line 444
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 449
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_25
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 451
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 453
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 455
    .local v4, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 456
    .local v6, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v2, v4, v6}, Landroid/os/ICustomFrequencyManager$Stub;->requestMMCBurstRate(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 457
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 462
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Landroid/os/IBinder;
    .end local v6    # "_arg2":Ljava/lang/String;
    :sswitch_26
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 464
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 465
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v2}, Landroid/os/ICustomFrequencyManager$Stub;->restoreMMCBurstRate(Landroid/os/IBinder;)V

    .line 466
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 471
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :sswitch_27
    const-string v10, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 473
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 475
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_4

    move v4, v7

    .line 476
    .local v4, "_arg1":Z
    :goto_1
    invoke-virtual {p0, v2, v3, v4}, Landroid/os/ICustomFrequencyManager$Stub;->notifyWmAniationState(JZ)V

    .line 477
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v4    # "_arg1":Z
    :cond_4
    move v4, v1

    .line 475
    goto :goto_1

    .line 482
    .end local v2    # "_arg0":J
    :sswitch_28
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 484
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 486
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 487
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v4}, Landroid/os/ICustomFrequencyManager$Stub;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 493
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_29
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 495
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 497
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 498
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v4}, Landroid/os/ICustomFrequencyManager$Stub;->reviewPackage(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 504
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_2a
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 505
    invoke-virtual {p0}, Landroid/os/ICustomFrequencyManager$Stub;->getStandbyTimeInUltraPowerSavingMode()I

    move-result v8

    .line 506
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 507
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 512
    .end local v8    # "_result":I
    :sswitch_2b
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 513
    invoke-virtual {p0}, Landroid/os/ICustomFrequencyManager$Stub;->getStandbyTimeInPowerSavingMode()I

    move-result v8

    .line 514
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 515
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 520
    .end local v8    # "_result":I
    :sswitch_2c
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 522
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 523
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/os/ICustomFrequencyManager$Stub;->setHglPolicy(Ljava/lang/String;)V

    .line 524
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 529
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_2d
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 531
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 532
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/os/ICustomFrequencyManager$Stub;->getBatteryRemainingUsageTime(I)I

    move-result v8

    .line 533
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 534
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 539
    .end local v2    # "_arg0":I
    .end local v8    # "_result":I
    :sswitch_2e
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 541
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 542
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Landroid/os/ICustomFrequencyManager$Stub;->getBatteryStatistics(I)[B

    move-result-object v8

    .line 543
    .local v8, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 544
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 549
    .end local v2    # "_arg0":I
    .end local v8    # "_result":[B
    :sswitch_2f
    const-string v10, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 550
    invoke-virtual {p0}, Landroid/os/ICustomFrequencyManager$Stub;->deleteBatteryStatsDatabase()Z

    move-result v8

    .line 551
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 552
    if-eqz v8, :cond_5

    move v1, v7

    :cond_5
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 557
    .end local v8    # "_result":Z
    :sswitch_30
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 559
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 560
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Landroid/os/ICustomFrequencyManager$Stub;->getBatteryDeltaSum(I)I

    move-result v8

    .line 561
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 562
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 567
    .end local v2    # "_arg0":I
    .end local v8    # "_result":I
    :sswitch_31
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 568
    invoke-virtual {p0}, Landroid/os/ICustomFrequencyManager$Stub;->getBatteryTotalCapacity()I

    move-result v8

    .line 569
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 570
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 575
    .end local v8    # "_result":I
    :sswitch_32
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 577
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 578
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/os/ICustomFrequencyManager$Stub;->getSavedTimeAfterKillingApp(Ljava/lang/String;)J

    move-result-wide v8

    .line 579
    .local v8, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 580
    invoke-virtual {p3, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 585
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":J
    :sswitch_33
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 586
    invoke-virtual {p0}, Landroid/os/ICustomFrequencyManager$Stub;->getAbusiveAppList()[Ljava/lang/String;

    move-result-object v8

    .line 587
    .local v8, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 588
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 593
    .end local v8    # "_result":[Ljava/lang/String;
    :sswitch_34
    const-string v10, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 595
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 596
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/os/ICustomFrequencyManager$Stub;->getDvfsPolicyByHint(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 597
    .local v8, "_result":Landroid/content/Intent;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 598
    if-eqz v8, :cond_6

    .line 599
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 600
    invoke-virtual {v8, p3, v7}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 603
    :cond_6
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 609
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Landroid/content/Intent;
    :sswitch_35
    const-string v10, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 611
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_7

    move v2, v7

    .line 612
    .local v2, "_arg0":Z
    :goto_2
    invoke-virtual {p0, v2}, Landroid/os/ICustomFrequencyManager$Stub;->setGamePowerSaving(Z)V

    .line 613
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v2    # "_arg0":Z
    :cond_7
    move v2, v1

    .line 611
    goto :goto_2

    .line 618
    :sswitch_36
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 620
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 621
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/os/ICustomFrequencyManager$Stub;->setGameFps(I)V

    .line 622
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 627
    .end local v2    # "_arg0":I
    :sswitch_37
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 628
    invoke-virtual {p0}, Landroid/os/ICustomFrequencyManager$Stub;->getGameThrottlingLevel()I

    move-result v8

    .line 629
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 630
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 635
    .end local v8    # "_result":I
    :sswitch_38
    const-string v10, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 637
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_8

    move v2, v7

    .line 638
    .local v2, "_arg0":Z
    :goto_3
    invoke-virtual {p0, v2}, Landroid/os/ICustomFrequencyManager$Stub;->setGameTurboMode(Z)V

    .line 639
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v2    # "_arg0":Z
    :cond_8
    move v2, v1

    .line 637
    goto :goto_3

    .line 644
    :sswitch_39
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 646
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 648
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 650
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 651
    .restart local v6    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v2, v4, v6}, Landroid/os/ICustomFrequencyManager$Stub;->setGameTouchParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 657
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":Ljava/lang/String;
    :sswitch_3a
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 658
    invoke-virtual {p0}, Landroid/os/ICustomFrequencyManager$Stub;->unsetGameTouchParam()V

    .line 659
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 664
    :sswitch_3b
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 666
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    .line 668
    .local v2, "_arg0":D
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    .line 670
    .local v4, "_arg1":D
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg2":I
    move-object v1, p0

    .line 671
    invoke-virtual/range {v1 .. v6}, Landroid/os/ICustomFrequencyManager$Stub;->getFrequentlyUsedAppListByLocation(DDI)[Ljava/lang/String;

    move-result-object v8

    .line 672
    .local v8, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 673
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 678
    .end local v2    # "_arg0":D
    .end local v4    # "_arg1":D
    .end local v6    # "_arg2":I
    .end local v8    # "_result":[Ljava/lang/String;
    :sswitch_3c
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 680
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 681
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/os/ICustomFrequencyManager$Stub;->getLeastRecentlyUsedAppList(I)[Ljava/lang/String;

    move-result-object v8

    .line 682
    .restart local v8    # "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 683
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 688
    .end local v2    # "_arg0":I
    .end local v8    # "_result":[Ljava/lang/String;
    :sswitch_3d
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 690
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_9

    .line 691
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 696
    .local v2, "_arg0":Landroid/content/Intent;
    :goto_4
    invoke-virtual {p0, v2}, Landroid/os/ICustomFrequencyManager$Stub;->acquireGovernorParameter(Landroid/content/Intent;)V

    .line 697
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 694
    .end local v2    # "_arg0":Landroid/content/Intent;
    :cond_9
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/content/Intent;
    goto :goto_4

    .line 702
    .end local v2    # "_arg0":Landroid/content/Intent;
    :sswitch_3e
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 703
    invoke-virtual {p0}, Landroid/os/ICustomFrequencyManager$Stub;->releaseGovernorParameter()V

    .line 704
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 39
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

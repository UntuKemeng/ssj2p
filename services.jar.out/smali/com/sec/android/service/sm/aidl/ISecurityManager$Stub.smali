.class public abstract Lcom/sec/android/service/sm/aidl/ISecurityManager$Stub;
.super Landroid/os/Binder;
.source "ISecurityManager.java"

# interfaces
.implements Lcom/sec/android/service/sm/aidl/ISecurityManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/service/sm/aidl/ISecurityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/service/sm/aidl/ISecurityManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sec.android.service.sm.aidl.ISecurityManager"

.field static final TRANSACTION_enableMDFPPMode:I = 0x2

.field static final TRANSACTION_getCCModeStatus:I = 0x4

.field static final TRANSACTION_initCCMode:I = 0x5

.field static final TRANSACTION_isCCMode:I = 0x1

.field static final TRANSACTION_isFIPSMode:I = 0x3

.field static final TRANSACTION_verifyVPN:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.sec.android.service.sm.aidl.ISecurityManager"

    invoke-virtual {p0, p0, v0}, Lcom/sec/android/service/sm/aidl/ISecurityManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/android/service/sm/aidl/ISecurityManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.sec.android.service.sm.aidl.ISecurityManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/sec/android/service/sm/aidl/ISecurityManager;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/sec/android/service/sm/aidl/ISecurityManager;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/sec/android/service/sm/aidl/ISecurityManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/sec/android/service/sm/aidl/ISecurityManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
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
    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    :sswitch_0
    const-string v2, "com.sec.android.service.sm.aidl.ISecurityManager"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v4, "com.sec.android.service.sm.aidl.ISecurityManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/service/sm/aidl/ISecurityManager$Stub;->isCCMode()Z

    move-result v1

    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v1    # "_result":Z
    :sswitch_2
    const-string v4, "com.sec.android.service.sm.aidl.ISecurityManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    move v0, v3

    .local v0, "_arg0":Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/sec/android/service/sm/aidl/ISecurityManager$Stub;->enableMDFPPMode(Z)I

    move-result v1

    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0    # "_arg0":Z
    .end local v1    # "_result":I
    :cond_1
    move v0, v2

    goto :goto_1

    :sswitch_3
    const-string v4, "com.sec.android.service.sm.aidl.ISecurityManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/service/sm/aidl/ISecurityManager$Stub;->isFIPSMode()Z

    move-result v1

    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v1    # "_result":Z
    :sswitch_4
    const-string v2, "com.sec.android.service.sm.aidl.ISecurityManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/service/sm/aidl/ISecurityManager$Stub;->getCCModeStatus()Ljava/lang/String;

    move-result-object v1

    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .end local v1    # "_result":Ljava/lang/String;
    :sswitch_5
    const-string v2, "com.sec.android.service.sm.aidl.ISecurityManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/service/sm/aidl/ISecurityManager$Stub;->initCCMode()I

    move-result v1

    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v1    # "_result":I
    :sswitch_6
    const-string v2, "com.sec.android.service.sm.aidl.ISecurityManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/service/sm/aidl/ISecurityManager$Stub;->verifyVPN()I

    move-result v1

    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

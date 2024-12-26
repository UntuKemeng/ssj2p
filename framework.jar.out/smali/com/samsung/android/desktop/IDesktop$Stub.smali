.class public abstract Lcom/samsung/android/desktop/IDesktop$Stub;
.super Landroid/os/Binder;
.source "IDesktop.java"

# interfaces
.implements Lcom/samsung/android/desktop/IDesktop;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/desktop/IDesktop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/desktop/IDesktop$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.desktop.IDesktop"

.field static final TRANSACTION_isDesktopDockConnected:I = 0x1

.field static final TRANSACTION_isKnoxDesktopMode:I = 0x2

.field static final TRANSACTION_readDataFromDock:I = 0x4

.field static final TRANSACTION_registerStateCallback:I = 0x5

.field static final TRANSACTION_turnOnMainLCD:I = 0x7

.field static final TRANSACTION_unregisterStateCallback:I = 0x6

.field static final TRANSACTION_writeDataToDock:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.samsung.android.desktop.IDesktop"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/desktop/IDesktop$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/desktop/IDesktop;
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
    const-string v1, "com.samsung.android.desktop.IDesktop"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/desktop/IDesktop;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/samsung/android/desktop/IDesktop;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Lcom/samsung/android/desktop/IDesktop$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/android/desktop/IDesktop$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 110
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 43
    :sswitch_0
    const-string v2, "com.samsung.android.desktop.IDesktop"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v4, "com.samsung.android.desktop.IDesktop"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/samsung/android/desktop/IDesktop$Stub;->isDesktopDockConnected()Z

    move-result v1

    .line 50
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    if-eqz v1, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 56
    .end local v1    # "_result":Z
    :sswitch_2
    const-string v4, "com.samsung.android.desktop.IDesktop"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/samsung/android/desktop/IDesktop$Stub;->isKnoxDesktopMode()Z

    move-result v1

    .line 58
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    if-eqz v1, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 64
    .end local v1    # "_result":Z
    :sswitch_3
    const-string v4, "com.samsung.android.desktop.IDesktop"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 67
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/desktop/IDesktop$Stub;->writeDataToDock(I)Z

    move-result v1

    .line 68
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    if-eqz v1, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 74
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :sswitch_4
    const-string v2, "com.samsung.android.desktop.IDesktop"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/samsung/android/desktop/IDesktop$Stub;->readDataFromDock()B

    move-result v1

    .line 76
    .local v1, "_result":B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    .line 82
    .end local v1    # "_result":B
    :sswitch_5
    const-string v4, "com.samsung.android.desktop.IDesktop"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/desktop/IDesktopStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/desktop/IDesktopStateCallback;

    move-result-object v0

    .line 85
    .local v0, "_arg0":Lcom/samsung/android/desktop/IDesktopStateCallback;
    invoke-virtual {p0, v0}, Lcom/samsung/android/desktop/IDesktop$Stub;->registerStateCallback(Lcom/samsung/android/desktop/IDesktopStateCallback;)Z

    move-result v1

    .line 86
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    if-eqz v1, :cond_3

    move v2, v3

    :cond_3
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 92
    .end local v0    # "_arg0":Lcom/samsung/android/desktop/IDesktopStateCallback;
    .end local v1    # "_result":Z
    :sswitch_6
    const-string v4, "com.samsung.android.desktop.IDesktop"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/desktop/IDesktopStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/desktop/IDesktopStateCallback;

    move-result-object v0

    .line 95
    .restart local v0    # "_arg0":Lcom/samsung/android/desktop/IDesktopStateCallback;
    invoke-virtual {p0, v0}, Lcom/samsung/android/desktop/IDesktop$Stub;->unregisterStateCallback(Lcom/samsung/android/desktop/IDesktopStateCallback;)Z

    move-result v1

    .line 96
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    if-eqz v1, :cond_4

    move v2, v3

    :cond_4
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 102
    .end local v0    # "_arg0":Lcom/samsung/android/desktop/IDesktopStateCallback;
    .end local v1    # "_result":Z
    :sswitch_7
    const-string v4, "com.samsung.android.desktop.IDesktop"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    move v0, v3

    .line 105
    .local v0, "_arg0":Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/desktop/IDesktop$Stub;->turnOnMainLCD(Z)V

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_5
    move v0, v2

    .line 104
    goto :goto_1

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

.class public abstract Lcom/samsung/android/writingbuddy/IWritingBuddyConnectionCallback$Stub;
.super Landroid/os/Binder;
.source "IWritingBuddyConnectionCallback.java"

# interfaces
.implements Lcom/samsung/android/writingbuddy/IWritingBuddyConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/writingbuddy/IWritingBuddyConnectionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/writingbuddy/IWritingBuddyConnectionCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.writingbuddy.IWritingBuddyConnectionCallback"

.field static final TRANSACTION_onResultReceive:I = 0x1

.field static final TRANSACTION_onStatusRequest:I = 0x3

.field static final TRANSACTION_onWritingResultReceive:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.writingbuddy.IWritingBuddyConnectionCallback"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/writingbuddy/IWritingBuddyConnectionCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/writingbuddy/IWritingBuddyConnectionCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.samsung.android.writingbuddy.IWritingBuddyConnectionCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/writingbuddy/IWritingBuddyConnectionCallback;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/android/writingbuddy/IWritingBuddyConnectionCallback;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/samsung/android/writingbuddy/IWritingBuddyConnectionCallback$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/android/writingbuddy/IWritingBuddyConnectionCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    :sswitch_0
    const-string v4, "com.samsung.android.writingbuddy.IWritingBuddyConnectionCallback"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v4, "com.samsung.android.writingbuddy.IWritingBuddyConnectionCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    move v1, v3

    .local v1, "_arg1":Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .local v2, "_arg2":Landroid/os/Bundle;
    :goto_2
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/writingbuddy/IWritingBuddyConnectionCallback$Stub;->onResultReceive(IZLandroid/os/Bundle;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Landroid/os/Bundle;
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .restart local v1    # "_arg1":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Landroid/os/Bundle;
    goto :goto_2

    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Landroid/os/Bundle;
    :sswitch_2
    const-string v4, "com.samsung.android.writingbuddy.IWritingBuddyConnectionCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .local v1, "_arg1":Ljava/lang/CharSequence;
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .local v2, "_arg2":Landroid/os/ParcelFileDescriptor;
    :goto_4
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/writingbuddy/IWritingBuddyConnectionCallback$Stub;->onWritingResultReceive(ILjava/lang/CharSequence;Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v1    # "_arg1":Ljava/lang/CharSequence;
    .end local v2    # "_arg2":Landroid/os/ParcelFileDescriptor;
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Ljava/lang/CharSequence;
    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Landroid/os/ParcelFileDescriptor;
    goto :goto_4

    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/CharSequence;
    .end local v2    # "_arg2":Landroid/os/ParcelFileDescriptor;
    :sswitch_3
    const-string v4, "com.samsung.android.writingbuddy.IWritingBuddyConnectionCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/writingbuddy/IWritingBuddyConnectionCallback$Stub;->onStatusRequest(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

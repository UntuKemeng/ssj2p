.class public abstract Lcom/android/internal/textservice/ITextServicesManager$Stub;
.super Landroid/os/Binder;
.source "ITextServicesManager.java"

# interfaces
.implements Lcom/android/internal/textservice/ITextServicesManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/textservice/ITextServicesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/textservice/ITextServicesManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.textservice.ITextServicesManager"

.field static final TRANSACTION_finishSpellCheckerService:I = 0x4

.field static final TRANSACTION_getCurrentSpellChecker:I = 0x1

.field static final TRANSACTION_getCurrentSpellCheckerSubtype:I = 0x2

.field static final TRANSACTION_getEnabledSpellCheckers:I = 0x9

.field static final TRANSACTION_getSpellCheckerService:I = 0x3

.field static final TRANSACTION_isSpellCheckerEnabled:I = 0x8

.field static final TRANSACTION_setCurrentSpellChecker:I = 0x5

.field static final TRANSACTION_setCurrentSpellCheckerSubtype:I = 0x6

.field static final TRANSACTION_setSpellCheckerEnabled:I = 0x7

.field static final TRANSACTION_switchUserForKnox:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.internal.textservice.ITextServicesManager"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/textservice/ITextServicesManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/textservice/ITextServicesManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.android.internal.textservice.ITextServicesManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/textservice/ITextServicesManager;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/internal/textservice/ITextServicesManager;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/internal/textservice/ITextServicesManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/textservice/ITextServicesManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
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
    const/4 v0, 0x0

    const/4 v7, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    :sswitch_0
    const-string v0, "com.android.internal.textservice.ITextServicesManager"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v8, "com.android.internal.textservice.ITextServicesManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/textservice/ITextServicesManager$Stub;->getCurrentSpellChecker(Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v6

    .local v6, "_result":Landroid/view/textservice/SpellCheckerInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_0

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v6, p3, v7}, Landroid/view/textservice/SpellCheckerInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v6    # "_result":Landroid/view/textservice/SpellCheckerInfo;
    :sswitch_2
    const-string v8, "com.android.internal.textservice.ITextServicesManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1

    move v2, v7

    .local v2, "_arg1":Z
    :goto_1
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/textservice/ITextServicesManager$Stub;->getCurrentSpellCheckerSubtype(Ljava/lang/String;Z)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v6

    .local v6, "_result":Landroid/view/textservice/SpellCheckerSubtype;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_2

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v6, p3, v7}, Landroid/view/textservice/SpellCheckerSubtype;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .end local v2    # "_arg1":Z
    .end local v6    # "_result":Landroid/view/textservice/SpellCheckerSubtype;
    :cond_1
    move v2, v0

    goto :goto_1

    .restart local v2    # "_arg1":Z
    .restart local v6    # "_result":Landroid/view/textservice/SpellCheckerSubtype;
    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    .end local v6    # "_result":Landroid/view/textservice/SpellCheckerSubtype;
    :sswitch_3
    const-string v0, "com.android.internal.textservice.ITextServicesManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/textservice/ITextServicesSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/textservice/ITextServicesSessionListener;

    move-result-object v3

    .local v3, "_arg2":Lcom/android/internal/textservice/ITextServicesSessionListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/textservice/ISpellCheckerSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    move-result-object v4

    .local v4, "_arg3":Lcom/android/internal/textservice/ISpellCheckerSessionListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .local v5, "_arg4":Landroid/os/Bundle;
    :goto_2
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/textservice/ITextServicesManager$Stub;->getSpellCheckerService(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/textservice/ITextServicesSessionListener;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;)V

    goto :goto_0

    .end local v5    # "_arg4":Landroid/os/Bundle;
    :cond_3
    const/4 v5, 0x0

    .restart local v5    # "_arg4":Landroid/os/Bundle;
    goto :goto_2

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Lcom/android/internal/textservice/ITextServicesSessionListener;
    .end local v4    # "_arg3":Lcom/android/internal/textservice/ISpellCheckerSessionListener;
    .end local v5    # "_arg4":Landroid/os/Bundle;
    :sswitch_4
    const-string v0, "com.android.internal.textservice.ITextServicesManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/textservice/ISpellCheckerSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    move-result-object v1

    .local v1, "_arg0":Lcom/android/internal/textservice/ISpellCheckerSessionListener;
    invoke-virtual {p0, v1}, Lcom/android/internal/textservice/ITextServicesManager$Stub;->finishSpellCheckerService(Lcom/android/internal/textservice/ISpellCheckerSessionListener;)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Lcom/android/internal/textservice/ISpellCheckerSessionListener;
    :sswitch_5
    const-string v0, "com.android.internal.textservice.ITextServicesManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/textservice/ITextServicesManager$Stub;->setCurrentSpellChecker(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_6
    const-string v0, "com.android.internal.textservice.ITextServicesManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/textservice/ITextServicesManager$Stub;->setCurrentSpellCheckerSubtype(Ljava/lang/String;I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :sswitch_7
    const-string v8, "com.android.internal.textservice.ITextServicesManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_4

    move v1, v7

    .local v1, "_arg0":Z
    :goto_3
    invoke-virtual {p0, v1}, Lcom/android/internal/textservice/ITextServicesManager$Stub;->setSpellCheckerEnabled(Z)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    :cond_4
    move v1, v0

    goto :goto_3

    :sswitch_8
    const-string v8, "com.android.internal.textservice.ITextServicesManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/textservice/ITextServicesManager$Stub;->isSpellCheckerEnabled()Z

    move-result v6

    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_5

    move v0, v7

    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v6    # "_result":Z
    :sswitch_9
    const-string v0, "com.android.internal.textservice.ITextServicesManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/textservice/ITextServicesManager$Stub;->getEnabledSpellCheckers()[Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v6

    .local v6, "_result":[Landroid/view/textservice/SpellCheckerInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6, v7}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .end local v6    # "_result":[Landroid/view/textservice/SpellCheckerInfo;
    :sswitch_a
    const-string v0, "com.android.internal.textservice.ITextServicesManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/textservice/ITextServicesManager$Stub;->switchUserForKnox(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

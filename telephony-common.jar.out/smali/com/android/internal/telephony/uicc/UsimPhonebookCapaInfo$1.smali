.class final Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo$1;
.super Ljava/lang/Object;
.source "UsimPhonebookCapaInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/16 v1, 0x34

    new-array v0, v1, [I

    .local v0, "temp":[I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    new-instance v1, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;-><init>([I)V

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    new-array v0, p1, [Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo$1;->newArray(I)[Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;

    move-result-object v0

    return-object v0
.end method

.class final Lcom/android/internal/telephony/cat/CatEventDownload$1;
.super Ljava/lang/Object;
.source "CatEventDownload.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/CatEventDownload;
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
        "Lcom/android/internal/telephony/cat/CatEventDownload;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/cat/CatEventDownload;
    .locals 5
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "eventType":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .local v2, "language":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "browserTerminationCause":I
    packed-switch v1, :pswitch_data_0

    :pswitch_0
    new-instance v3, Lcom/android/internal/telephony/cat/CatEventDownload;

    const/16 v4, 0xfe

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cat/CatEventDownload;-><init>(I)V

    :goto_0
    return-object v3

    :pswitch_1
    new-instance v3, Lcom/android/internal/telephony/cat/CatEventDownload;

    invoke-direct {v3, v1}, Lcom/android/internal/telephony/cat/CatEventDownload;-><init>(I)V

    goto :goto_0

    :pswitch_2
    new-instance v3, Lcom/android/internal/telephony/cat/CatEventDownload;

    invoke-direct {v3, v1, v2}, Lcom/android/internal/telephony/cat/CatEventDownload;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_3
    new-instance v3, Lcom/android/internal/telephony/cat/CatEventDownload;

    invoke-direct {v3, v1, v0}, Lcom/android/internal/telephony/cat/CatEventDownload;-><init>(II)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cat/CatEventDownload$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/cat/CatEventDownload;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/internal/telephony/cat/CatEventDownload;
    .locals 1
    .param p1, "size"    # I

    .prologue
    new-array v0, p1, [Lcom/android/internal/telephony/cat/CatEventDownload;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cat/CatEventDownload$1;->newArray(I)[Lcom/android/internal/telephony/cat/CatEventDownload;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/android/internal/telephony/cat/TransportLevel;
.super Ljava/lang/Object;
.source "TransportLevel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/cat/TransportLevel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public portNumber:I

.field public transportProtocol:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/android/internal/telephony/cat/TransportLevel$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/TransportLevel$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cat/TransportLevel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte v0, p0, Lcom/android/internal/telephony/cat/TransportLevel;->transportProtocol:B

    iput v0, p0, Lcom/android/internal/telephony/cat/TransportLevel;->portNumber:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte v0, p0, Lcom/android/internal/telephony/cat/TransportLevel;->transportProtocol:B

    iput v0, p0, Lcom/android/internal/telephony/cat/TransportLevel;->portNumber:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cat/TransportLevel;->transportProtocol:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/TransportLevel;->portNumber:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/internal/telephony/cat/TransportLevel$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/android/internal/telephony/cat/TransportLevel$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/TransportLevel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public isLocal()Z
    .locals 2

    .prologue
    iget-byte v0, p0, Lcom/android/internal/telephony/cat/TransportLevel;->transportProtocol:B

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-byte v0, p0, Lcom/android/internal/telephony/cat/TransportLevel;->transportProtocol:B

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRemoteClient()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    iget-byte v1, p0, Lcom/android/internal/telephony/cat/TransportLevel;->transportProtocol:B

    if-eq v1, v0, :cond_0

    iget-byte v1, p0, Lcom/android/internal/telephony/cat/TransportLevel;->transportProtocol:B

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isServer()Z
    .locals 2

    .prologue
    iget-byte v0, p0, Lcom/android/internal/telephony/cat/TransportLevel;->transportProtocol:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTCPRemoteClient()Z
    .locals 2

    .prologue
    iget-byte v0, p0, Lcom/android/internal/telephony/cat/TransportLevel;->transportProtocol:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUDPRemoteClient()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    iget-byte v1, p0, Lcom/android/internal/telephony/cat/TransportLevel;->transportProtocol:B

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget-byte v0, p0, Lcom/android/internal/telephony/cat/TransportLevel;->transportProtocol:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v0, p0, Lcom/android/internal/telephony/cat/TransportLevel;->portNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

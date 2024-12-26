.class public final Landroid/telephony/LmsTokenCTC;
.super Ljava/lang/Object;
.source "LmsTokenCTC.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/LmsTokenCTC;",
            ">;"
        }
    .end annotation
.end field

.field public static final LMS_STATUS_COMPLETE:I = 0x0

.field public static final LMS_STATUS_FIRST_DISPLAY_TIMEOUT:I = 0x1

.field public static final LMS_STATUS_MAXIMAL_CONNECTION_TIMEOUT:I = 0x2


# instance fields
.field public final address:Ljava/lang/String;

.field public final format:Ljava/lang/String;

.field public final msgCount:I

.field public final refNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    new-instance v0, Landroid/telephony/LmsTokenCTC$1;

    invoke-direct {v0}, Landroid/telephony/LmsTokenCTC$1;-><init>()V

    sput-object v0, Landroid/telephony/LmsTokenCTC;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/LmsTokenCTC;->address:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/LmsTokenCTC;->refNumber:I

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/LmsTokenCTC;->msgCount:I

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/LmsTokenCTC;->format:Ljava/lang/String;

    .line 45
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/LmsTokenCTC$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/telephony/LmsTokenCTC$1;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Landroid/telephony/LmsTokenCTC;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/telephony/LmsTokenCTC;)V
    .locals 1
    .param p1, "token"    # Landroid/telephony/LmsTokenCTC;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iget-object v0, p1, Landroid/telephony/LmsTokenCTC;->address:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/LmsTokenCTC;->address:Ljava/lang/String;

    .line 35
    iget v0, p1, Landroid/telephony/LmsTokenCTC;->refNumber:I

    iput v0, p0, Landroid/telephony/LmsTokenCTC;->refNumber:I

    .line 36
    iget v0, p1, Landroid/telephony/LmsTokenCTC;->msgCount:I

    iput v0, p0, Landroid/telephony/LmsTokenCTC;->msgCount:I

    .line 37
    iget-object v0, p1, Landroid/telephony/LmsTokenCTC;->format:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/LmsTokenCTC;->format:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "refNumber"    # I
    .param p3, "msgCount"    # I
    .param p4, "format"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Landroid/telephony/LmsTokenCTC;->address:Ljava/lang/String;

    .line 27
    iput p2, p0, Landroid/telephony/LmsTokenCTC;->refNumber:I

    .line 28
    iput p3, p0, Landroid/telephony/LmsTokenCTC;->msgCount:I

    .line 29
    iput-object p4, p0, Landroid/telephony/LmsTokenCTC;->format:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 49
    if-ne p1, p0, :cond_1

    .line 52
    :cond_0
    :goto_0
    return v1

    .line 50
    :cond_1
    instance-of v3, p1, Landroid/telephony/LmsTokenCTC;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 51
    check-cast v0, Landroid/telephony/LmsTokenCTC;

    .line 52
    .local v0, "other":Landroid/telephony/LmsTokenCTC;
    iget v3, p0, Landroid/telephony/LmsTokenCTC;->refNumber:I

    iget v4, v0, Landroid/telephony/LmsTokenCTC;->refNumber:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroid/telephony/LmsTokenCTC;->msgCount:I

    iget v4, v0, Landroid/telephony/LmsTokenCTC;->msgCount:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Landroid/telephony/LmsTokenCTC;->format:Ljava/lang/String;

    iget-object v4, v0, Landroid/telephony/LmsTokenCTC;->format:Ljava/lang/String;

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Landroid/telephony/LmsTokenCTC;->address:Ljava/lang/String;

    iget-object v4, v0, Landroid/telephony/LmsTokenCTC;->address:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 60
    const/16 v0, 0x11

    .line 61
    .local v0, "result":I
    iget-object v1, p0, Landroid/telephony/LmsTokenCTC;->address:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 62
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/telephony/LmsTokenCTC;->refNumber:I

    add-int v0, v1, v2

    .line 63
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/telephony/LmsTokenCTC;->msgCount:I

    add-int v0, v1, v2

    .line 64
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/telephony/LmsTokenCTC;->format:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 65
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 70
    const-string v0, "<address=%s; refNumber=%d, msgCount=%d, format=%s>"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/telephony/LmsTokenCTC;->address:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Landroid/telephony/LmsTokenCTC;->refNumber:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Landroid/telephony/LmsTokenCTC;->msgCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Landroid/telephony/LmsTokenCTC;->format:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 83
    iget-object v0, p0, Landroid/telephony/LmsTokenCTC;->address:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget v0, p0, Landroid/telephony/LmsTokenCTC;->refNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    iget v0, p0, Landroid/telephony/LmsTokenCTC;->msgCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget-object v0, p0, Landroid/telephony/LmsTokenCTC;->format:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    return-void
.end method

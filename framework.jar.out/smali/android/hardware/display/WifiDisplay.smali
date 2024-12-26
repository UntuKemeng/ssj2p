.class public final Landroid/hardware/display/WifiDisplay;
.super Ljava/lang/Object;
.source "WifiDisplay.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/hardware/display/WifiDisplay;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/display/WifiDisplay;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;


# instance fields
.field private final mCanConnect:Z

.field private mDevInfo:I

.field private final mDeviceAddress:Ljava/lang/String;

.field private final mDeviceAlias:Ljava/lang/String;

.field private final mDeviceName:Ljava/lang/String;

.field private final mIsAvailable:Z

.field private mIsEmptySurface:Z

.field private final mIsRemembered:Z

.field private mPrimaryDeviceType:Ljava/lang/String;

.field private mUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/hardware/display/WifiDisplay;

    sput-object v0, Landroid/hardware/display/WifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;

    .line 48
    new-instance v0, Landroid/hardware/display/WifiDisplay$1;

    invoke-direct {v0}, Landroid/hardware/display/WifiDisplay$1;-><init>()V

    sput-object v0, Landroid/hardware/display/WifiDisplay;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 2
    .param p1, "deviceAddress"    # Ljava/lang/String;
    .param p2, "deviceName"    # Ljava/lang/String;
    .param p3, "deviceAlias"    # Ljava/lang/String;
    .param p4, "available"    # Z
    .param p5, "canConnect"    # Z
    .param p6, "remembered"    # Z

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/display/WifiDisplay;->mDevInfo:I

    .line 83
    if-nez p1, :cond_0

    .line 84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "deviceAddress must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_0
    if-nez p2, :cond_1

    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "deviceName must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_1
    iput-object p1, p0, Landroid/hardware/display/WifiDisplay;->mDeviceAddress:Ljava/lang/String;

    .line 91
    iput-object p2, p0, Landroid/hardware/display/WifiDisplay;->mDeviceName:Ljava/lang/String;

    .line 92
    iput-object p3, p0, Landroid/hardware/display/WifiDisplay;->mDeviceAlias:Ljava/lang/String;

    .line 93
    iput-boolean p4, p0, Landroid/hardware/display/WifiDisplay;->mIsAvailable:Z

    .line 94
    iput-boolean p5, p0, Landroid/hardware/display/WifiDisplay;->mCanConnect:Z

    .line 95
    iput-boolean p6, p0, Landroid/hardware/display/WifiDisplay;->mIsRemembered:Z

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)V
    .locals 2
    .param p1, "deviceAddress"    # Ljava/lang/String;
    .param p2, "deviceName"    # Ljava/lang/String;
    .param p3, "deviceAlias"    # Ljava/lang/String;
    .param p4, "available"    # Z
    .param p5, "canConnect"    # Z
    .param p6, "remembered"    # Z
    .param p7, "primaryDeviceType"    # Ljava/lang/String;

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/display/WifiDisplay;->mDevInfo:I

    .line 102
    if-nez p1, :cond_0

    .line 103
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "deviceAddress must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_0
    if-nez p2, :cond_1

    .line 106
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "deviceName must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_1
    iput-object p1, p0, Landroid/hardware/display/WifiDisplay;->mDeviceAddress:Ljava/lang/String;

    .line 110
    iput-object p2, p0, Landroid/hardware/display/WifiDisplay;->mDeviceName:Ljava/lang/String;

    .line 111
    iput-object p3, p0, Landroid/hardware/display/WifiDisplay;->mDeviceAlias:Ljava/lang/String;

    .line 112
    iput-boolean p4, p0, Landroid/hardware/display/WifiDisplay;->mIsAvailable:Z

    .line 113
    iput-boolean p5, p0, Landroid/hardware/display/WifiDisplay;->mCanConnect:Z

    .line 114
    iput-boolean p6, p0, Landroid/hardware/display/WifiDisplay;->mIsRemembered:Z

    .line 116
    iput-object p7, p0, Landroid/hardware/display/WifiDisplay;->mPrimaryDeviceType:Ljava/lang/String;

    .line 117
    return-void
.end method


# virtual methods
.method public canConnect()Z
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Landroid/hardware/display/WifiDisplay;->mCanConnect:Z

    return v0
.end method

.method public compareTo(Landroid/hardware/display/WifiDisplay;)I
    .locals 1
    .param p1, "other"    # Landroid/hardware/display/WifiDisplay;

    .prologue
    .line 365
    const/4 v0, -0x1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 32
    check-cast p1, Landroid/hardware/display/WifiDisplay;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/hardware/display/WifiDisplay;->compareTo(Landroid/hardware/display/WifiDisplay;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 338
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Landroid/hardware/display/WifiDisplay;)Z
    .locals 2
    .param p1, "other"    # Landroid/hardware/display/WifiDisplay;

    .prologue
    .line 293
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/hardware/display/WifiDisplay;->mDeviceAddress:Ljava/lang/String;

    iget-object v1, p1, Landroid/hardware/display/WifiDisplay;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/display/WifiDisplay;->mDeviceName:Ljava/lang/String;

    iget-object v1, p1, Landroid/hardware/display/WifiDisplay;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/display/WifiDisplay;->mDeviceAlias:Ljava/lang/String;

    iget-object v1, p1, Landroid/hardware/display/WifiDisplay;->mDeviceAlias:Ljava/lang/String;

    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 284
    instance-of v0, p1, Landroid/hardware/display/WifiDisplay;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/hardware/display/WifiDisplay;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDeviceAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Landroid/hardware/display/WifiDisplay;->mDeviceAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Landroid/hardware/display/WifiDisplay;->mDeviceAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceInfo()I
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x0

    return v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Landroid/hardware/display/WifiDisplay;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getFriendlyDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Landroid/hardware/display/WifiDisplay;->mDeviceAlias:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/display/WifiDisplay;->mDeviceAlias:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/hardware/display/WifiDisplay;->mDeviceName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPrimaryDeviceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    const-string v0, ""

    return-object v0
.end method

.method public hasSameAddress(Landroid/hardware/display/WifiDisplay;)Z
    .locals 2
    .param p1, "other"    # Landroid/hardware/display/WifiDisplay;

    .prologue
    .line 306
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/hardware/display/WifiDisplay;->mDeviceAddress:Ljava/lang/String;

    iget-object v1, p1, Landroid/hardware/display/WifiDisplay;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Landroid/hardware/display/WifiDisplay;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Landroid/hardware/display/WifiDisplay;->mIsAvailable:Z

    return v0
.end method

.method public isEmptySurface()Z
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x0

    return v0
.end method

.method public isRemembered()Z
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Landroid/hardware/display/WifiDisplay;->mIsRemembered:Z

    return v0
.end method

.method public setDeviceInfo(I)V
    .locals 0
    .param p1, "devInfo"    # I

    .prologue
    .line 229
    return-void
.end method

.method public setEmptySurface(Z)V
    .locals 0
    .param p1, "isEmptySurface"    # Z

    .prologue
    .line 278
    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 255
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/hardware/display/WifiDisplay;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/display/WifiDisplay;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 346
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Landroid/hardware/display/WifiDisplay;->mDeviceAlias:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 347
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", alias "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/display/WifiDisplay;->mDeviceAlias:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 349
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isAvailable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/hardware/display/WifiDisplay;->mIsAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", canConnect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/hardware/display/WifiDisplay;->mCanConnect:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isRemembered "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/hardware/display/WifiDisplay;->mIsRemembered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", primaryDeviceType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/display/WifiDisplay;->mPrimaryDeviceType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", devInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/display/WifiDisplay;->mDevInfo:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/display/WifiDisplay;->mUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isEmptySurface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/hardware/display/WifiDisplay;->mIsEmptySurface:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 352
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 319
    iget-object v0, p0, Landroid/hardware/display/WifiDisplay;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Landroid/hardware/display/WifiDisplay;->mDeviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Landroid/hardware/display/WifiDisplay;->mDeviceAlias:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 322
    iget-boolean v0, p0, Landroid/hardware/display/WifiDisplay;->mIsAvailable:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 323
    iget-boolean v0, p0, Landroid/hardware/display/WifiDisplay;->mCanConnect:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 324
    iget-boolean v0, p0, Landroid/hardware/display/WifiDisplay;->mIsRemembered:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 333
    return-void

    :cond_0
    move v0, v2

    .line 322
    goto :goto_0

    :cond_1
    move v0, v2

    .line 323
    goto :goto_1

    :cond_2
    move v1, v2

    .line 324
    goto :goto_2
.end method

.class public abstract Landroid/sec/clipboard/data/ClipboardData;
.super Ljava/lang/Object;
.source "ClipboardData.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/sec/clipboard/data/ClipboardData;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ClipboardData"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final LOG_LEN:I

.field protected mCallerUid:J

.field protected mClipdata:Landroid/content/ClipData;

.field protected mFormatID:I

.field protected mIsProtected:Z

.field private transient mParcelFd:Landroid/os/ParcelFileDescriptor;

.field private transient mStateToSave:Z

.field private mTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 271
    new-instance v0, Landroid/sec/clipboard/data/ClipboardData$1;

    invoke-direct {v0}, Landroid/sec/clipboard/data/ClipboardData$1;-><init>()V

    sput-object v0, Landroid/sec/clipboard/data/ClipboardData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4
    .param p1, "format"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/16 v0, 0x14

    iput v0, p0, Landroid/sec/clipboard/data/ClipboardData;->LOG_LEN:I

    .line 46
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/sec/clipboard/data/ClipboardData;->mCallerUid:J

    .line 48
    iput-boolean v2, p0, Landroid/sec/clipboard/data/ClipboardData;->mIsProtected:Z

    .line 52
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/sec/clipboard/data/ClipboardData;->mTimestamp:J

    .line 58
    iput-boolean v2, p0, Landroid/sec/clipboard/data/ClipboardData;->mStateToSave:Z

    .line 59
    iput-object v3, p0, Landroid/sec/clipboard/data/ClipboardData;->mParcelFd:Landroid/os/ParcelFileDescriptor;

    .line 67
    iput-boolean v2, p0, Landroid/sec/clipboard/data/ClipboardData;->mStateToSave:Z

    .line 69
    iput p1, p0, Landroid/sec/clipboard/data/ClipboardData;->mFormatID:I

    .line 70
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Landroid/sec/clipboard/data/ClipboardData;->mCallerUid:J

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/sec/clipboard/data/ClipboardData;->mTimestamp:J

    .line 72
    iput-object v3, p0, Landroid/sec/clipboard/data/ClipboardData;->mParcelFd:Landroid/os/ParcelFileDescriptor;

    .line 73
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/OptionalDataException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 106
    iget-wide v0, p0, Landroid/sec/clipboard/data/ClipboardData;->mTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/clipboard/data/ClipboardData;->mStateToSave:Z

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide v2, 0x9a7ec800L

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/sec/clipboard/data/ClipboardData;->mTimestamp:J

    .line 110
    :cond_0
    return-void
.end method


# virtual methods
.method public GetAlternateFormat(I)Landroid/sec/clipboard/data/ClipboardData;
    .locals 4
    .param p1, "format"    # I

    .prologue
    .line 167
    invoke-static {p1}, Landroid/sec/clipboard/data/ClipboardDataFactory;->CreateClipBoardData(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    .line 169
    .local v0, "Result":Landroid/sec/clipboard/data/ClipboardData;
    if-eqz v0, :cond_1

    .line 170
    invoke-virtual {p0, p1, v0}, Landroid/sec/clipboard/data/ClipboardData;->SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 171
    const/4 v0, 0x0

    .line 179
    :cond_0
    :goto_0
    return-object v0

    .line 174
    :cond_1
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 175
    const-string v1, "ClipboardData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClipBoardDataFactory.CreateClipBoardData(format) -> result == null, format == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public GetFomat()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Landroid/sec/clipboard/data/ClipboardData;->mFormatID:I

    return v0
.end method

.method public GetProtectState()Z
    .locals 1

    .prologue
    .line 317
    iget-boolean v0, p0, Landroid/sec/clipboard/data/ClipboardData;->mIsProtected:Z

    return v0
.end method

.method public IsAlternateformatAvailable(I)Z
    .locals 4
    .param p1, "format"    # I

    .prologue
    const/4 v2, 0x1

    .line 190
    const/4 v1, 0x0

    .line 191
    .local v1, "isformat":Z
    if-eq p1, v2, :cond_0

    iget v3, p0, Landroid/sec/clipboard/data/ClipboardData;->mFormatID:I

    if-ne v3, p1, :cond_1

    .line 198
    :cond_0
    :goto_0
    return v2

    .line 195
    :cond_1
    invoke-static {p1}, Landroid/sec/clipboard/data/ClipboardDataFactory;->CreateClipBoardData(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    .line 196
    .local v0, "altData":Landroid/sec/clipboard/data/ClipboardData;
    invoke-virtual {p0, p1, v0}, Landroid/sec/clipboard/data/ClipboardData;->SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v1

    move v2, v1

    .line 198
    goto :goto_0
.end method

.method public SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .locals 2
    .param p1, "format"    # I
    .param p2, "altData"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 210
    if-eqz p2, :cond_0

    .line 211
    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardData;->mParcelFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p2, v0}, Landroid/sec/clipboard/data/ClipboardData;->setParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V

    .line 212
    iget-wide v0, p0, Landroid/sec/clipboard/data/ClipboardData;->mTimestamp:J

    invoke-virtual {p2, v0, v1}, Landroid/sec/clipboard/data/ClipboardData;->setTimestamp(J)V

    .line 213
    iget-wide v0, p0, Landroid/sec/clipboard/data/ClipboardData;->mCallerUid:J

    invoke-virtual {p2, v0, v1}, Landroid/sec/clipboard/data/ClipboardData;->setCallerUid(J)V

    .line 214
    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardData;->mClipdata:Landroid/content/ClipData;

    invoke-virtual {p2, v0}, Landroid/sec/clipboard/data/ClipboardData;->setClipdata(Landroid/content/ClipData;)V

    .line 215
    const/4 v0, 0x1

    .line 217
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public SetProtectState(Z)V
    .locals 0
    .param p1, "isProtect"    # Z

    .prologue
    .line 307
    iput-boolean p1, p0, Landroid/sec/clipboard/data/ClipboardData;->mIsProtected:Z

    .line 308
    return-void
.end method

.method public abstract clearData()V
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 243
    const/4 v0, 0x0

    .line 245
    .local v0, "Result":Z
    if-eqz p1, :cond_0

    .line 246
    instance-of v2, p1, Landroid/sec/clipboard/data/ClipboardData;

    if-eqz v2, :cond_2

    move-object v1, p1

    .line 247
    check-cast v1, Landroid/sec/clipboard/data/ClipboardData;

    .line 248
    .local v1, "trgData":Landroid/sec/clipboard/data/ClipboardData;
    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardData;->getFormat()I

    move-result v2

    invoke-virtual {p0}, Landroid/sec/clipboard/data/ClipboardData;->getFormat()I

    move-result v3

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    .line 253
    .end local v1    # "trgData":Landroid/sec/clipboard/data/ClipboardData;
    :cond_0
    :goto_0
    return v0

    .line 248
    .restart local v1    # "trgData":Landroid/sec/clipboard/data/ClipboardData;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 250
    .end local v1    # "trgData":Landroid/sec/clipboard/data/ClipboardData;
    :cond_2
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getCallerUid()J
    .locals 2

    .prologue
    .line 147
    iget-wide v0, p0, Landroid/sec/clipboard/data/ClipboardData;->mCallerUid:J

    return-wide v0
.end method

.method public getClipData()Landroid/content/ClipData;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardData;->mClipdata:Landroid/content/ClipData;

    return-object v0
.end method

.method public getFormat()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Landroid/sec/clipboard/data/ClipboardData;->mFormatID:I

    return v0
.end method

.method public getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardData;->mParcelFd:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public getStateToSave()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Landroid/sec/clipboard/data/ClipboardData;->mStateToSave:Z

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 96
    iget-wide v0, p0, Landroid/sec/clipboard/data/ClipboardData;->mTimestamp:J

    return-wide v0
.end method

.method public abstract isValidData()Z
.end method

.method protected abstract readFormSource(Landroid/os/Parcel;)V
.end method

.method protected abstract readFromSource(Landroid/os/Parcel;)V
.end method

.method public setCallerUid(J)V
    .locals 1
    .param p1, "callerUid"    # J

    .prologue
    .line 156
    iput-wide p1, p0, Landroid/sec/clipboard/data/ClipboardData;->mCallerUid:J

    .line 157
    return-void
.end method

.method public setClipdata(Landroid/content/ClipData;)V
    .locals 0
    .param p1, "data"    # Landroid/content/ClipData;

    .prologue
    .line 334
    iput-object p1, p0, Landroid/sec/clipboard/data/ClipboardData;->mClipdata:Landroid/content/ClipData;

    .line 335
    return-void
.end method

.method public setParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V
    .locals 0
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 114
    iput-object p1, p0, Landroid/sec/clipboard/data/ClipboardData;->mParcelFd:Landroid/os/ParcelFileDescriptor;

    .line 115
    return-void
.end method

.method public setStateToSave(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Landroid/sec/clipboard/data/ClipboardData;->mStateToSave:Z

    .line 87
    return-void
.end method

.method public setTimestamp(J)V
    .locals 1
    .param p1, "timestamp"    # J

    .prologue
    .line 101
    iput-wide p1, p0, Landroid/sec/clipboard/data/ClipboardData;->mTimestamp:J

    .line 102
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 231
    iget v0, p0, Landroid/sec/clipboard/data/ClipboardData;->mFormatID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    iget-wide v0, p0, Landroid/sec/clipboard/data/ClipboardData;->mTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 233
    iget-wide v0, p0, Landroid/sec/clipboard/data/ClipboardData;->mCallerUid:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 234
    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardData;->mParcelFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 235
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardData;->mParcelFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 240
    :goto_0
    return-void

    .line 238
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
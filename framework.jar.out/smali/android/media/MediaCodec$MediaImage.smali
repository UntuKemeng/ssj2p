.class public Landroid/media/MediaCodec$MediaImage;
.super Landroid/media/Image;
.source "MediaCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaImage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaCodec$MediaImage$MediaPlane;
    }
.end annotation


# static fields
.field private static final TYPE_YUV:I = 0x1


# instance fields
.field private final mBuffer:Ljava/nio/ByteBuffer;

.field private final mFormat:I

.field private final mHeight:I

.field private final mInfo:Ljava/nio/ByteBuffer;

.field private final mIsReadOnly:Z

.field private final mPlanes:[Landroid/media/Image$Plane;

.field private mTimestamp:J

.field private final mWidth:I

.field private final mXOffset:I

.field private final mYOffset:I


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;ZJIILandroid/graphics/Rect;)V
    .locals 18
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "info"    # Ljava/nio/ByteBuffer;
    .param p3, "readOnly"    # Z
    .param p4, "timestamp"    # J
    .param p6, "xOffset"    # I
    .param p7, "yOffset"    # I
    .param p8, "cropRect"    # Landroid/graphics/Rect;

    .prologue
    invoke-direct/range {p0 .. p0}, Landroid/media/Image;-><init>()V

    const/16 v13, 0x23

    move-object/from16 v0, p0

    iput v13, v0, Landroid/media/MediaCodec$MediaImage;->mFormat:I

    move-wide/from16 v0, p4

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaCodec$MediaImage;->mTimestamp:J

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/media/MediaCodec$MediaImage;->mIsImageValid:Z

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/media/MediaCodec$MediaImage;->mIsReadOnly:Z

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/media/MediaCodec$MediaImage;->mBuffer:Ljava/nio/ByteBuffer;

    move/from16 v0, p6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaCodec$MediaImage;->mXOffset:I

    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaCodec$MediaImage;->mYOffset:I

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaCodec$MediaImage;->mInfo:Ljava/nio/ByteBuffer;

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v13

    const/16 v14, 0x50

    if-eq v13, v14, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v13

    const/16 v14, 0x9c

    if-eq v13, v14, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v13

    const/16 v14, 0xa0

    if-ne v13, v14, :cond_b

    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v13

    const/16 v14, 0x50

    if-eq v13, v14, :cond_1

    const/4 v10, 0x1

    .local v10, "sizeIsLong":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v13

    const/16 v14, 0xa0

    if-ne v13, v14, :cond_2

    const/4 v13, 0x1

    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v13}, Landroid/media/MediaCodec$MediaImage;->readInt(Ljava/nio/ByteBuffer;Z)I

    move-result v11

    .local v11, "type":I
    const/4 v13, 0x1

    if-eq v11, v13, :cond_3

    new-instance v13, Ljava/lang/UnsupportedOperationException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "unsupported type: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v13

    .end local v10    # "sizeIsLong":Z
    .end local v11    # "type":I
    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .restart local v10    # "sizeIsLong":Z
    :cond_2
    const/4 v13, 0x0

    goto :goto_1

    .restart local v11    # "type":I
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v10}, Landroid/media/MediaCodec$MediaImage;->readInt(Ljava/nio/ByteBuffer;Z)I

    move-result v7

    .local v7, "numPlanes":I
    const/4 v13, 0x3

    if-eq v7, v13, :cond_4

    new-instance v13, Ljava/lang/RuntimeException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "unexpected number of planes: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v10}, Landroid/media/MediaCodec$MediaImage;->readInt(Ljava/nio/ByteBuffer;Z)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/media/MediaCodec$MediaImage;->mWidth:I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v10}, Landroid/media/MediaCodec$MediaImage;->readInt(Ljava/nio/ByteBuffer;Z)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/media/MediaCodec$MediaImage;->mHeight:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/media/MediaCodec$MediaImage;->mWidth:I

    const/4 v14, 0x1

    if-lt v13, v14, :cond_5

    move-object/from16 v0, p0

    iget v13, v0, Landroid/media/MediaCodec$MediaImage;->mHeight:I

    const/4 v14, 0x1

    if-ge v13, v14, :cond_6

    :cond_5
    new-instance v13, Ljava/lang/UnsupportedOperationException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "unsupported size: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/media/MediaCodec$MediaImage;->mWidth:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "x"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/media/MediaCodec$MediaImage;->mHeight:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v10}, Landroid/media/MediaCodec$MediaImage;->readInt(Ljava/nio/ByteBuffer;Z)I

    move-result v3

    .local v3, "bitDepth":I
    const/16 v13, 0x8

    if-eq v3, v13, :cond_7

    new-instance v13, Ljava/lang/UnsupportedOperationException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "unsupported bit depth: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_7
    new-array v13, v7, [Landroid/media/MediaCodec$MediaImage$MediaPlane;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/media/MediaCodec$MediaImage;->mPlanes:[Landroid/media/Image$Plane;

    const/4 v6, 0x0

    .local v6, "ix":I
    :goto_2
    if-ge v6, v7, :cond_c

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v10}, Landroid/media/MediaCodec$MediaImage;->readInt(Ljava/nio/ByteBuffer;Z)I

    move-result v8

    .local v8, "planeOffset":I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v10}, Landroid/media/MediaCodec$MediaImage;->readInt(Ljava/nio/ByteBuffer;Z)I

    move-result v4

    .local v4, "colInc":I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v10}, Landroid/media/MediaCodec$MediaImage;->readInt(Ljava/nio/ByteBuffer;Z)I

    move-result v9

    .local v9, "rowInc":I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v10}, Landroid/media/MediaCodec$MediaImage;->readInt(Ljava/nio/ByteBuffer;Z)I

    move-result v5

    .local v5, "horiz":I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v10}, Landroid/media/MediaCodec$MediaImage;->readInt(Ljava/nio/ByteBuffer;Z)I

    move-result v12

    .local v12, "vert":I
    if-ne v5, v12, :cond_8

    if-nez v6, :cond_9

    const/4 v13, 0x1

    :goto_3
    if-eq v5, v13, :cond_a

    :cond_8
    new-instance v13, Ljava/lang/UnsupportedOperationException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "unexpected subsampling: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "x"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " on plane "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_9
    const/4 v13, 0x2

    goto :goto_3

    :cond_a
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaCodec$MediaImage;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->position()I

    move-result v13

    add-int/2addr v13, v8

    div-int v14, p6, v5

    mul-int/2addr v14, v4

    add-int/2addr v13, v14

    div-int v14, p7, v12

    mul-int/2addr v14, v9

    add-int/2addr v13, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v13

    const/16 v14, 0x8

    invoke-static {v3, v14}, Landroid/media/Utils;->divUp(II)I

    move-result v14

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Landroid/media/MediaCodec$MediaImage;->mHeight:I

    div-int/2addr v14, v12

    add-int/lit8 v14, v14, -0x1

    mul-int/2addr v14, v9

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Landroid/media/MediaCodec$MediaImage;->mWidth:I

    div-int/2addr v14, v5

    add-int/lit8 v14, v14, -0x1

    mul-int/2addr v14, v4

    add-int/2addr v13, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaCodec$MediaImage;->mPlanes:[Landroid/media/Image$Plane;

    new-instance v14, Landroid/media/MediaCodec$MediaImage$MediaPlane;

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v15, v9, v4}, Landroid/media/MediaCodec$MediaImage$MediaPlane;-><init>(Landroid/media/MediaCodec$MediaImage;Ljava/nio/ByteBuffer;II)V

    aput-object v14, v13, v6

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .end local v3    # "bitDepth":I
    .end local v4    # "colInc":I
    .end local v5    # "horiz":I
    .end local v6    # "ix":I
    .end local v7    # "numPlanes":I
    .end local v8    # "planeOffset":I
    .end local v9    # "rowInc":I
    .end local v10    # "sizeIsLong":Z
    .end local v11    # "type":I
    .end local v12    # "vert":I
    :cond_b
    new-instance v13, Ljava/lang/UnsupportedOperationException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "unsupported info length: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v13

    .restart local v3    # "bitDepth":I
    .restart local v6    # "ix":I
    .restart local v7    # "numPlanes":I
    .restart local v10    # "sizeIsLong":Z
    .restart local v11    # "type":I
    :cond_c
    if-nez p8, :cond_d

    new-instance p8, Landroid/graphics/Rect;

    .end local p8    # "cropRect":Landroid/graphics/Rect;
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Landroid/media/MediaCodec$MediaImage;->mWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaCodec$MediaImage;->mHeight:I

    move/from16 v16, v0

    move-object/from16 v0, p8

    move/from16 v1, v16

    invoke-direct {v0, v13, v14, v15, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local p8    # "cropRect":Landroid/graphics/Rect;
    :cond_d
    move/from16 v0, p6

    neg-int v13, v0

    move/from16 v0, p7

    neg-int v14, v0

    move-object/from16 v0, p8

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    move-object/from16 v0, p0

    move-object/from16 v1, p8

    invoke-super {v0, v1}, Landroid/media/Image;->setCropRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method private readInt(Ljava/nio/ByteBuffer;Z)I
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "asLong"    # Z

    .prologue
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    long-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/media/MediaCodec$MediaImage;->mIsImageValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/MediaCodec$MediaImage;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/MediaCodec$MediaImage;->mIsImageValid:Z

    :cond_0
    return-void
.end method

.method public getFormat()I
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/media/MediaCodec$MediaImage;->throwISEIfImageIsInvalid()V

    iget v0, p0, Landroid/media/MediaCodec$MediaImage;->mFormat:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/media/MediaCodec$MediaImage;->throwISEIfImageIsInvalid()V

    iget v0, p0, Landroid/media/MediaCodec$MediaImage;->mHeight:I

    return v0
.end method

.method public getPlanes()[Landroid/media/Image$Plane;
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroid/media/MediaCodec$MediaImage;->throwISEIfImageIsInvalid()V

    iget-object v0, p0, Landroid/media/MediaCodec$MediaImage;->mPlanes:[Landroid/media/Image$Plane;

    iget-object v1, p0, Landroid/media/MediaCodec$MediaImage;->mPlanes:[Landroid/media/Image$Plane;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/Image$Plane;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroid/media/MediaCodec$MediaImage;->throwISEIfImageIsInvalid()V

    iget-wide v0, p0, Landroid/media/MediaCodec$MediaImage;->mTimestamp:J

    return-wide v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/media/MediaCodec$MediaImage;->throwISEIfImageIsInvalid()V

    iget v0, p0, Landroid/media/MediaCodec$MediaImage;->mWidth:I

    return v0
.end method

.method public setCropRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "cropRect"    # Landroid/graphics/Rect;

    .prologue
    iget-boolean v0, p0, Landroid/media/MediaCodec$MediaImage;->mIsReadOnly:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    :cond_0
    invoke-super {p0, p1}, Landroid/media/Image;->setCropRect(Landroid/graphics/Rect;)V

    return-void
.end method

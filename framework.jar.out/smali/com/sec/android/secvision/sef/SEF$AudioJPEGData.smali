.class public Lcom/sec/android/secvision/sef/SEF$AudioJPEGData;
.super Ljava/lang/Object;
.source "SEF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/secvision/sef/SEF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AudioJPEGData"
.end annotation


# instance fields
.field public audio_count:I

.field public endOffset:Ljava/util/ArrayList;

.field public filename:Ljava/lang/String;

.field public startOffset:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2297
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/secvision/sef/SEF$AudioJPEGData;->startOffset:Ljava/util/ArrayList;

    .line 2298
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/secvision/sef/SEF$AudioJPEGData;->endOffset:Ljava/util/ArrayList;

    .line 2299
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/secvision/sef/SEF$AudioJPEGData;->audio_count:I

    .line 2300
    invoke-direct {p0}, Lcom/sec/android/secvision/sef/SEF$AudioJPEGData;->resetAudioJpegData()V

    .line 2301
    return-void
.end method

.method private resetAudioJpegData()V
    .locals 1

    .prologue
    .line 2236
    iget-object v0, p0, Lcom/sec/android/secvision/sef/SEF$AudioJPEGData;->startOffset:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2237
    iget-object v0, p0, Lcom/sec/android/secvision/sef/SEF$AudioJPEGData;->endOffset:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2238
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/secvision/sef/SEF$AudioJPEGData;->audio_count:I

    .line 2239
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/secvision/sef/SEF$AudioJPEGData;->filename:Ljava/lang/String;

    .line 2240
    return-void
.end method


# virtual methods
.method public getAudioListSize()I
    .locals 1

    .prologue
    .line 2255
    iget v0, p0, Lcom/sec/android/secvision/sef/SEF$AudioJPEGData;->audio_count:I

    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2247
    iget-object v0, p0, Lcom/sec/android/secvision/sef/SEF$AudioJPEGData;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getLength(I)I
    .locals 2
    .param p1, "idx"    # I

    .prologue
    const/4 v0, 0x0

    .line 2279
    if-gez p1, :cond_1

    .line 2284
    :cond_0
    :goto_0
    return v0

    .line 2281
    :cond_1
    iget-object v1, p0, Lcom/sec/android/secvision/sef/SEF$AudioJPEGData;->endOffset:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt p1, v1, :cond_0

    .line 2284
    iget-object v0, p0, Lcom/sec/android/secvision/sef/SEF$AudioJPEGData;->endOffset:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, p0, Lcom/sec/android/secvision/sef/SEF$AudioJPEGData;->startOffset:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v1, v0

    goto :goto_0
.end method

.method public getStartOffset(I)I
    .locals 2
    .param p1, "idx"    # I

    .prologue
    const/4 v0, 0x0

    .line 2264
    if-gez p1, :cond_1

    .line 2269
    :cond_0
    :goto_0
    return v0

    .line 2266
    :cond_1
    iget-object v1, p0, Lcom/sec/android/secvision/sef/SEF$AudioJPEGData;->startOffset:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt p1, v1, :cond_0

    .line 2269
    iget-object v0, p0, Lcom/sec/android/secvision/sef/SEF$AudioJPEGData;->startOffset:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

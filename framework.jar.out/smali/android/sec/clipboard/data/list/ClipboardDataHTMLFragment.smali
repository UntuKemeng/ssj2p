.class public Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;
.super Landroid/sec/clipboard/data/list/ClipboardDataHtml;
.source "ClipboardDataHTMLFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ClipboardDataHTMLFragment"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public mFirstImg:Landroid/graphics/Bitmap;

.field public mFirstImgPath:Ljava/lang/String;

.field public mValue:Ljava/lang/String;

.field public mValuePlainText:Ljava/lang/String;

.field public mValueUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;-><init>()V

    .line 43
    const-string v0, ""

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValue:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValueUrl:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValuePlainText:Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mFirstImg:Landroid/graphics/Bitmap;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mFirstImgPath:Ljava/lang/String;

    .line 58
    return-void
.end method


# virtual methods
.method public GetFirstImgPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    invoke-super {p0}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->getFirstImgPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetHTMLFragment()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 140
    invoke-super {p0}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->getHtml()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetHTMLUrl()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValueUrl:Ljava/lang/String;

    return-object v0
.end method

.method public SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .locals 1
    .param p1, "format"    # I
    .param p2, "altData"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 70
    invoke-super {p0, p1, p2}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v0

    return v0
.end method

.method public SetFirstImgPath(Ljava/lang/String;)Z
    .locals 1
    .param p1, "FilePath"    # Ljava/lang/String;

    .prologue
    .line 280
    invoke-super {p0, p1}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->setFirstImgPath(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public SetHTMLFragment(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->setHtml(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public SetHTMLFragment(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "HtmlUrl"    # Ljava/lang/CharSequence;

    .prologue
    .line 124
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValuePlainText:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->SetHTMLFragmentInternal(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    const/4 v0, 0x0

    .line 131
    :goto_0
    return v0

    .line 128
    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 129
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValueUrl:Ljava/lang/String;

    .line 131
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public SetHTMLFragmentInternal(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "html"    # Ljava/lang/CharSequence;

    .prologue
    .line 95
    invoke-super {p0, p1, p2}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->setHtmlInternal(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public SetHTMLFragmentWithImagePath(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "filePath"    # Ljava/lang/CharSequence;

    .prologue
    .line 113
    invoke-super {p0, p1, p2}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->setHtmlWithImagePath(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public SetHTMLFragmentWithImagePathInternal(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "html"    # Ljava/lang/CharSequence;
    .param p3, "filePath"    # Ljava/lang/CharSequence;

    .prologue
    .line 102
    invoke-super {p0, p1, p2, p3}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->setHtmlWithImagePathInternal(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public clearData()V
    .locals 0

    .prologue
    .line 78
    invoke-super {p0}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->clearData()V

    .line 79
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 239
    invoke-super {p0, p1}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getClipHtmlImageFilePath()Ljava/lang/String;
    .locals 6

    .prologue
    .line 170
    const-string v1, ""

    .line 172
    .local v1, "sFileName":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValue:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_1

    .line 173
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 174
    const-string v3, "ClipboardDataHTMLFragment"

    const-string v4, "getClipHtmlImageFilePath : Data is empty."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v2, v1

    .line 189
    .end local v1    # "sFileName":Ljava/lang/String;
    .local v2, "sFileName":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 178
    .end local v2    # "sFileName":Ljava/lang/String;
    .restart local v1    # "sFileName":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValue:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/sec/clipboard/util/ClipboardProcText;->getImgFileNameFormHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 181
    if-eqz v1, :cond_2

    .line 182
    invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_2
    :goto_1
    move-object v2, v1

    .line 189
    .end local v1    # "sFileName":Ljava/lang/String;
    .restart local v2    # "sFileName":Ljava/lang/String;
    goto :goto_0

    .line 184
    .end local v2    # "sFileName":Ljava/lang/String;
    .restart local v1    # "sFileName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 186
    const-string v3, "ClipboardDataHTMLFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getHtmlImageFilePath : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getDimensionsFromHTML(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "aInput"    # Ljava/lang/String;

    .prologue
    .line 199
    const-string v2, ""

    .line 201
    .local v2, "lDimen":Ljava/lang/String;
    :try_start_0
    iget-object v7, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValue:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    if-ge v7, v8, :cond_1

    .line 202
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 203
    const-string v7, "ClipboardDataHTMLFragment"

    const-string v8, "getDimensionsFromHTML : Data is empty."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v3, v2

    .line 219
    .end local v2    # "lDimen":Ljava/lang/String;
    .local v3, "lDimen":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 207
    .end local v3    # "lDimen":Ljava/lang/String;
    .restart local v2    # "lDimen":Ljava/lang/String;
    :cond_1
    const-string v0, "<img"

    .line 208
    .local v0, "IMG_BEGIN":Ljava/lang/String;
    iget-object v6, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValue:Ljava/lang/String;

    .line 209
    .local v6, "lImgTag":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 210
    iget-object v7, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValue:Ljava/lang/String;

    const-string v8, "<img"

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 211
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 212
    .local v4, "lDimenIndex":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v4

    const-string v8, "=\""

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 213
    .local v5, "lDimenSub":Ljava/lang/String;
    const/4 v7, 0x0

    const-string v8, "\""

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .end local v0    # "IMG_BEGIN":Ljava/lang/String;
    .end local v4    # "lDimenIndex":I
    .end local v5    # "lDimenSub":Ljava/lang/String;
    .end local v6    # "lImgTag":Ljava/lang/String;
    :cond_2
    :goto_1
    move-object v3, v2

    .line 219
    .end local v2    # "lDimen":Ljava/lang/String;
    .restart local v3    # "lDimen":Ljava/lang/String;
    goto :goto_0

    .line 214
    .end local v3    # "lDimen":Ljava/lang/String;
    .restart local v2    # "lDimen":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 215
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v7, :cond_2

    .line 216
    const-string v7, "ClipboardDataHTMLFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getDimensionsFromHTML Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getFirstImage(II)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    .line 161
    invoke-super {p0, p1, p2}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->getFirstImage(II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    invoke-super {p0}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->getPlainText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected readFormSource(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 296
    return-void
.end method

.method protected readFromSource(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 261
    invoke-super {p0, p1}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->readFromSource(Landroid/os/Parcel;)V

    .line 262
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    invoke-super {p0}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 250
    invoke-super {p0, p1, p2}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->writeToParcel(Landroid/os/Parcel;I)V

    .line 251
    return-void
.end method

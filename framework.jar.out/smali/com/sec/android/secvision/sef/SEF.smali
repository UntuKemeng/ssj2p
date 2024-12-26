.class public Lcom/sec/android/secvision/sef/SEF;
.super Ljava/lang/Object;
.source "SEF.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;,
        Lcom/sec/android/secvision/sef/SEF$AudioJPEGData;,
        Lcom/sec/android/secvision/sef/SEF$Options;,
        Lcom/sec/android/secvision/sef/SEF$KeyName;,
        Lcom/sec/android/secvision/sef/SEF$DataType;,
        Lcom/sec/android/secvision/sef/SEF$SEFSubDataPosition64;,
        Lcom/sec/android/secvision/sef/SEF$SEFSubDataPosition;,
        Lcom/sec/android/secvision/sef/SEF$SEFDataPosition64;,
        Lcom/sec/android/secvision/sef/SEF$SEFDataPosition;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final SEF_VERSION:Ljava/lang/String; = "1.03"

.field private static final TAG:Ljava/lang/String; = "SEF"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 641
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 643
    return-void
.end method

.method public static addFastSEFData(Ljava/lang/String;Ljava/lang/String;[BII)I
    .locals 6
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "dataType"    # I
    .param p4, "option"    # I

    .prologue
    .line 1120
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/sec/android/secvision/sef/SEF;->addFastSEFData(Ljava/lang/String;Ljava/lang/String;[B[BII)I

    move-result v0

    return v0
.end method

.method public static addFastSEFData(Ljava/lang/String;Ljava/lang/String;[B[BII)I
    .locals 9
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "subdataInfo"    # [B
    .param p4, "dataType"    # I
    .param p5, "option"    # I

    .prologue
    const/4 v4, 0x0

    .line 1144
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 1145
    :cond_0
    const-string v0, "SEF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    :goto_0
    return v4

    .line 1149
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_3

    .line 1150
    :cond_2
    const-string v0, "SEF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid key name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1154
    :cond_3
    if-eqz p2, :cond_4

    array-length v0, p2

    if-gtz v0, :cond_5

    .line 1155
    :cond_4
    const-string v0, "SEF"

    const-string v1, "Invalid data"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1159
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez p3, :cond_6

    :goto_1
    array-length v6, p2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, p2

    move v7, p4

    move v8, p5

    invoke-static/range {v0 .. v8}, Lcom/sec/android/secvision/sef/SEFJNI;->addFastSEFData(Ljava/lang/String;Ljava/lang/String;I[BI[BIII)I

    move-result v4

    goto :goto_0

    :cond_6
    array-length v4, p3

    goto :goto_1
.end method

.method public static addFastSEFDataFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
    .locals 6
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "dataFileName"    # Ljava/lang/String;
    .param p3, "dataType"    # I
    .param p4, "option"    # I

    .prologue
    .line 1178
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/sec/android/secvision/sef/SEF;->addFastSEFDataFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BII)I

    move-result v0

    return v0
.end method

.method public static addFastSEFDataFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BII)I
    .locals 8
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "dataFileName"    # Ljava/lang/String;
    .param p3, "subdataInfo"    # [B
    .param p4, "dataType"    # I
    .param p5, "option"    # I

    .prologue
    const/4 v4, 0x0

    .line 1202
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 1203
    :cond_0
    const-string v0, "SEF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    :goto_0
    return v4

    .line 1207
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_3

    .line 1208
    :cond_2
    const-string v0, "SEF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid key name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1212
    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_5

    .line 1213
    :cond_4
    const-string v0, "SEF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid SEF Data File name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1217
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez p3, :cond_6

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, p2

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/sec/android/secvision/sef/SEFJNI;->addFastSEFDataFile(Ljava/lang/String;Ljava/lang/String;I[BILjava/lang/String;II)I

    move-result v4

    goto :goto_0

    :cond_6
    array-length v4, p3

    goto :goto_1
.end method

.method public static addSEFData(Ljava/io/File;Ljava/lang/String;Ljava/io/File;II)I
    .locals 6
    .param p0, "sefFile"    # Ljava/io/File;
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "dataFile"    # Ljava/io/File;
    .param p3, "dataType"    # I
    .param p4, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 933
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/sec/android/secvision/sef/SEF;->addSEFData(Ljava/io/File;Ljava/lang/String;Ljava/io/File;[BII)I

    move-result v0

    return v0
.end method

.method public static addSEFData(Ljava/io/File;Ljava/lang/String;Ljava/io/File;[BII)I
    .locals 9
    .param p0, "sefFile"    # Ljava/io/File;
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "dataFile"    # Ljava/io/File;
    .param p3, "subdataInfo"    # [B
    .param p4, "dataType"    # I
    .param p5, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 949
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 950
    .local v0, "fileName":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    .line 956
    .local v5, "dataFileName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 957
    :cond_0
    const-string v1, "SEF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    :goto_0
    return v8

    .line 961
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_3

    .line 962
    :cond_2
    const-string v1, "SEF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid key name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 966
    :cond_3
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_5

    .line 967
    :cond_4
    const-string v1, "SEF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid SEF Data File name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 971
    :cond_5
    const/16 v1, 0x10

    if-ne p5, v1, :cond_7

    .line 972
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez p3, :cond_6

    move v4, v8

    :goto_1
    move-object v1, p1

    move-object v3, p3

    move v6, p4

    invoke-static/range {v0 .. v7}, Lcom/sec/android/secvision/sef/SEFJNI;->addFastSEFDataFile(Ljava/lang/String;Ljava/lang/String;I[BILjava/lang/String;II)I

    move-result v8

    goto :goto_0

    :cond_6
    array-length v4, p3

    goto :goto_1

    .line 974
    :cond_7
    const/16 v1, 0x100

    if-ne p5, v1, :cond_9

    .line 975
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez p3, :cond_8

    move v4, v8

    :goto_2
    move-object v1, p1

    move-object v3, p3

    move v6, p4

    move v7, v8

    invoke-static/range {v0 .. v7}, Lcom/sec/android/secvision/sef/SEFJNI;->addSEFDataFileToMP4(Ljava/lang/String;Ljava/lang/String;I[BILjava/lang/String;II)I

    move-result v8

    goto :goto_0

    :cond_8
    array-length v4, p3

    goto :goto_2

    .line 977
    :cond_9
    const/16 v1, 0x1000

    if-ne p5, v1, :cond_b

    .line 978
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez p3, :cond_a

    move v4, v8

    :goto_3
    move-object v1, p1

    move-object v3, p3

    move v6, p4

    invoke-static/range {v0 .. v7}, Lcom/sec/android/secvision/sef/SEFJNI;->addSEFDataFileToMP4(Ljava/lang/String;Ljava/lang/String;I[BILjava/lang/String;II)I

    move-result v8

    goto :goto_0

    :cond_a
    array-length v4, p3

    goto :goto_3

    .line 981
    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez p3, :cond_c

    move v4, v8

    :goto_4
    move-object v1, p1

    move-object v3, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/sec/android/secvision/sef/SEFJNI;->addSEFDataFile(Ljava/lang/String;Ljava/lang/String;I[BILjava/lang/String;II)I

    move-result v8

    goto/16 :goto_0

    :cond_c
    array-length v4, p3

    goto :goto_4
.end method

.method public static addSEFData(Ljava/io/File;Ljava/lang/String;[BII)I
    .locals 6
    .param p0, "sefFile"    # Ljava/io/File;
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "dataType"    # I
    .param p4, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 871
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/sec/android/secvision/sef/SEF;->addSEFData(Ljava/io/File;Ljava/lang/String;[B[BII)I

    move-result v0

    return v0
.end method

.method public static addSEFData(Ljava/io/File;Ljava/lang/String;[B[BII)I
    .locals 10
    .param p0, "sefFile"    # Ljava/io/File;
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "subdataInfo"    # [B
    .param p4, "dataType"    # I
    .param p5, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 887
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 893
    .local v0, "fileName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 894
    :cond_0
    const-string v1, "SEF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    :goto_0
    return v9

    .line 897
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_3

    .line 898
    :cond_2
    const-string v1, "SEF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid key name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 901
    :cond_3
    if-eqz p2, :cond_4

    array-length v1, p2

    if-gtz v1, :cond_5

    .line 902
    :cond_4
    const-string v1, "SEF"

    const-string v2, "Invalid data"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 906
    :cond_5
    const/16 v1, 0x10

    if-ne p5, v1, :cond_7

    .line 907
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez p3, :cond_6

    move v4, v9

    :goto_1
    array-length v6, p2

    move-object v1, p1

    move-object v3, p3

    move-object v5, p2

    move v7, p4

    invoke-static/range {v0 .. v8}, Lcom/sec/android/secvision/sef/SEFJNI;->addFastSEFData(Ljava/lang/String;Ljava/lang/String;I[BI[BIII)I

    move-result v9

    goto :goto_0

    :cond_6
    array-length v4, p3

    goto :goto_1

    .line 909
    :cond_7
    const/16 v1, 0x100

    if-ne p5, v1, :cond_9

    .line 910
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez p3, :cond_8

    move v4, v9

    :goto_2
    array-length v6, p2

    move-object v1, p1

    move-object v3, p3

    move-object v5, p2

    move v7, p4

    move v8, v9

    invoke-static/range {v0 .. v8}, Lcom/sec/android/secvision/sef/SEFJNI;->addSEFDataToMP4(Ljava/lang/String;Ljava/lang/String;I[BI[BIII)I

    move-result v9

    goto :goto_0

    :cond_8
    array-length v4, p3

    goto :goto_2

    .line 912
    :cond_9
    const/16 v1, 0x1000

    if-ne p5, v1, :cond_b

    .line 913
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez p3, :cond_a

    move v4, v9

    :goto_3
    array-length v6, p2

    move-object v1, p1

    move-object v3, p3

    move-object v5, p2

    move v7, p4

    invoke-static/range {v0 .. v8}, Lcom/sec/android/secvision/sef/SEFJNI;->addSEFDataToMP4(Ljava/lang/String;Ljava/lang/String;I[BI[BIII)I

    move-result v9

    goto :goto_0

    :cond_a
    array-length v4, p3

    goto :goto_3

    .line 916
    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez p3, :cond_c

    move v4, v9

    :goto_4
    array-length v6, p2

    move-object v1, p1

    move-object v3, p3

    move-object v5, p2

    move v7, p4

    move v8, p5

    invoke-static/range {v0 .. v8}, Lcom/sec/android/secvision/sef/SEFJNI;->addSEFData(Ljava/lang/String;Ljava/lang/String;I[BI[BIII)I

    move-result v9

    goto/16 :goto_0

    :cond_c
    array-length v4, p3

    goto :goto_4
.end method

.method public static addSEFData(Ljava/lang/String;Ljava/lang/String;[BII)I
    .locals 6
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "dataType"    # I
    .param p4, "option"    # I

    .prologue
    .line 1002
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/sec/android/secvision/sef/SEF;->addSEFData(Ljava/lang/String;Ljava/lang/String;[B[BII)I

    move-result v0

    return v0
.end method

.method public static addSEFData(Ljava/lang/String;Ljava/lang/String;[B[BII)I
    .locals 9
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "subdataInfo"    # [B
    .param p4, "dataType"    # I
    .param p5, "option"    # I

    .prologue
    const/4 v4, 0x0

    .line 1025
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 1026
    :cond_0
    const-string v0, "SEF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    :goto_0
    return v4

    .line 1029
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_3

    .line 1030
    :cond_2
    const-string v0, "SEF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid key name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1033
    :cond_3
    if-eqz p2, :cond_4

    array-length v0, p2

    if-gtz v0, :cond_5

    .line 1034
    :cond_4
    const-string v0, "SEF"

    const-string v1, "Invalid data"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1038
    :cond_5
    const/16 v0, 0x10

    if-ne p5, v0, :cond_7

    .line 1039
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez p3, :cond_6

    :goto_1
    array-length v6, p2

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, p2

    move v7, p4

    invoke-static/range {v0 .. v8}, Lcom/sec/android/secvision/sef/SEFJNI;->addFastSEFData(Ljava/lang/String;Ljava/lang/String;I[BI[BIII)I

    move-result v4

    goto :goto_0

    :cond_6
    array-length v4, p3

    goto :goto_1

    .line 1042
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez p3, :cond_8

    :goto_2
    array-length v6, p2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, p2

    move v7, p4

    move v8, p5

    invoke-static/range {v0 .. v8}, Lcom/sec/android/secvision/sef/SEFJNI;->addSEFData(Ljava/lang/String;Ljava/lang/String;I[BI[BIII)I

    move-result v4

    goto :goto_0

    :cond_8
    array-length v4, p3

    goto :goto_2
.end method

.method public static addSEFDataFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
    .locals 6
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "dataFileName"    # Ljava/lang/String;
    .param p3, "dataType"    # I
    .param p4, "option"    # I

    .prologue
    .line 1062
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/sec/android/secvision/sef/SEF;->addSEFDataFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BII)I

    move-result v0

    return v0
.end method

.method public static addSEFDataFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BII)I
    .locals 8
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "dataFileName"    # Ljava/lang/String;
    .param p3, "subdataInfo"    # [B
    .param p4, "dataType"    # I
    .param p5, "option"    # I

    .prologue
    const/4 v4, 0x0

    .line 1086
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 1087
    :cond_0
    const-string v0, "SEF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    :goto_0
    return v4

    .line 1091
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_3

    .line 1092
    :cond_2
    const-string v0, "SEF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid key name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1096
    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_5

    .line 1097
    :cond_4
    const-string v0, "SEF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid SEF Data File name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1101
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez p3, :cond_6

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, p2

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/sec/android/secvision/sef/SEFJNI;->addSEFDataFile(Ljava/lang/String;Ljava/lang/String;I[BILjava/lang/String;II)I

    move-result v4

    goto :goto_0

    :cond_6
    array-length v4, p3

    goto :goto_1
.end method

.method public static addSEFDataFiles(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[II)I
    .locals 8
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyNames"    # [Ljava/lang/String;
    .param p2, "dataFileNames"    # [Ljava/lang/String;
    .param p3, "dataTypes"    # [I
    .param p4, "option"    # I

    .prologue
    .line 1239
    array-length v6, p1

    .line 1240
    .local v6, "dataCount":I
    array-length v0, p2

    if-eq v6, v0, :cond_2

    .line 1241
    const-string v0, "SEF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Data Count is different. ( keyNames data count= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", dataFileNames data count= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v3, p2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " )"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    :cond_0
    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_3

    .line 1247
    :cond_1
    const-string v0, "SEF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid file name: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    const/4 v0, 0x0

    .line 1256
    :goto_1
    return v0

    .line 1242
    :cond_2
    array-length v0, p3

    if-eq v6, v0, :cond_0

    .line 1243
    const-string v0, "SEF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Data Count is different. ( keyNames data count= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", dataTypes data count= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v3, p3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " )"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1251
    :cond_3
    array-length v0, p1

    new-array v2, v0, [I

    .line 1252
    .local v2, "keynamesLength":[I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    array-length v0, p1

    if-ge v7, v0, :cond_4

    .line 1253
    aget-object v0, p1, v7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    aput v0, v2, v7

    .line 1252
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 1256
    invoke-static/range {v0 .. v6}, Lcom/sec/android/secvision/sef/SEFJNI;->addSEFDataFiles(Ljava/lang/String;[Ljava/lang/String;[I[Ljava/lang/String;[III)I

    move-result v0

    goto :goto_1
.end method

.method public static checkAudioInJPEG(Ljava/lang/String;)Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 2563
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 2564
    :cond_0
    const-string v0, "SEF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2565
    const/4 v0, 0x0

    .line 2568
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/sec/android/secvision/sef/QdioJNI;->checkAudioInJPEG(Ljava/lang/String;)Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;

    move-result-object v0

    goto :goto_0
.end method

.method public static clearAudioData(Ljava/lang/String;)I
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 2495
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 2496
    :cond_0
    const-string v0, "SEF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2497
    const/4 v0, 0x0

    .line 2500
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/sec/android/secvision/sef/SEFJNI;->clearQdioData(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static clearFastSEFData(Ljava/lang/String;)I
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 1468
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 1469
    :cond_0
    const-string v0, "SEF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    const/4 v0, 0x0

    .line 1472
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/sec/android/secvision/sef/SEFJNI;->fastClearSEFData(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static clearQdioData(Ljava/lang/String;)I
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 2518
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 2519
    :cond_0
    const-string v0, "SEF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2520
    const/4 v0, 0x0

    .line 2523
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/sec/android/secvision/sef/SEFJNI;->clearQdioData(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static clearSEFData(Ljava/lang/String;)I
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 1448
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 1449
    :cond_0
    const-string v0, "SEF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    const/4 v0, 0x0

    .line 1452
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/sec/android/secvision/sef/SEFJNI;->clearSEFData(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static compact(Ljava/io/File;)Z
    .locals 2
    .param p0, "sefFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1485
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 1490
    .local v0, "fileName":Ljava/lang/String;
    const-string v1, "Invalid_Data"

    invoke-static {p0, v1}, Lcom/sec/android/secvision/sef/SEF;->deleteSEFData(Ljava/io/File;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1491
    const/4 v1, 0x1

    .line 1493
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static copyAdioInJPEGtoPNG(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p0, "srcFileName"    # Ljava/lang/String;
    .param p1, "dstFileName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 2685
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 2686
    :cond_0
    const-string v1, "SEF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid src file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2695
    :goto_0
    return v0

    .line 2690
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_3

    .line 2691
    :cond_2
    const-string v1, "SEF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid dst file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2695
    :cond_3
    invoke-static {p0, p1}, Lcom/sec/android/secvision/sef/QdioJNI;->copyAdioInJPEGtoPNG(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static copyAllSEFData(Ljava/io/File;Ljava/io/File;)I
    .locals 6
    .param p0, "srcFile"    # Ljava/io/File;
    .param p1, "dstFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2166
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 2167
    .local v1, "srcFileName":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 2173
    .local v0, "dstFileName":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_1

    .line 2174
    :cond_0
    const-string v3, "SEF"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid src file name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2183
    :goto_0
    return v2

    .line 2178
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_3

    .line 2179
    :cond_2
    const-string v3, "SEF"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid dst file name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2183
    :cond_3
    invoke-static {v1, v0}, Lcom/sec/android/secvision/sef/SEFJNI;->copyAllSEFData(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public static copyAllSEFData(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p0, "srcFileName"    # Ljava/lang/String;
    .param p1, "dstFileName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 2202
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 2203
    :cond_0
    const-string v1, "SEF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid src file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2212
    :goto_0
    return v0

    .line 2207
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_3

    .line 2208
    :cond_2
    const-string v1, "SEF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid dst file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2212
    :cond_3
    invoke-static {p0, p1}, Lcom/sec/android/secvision/sef/SEFJNI;->copyAllSEFData(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static copyAudioData(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p0, "srcFileName"    # Ljava/lang/String;
    .param p1, "dstFileName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 2656
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 2657
    :cond_0
    const-string v1, "SEF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid src file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2666
    :goto_0
    return v0

    .line 2661
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_3

    .line 2662
    :cond_2
    const-string v1, "SEF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid dst file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2666
    :cond_3
    invoke-static {p0, p1}, Lcom/sec/android/secvision/sef/QdioJNI;->copyAdioInJPEGtoPNG(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static deleteAllSEFData(Ljava/io/File;)Z
    .locals 1
    .param p0, "sefFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1386
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/sec/android/secvision/sef/SEF;->deleteAllSEFData(Ljava/io/File;I)Z

    move-result v0

    return v0
.end method

.method public static deleteAllSEFData(Ljava/io/File;I)Z
    .locals 5
    .param p0, "sefFile"    # Ljava/io/File;
    .param p1, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1398
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 1403
    .local v0, "fileName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_2

    .line 1404
    :cond_0
    const-string v1, "SEF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid file name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 1428
    :cond_1
    :goto_0
    return v1

    .line 1409
    :cond_2
    invoke-static {v0}, Lcom/sec/android/secvision/sef/SEFJNI;->isSEFFile(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v0}, Lcom/sec/android/secvision/sef/QdioJNI;->isJPEG(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_3

    .line 1410
    invoke-static {v0}, Lcom/sec/android/secvision/sef/QdioJNI;->DeleteQdioFromFile(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v1, :cond_1

    move v1, v2

    .line 1413
    goto :goto_0

    .line 1418
    :cond_3
    const/16 v3, 0x10

    if-ne p1, v3, :cond_4

    .line 1419
    invoke-static {v0}, Lcom/sec/android/secvision/sef/SEFJNI;->fastClearSEFData(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v1, :cond_1

    move v1, v2

    .line 1422
    goto :goto_0

    .line 1425
    :cond_4
    invoke-static {v0}, Lcom/sec/android/secvision/sef/SEFJNI;->clearSEFData(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v1, :cond_1

    move v1, v2

    .line 1428
    goto :goto_0
.end method

.method public static deleteAudioData(Ljava/lang/String;)I
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 2448
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 2449
    :cond_0
    const-string v0, "SEF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2450
    const/4 v0, 0x0

    .line 2453
    :goto_0
    return v0

    :cond_1
    const-string v0, "SoundShot_000"

    const-string v1, "SoundShot_000"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/sec/android/secvision/sef/SEFJNI;->deleteQdioData(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static deleteFastSEFData(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1361
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_2

    .line 1362
    :cond_0
    const-string v0, "SEF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1374
    :cond_1
    :goto_0
    return v0

    .line 1366
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_4

    .line 1367
    :cond_3
    const-string v0, "SEF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid key name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1368
    goto :goto_0

    .line 1371
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p0, p1, v2}, Lcom/sec/android/secvision/sef/SEFJNI;->fastDeleteSEFData(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v0, :cond_1

    move v0, v1

    .line 1374
    goto :goto_0
.end method

.method public static deleteQdioData(Ljava/lang/String;)I
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 2472
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 2473
    :cond_0
    const-string v0, "SEF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2474
    const/4 v0, 0x0

    .line 2477
    :goto_0
    return v0

    :cond_1
    const-string v0, "SoundShot_000"

    const-string v1, "SoundShot_000"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/sec/android/secvision/sef/SEFJNI;->deleteQdioData(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static deleteSEFData(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1335
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 1336
    :cond_0
    const-string v1, "SEF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    :goto_0
    return v0

    .line 1340
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_3

    .line 1341
    :cond_2
    const-string v1, "SEF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid key name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1345
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/sec/android/secvision/sef/SEFJNI;->deleteSEFData(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static deleteSEFData(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p0, "sefFile"    # Ljava/io/File;
    .param p1, "keyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1276
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/sec/android/secvision/sef/SEF;->deleteSEFData(Ljava/io/File;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static deleteSEFData(Ljava/io/File;Ljava/lang/String;I)Z
    .locals 5
    .param p0, "sefFile"    # Ljava/io/File;
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1289
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 1294
    .local v0, "fileName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_2

    .line 1295
    :cond_0
    const-string v1, "SEF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid file name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 1314
    :cond_1
    :goto_0
    return v1

    .line 1299
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_4

    .line 1300
    :cond_3
    const-string v1, "SEF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid key name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 1301
    goto :goto_0

    .line 1304
    :cond_4
    const/16 v3, 0x10

    if-ne p2, v3, :cond_5

    .line 1305
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v0, p1, v3}, Lcom/sec/android/secvision/sef/SEFJNI;->fastDeleteSEFData(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v1, :cond_1

    move v1, v2

    .line 1308
    goto :goto_0

    .line 1311
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v0, p1, v3}, Lcom/sec/android/secvision/sef/SEFJNI;->deleteSEFData(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v1, :cond_1

    move v1, v2

    .line 1314
    goto :goto_0
.end method

.method public static getAudioDataInJPEG(Ljava/lang/String;)Lcom/sec/android/secvision/sef/SEF$AudioJPEGData;
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 2541
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 2542
    :cond_0
    const-string v0, "SEF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2543
    const/4 v0, 0x0

    .line 2546
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/sec/android/secvision/sef/QdioJNI;->getAudioDataInJPEG(Ljava/lang/String;)Lcom/sec/android/secvision/sef/SEF$AudioJPEGData;

    move-result-object v0

    goto :goto_0
.end method

.method public static getAudioStreamBuffer(Lcom/sec/android/secvision/sef/SEF$AudioJPEGData;I)[B
    .locals 1
    .param p0, "qdioJpegData"    # Lcom/sec/android/secvision/sef/SEF$AudioJPEGData;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2585
    invoke-static {p0, p1}, Lcom/sec/android/secvision/sef/QdioJNI;->getAudioStreamBuffer(Lcom/sec/android/secvision/sef/SEF$AudioJPEGData;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static getAudioStreamBuffer(Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;I)[B
    .locals 1
    .param p0, "qdioJpegData"    # Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2604
    invoke-static {p0, p1}, Lcom/sec/android/secvision/sef/QdioJNI;->getAudioStreamBuffer(Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static getDataPositionArray(Ljava/io/File;Ljava/lang/String;)[J
    .locals 6
    .param p0, "sefFile"    # Ljava/io/File;
    .param p1, "keyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1639
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 1644
    .local v1, "fileName":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_1

    .line 1645
    :cond_0
    const-string v3, "SEF"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid file name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    :goto_0
    return-object v2

    .line 1649
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_3

    .line 1650
    :cond_2
    const-string v3, "SEF"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid key name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move-object v0, v2

    .line 1654
    check-cast v0, [J

    .line 1657
    .local v0, "PositionData":[J
    invoke-static {v1}, Lcom/sec/android/secvision/sef/SEFJNI;->isSEFFile(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v1}, Lcom/sec/android/secvision/sef/QdioJNI;->isJPEG(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 1658
    invoke-static {v1}, Lcom/sec/android/secvision/sef/QdioJNI;->getAudioDataPositionArray(Ljava/lang/String;)[J

    move-result-object v2

    goto :goto_0

    .line 1662
    :cond_4
    invoke-static {v1, p1}, Lcom/sec/android/secvision/sef/SEFJNI;->getSEFDataPosition64(Ljava/lang/String;Ljava/lang/String;)[J

    move-result-object v0

    .line 1663
    if-nez v0, :cond_5

    .line 1664
    const-string v3, "SEF"

    const-string v4, "No SEF data matching to given keyName is found in file."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    move-object v2, v0

    .line 1668
    goto :goto_0
.end method

.method public static getMajorDataType(Ljava/lang/String;)I
    .locals 6
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 2122
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_2

    .line 2123
    :cond_0
    const-string v3, "SEF"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid file name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2145
    :cond_1
    :goto_0
    return v2

    .line 2127
    :cond_2
    invoke-static {p0}, Lcom/sec/android/secvision/sef/SEFJNI;->isSEFFile(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 2130
    invoke-static {p0}, Lcom/sec/android/secvision/sef/SEF;->listSEFDataTypes(Ljava/lang/String;)[I

    move-result-object v0

    .line 2131
    .local v0, "dataTypes":[I
    if-nez v0, :cond_3

    .line 2132
    const-string v3, "SEF"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No data type has been found : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2136
    :cond_3
    array-length v3, v0

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_1
    if-le v1, v2, :cond_5

    .line 2137
    aget v3, v0, v1

    const/16 v4, 0x800

    if-lt v3, v4, :cond_4

    aget v3, v0, v1

    const/16 v4, 0x4000

    if-gt v3, v4, :cond_4

    aget v3, v0, v1

    and-int/lit8 v3, v3, 0xf

    if-nez v3, :cond_4

    .line 2140
    aget v2, v0, v1

    goto :goto_0

    .line 2136
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 2144
    :cond_5
    const-string v3, "SEF"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No major data type has been found : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getSEFData(Ljava/io/File;Ljava/lang/String;)[B
    .locals 19
    .param p0, "sefFile"    # Ljava/io/File;
    .param p1, "keyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1820
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v6

    .line 1825
    .local v6, "fileName":Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v16

    if-gtz v16, :cond_2

    .line 1826
    :cond_0
    const-string v16, "SEF"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Invalid file name: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1827
    const/4 v11, 0x0

    .line 1887
    :cond_1
    :goto_0
    return-object v11

    .line 1830
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v16

    if-gtz v16, :cond_4

    .line 1831
    :cond_3
    const-string v16, "SEF"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Invalid key name: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1832
    const/4 v11, 0x0

    goto :goto_0

    .line 1835
    :cond_4
    const/4 v11, 0x0

    .line 1836
    .local v11, "sefData":[B
    const/4 v7, 0x0

    .line 1839
    .local v7, "fis":Ljava/io/FileInputStream;
    invoke-static {v6}, Lcom/sec/android/secvision/sef/SEFJNI;->isSEFFile(Ljava/lang/String;)I

    move-result v16

    if-nez v16, :cond_5

    invoke-static {v6}, Lcom/sec/android/secvision/sef/QdioJNI;->isJPEG(Ljava/lang/String;)I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_5

    .line 1840
    invoke-static {v6}, Lcom/sec/android/secvision/sef/QdioJNI;->checkAudioInJPEG(Ljava/lang/String;)Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;

    move-result-object v10

    .line 1842
    .local v10, "qdioJpegData":Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v10, v0}, Lcom/sec/android/secvision/sef/QdioJNI;->getAudioStreamBuffer(Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;I)[B

    move-result-object v11

    .line 1843
    goto :goto_0

    .line 1848
    .end local v10    # "qdioJpegData":Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;
    :cond_5
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1849
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .local v8, "fis":Ljava/io/FileInputStream;
    :try_start_1
    move-object/from16 v0, p1

    invoke-static {v6, v0}, Lcom/sec/android/secvision/sef/SEF;->getSEFDataPosition64(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/secvision/sef/SEF$SEFDataPosition64;

    move-result-object v2

    .line 1850
    .local v2, "dataPosition":Lcom/sec/android/secvision/sef/SEF$SEFDataPosition64;
    if-nez v2, :cond_6

    .line 1851
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1852
    const/4 v11, 0x0

    .line 1881
    .end local v11    # "sefData":[B
    if-eqz v8, :cond_1

    .line 1882
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    .line 1855
    .restart local v11    # "sefData":[B
    :cond_6
    :try_start_2
    iget-wide v14, v2, Lcom/sec/android/secvision/sef/SEF$SEFDataPosition64;->offset:J

    .line 1856
    .local v14, "startOffset":J
    iget-wide v0, v2, Lcom/sec/android/secvision/sef/SEF$SEFDataPosition64;->length:J

    move-wide/from16 v16, v0

    add-long v4, v14, v16

    .line 1862
    .local v4, "endOffset":J
    iget-wide v0, v2, Lcom/sec/android/secvision/sef/SEF$SEFDataPosition64;->length:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    new-array v11, v0, [B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1863
    const-wide/16 v16, 0x0

    cmp-long v16, v14, v16

    if-gez v16, :cond_7

    .line 1864
    const/4 v11, 0x0

    .line 1881
    .end local v11    # "sefData":[B
    if-eqz v8, :cond_1

    .line 1882
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    .line 1866
    .restart local v11    # "sefData":[B
    :cond_7
    :try_start_3
    invoke-virtual {v8, v14, v15}, Ljava/io/FileInputStream;->skip(J)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-wide v12

    .line 1867
    .local v12, "skipCheck":J
    const-wide/16 v16, 0x0

    cmp-long v16, v12, v16

    if-nez v16, :cond_8

    .line 1868
    const/4 v11, 0x0

    .line 1881
    .end local v11    # "sefData":[B
    if-eqz v8, :cond_1

    .line 1882
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    goto/16 :goto_0

    .line 1873
    .restart local v11    # "sefData":[B
    :cond_8
    :try_start_4
    invoke-virtual {v8, v11}, Ljava/io/FileInputStream;->read([B)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v9

    .line 1874
    .local v9, "length":I
    if-nez v9, :cond_9

    .line 1875
    const/4 v11, 0x0

    .line 1881
    .end local v11    # "sefData":[B
    if-eqz v8, :cond_1

    .line 1882
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    goto/16 :goto_0

    .line 1881
    .restart local v11    # "sefData":[B
    :cond_9
    if-eqz v8, :cond_b

    .line 1882
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    move-object v7, v8

    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_0

    .line 1878
    .end local v2    # "dataPosition":Lcom/sec/android/secvision/sef/SEF$SEFDataPosition64;
    .end local v4    # "endOffset":J
    .end local v9    # "length":I
    .end local v12    # "skipCheck":J
    .end local v14    # "startOffset":J
    :catch_0
    move-exception v3

    .line 1879
    .local v3, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1881
    if-eqz v7, :cond_1

    .line 1882
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    goto/16 :goto_0

    .line 1881
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v16

    :goto_2
    if-eqz v7, :cond_a

    .line 1882
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    :cond_a
    throw v16

    .line 1881
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v16

    move-object v7, v8

    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .line 1878
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v3

    move-object v7, v8

    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    goto :goto_1

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "dataPosition":Lcom/sec/android/secvision/sef/SEF$SEFDataPosition64;
    .restart local v4    # "endOffset":J
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "length":I
    .restart local v12    # "skipCheck":J
    .restart local v14    # "startOffset":J
    :cond_b
    move-object v7, v8

    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_0
.end method

.method public static getSEFData(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 17
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1907
    if-eqz p0, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v14

    if-gtz v14, :cond_2

    .line 1908
    :cond_0
    const-string v14, "SEF"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Invalid file name: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1909
    const/4 v9, 0x0

    .line 1959
    :cond_1
    :goto_0
    return-object v9

    .line 1912
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    if-gtz v14, :cond_4

    .line 1913
    :cond_3
    const-string v14, "SEF"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Invalid key name: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1914
    const/4 v9, 0x0

    goto :goto_0

    .line 1917
    :cond_4
    const/4 v9, 0x0

    .line 1918
    .local v9, "sefData":[B
    const/4 v6, 0x0

    .line 1920
    .local v6, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1921
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .local v7, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static/range {p0 .. p1}, Lcom/sec/android/secvision/sef/SEF;->getSEFDataPosition64(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/secvision/sef/SEF$SEFDataPosition64;

    move-result-object v2

    .line 1922
    .local v2, "dataPosition":Lcom/sec/android/secvision/sef/SEF$SEFDataPosition64;
    if-nez v2, :cond_5

    .line 1923
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1924
    const/4 v9, 0x0

    .line 1953
    .end local v9    # "sefData":[B
    if-eqz v7, :cond_1

    .line 1954
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    .line 1927
    .restart local v9    # "sefData":[B
    :cond_5
    :try_start_2
    iget-wide v12, v2, Lcom/sec/android/secvision/sef/SEF$SEFDataPosition64;->offset:J

    .line 1928
    .local v12, "startOffset":J
    iget-wide v14, v2, Lcom/sec/android/secvision/sef/SEF$SEFDataPosition64;->length:J

    add-long v4, v12, v14

    .line 1934
    .local v4, "endOffset":J
    iget-wide v14, v2, Lcom/sec/android/secvision/sef/SEF$SEFDataPosition64;->length:J

    long-to-int v14, v14

    new-array v9, v14, [B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1935
    const-wide/16 v14, 0x0

    cmp-long v14, v12, v14

    if-gez v14, :cond_6

    .line 1936
    const/4 v9, 0x0

    .line 1953
    .end local v9    # "sefData":[B
    if-eqz v7, :cond_1

    .line 1954
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    .line 1938
    .restart local v9    # "sefData":[B
    :cond_6
    :try_start_3
    invoke-virtual {v7, v12, v13}, Ljava/io/FileInputStream;->skip(J)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-wide v10

    .line 1939
    .local v10, "skipCheck":J
    const-wide/16 v14, 0x0

    cmp-long v14, v10, v14

    if-nez v14, :cond_7

    .line 1940
    const/4 v9, 0x0

    .line 1953
    .end local v9    # "sefData":[B
    if-eqz v7, :cond_1

    .line 1954
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    .line 1945
    .restart local v9    # "sefData":[B
    :cond_7
    :try_start_4
    invoke-virtual {v7, v9}, Ljava/io/FileInputStream;->read([B)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v8

    .line 1946
    .local v8, "length":I
    if-nez v8, :cond_8

    .line 1947
    const/4 v9, 0x0

    .line 1953
    .end local v9    # "sefData":[B
    if-eqz v7, :cond_1

    .line 1954
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    .line 1953
    .restart local v9    # "sefData":[B
    :cond_8
    if-eqz v7, :cond_a

    .line 1954
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto :goto_0

    .line 1950
    .end local v2    # "dataPosition":Lcom/sec/android/secvision/sef/SEF$SEFDataPosition64;
    .end local v4    # "endOffset":J
    .end local v8    # "length":I
    .end local v10    # "skipCheck":J
    .end local v12    # "startOffset":J
    :catch_0
    move-exception v3

    .line 1951
    .local v3, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1953
    if-eqz v6, :cond_1

    .line 1954
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    goto/16 :goto_0

    .line 1953
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v14

    :goto_2
    if-eqz v6, :cond_9

    .line 1954
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    :cond_9
    throw v14

    .line 1953
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v14

    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .line 1950
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v3

    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto :goto_1

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "dataPosition":Lcom/sec/android/secvision/sef/SEF$SEFDataPosition64;
    .restart local v4    # "endOffset":J
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "length":I
    .restart local v10    # "skipCheck":J
    .restart local v12    # "startOffset":J
    :cond_a
    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_0
.end method

.method public static getSEFDataCount(Ljava/io/File;)I
    .locals 5
    .param p0, "sefFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1970
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 1971
    .local v0, "fileName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 1972
    :cond_0
    const-string v2, "SEF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid file name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1973
    const/4 v1, -0x1

    .line 1982
    :goto_0
    return v1

    .line 1976
    :cond_1
    invoke-static {v0}, Lcom/sec/android/secvision/sef/SEFJNI;->getSEFDataCount(Ljava/lang/String;)I

    move-result v1

    .line 1982
    .local v1, "ret":I
    goto :goto_0
.end method

.method public static getSEFDataCount(Ljava/lang/String;)I
    .locals 4
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 1996
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 1997
    :cond_0
    const-string v1, "SEF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1998
    const/4 v0, -0x1

    .line 2007
    :goto_0
    return v0

    .line 2001
    :cond_1
    invoke-static {p0}, Lcom/sec/android/secvision/sef/SEFJNI;->getSEFDataCount(Ljava/lang/String;)I

    move-result v0

    .line 2007
    .local v0, "ret":I
    goto :goto_0
.end method

.method public static getSEFDataPosition(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/secvision/sef/SEF$SEFDataPosition;
    .locals 5
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1608
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 1609
    :cond_0
    const-string v2, "SEF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid file name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    :goto_0
    return-object v1

    .line 1613
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_3

    .line 1614
    :cond_2
    const-string v2, "SEF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid key name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1618
    :cond_3
    invoke-static {p0, p1}, Lcom/sec/android/secvision/sef/SEFJNI;->getSEFDataPosition(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    .line 1619
    .local v0, "posArray":[I
    if-nez v0, :cond_4

    .line 1620
    const-string v2, "SEF"

    const-string v3, "No SEF data is found in file."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1624
    :cond_4
    new-instance v1, Lcom/sec/android/secvision/sef/SEF$SEFDataPosition;

    invoke-direct {v1}, Lcom/sec/android/secvision/sef/SEF$SEFDataPosition;-><init>()V

    .line 1625
    .local v1, "position":Lcom/sec/android/secvision/sef/SEF$SEFDataPosition;
    const/4 v2, 0x0

    aget v2, v0, v2

    iput v2, v1, Lcom/sec/android/secvision/sef/SEF$SEFDataPosition;->offset:I

    .line 1626
    const/4 v2, 0x1

    aget v2, v0, v2

    iput v2, v1, Lcom/sec/android/secvision/sef/SEF$SEFDataPosition;->length:I

    goto :goto_0
.end method

.method public static getSEFDataPosition64(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/secvision/sef/SEF$SEFDataPosition64;
    .locals 5
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1716
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 1717
    :cond_0
    const-string v2, "SEF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid file name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1736
    :goto_0
    return-object v1

    .line 1721
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_3

    .line 1722
    :cond_2
    const-string v2, "SEF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid key name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1726
    :cond_3
    invoke-static {p0, p1}, Lcom/sec/android/secvision/sef/SEFJNI;->getSEFDataPosition64(Ljava/lang/String;Ljava/lang/String;)[J

    move-result-object v0

    .line 1727
    .local v0, "posArray":[J
    if-nez v0, :cond_4

    .line 1728
    const-string v2, "SEF"

    const-string v3, "No SEF data is found in file."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1732
    :cond_4
    new-instance v1, Lcom/sec/android/secvision/sef/SEF$SEFDataPosition64;

    invoke-direct {v1}, Lcom/sec/android/secvision/sef/SEF$SEFDataPosition64;-><init>()V

    .line 1733
    .local v1, "position":Lcom/sec/android/secvision/sef/SEF$SEFDataPosition64;
    const/4 v2, 0x0

    aget-wide v2, v0, v2

    iput-wide v2, v1, Lcom/sec/android/secvision/sef/SEF$SEFDataPosition64;->offset:J

    .line 1734
    const/4 v2, 0x1

    aget-wide v2, v0, v2

    iput-wide v2, v1, Lcom/sec/android/secvision/sef/SEF$SEFDataPosition64;->length:J

    goto :goto_0
.end method

.method public static getSEFDataPositionArray(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 5
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1684
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_2

    .line 1685
    :cond_0
    const-string v2, "SEF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid file name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 1700
    :cond_1
    :goto_0
    return-object v0

    .line 1689
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_4

    .line 1690
    :cond_3
    const-string v2, "SEF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid key name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 1691
    goto :goto_0

    .line 1694
    :cond_4
    invoke-static {p0, p1}, Lcom/sec/android/secvision/sef/SEFJNI;->getSEFDataPosition(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    .line 1695
    .local v0, "posArray":[I
    if-nez v0, :cond_1

    .line 1696
    const-string v2, "SEF"

    const-string v3, "No SEF data is found in file."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 1697
    goto :goto_0
.end method

.method public static getSEFDataType(Ljava/io/File;Ljava/lang/String;)I
    .locals 5
    .param p0, "sefFile"    # Ljava/io/File;
    .param p1, "keyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 2019
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 2024
    .local v0, "fileName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 2025
    :cond_0
    const-string v2, "SEF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid file name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2034
    :goto_0
    return v1

    .line 2029
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_3

    .line 2030
    :cond_2
    const-string v2, "SEF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid key name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2034
    :cond_3
    invoke-static {v0, p1}, Lcom/sec/android/secvision/sef/SEFJNI;->getSEFDataType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public static getSEFDataType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyName"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .line 2053
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 2054
    :cond_0
    const-string v1, "SEF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2063
    :goto_0
    return v0

    .line 2058
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_3

    .line 2059
    :cond_2
    const-string v1, "SEF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid key name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2063
    :cond_3
    invoke-static {p0, p1}, Lcom/sec/android/secvision/sef/SEFJNI;->getSEFDataType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static getSEFSubDataPosition(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/secvision/sef/SEF$SEFSubDataPosition;
    .locals 5
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1752
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 1753
    :cond_0
    const-string v2, "SEF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid file name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1772
    :goto_0
    return-object v1

    .line 1757
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_3

    .line 1758
    :cond_2
    const-string v2, "SEF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid key name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1762
    :cond_3
    invoke-static {p0, p1}, Lcom/sec/android/secvision/sef/SEFJNI;->getSEFSubDataPosition(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    .line 1763
    .local v0, "posArray":[I
    if-nez v0, :cond_4

    .line 1764
    const-string v2, "SEF"

    const-string v3, "No SEF sub data is found in file."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1768
    :cond_4
    new-instance v1, Lcom/sec/android/secvision/sef/SEF$SEFSubDataPosition;

    invoke-direct {v1}, Lcom/sec/android/secvision/sef/SEF$SEFSubDataPosition;-><init>()V

    .line 1769
    .local v1, "position":Lcom/sec/android/secvision/sef/SEF$SEFSubDataPosition;
    const/4 v2, 0x0

    aget v2, v0, v2

    iput v2, v1, Lcom/sec/android/secvision/sef/SEF$SEFSubDataPosition;->offset:I

    .line 1770
    const/4 v2, 0x1

    aget v2, v0, v2

    iput v2, v1, Lcom/sec/android/secvision/sef/SEF$SEFSubDataPosition;->length:I

    goto :goto_0
.end method

.method public static getSEFSubDataPosition64(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/secvision/sef/SEF$SEFSubDataPosition64;
    .locals 5
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1788
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 1789
    :cond_0
    const-string v2, "SEF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid file name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1808
    :goto_0
    return-object v1

    .line 1793
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_3

    .line 1794
    :cond_2
    const-string v2, "SEF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid key name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1798
    :cond_3
    invoke-static {p0, p1}, Lcom/sec/android/secvision/sef/SEFJNI;->getSEFSubDataPosition64(Ljava/lang/String;Ljava/lang/String;)[J

    move-result-object v0

    .line 1799
    .local v0, "posArray":[J
    if-nez v0, :cond_4

    .line 1800
    const-string v2, "SEF"

    const-string v3, "No SEF sub data is found in file."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1804
    :cond_4
    new-instance v1, Lcom/sec/android/secvision/sef/SEF$SEFSubDataPosition64;

    invoke-direct {v1}, Lcom/sec/android/secvision/sef/SEF$SEFSubDataPosition64;-><init>()V

    .line 1805
    .local v1, "position":Lcom/sec/android/secvision/sef/SEF$SEFSubDataPosition64;
    const/4 v2, 0x0

    aget-wide v2, v0, v2

    iput-wide v2, v1, Lcom/sec/android/secvision/sef/SEF$SEFSubDataPosition64;->offset:J

    .line 1806
    const/4 v2, 0x1

    aget-wide v2, v0, v2

    iput-wide v2, v1, Lcom/sec/android/secvision/sef/SEF$SEFSubDataPosition64;->length:J

    goto :goto_0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 657
    invoke-static {}, Lcom/sec/android/secvision/sef/SEFJNI;->getNativeVersion()I

    move-result v0

    .line 658
    .local v0, "native_version":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1.03_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 664
    .local v1, "version":Ljava/lang/String;
    return-object v1
.end method

.method public static hasDataType(Ljava/lang/String;I)Z
    .locals 6
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "dataType"    # I

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x0

    .line 827
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    if-ne p1, v4, :cond_2

    .line 828
    :cond_0
    const-string v3, "SEF"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid file name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Data Type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    :cond_1
    :goto_0
    return v2

    .line 832
    :cond_2
    invoke-static {p0}, Lcom/sec/android/secvision/sef/SEFJNI;->isSEFFile(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 835
    invoke-static {p0}, Lcom/sec/android/secvision/sef/SEF;->listSEFDataTypes(Ljava/lang/String;)[I

    move-result-object v0

    .line 836
    .local v0, "currentTypes":[I
    if-nez v0, :cond_3

    .line 837
    const-string v3, "SEF"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid file : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 841
    :cond_3
    array-length v3, v0

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_1
    if-le v1, v4, :cond_1

    .line 842
    aget v3, v0, v1

    if-ne p1, v3, :cond_4

    .line 843
    const/4 v2, 0x1

    goto :goto_0

    .line 841
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public static hasSEFData(Ljava/io/File;I)Z
    .locals 7
    .param p0, "sefFile"    # Ljava/io/File;
    .param p1, "dataType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    const/4 v3, 0x0

    .line 742
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 747
    .local v1, "fileName":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    if-ne p1, v5, :cond_2

    .line 748
    :cond_0
    const-string v4, "SEF"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid file name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Data Type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    :cond_1
    :goto_0
    return v3

    .line 752
    :cond_2
    invoke-static {v1}, Lcom/sec/android/secvision/sef/SEFJNI;->isSEFFile(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1

    .line 755
    invoke-static {p0}, Lcom/sec/android/secvision/sef/SEF;->listSEFDataTypes(Ljava/io/File;)[I

    move-result-object v0

    .line 756
    .local v0, "currentTypes":[I
    if-nez v0, :cond_3

    .line 757
    const-string v4, "SEF"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid file : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 761
    :cond_3
    array-length v4, v0

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_1
    if-le v2, v5, :cond_1

    .line 762
    aget v4, v0, v2

    if-ne p1, v4, :cond_4

    .line 763
    const/4 v3, 0x1

    goto :goto_0

    .line 761
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public static hasSEFData(Ljava/io/File;Ljava/lang/String;)Z
    .locals 7
    .param p0, "sefFile"    # Ljava/io/File;
    .param p1, "keyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 780
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 785
    .local v1, "fileName":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_2

    .line 786
    :cond_0
    const-string v4, "SEF"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid file name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", keyName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    :cond_1
    :goto_0
    return v3

    .line 790
    :cond_2
    invoke-static {v1}, Lcom/sec/android/secvision/sef/SEFJNI;->isSEFFile(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1

    .line 793
    invoke-static {p0}, Lcom/sec/android/secvision/sef/SEF;->listKeyNames(Ljava/io/File;)[Ljava/lang/String;

    move-result-object v0

    .line 794
    .local v0, "currentTypes":[Ljava/lang/String;
    if-nez v0, :cond_3

    .line 795
    const-string v4, "SEF"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid file : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 797
    :cond_3
    array-length v4, v0

    if-gtz v4, :cond_4

    if-eqz v0, :cond_4

    .line 798
    const-string v4, "SEF"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid file : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 802
    :cond_4
    array-length v4, v0

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_1
    const/4 v4, -0x1

    if-le v2, v4, :cond_1

    .line 803
    aget-object v4, v0, v2

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 804
    const/4 v3, 0x1

    goto :goto_0

    .line 802
    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public static isAudioJPEG(Ljava/lang/String;)I
    .locals 1
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 2622
    invoke-static {p0}, Lcom/sec/android/secvision/sef/QdioJNI;->isJPEG(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static isJPEG(Ljava/lang/String;)I
    .locals 1
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 2640
    invoke-static {p0}, Lcom/sec/android/secvision/sef/QdioJNI;->isJPEG(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static isSEFFile(Ljava/io/File;)Z
    .locals 5
    .param p0, "sefFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 678
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 680
    .local v0, "fileName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 681
    :cond_0
    const-string v2, "SEF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid file name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    const/4 v1, 0x0

    .line 696
    :goto_0
    return v1

    .line 686
    :cond_1
    invoke-static {v0}, Lcom/sec/android/secvision/sef/SEFJNI;->isSEFFile(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0}, Lcom/sec/android/secvision/sef/QdioJNI;->isJPEG(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 687
    const/4 v1, 0x0

    .local v1, "ret":Z
    goto :goto_0

    .line 689
    .end local v1    # "ret":Z
    :cond_2
    const/4 v1, 0x1

    .restart local v1    # "ret":Z
    goto :goto_0
.end method

.method public static isSEFFile(Ljava/lang/String;)Z
    .locals 4
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 714
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 715
    :cond_0
    const-string v1, "SEF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    const/4 v0, 0x0

    .line 730
    :goto_0
    return v0

    .line 720
    :cond_1
    invoke-static {p0}, Lcom/sec/android/secvision/sef/SEFJNI;->isSEFFile(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 721
    const/4 v0, 0x0

    .local v0, "ret":Z
    goto :goto_0

    .line 723
    .end local v0    # "ret":Z
    :cond_2
    const/4 v0, 0x1

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method public static listKeyNames(Ljava/io/File;)[Ljava/lang/String;
    .locals 4
    .param p0, "sefFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1513
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 1518
    .local v0, "fileName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 1519
    :cond_0
    const-string v1, "SEF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    const/4 v1, 0x0

    .line 1523
    :goto_0
    return-object v1

    :cond_1
    invoke-static {v0}, Lcom/sec/android/secvision/sef/SEFJNI;->listKeyNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static listKeyNames(Ljava/io/File;I)[Ljava/lang/String;
    .locals 4
    .param p0, "sefFile"    # Ljava/io/File;
    .param p1, "dataType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1535
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 1540
    .local v0, "fileName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 1541
    :cond_0
    const-string v1, "SEF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Data Type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    const/4 v1, 0x0

    .line 1545
    :goto_0
    return-object v1

    :cond_1
    invoke-static {v0, p1}, Lcom/sec/android/secvision/sef/SEFJNI;->listKeyNamesByDataType(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static listKeyNames(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 1563
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 1564
    :cond_0
    const-string v0, "SEF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    const/4 v0, 0x0

    .line 1568
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/sec/android/secvision/sef/SEFJNI;->listKeyNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static listKeyNamesByDataType(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "dataType"    # I

    .prologue
    .line 1587
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 1588
    :cond_0
    const-string v0, "SEF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Data Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    const/4 v0, 0x0

    .line 1592
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1}, Lcom/sec/android/secvision/sef/SEFJNI;->listKeyNamesByDataType(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static listSEFDataTypes(Ljava/io/File;)[I
    .locals 4
    .param p0, "sefFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2074
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 2079
    .local v0, "fileName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 2080
    :cond_0
    const-string v1, "SEF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2081
    const/4 v1, 0x0

    .line 2084
    :goto_0
    return-object v1

    :cond_1
    invoke-static {v0}, Lcom/sec/android/secvision/sef/SEFJNI;->listSEFDataTypes(Ljava/lang/String;)[I

    move-result-object v1

    goto :goto_0
.end method

.method public static listSEFDataTypes(Ljava/lang/String;)[I
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 2102
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 2103
    :cond_0
    const-string v0, "SEF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2104
    const/4 v0, 0x0

    .line 2107
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/sec/android/secvision/sef/SEFJNI;->listSEFDataTypes(Ljava/lang/String;)[I

    move-result-object v0

    goto :goto_0
.end method

.method public static saveAudioJPEG(Ljava/lang/String;Ljava/lang/String;[B)I
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "audioStream"    # [B

    .prologue
    .line 2417
    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    array-length v0, p2

    if-gtz v0, :cond_2

    .line 2418
    :cond_0
    const-string v0, "SEF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2419
    if-eqz p2, :cond_1

    .line 2420
    const-string v0, "SEF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveAudioJPEG input parameter is null :  audioStream.length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2425
    :goto_0
    const/4 v0, 0x0

    .line 2427
    :goto_1
    return v0

    .line 2422
    :cond_1
    const-string v0, "SEF"

    const-string v1, "saveAudioJPEG input parameter is null "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2427
    :cond_2
    array-length v0, p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p0, p2, v0, p1, v1}, Lcom/sec/android/secvision/sef/SEFJNI;->saveAudioJPEG(Ljava/lang/String;[BILjava/lang/String;I)I

    move-result v0

    goto :goto_1
.end method

.method public static saveAudioJPEG(Ljava/lang/String;[B)I
    .locals 1
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "audiostream"    # [B

    .prologue
    .line 2397
    const-string v0, "SoundShot_000"

    invoke-static {p0, v0, p1}, Lcom/sec/android/secvision/sef/SEF;->saveAudioJPEG(Ljava/lang/String;Ljava/lang/String;[B)I

    move-result v0

    return v0
.end method

.method public static showSEFDataList(Ljava/lang/String;)V
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 2708
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 2709
    :cond_0
    const-string v0, "SEF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2712
    :cond_1
    invoke-static {p0}, Lcom/sec/android/secvision/sef/SEFJNI;->isSEFFile(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 2723
    :cond_2
    return-void
.end method

.class public Lcom/samsung/android/feature/FloatingFeature;
.super Ljava/lang/Object;
.source "FloatingFeature.java"

# interfaces
.implements Lcom/samsung/android/feature/IFloatingFeature;


# static fields
.field public static final BOOL_NOTAG:Z = false

.field private static final FEATURE_XML:Ljava/lang/String; = "/system/etc/floating_feature.xml"

.field public static final INT_NOTAG:I = -0x1

.field public static final STR_NOTAG:Ljava/lang/String; = ""

.field private static final TAG:Ljava/lang/String; = "FloatingFeature"

.field private static sInstance:Lcom/samsung/android/feature/FloatingFeature;


# instance fields
.field private mFeatureList:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/feature/FloatingFeature;->sInstance:Lcom/samsung/android/feature/FloatingFeature;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/feature/FloatingFeature;->mFeatureList:Ljava/util/Hashtable;

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/feature/FloatingFeature;->loadFeatureFile()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FloatingFeature"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getInstance()Lcom/samsung/android/feature/FloatingFeature;
    .locals 1

    .prologue
    sget-object v0, Lcom/samsung/android/feature/FloatingFeature;->sInstance:Lcom/samsung/android/feature/FloatingFeature;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/feature/FloatingFeature;

    invoke-direct {v0}, Lcom/samsung/android/feature/FloatingFeature;-><init>()V

    sput-object v0, Lcom/samsung/android/feature/FloatingFeature;->sInstance:Lcom/samsung/android/feature/FloatingFeature;

    :cond_0
    sget-object v0, Lcom/samsung/android/feature/FloatingFeature;->sInstance:Lcom/samsung/android/feature/FloatingFeature;

    return-object v0
.end method

.method private loadFeatureFile()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v9, 0x0

    .local v9, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v7, 0x0

    .local v7, "fi":Ljava/io/InputStream;
    const/4 v3, -0x1

    .local v3, "eventType":I
    const/4 v0, 0x0

    .local v0, "TagName":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "TagValue":Ljava/lang/String;
    :try_start_0
    iget-object v10, p0, Lcom/samsung/android/feature/FloatingFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v10}, Ljava/util/Hashtable;->clear()V

    new-instance v6, Ljava/io/File;

    const-string v10, "/system/etc/floating_feature.xml"

    invoke-direct {v6, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v6, "featureXmlFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->length()J
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-gtz v10, :cond_2

    :cond_0
    if-eqz v7, :cond_1

    :try_start_1
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v7, 0x0

    .end local v6    # "featureXmlFile":Ljava/io/File;
    :cond_1
    :goto_0
    return-void

    .restart local v6    # "featureXmlFile":Ljava/io/File;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    const-string v10, "FloatingFeature"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_2
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v5

    .local v5, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local v7    # "fi":Ljava/io/InputStream;
    .local v8, "fi":Ljava/io/InputStream;
    const/4 v10, 0x0

    :try_start_3
    invoke-interface {v9, v8, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    :goto_1
    if-eq v3, v14, :cond_7

    const/4 v10, 0x2

    if-ne v3, v10, :cond_4

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    :cond_3
    :goto_2
    :try_start_4
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v3

    goto :goto_1

    :cond_4
    const/4 v10, 0x4

    if-ne v3, v10, :cond_3

    :try_start_5
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    iget-object v10, p0, Lcom/samsung/android/feature/FloatingFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v10, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v10

    if-eqz v10, :cond_5

    :try_start_6
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v3

    goto :goto_1

    :catch_1
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_7
    const-string v10, "FloatingFeature"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    move-object v7, v8

    .end local v5    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6    # "featureXmlFile":Ljava/io/File;
    .end local v8    # "fi":Ljava/io/InputStream;
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v7    # "fi":Ljava/io/InputStream;
    :goto_3
    :try_start_8
    const-string v10, "FloatingFeature"

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v7, :cond_1

    :try_start_9
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    const/4 v7, 0x0

    goto :goto_0

    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v7    # "fi":Ljava/io/InputStream;
    .restart local v5    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v6    # "featureXmlFile":Ljava/io/File;
    .restart local v8    # "fi":Ljava/io/InputStream;
    :cond_5
    :try_start_a
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget-object v10, p0, Lcom/samsung/android/feature/FloatingFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v10, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_2

    :catch_3
    move-exception v4

    .local v4, "ex":Ljava/lang/Exception;
    :try_start_b
    const-string v10, "FloatingFeature"

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_2

    .end local v4    # "ex":Ljava/lang/Exception;
    :catch_4
    move-exception v2

    move-object v7, v8

    .end local v5    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6    # "featureXmlFile":Ljava/io/File;
    .end local v8    # "fi":Ljava/io/InputStream;
    .local v2, "e":Ljava/io/FileNotFoundException;
    .restart local v7    # "fi":Ljava/io/InputStream;
    :goto_4
    :try_start_c
    const-string v10, "FloatingFeature"

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    if-eqz v7, :cond_1

    :try_start_d
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    const/4 v7, 0x0

    goto/16 :goto_0

    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v7    # "fi":Ljava/io/InputStream;
    .restart local v5    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v6    # "featureXmlFile":Ljava/io/File;
    .restart local v8    # "fi":Ljava/io/InputStream;
    :catch_5
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    :try_start_e
    const-string v10, "FloatingFeature"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_1

    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    move-object v7, v8

    .end local v5    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6    # "featureXmlFile":Ljava/io/File;
    .end local v8    # "fi":Ljava/io/InputStream;
    .restart local v7    # "fi":Ljava/io/InputStream;
    :goto_5
    if-eqz v7, :cond_6

    :try_start_f
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_a

    const/4 v7, 0x0

    :cond_6
    :goto_6
    throw v10

    .end local v7    # "fi":Ljava/io/InputStream;
    .restart local v5    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v6    # "featureXmlFile":Ljava/io/File;
    .restart local v8    # "fi":Ljava/io/InputStream;
    :cond_7
    :try_start_10
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :goto_7
    if-eqz v8, :cond_8

    :try_start_11
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_7

    const/4 v7, 0x0

    .end local v8    # "fi":Ljava/io/InputStream;
    .restart local v7    # "fi":Ljava/io/InputStream;
    goto/16 :goto_0

    .end local v7    # "fi":Ljava/io/InputStream;
    .restart local v8    # "fi":Ljava/io/InputStream;
    :catch_6
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_12
    const-string v10, "FloatingFeature"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12 .. :try_end_12} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_12} :catch_4
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto :goto_7

    .end local v2    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    const-string v10, "FloatingFeature"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v8

    .end local v8    # "fi":Ljava/io/InputStream;
    .restart local v7    # "fi":Ljava/io/InputStream;
    goto/16 :goto_0

    .end local v5    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6    # "featureXmlFile":Ljava/io/File;
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_8
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    const-string v10, "FloatingFeature"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .local v2, "e":Ljava/io/FileNotFoundException;
    :catch_9
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    const-string v10, "FloatingFeature"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v2    # "e":Ljava/io/IOException;
    :catch_a
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    const-string v11, "FloatingFeature"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .end local v2    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v10

    goto :goto_5

    :catch_b
    move-exception v2

    goto :goto_4

    :catch_c
    move-exception v2

    goto/16 :goto_3

    .end local v7    # "fi":Ljava/io/InputStream;
    .restart local v5    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v6    # "featureXmlFile":Ljava/io/File;
    .restart local v8    # "fi":Ljava/io/InputStream;
    :cond_8
    move-object v7, v8

    .end local v8    # "fi":Ljava/io/InputStream;
    .restart local v7    # "fi":Ljava/io/InputStream;
    goto/16 :goto_0
.end method


# virtual methods
.method public getEnableStatus(Ljava/lang/String;)Z
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/feature/FloatingFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public getEnableStatus(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/feature/FloatingFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .end local v1    # "value":Ljava/lang/String;
    .end local p2    # "defaultValue":Z
    :cond_0
    :goto_0
    return p2

    .restart local p2    # "defaultValue":Z
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public getInteger(Ljava/lang/String;)I
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/feature/FloatingFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public getInteger(Ljava/lang/String;I)I
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/feature/FloatingFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .end local v1    # "value":Ljava/lang/String;
    .end local p2    # "defaultValue":I
    :cond_0
    :goto_0
    return p2

    .restart local p2    # "defaultValue":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/feature/FloatingFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    .end local v1    # "value":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v1    # "value":Ljava/lang/String;
    :cond_0
    const-string v1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v1    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v1, ""

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/feature/FloatingFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    move-object p2, v1

    .end local v1    # "value":Ljava/lang/String;
    .end local p2    # "defaultValue":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p2

    .restart local p2    # "defaultValue":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

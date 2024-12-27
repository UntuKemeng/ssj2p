.class public Landroid/util/secutil/CustomizedTextParser;
.super Ljava/lang/Object;
.source "CustomizedTextParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/secutil/CustomizedTextParser$1;,
        Landroid/util/secutil/CustomizedTextParser$CscNodeList;
    }
.end annotation


# static fields
.field private static final CSC_XML_FILE_NAME:Ljava/lang/String; = "unique_text.xml"

.field private static final CSC_XML_FILE_PATH:Ljava/lang/String; = "/system/csc/"

.field public static final FEATURE_ENABLED:Z = false

.field static final PATH_CUSTOM_INFO:Ljava/lang/String; = "CustomizedText"

.field public static final REPLACE_TAG:Ljava/lang/String; = "cst"

.field private static final TAG:Ljava/lang/String; = "CustomizedTextParser"

.field static final TAG_RULE_INFO:Ljava/lang/String; = "Rule"

.field static final TAG_SOURCE_STRING:Ljava/lang/String; = "source"

.field static final TAG_TARGET_STRING:Ljava/lang/String; = "target"

.field private static mInstance:Landroid/util/secutil/CustomizedTextParser;


# instance fields
.field private mDoc:Lorg/w3c/dom/Document;

.field private mRoot:Lorg/w3c/dom/Node;

.field private mRuleMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 6

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-string/jumbo v3, "persist.sys.omc_etcpath"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "omcEtcPath":Ljava/lang/String;
    const-string v2, "/system/csc/unique_text.xml"

    .local v2, "pathName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "unique_text.xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    const-string v3, "CustomizedTextParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "path name : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Landroid/util/secutil/CustomizedTextParser;->update(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "omcEtcPath":Ljava/lang/String;
    .end local v2    # "pathName":Ljava/lang/String;
    :goto_0
    const-string v3, "CustomizedTextParser"

    const-string v4, "feature state : false"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getInstance()Landroid/util/secutil/CustomizedTextParser;
    .locals 1

    .prologue
    sget-object v0, Landroid/util/secutil/CustomizedTextParser;->mInstance:Landroid/util/secutil/CustomizedTextParser;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/secutil/CustomizedTextParser;

    invoke-direct {v0}, Landroid/util/secutil/CustomizedTextParser;-><init>()V

    sput-object v0, Landroid/util/secutil/CustomizedTextParser;->mInstance:Landroid/util/secutil/CustomizedTextParser;

    sget-object v0, Landroid/util/secutil/CustomizedTextParser;->mInstance:Landroid/util/secutil/CustomizedTextParser;

    invoke-direct {v0}, Landroid/util/secutil/CustomizedTextParser;->initialize()V

    :cond_0
    sget-object v0, Landroid/util/secutil/CustomizedTextParser;->mInstance:Landroid/util/secutil/CustomizedTextParser;

    return-object v0
.end method

.method private getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 6
    .param p1, "node"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v3, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_3

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .local v2, "stringValue":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v1, v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    invoke-interface {v4, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move-object v3, v2

    goto :goto_0

    .end local v1    # "idx":I
    .end local v2    # "stringValue":Ljava/lang/String;
    :cond_3
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .local v0, "firstChild":Lorg/w3c/dom/Node;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private initialize()V
    .locals 9

    .prologue
    const-string v6, "CustomizedTextParser"

    const-string v7, "Initialzed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Landroid/util/secutil/CustomizedTextParser;->mRuleMap:Ljava/util/HashMap;

    const/4 v4, 0x0

    .local v4, "stringSize":I
    invoke-direct {p0}, Landroid/util/secutil/CustomizedTextParser;->search()Lorg/w3c/dom/Node;

    move-result-object v1

    .local v1, "node":Lorg/w3c/dom/Node;
    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v1}, Landroid/util/secutil/CustomizedTextParser;->searchList(Lorg/w3c/dom/Node;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .local v2, "nodeList":Lorg/w3c/dom/NodeList;
    if-nez v2, :cond_1

    const-string v6, "CustomizedTextParser"

    const-string v7, "createCscRuleMap:No Rule info"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v4, :cond_3

    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    const-string/jumbo v7, "source"

    invoke-direct {p0, v6, v7}, Landroid/util/secutil/CustomizedTextParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    .local v3, "srcTemp":Lorg/w3c/dom/Node;
    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    const-string/jumbo v7, "target"

    invoke-direct {p0, v6, v7}, Landroid/util/secutil/CustomizedTextParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    .local v5, "targetTemp":Lorg/w3c/dom/Node;
    if-eqz v3, :cond_2

    if-eqz v5, :cond_2

    iget-object v6, p0, Landroid/util/secutil/CustomizedTextParser;->mRuleMap:Ljava/util/HashMap;

    invoke-direct {p0, v3}, Landroid/util/secutil/CustomizedTextParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5}, Landroid/util/secutil/CustomizedTextParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const-string v6, "CustomizedTextParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createCscRuleMap:src or target is null. srcTemp ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",target="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v3    # "srcTemp":Lorg/w3c/dom/Node;
    .end local v5    # "targetTemp":Lorg/w3c/dom/Node;
    :cond_3
    const-string v6, "CustomizedTextParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Initialzed: Finished. size="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/util/secutil/CustomizedTextParser;->mInstance:Landroid/util/secutil/CustomizedTextParser;

    iget-object v8, v8, Landroid/util/secutil/CustomizedTextParser;->mRuleMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private search()Lorg/w3c/dom/Node;
    .locals 5

    .prologue
    iget-object v0, p0, Landroid/util/secutil/CustomizedTextParser;->mRoot:Lorg/w3c/dom/Node;

    .local v0, "node":Lorg/w3c/dom/Node;
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, "CustomizedText"

    const-string v4, "."

    invoke-direct {v2, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v2, "tokenizer":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .local v1, "token":Ljava/lang/String;
    if-nez v0, :cond_1

    const/4 v0, 0x0

    .end local v0    # "node":Lorg/w3c/dom/Node;
    .end local v1    # "token":Ljava/lang/String;
    :cond_0
    return-object v0

    .restart local v0    # "node":Lorg/w3c/dom/Node;
    .restart local v1    # "token":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v0, v1}, Landroid/util/secutil/CustomizedTextParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_0
.end method

.method private search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 6
    .param p1, "parent"    # Lorg/w3c/dom/Node;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    if-nez p1, :cond_1

    move-object v0, v4

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .local v1, "children":Lorg/w3c/dom/NodeList;
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    .local v3, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_2

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .local v0, "child":Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "child":Lorg/w3c/dom/Node;
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_2
    move-object v0, v4

    goto :goto_0
.end method

.method private searchList(Lorg/w3c/dom/Node;)Lorg/w3c/dom/NodeList;
    .locals 9
    .param p1, "parent"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v6, 0x0

    if-nez p1, :cond_1

    move-object v4, v6

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    :try_start_0
    new-instance v4, Landroid/util/secutil/CustomizedTextParser$CscNodeList;

    const/4 v7, 0x0

    invoke-direct {v4, v7}, Landroid/util/secutil/CustomizedTextParser$CscNodeList;-><init>(Landroid/util/secutil/CustomizedTextParser$1;)V

    .local v4, "list":Landroid/util/secutil/CustomizedTextParser$CscNodeList;
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .local v1, "children":Lorg/w3c/dom/NodeList;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    .local v5, "n":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v5, :cond_0

    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .local v0, "child":Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Rule"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    if-eqz v7, :cond_2

    :try_start_1
    invoke-virtual {v4, v0}, Landroid/util/secutil/CustomizedTextParser$CscNodeList;->appendChild(Lorg/w3c/dom/Node;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .end local v0    # "child":Lorg/w3c/dom/Node;
    .end local v1    # "children":Lorg/w3c/dom/NodeList;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "i":I
    .end local v4    # "list":Landroid/util/secutil/CustomizedTextParser$CscNodeList;
    .end local v5    # "n":I
    :catch_1
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    move-object v4, v6

    goto :goto_0
.end method

.method private update(Ljava/lang/String;)V
    .locals 5
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .local v1, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .local v0, "builder":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v2, "fe":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v3

    iput-object v3, p0, Landroid/util/secutil/CustomizedTextParser;->mDoc:Lorg/w3c/dom/Document;

    iget-object v3, p0, Landroid/util/secutil/CustomizedTextParser;->mDoc:Lorg/w3c/dom/Document;

    invoke-interface {v3}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v3

    iput-object v3, p0, Landroid/util/secutil/CustomizedTextParser;->mRoot:Lorg/w3c/dom/Node;

    :goto_0
    return-void

    :cond_0
    const-string v3, "CustomizedTextParser"

    const-string/jumbo v4, "update : XML file doesn\'t exist"

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getCustomizedText(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    iget-object v1, p0, Landroid/util/secutil/CustomizedTextParser;->mRuleMap:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/util/secutil/CustomizedTextParser;->mRuleMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    const-string v1, "CustomizedTextParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCustomizedText Rule is empty. mRuleMap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/util/secutil/CustomizedTextParser;->mRuleMap:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local p1    # "string":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "string":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Landroid/util/secutil/CustomizedTextParser;->mRuleMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, "replaceText":Ljava/lang/String;
    if-nez v0, :cond_2

    const-string v1, "CustomizedTextParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertString replaceText is null. preString= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object p1, v0

    goto :goto_0
.end method

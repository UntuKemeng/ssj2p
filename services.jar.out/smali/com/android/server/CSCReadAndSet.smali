.class Lcom/android/server/CSCReadAndSet;
.super Ljava/lang/Object;
.source "CSCReadAndSet.java"


# static fields
.field private static final CUSTOMER_PATH:Ljava/lang/String; = "/system/csc/"

.field private static final CUSTOMER_XML:Ljava/lang/String; = "others.xml"

.field private static final DEBUG:Z = false

.field private static final DEBUG_TAG:Ljava/lang/String; = "InputMethodManagerService_CSC"

.field private static final TAG_ROOT:Ljava/lang/String; = "DefaultInputMethod"

.field private static final TAG_input_method:Ljava/lang/String; = "input_method"

.field private static mCustomerNode:Lorg/w3c/dom/Node;

.field private static mDoc:Lorg/w3c/dom/Document;

.field private static mRoot:Lorg/w3c/dom/Node;

.field private static sInstance:Lcom/android/server/CSCReadAndSet;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/android/server/CSCReadAndSet;

    invoke-direct {v0}, Lcom/android/server/CSCReadAndSet;-><init>()V

    sput-object v0, Lcom/android/server/CSCReadAndSet;->sInstance:Lcom/android/server/CSCReadAndSet;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/android/server/CSCReadAndSet;
    .locals 2
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    if-nez p0, :cond_0

    sget-object v0, Lcom/android/server/CSCReadAndSet;->sInstance:Lcom/android/server/CSCReadAndSet;

    const-string/jumbo v1, "others.xml"

    invoke-direct {v0, v1}, Lcom/android/server/CSCReadAndSet;->loadXMLFile(Ljava/lang/String;)V

    :goto_0
    sget-object v0, Lcom/android/server/CSCReadAndSet;->sInstance:Lcom/android/server/CSCReadAndSet;

    return-object v0

    :cond_0
    sget-object v0, Lcom/android/server/CSCReadAndSet;->sInstance:Lcom/android/server/CSCReadAndSet;

    invoke-direct {v0, p0}, Lcom/android/server/CSCReadAndSet;->loadXMLFile(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 6
    .param p1, "parent"    # Lorg/w3c/dom/Node;
    .param p2, "tagName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move-object v0, v4

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .local v1, "children":Lorg/w3c/dom/NodeList;
    if-eqz v1, :cond_4

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    .local v3, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_4

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .local v0, "child":Lorg/w3c/dom/Node;
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "child":Lorg/w3c/dom/Node;
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_4
    move-object v0, v4

    goto :goto_0
.end method

.method private getTagValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "tagFullName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    sget-object v2, Lcom/android/server/CSCReadAndSet;->mCustomerNode:Lorg/w3c/dom/Node;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    sget-object v2, Lcom/android/server/CSCReadAndSet;->mCustomerNode:Lorg/w3c/dom/Node;

    invoke-direct {p0, v2, p1}, Lcom/android/server/CSCReadAndSet;->getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .local v0, "node":Lorg/w3c/dom/Node;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getTagValueReturnString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "tagFullName"    # Ljava/lang/String;

    .prologue
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/CSCReadAndSet;->getTagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "tagValue":Ljava/lang/String;
    goto :goto_0
.end method

.method private loadXMLFile(Ljava/lang/String;)V
    .locals 5
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .local v1, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .local v0, "builder":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/system/csc/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v2

    sput-object v2, Lcom/android/server/CSCReadAndSet;->mDoc:Lorg/w3c/dom/Document;

    sget-object v2, Lcom/android/server/CSCReadAndSet;->mDoc:Lorg/w3c/dom/Document;

    if-nez v2, :cond_1

    .end local v0    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v1    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :cond_0
    :goto_0
    return-void

    .restart local v0    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v1    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :cond_1
    sget-object v2, Lcom/android/server/CSCReadAndSet;->mDoc:Lorg/w3c/dom/Document;

    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v2

    sput-object v2, Lcom/android/server/CSCReadAndSet;->mRoot:Lorg/w3c/dom/Node;

    sget-object v2, Lcom/android/server/CSCReadAndSet;->mRoot:Lorg/w3c/dom/Node;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/CSCReadAndSet;->mRoot:Lorg/w3c/dom/Node;

    const-string v3, "DefaultInputMethod"

    invoke-direct {p0, v2, v3}, Lcom/android/server/CSCReadAndSet;->getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    sput-object v2, Lcom/android/server/CSCReadAndSet;->mCustomerNode:Lorg/w3c/dom/Node;

    sget-object v2, Lcom/android/server/CSCReadAndSet;->mCustomerNode:Lorg/w3c/dom/Node;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    goto :goto_0

    .end local v0    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v1    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0

    :catch_2
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public setCustomerCSC(Landroid/content/Context;Ljava/util/List;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "enabled":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    sget-object v5, Lcom/android/server/CSCReadAndSet;->mCustomerNode:Lorg/w3c/dom/Node;

    if-eqz v5, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iput-object p1, p0, Lcom/android/server/CSCReadAndSet;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "input_method"

    invoke-direct {p0, v5}, Lcom/android/server/CSCReadAndSet;->getTagValueReturnString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "inputMethod":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_0

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .local v3, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/CSCReadAndSet;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "default_input_method"

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .local v1, "flag":Z
    if-nez v1, :cond_0

    goto :goto_0

    .end local v1    # "flag":Z
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public setCustomerCSCUser(Landroid/content/Context;Ljava/util/List;I)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "CurrentUserId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p2, "enabled":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    sget-object v5, Lcom/android/server/CSCReadAndSet;->mCustomerNode:Lorg/w3c/dom/Node;

    if-eqz v5, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iput-object p1, p0, Lcom/android/server/CSCReadAndSet;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "input_method"

    invoke-direct {p0, v5}, Lcom/android/server/CSCReadAndSet;->getTagValueReturnString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "inputMethod":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_0

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .local v3, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/CSCReadAndSet;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "default_input_method"

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7, p3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    .local v1, "flag":Z
    if-nez v1, :cond_0

    goto :goto_0

    .end local v1    # "flag":Z
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

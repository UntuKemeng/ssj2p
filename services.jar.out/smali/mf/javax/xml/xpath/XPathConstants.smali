.class public Lmf/javax/xml/xpath/XPathConstants;
.super Ljava/lang/Object;
.source "XPathConstants.java"


# static fields
.field public static final BOOLEAN:Lmf/javax/xml/namespace/QName;

.field public static final DOM_OBJECT_MODEL:Ljava/lang/String; = "http://java.sun.com/jaxp/xpath/dom"

.field public static final NODE:Lmf/javax/xml/namespace/QName;

.field public static final NODESET:Lmf/javax/xml/namespace/QName;

.field public static final NUMBER:Lmf/javax/xml/namespace/QName;

.field public static final STRING:Lmf/javax/xml/namespace/QName;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 70
    new-instance v0, Lmf/javax/xml/namespace/QName;

    const-string v1, "http://www.w3.org/1999/XSL/Transform"

    const-string v2, "NUMBER"

    invoke-direct {v0, v1, v2}, Lmf/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lmf/javax/xml/xpath/XPathConstants;->NUMBER:Lmf/javax/xml/namespace/QName;

    .line 77
    new-instance v0, Lmf/javax/xml/namespace/QName;

    const-string v1, "http://www.w3.org/1999/XSL/Transform"

    const-string v2, "STRING"

    invoke-direct {v0, v1, v2}, Lmf/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lmf/javax/xml/xpath/XPathConstants;->STRING:Lmf/javax/xml/namespace/QName;

    .line 84
    new-instance v0, Lmf/javax/xml/namespace/QName;

    const-string v1, "http://www.w3.org/1999/XSL/Transform"

    const-string v2, "BOOLEAN"

    invoke-direct {v0, v1, v2}, Lmf/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lmf/javax/xml/xpath/XPathConstants;->BOOLEAN:Lmf/javax/xml/namespace/QName;

    .line 91
    new-instance v0, Lmf/javax/xml/namespace/QName;

    const-string v1, "http://www.w3.org/1999/XSL/Transform"

    const-string v2, "NODESET"

    invoke-direct {v0, v1, v2}, Lmf/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lmf/javax/xml/xpath/XPathConstants;->NODESET:Lmf/javax/xml/namespace/QName;

    .line 98
    new-instance v0, Lmf/javax/xml/namespace/QName;

    const-string v1, "http://www.w3.org/1999/XSL/Transform"

    const-string v2, "NODE"

    invoke-direct {v0, v1, v2}, Lmf/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lmf/javax/xml/xpath/XPathConstants;->NODE:Lmf/javax/xml/namespace/QName;

    .line 103
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
.class Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler$EngineListXmlHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SdpManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EngineListXmlHandler"
.end annotation


# instance fields
.field attrAlias:Ljava/lang/String;

.field attrId:I

.field private elementStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private engineList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$2:Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;)V
    .locals 1

    .prologue
    .line 1938
    iput-object p1, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler$EngineListXmlHandler;->this$2:Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;

    .line 1939
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 1943
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler$EngineListXmlHandler;->engineList:Landroid/util/SparseArray;

    .line 1940
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler$EngineListXmlHandler;->elementStack:Ljava/util/Stack;

    .line 1941
    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler$EngineListXmlHandler;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler$EngineListXmlHandler;

    .prologue
    .line 1935
    invoke-direct {p0}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler$EngineListXmlHandler;->getEngineList()Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method private getEngineList()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1946
    iget-object v0, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler$EngineListXmlHandler;->engineList:Landroid/util/SparseArray;

    return-object v0
.end method


# virtual methods
.method public characters([CII)V
    .locals 3
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1995
    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start characters : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1997
    return-void
.end method

.method public endDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1958
    const-string v0, "SdpManagerService"

    const-string v1, "end document     : "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1959
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1982
    iget-object v0, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler$EngineListXmlHandler;->elementStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 1983
    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "end element      : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1984
    const-string v0, "engine"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1985
    iget v0, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler$EngineListXmlHandler;->attrId:I

    if-ltz v0, :cond_0

    .line 1986
    iget-object v0, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler$EngineListXmlHandler;->engineList:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler$EngineListXmlHandler;->attrId:I

    iget-object v2, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler$EngineListXmlHandler;->attrAlias:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1988
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler$EngineListXmlHandler;->attrAlias:Ljava/lang/String;

    .line 1989
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler$EngineListXmlHandler;->attrId:I

    .line 1991
    :cond_1
    return-void
.end method

.method public startDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1953
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler$EngineListXmlHandler;->engineList:Landroid/util/SparseArray;

    .line 1954
    const-string v0, "SdpManagerService"

    const-string/jumbo v1, "start document   : "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1955
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1964
    iget-object v1, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler$EngineListXmlHandler;->elementStack:Ljava/util/Stack;

    invoke-virtual {v1, p3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1965
    const-string v1, "SdpManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start element    : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1967
    const-string v1, "engine"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1969
    const-string v1, "SdpManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " attribte alias: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "alias"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1970
    const-string v1, "SdpManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " attribte id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "id"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1973
    const-string v1, "alias"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler$EngineListXmlHandler;->attrAlias:Ljava/lang/String;

    .line 1974
    const-string/jumbo v1, "id"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1975
    .local v0, "strId":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1976
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler$EngineListXmlHandler;->attrId:I

    .line 1978
    .end local v0    # "strId":Ljava/lang/String;
    :cond_0
    return-void
.end method

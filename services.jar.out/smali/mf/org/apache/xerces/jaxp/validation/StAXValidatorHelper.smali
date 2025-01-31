.class final Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;
.super Ljava/lang/Object;
.source "StAXValidatorHelper.java"

# interfaces
.implements Lmf/org/apache/xerces/jaxp/validation/ValidatorHelper;
.implements Lmf/org/apache/xerces/impl/validation/EntityState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;,
        Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;,
        Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$XMLStreamReaderLocation;
    }
.end annotation


# static fields
.field private static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field private static final SCHEMA_VALIDATOR:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validator/schema"

.field private static final STRING_INTERNING:Ljava/lang/String; = "javax.xml.stream.isInterning"

.field private static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field private static final VALIDATION_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation-manager"


# instance fields
.field final fAttributeQName:Lmf/org/apache/xerces/xni/QName;

.field final fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

.field private final fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

.field private fCurrentEvent:Lmf/javax/xml/stream/events/XMLEvent;

.field final fDeclaredPrefixes:Ljava/util/ArrayList;

.field private fDepth:I

.field final fElementQName:Lmf/org/apache/xerces/xni/QName;

.field private fEntities:Ljava/util/HashMap;

.field private final fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

.field private fEventHelper:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;

.field private final fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

.field private final fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

.field private fStAXEventResultBuilder:Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;

.field private final fStAXLocationWrapper:Lmf/org/apache/xerces/util/StAXLocationWrapper;

.field private fStAXStreamResultBuilder:Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;

.field private fStAXValidatorHandler:Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;

.field private fStreamHelper:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;

.field final fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

.field private fStringsInternalized:Z

.field private final fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

.field final fTempString:Lmf/org/apache/xerces/xni/XMLString;

.field private final fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

.field private final fXMLStreamReaderLocation:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$XMLStreamReaderLocation;


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;)V
    .locals 3
    .param p1, "componentManager"    # Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmf/org/apache/xerces/util/StAXLocationWrapper;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/StAXLocationWrapper;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXLocationWrapper:Lmf/org/apache/xerces/util/StAXLocationWrapper;

    new-instance v0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$XMLStreamReaderLocation;

    invoke-direct {v0}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$XMLStreamReaderLocation;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fXMLStreamReaderLocation:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$XMLStreamReaderLocation;

    iput-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fEntities:Ljava/util/HashMap;

    iput-boolean v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStringsInternalized:Z

    iput v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fDepth:I

    iput-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fCurrentEvent:Lmf/javax/xml/stream/events/XMLEvent;

    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    new-instance v0, Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/XMLAttributesImpl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fDeclaredPrefixes:Ljava/util/ArrayList;

    new-instance v0, Lmf/org/apache/xerces/xni/XMLString;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/XMLString;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    new-instance v0, Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string v1, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string v1, "http://apache.org/xml/properties/internal/validator/schema"

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string v1, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/util/SymbolTable;

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string v1, "http://apache.org/xml/properties/internal/validation-manager"

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/validation/ValidationManager;

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    new-instance v0, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;-><init>(Lmf/org/apache/xerces/util/SymbolTable;)V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fDeclaredPrefixes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->setDeclaredPrefixes(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$0(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    return-object v0
.end method

.method static synthetic access$1(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$XMLStreamReaderLocation;
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fXMLStreamReaderLocation:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$XMLStreamReaderLocation;

    return-object v0
.end method

.method static synthetic access$2(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    return-object v0
.end method

.method static synthetic access$3(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/util/StAXLocationWrapper;
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXLocationWrapper:Lmf/org/apache/xerces/util/StAXLocationWrapper;

    return-object v0
.end method

.method static synthetic access$4(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    return-object v0
.end method

.method static synthetic access$5(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)I
    .locals 1

    .prologue
    iget v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fDepth:I

    return v0
.end method

.method static synthetic access$6(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;I)V
    .locals 0

    .prologue
    iput p1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fDepth:I

    return-void
.end method

.method static synthetic access$7(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXValidatorHandler:Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;

    return-object v0
.end method

.method static synthetic access$8(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;Lmf/javax/xml/stream/events/XMLEvent;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fCurrentEvent:Lmf/javax/xml/stream/events/XMLEvent;

    return-void
.end method

.method static synthetic access$9(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/javax/xml/stream/events/XMLEvent;
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fCurrentEvent:Lmf/javax/xml/stream/events/XMLEvent;

    return-object v0
.end method

.method private setupStAXResultHandler(Lmf/javax/xml/transform/stax/StAXResult;)V
    .locals 3
    .param p1, "result"    # Lmf/javax/xml/transform/stax/StAXResult;

    .prologue
    const/4 v2, 0x0

    if-nez p1, :cond_0

    iput-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXValidatorHandler:Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lmf/javax/xml/transform/stax/StAXResult;->getXMLStreamWriter()Lmf/javax/xml/stream/XMLStreamWriter;

    move-result-object v0

    .local v0, "writer":Lmf/javax/xml/stream/XMLStreamWriter;
    if-eqz v0, :cond_2

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXStreamResultBuilder:Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;

    if-nez v1, :cond_1

    new-instance v1, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    invoke-direct {v1, v2}, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;-><init>(Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;)V

    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXStreamResultBuilder:Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXStreamResultBuilder:Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;

    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXValidatorHandler:Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXStreamResultBuilder:Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;

    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->setStAXResult(Lmf/javax/xml/transform/stax/StAXResult;)V

    :goto_1
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXValidatorHandler:Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXEventResultBuilder:Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;

    if-nez v1, :cond_3

    new-instance v1, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    invoke-direct {v1, p0, v2}, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;-><init>(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;)V

    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXEventResultBuilder:Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;

    :cond_3
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXEventResultBuilder:Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;

    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXValidatorHandler:Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXEventResultBuilder:Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;

    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->setStAXResult(Lmf/javax/xml/transform/stax/StAXResult;)V

    goto :goto_1
.end method


# virtual methods
.method final fillQName(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "toFill"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "localpart"    # Ljava/lang/String;
    .param p4, "prefix"    # Ljava/lang/String;

    .prologue
    iget-boolean v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStringsInternalized:Z

    if-nez v1, :cond_5

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v1, p2}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    if-eqz p3, :cond_3

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v1, p3}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :goto_1
    if-eqz p4, :cond_4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v1, p4}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    :cond_0
    :goto_2
    move-object v0, p3

    .local v0, "raw":Ljava/lang/String;
    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-eq p4, v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v1, p4}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v1, p3}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v2, v2, Lmf/org/apache/xerces/util/XMLStringBuffer;->ch:[C

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget v3, v3, Lmf/org/apache/xerces/util/XMLStringBuffer;->offset:I

    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget v4, v4, Lmf/org/apache/xerces/util/XMLStringBuffer;->length:I

    invoke-virtual {v1, v2, v3, v4}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {p1, p4, p3, v0, p2}, Lmf/org/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .end local v0    # "raw":Ljava/lang/String;
    :cond_2
    const/4 p2, 0x0

    goto :goto_0

    :cond_3
    sget-object p3, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_1

    :cond_4
    sget-object p4, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_2

    :cond_5
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_6

    const/4 p2, 0x0

    :cond_6
    if-nez p3, :cond_7

    sget-object p3, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :cond_7
    if-nez p4, :cond_0

    sget-object p4, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_2
.end method

.method final getCurrentEvent()Lmf/javax/xml/stream/events/XMLEvent;
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fCurrentEvent:Lmf/javax/xml/stream/events/XMLEvent;

    return-object v0
.end method

.method final getEntityDeclaration(Ljava/lang/String;)Lmf/javax/xml/stream/events/EntityDeclaration;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fEntities:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fEntities:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/javax/xml/stream/events/EntityDeclaration;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEntityDeclared(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fEntities:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fEntities:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEntityUnparsed(Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fEntities:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fEntities:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/javax/xml/stream/events/EntityDeclaration;

    .local v0, "entityDecl":Lmf/javax/xml/stream/events/EntityDeclaration;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lmf/javax/xml/stream/events/EntityDeclaration;->getNotationName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .end local v0    # "entityDecl":Lmf/javax/xml/stream/events/EntityDeclaration;
    :cond_0
    return v1
.end method

.method final processEntityDeclarations(Ljava/util/List;)V
    .locals 5
    .param p1, "entityDecls"    # Ljava/util/List;

    .prologue
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-lez v2, :cond_1

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fEntities:Ljava/util/HashMap;

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fEntities:Ljava/util/HashMap;

    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v2, :cond_3

    .end local v1    # "i":I
    :cond_1
    return-void

    .end local v2    # "size":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .restart local v1    # "i":I
    .restart local v2    # "size":I
    :cond_3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/javax/xml/stream/events/EntityDeclaration;

    .local v0, "decl":Lmf/javax/xml/stream/events/EntityDeclaration;
    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fEntities:Ljava/util/HashMap;

    invoke-interface {v0}, Lmf/javax/xml/stream/events/EntityDeclaration;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method final setup(Lmf/javax/xml/stream/Location;Lmf/javax/xml/transform/stax/StAXResult;Z)V
    .locals 2
    .param p1, "location"    # Lmf/javax/xml/stream/Location;
    .param p2, "result"    # Lmf/javax/xml/transform/stax/StAXResult;
    .param p3, "stringsInternalized"    # Z

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fDepth:I

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v0}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->reset()V

    invoke-direct {p0, p2}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->setupStAXResultHandler(Lmf/javax/xml/transform/stax/StAXResult;)V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/impl/validation/ValidationManager;->setEntityState(Lmf/org/apache/xerces/impl/validation/EntityState;)V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fEntities:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fEntities:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fEntities:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXLocationWrapper:Lmf/org/apache/xerces/util/StAXLocationWrapper;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/StAXLocationWrapper;->setLocation(Lmf/javax/xml/stream/Location;)V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXLocationWrapper:Lmf/org/apache/xerces/util/StAXLocationWrapper;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setDocumentLocator(Lmf/org/apache/xerces/xni/XMLLocator;)V

    iput-boolean p3, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStringsInternalized:Z

    return-void
.end method

.method public validate(Lmf/javax/xml/transform/Source;Lmf/javax/xml/transform/Result;)V
    .locals 10
    .param p1, "source"    # Lmf/javax/xml/transform/Source;
    .param p2, "result"    # Lmf/javax/xml/transform/Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    instance-of v4, p2, Lmf/javax/xml/transform/stax/StAXResult;

    if-nez v4, :cond_0

    if-nez p2, :cond_6

    :cond_0
    move-object v2, p1

    check-cast v2, Lmf/javax/xml/transform/stax/StAXSource;

    .local v2, "staxSource":Lmf/javax/xml/transform/stax/StAXSource;
    move-object v1, p2

    check-cast v1, Lmf/javax/xml/transform/stax/StAXResult;

    .local v1, "staxResult":Lmf/javax/xml/transform/stax/StAXResult;
    :try_start_0
    invoke-virtual {v2}, Lmf/javax/xml/transform/stax/StAXSource;->getXMLStreamReader()Lmf/javax/xml/stream/XMLStreamReader;

    move-result-object v3

    .local v3, "streamReader":Lmf/javax/xml/stream/XMLStreamReader;
    if-eqz v3, :cond_3

    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStreamHelper:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;

    if-nez v4, :cond_1

    new-instance v4, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;

    invoke-direct {v4, p0}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;-><init>(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)V

    iput-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStreamHelper:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;

    :cond_1
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStreamHelper:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;

    invoke-virtual {v4, v3, v1}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->validate(Lmf/javax/xml/stream/XMLStreamReader;Lmf/javax/xml/transform/stax/StAXResult;)V
    :try_end_0
    .catch Lmf/javax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iput-object v6, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fCurrentEvent:Lmf/javax/xml/stream/events/XMLEvent;

    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXLocationWrapper:Lmf/org/apache/xerces/util/StAXLocationWrapper;

    invoke-virtual {v4, v6}, Lmf/org/apache/xerces/util/StAXLocationWrapper;->setLocation(Lmf/javax/xml/stream/Location;)V

    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fXMLStreamReaderLocation:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$XMLStreamReaderLocation;

    invoke-virtual {v4, v6}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$XMLStreamReaderLocation;->setXMLStreamReader(Lmf/javax/xml/stream/XMLStreamReader;)V

    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXValidatorHandler:Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXValidatorHandler:Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;

    invoke-interface {v4, v6}, Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;->setStAXResult(Lmf/javax/xml/transform/stax/StAXResult;)V

    :cond_2
    return-void

    :cond_3
    :try_start_1
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fEventHelper:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;

    if-nez v4, :cond_4

    new-instance v4, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;

    invoke-direct {v4, p0}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;-><init>(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)V

    iput-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fEventHelper:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;

    :cond_4
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fEventHelper:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;

    invoke-virtual {v2}, Lmf/javax/xml/transform/stax/StAXSource;->getXMLEventReader()Lmf/javax/xml/stream/XMLEventReader;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->validate(Lmf/javax/xml/stream/XMLEventReader;Lmf/javax/xml/transform/stax/StAXResult;)V
    :try_end_1
    .catch Lmf/javax/xml/stream/XMLStreamException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLParseException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v3    # "streamReader":Lmf/javax/xml/stream/XMLStreamReader;
    :catch_0
    move-exception v0

    .local v0, "e":Lmf/javax/xml/stream/XMLStreamException;
    :try_start_2
    new-instance v4, Lorg/xml/sax/SAXException;

    invoke-direct {v4, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "e":Lmf/javax/xml/stream/XMLStreamException;
    :catchall_0
    move-exception v4

    iput-object v6, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fCurrentEvent:Lmf/javax/xml/stream/events/XMLEvent;

    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXLocationWrapper:Lmf/org/apache/xerces/util/StAXLocationWrapper;

    invoke-virtual {v5, v6}, Lmf/org/apache/xerces/util/StAXLocationWrapper;->setLocation(Lmf/javax/xml/stream/Location;)V

    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fXMLStreamReaderLocation:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$XMLStreamReaderLocation;

    invoke-virtual {v5, v6}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$XMLStreamReaderLocation;->setXMLStreamReader(Lmf/javax/xml/stream/XMLStreamReader;)V

    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXValidatorHandler:Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXValidatorHandler:Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;

    invoke-interface {v5, v6}, Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;->setStAXResult(Lmf/javax/xml/transform/stax/StAXResult;)V

    :cond_5
    throw v4

    :catch_1
    move-exception v0

    .local v0, "e":Lmf/org/apache/xerces/xni/parser/XMLParseException;
    :try_start_3
    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/Util;->toSAXParseException(Lmf/org/apache/xerces/xni/parser/XMLParseException;)Lorg/xml/sax/SAXParseException;

    move-result-object v4

    throw v4

    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLParseException;
    :catch_2
    move-exception v0

    .local v0, "e":Lmf/org/apache/xerces/xni/XNIException;
    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/Util;->toSAXException(Lmf/org/apache/xerces/xni/XNIException;)Lorg/xml/sax/SAXException;

    move-result-object v4

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "e":Lmf/org/apache/xerces/xni/XNIException;
    .end local v1    # "staxResult":Lmf/javax/xml/transform/stax/StAXResult;
    .end local v2    # "staxSource":Lmf/javax/xml/transform/stax/StAXSource;
    :cond_6
    new-instance v4, Ljava/lang/IllegalArgumentException;

    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v5}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v5

    const-string v6, "SourceResultMismatch"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lmf/org/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

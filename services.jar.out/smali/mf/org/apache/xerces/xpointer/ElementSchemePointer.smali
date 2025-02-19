.class final Lmf/org/apache/xerces/xpointer/ElementSchemePointer;
.super Ljava/lang/Object;
.source "ElementSchemePointer.java"

# interfaces
.implements Lmf/org/apache/xerces/xpointer/XPointerPart;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Scanner;,
        Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;
    }
.end annotation


# instance fields
.field private fChildSequence:[I

.field private fCurrentChildDepth:I

.field private fCurrentChildPosition:I

.field private fCurrentChildSequence:[I

.field protected fErrorHandler:Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

.field protected fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

.field fFoundDepth:I

.field private fIsElementFound:Z

.field private fIsFragmentResolved:Z

.field private fIsResolveElement:Z

.field fIsShortHand:Z

.field private fSchemeData:Ljava/lang/String;

.field private fSchemeName:Ljava/lang/String;

.field private fShortHandPointer:Lmf/org/apache/xerces/xpointer/ShortHandPointer;

.field private fShortHandPointerName:Ljava/lang/String;

.field private fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

.field private fWasOnlyEmptyElementFound:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsResolveElement:Z

    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsElementFound:Z

    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fWasOnlyEmptyElementFound:Z

    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsShortHand:Z

    iput v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fFoundDepth:I

    const/4 v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildPosition:I

    iput v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsFragmentResolved:Z

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 2
    .param p1, "symbolTable"    # Lmf/org/apache/xerces/util/SymbolTable;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsResolveElement:Z

    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsElementFound:Z

    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fWasOnlyEmptyElementFound:Z

    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsShortHand:Z

    iput v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fFoundDepth:I

    const/4 v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildPosition:I

    iput v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsFragmentResolved:Z

    iput-object p1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/impl/XMLErrorReporter;)V
    .locals 2
    .param p1, "symbolTable"    # Lmf/org/apache/xerces/util/SymbolTable;
    .param p2, "errorReporter"    # Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsResolveElement:Z

    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsElementFound:Z

    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fWasOnlyEmptyElementFound:Z

    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsShortHand:Z

    iput v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fFoundDepth:I

    const/4 v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildPosition:I

    iput v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsFragmentResolved:Z

    iput-object p1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iput-object p2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    return-void
.end method


# virtual methods
.method protected checkMatch()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    iget-boolean v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsShortHand:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fChildSequence:[I

    array-length v2, v2

    iget v3, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    add-int/lit8 v3, v3, 0x1

    if-gt v2, v3, :cond_1

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fChildSequence:[I

    array-length v2, v2

    if-lt v0, v2, :cond_2

    :cond_0
    const/4 v1, 0x1

    .end local v0    # "i":I
    :cond_1
    return v1

    .restart local v0    # "i":I
    :cond_2
    iget-object v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fChildSequence:[I

    aget v2, v2, v0

    iget-object v3, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildSequence:[I

    aget v3, v3, v0

    if-ne v2, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_3
    iget-object v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fChildSequence:[I

    array-length v2, v2

    iget v3, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    add-int/lit8 v3, v3, 0x1

    if-gt v2, v3, :cond_1

    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fChildSequence:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildSequence:[I

    array-length v2, v2

    add-int/lit8 v3, v0, 0x2

    if-lt v2, v3, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fChildSequence:[I

    aget v2, v2, v0

    iget-object v3, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildSequence:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    if-ne v2, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getSchemeData()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fSchemeData:Ljava/lang/String;

    return-object v0
.end method

.method public getSchemeName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fSchemeName:Ljava/lang/String;

    return-object v0
.end method

.method protected init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fSchemeName:Ljava/lang/String;

    iput-object v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fSchemeData:Ljava/lang/String;

    iput-object v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fShortHandPointerName:Ljava/lang/String;

    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsResolveElement:Z

    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsElementFound:Z

    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fWasOnlyEmptyElementFound:Z

    iput v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fFoundDepth:I

    const/4 v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildPosition:I

    iput v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsFragmentResolved:Z

    iput-object v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fShortHandPointer:Lmf/org/apache/xerces/xpointer/ShortHandPointer;

    invoke-virtual {p0}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->initErrorReporter()V

    return-void
.end method

.method protected initErrorReporter()V
    .locals 3

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    if-nez v0, :cond_0

    new-instance v0, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/XMLErrorReporter;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fErrorHandler:Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

    if-nez v0, :cond_1

    new-instance v0, Lmf/org/apache/xerces/xpointer/XPointerErrorHandler;

    invoke-direct {v0}, Lmf/org/apache/xerces/xpointer/XPointerErrorHandler;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fErrorHandler:Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v1, "http://www.w3.org/TR/XPTR"

    new-instance v2, Lmf/org/apache/xerces/xpointer/XPointerMessageFormatter;

    invoke-direct {v2}, Lmf/org/apache/xerces/xpointer/XPointerMessageFormatter;-><init>()V

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lmf/org/apache/xerces/util/MessageFormatter;)V

    return-void
.end method

.method public isChildFragmentResolved()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsShortHand:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fShortHandPointer:Lmf/org/apache/xerces/xpointer/ShortHandPointer;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fChildSequence:[I

    array-length v2, v2

    if-gtz v2, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fShortHandPointer:Lmf/org/apache/xerces/xpointer/ShortHandPointer;

    invoke-virtual {v0}, Lmf/org/apache/xerces/xpointer/ShortHandPointer;->isChildFragmentResolved()Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fWasOnlyEmptyElementFound:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fWasOnlyEmptyElementFound:Z

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsFragmentResolved:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    iget v3, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fFoundDepth:I

    if-lt v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public isFragmentResolved()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    iget-boolean v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsFragmentResolved:Z

    return v0
.end method

.method protected matchChildSequence(Lmf/org/apache/xerces/xni/QName;I)Z
    .locals 6
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "event"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    iget v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    iget-object v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildSequence:[I

    array-length v2, v2

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildSequence:[I

    array-length v1, v1

    new-array v0, v1, [I

    .local v0, "tmpCurrentChildSequence":[I
    iget-object v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildSequence:[I

    iget-object v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildSequence:[I

    array-length v2, v2

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildSequence:[I

    iget-object v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildSequence:[I

    array-length v2, v0

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .end local v0    # "tmpCurrentChildSequence":[I
    :cond_0
    iget-boolean v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsResolveElement:Z

    if-eqz v1, :cond_2

    if-nez p2, :cond_4

    iget-object v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildSequence:[I

    iget v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    iget v3, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildPosition:I

    aput v3, v1, v2

    iget v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    iput v5, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildPosition:I

    iget v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    iget v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fFoundDepth:I

    if-le v1, v2, :cond_1

    iget v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fFoundDepth:I

    if-nez v1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->checkMatch()Z

    move-result v1

    if-eqz v1, :cond_3

    iput-boolean v5, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsElementFound:Z

    iget v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    iput v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fFoundDepth:I

    :cond_2
    :goto_0
    iget-boolean v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsElementFound:Z

    return v1

    :cond_3
    iput-boolean v4, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsElementFound:Z

    iput v4, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fFoundDepth:I

    goto :goto_0

    :cond_4
    if-ne p2, v5, :cond_9

    iget v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    iget v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fFoundDepth:I

    if-ne v1, v2, :cond_6

    iput-boolean v5, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsElementFound:Z

    :cond_5
    :goto_1
    iget-object v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildSequence:[I

    iget v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    aput v4, v1, v2

    iget v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    iget-object v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildSequence:[I

    iget v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    aget v1, v1, v2

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildPosition:I

    goto :goto_0

    :cond_6
    iget v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    iget v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fFoundDepth:I

    if-ge v1, v2, :cond_7

    iget v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fFoundDepth:I

    if-nez v1, :cond_8

    :cond_7
    iget v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    iget v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fFoundDepth:I

    if-le v1, v2, :cond_5

    iget v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fFoundDepth:I

    if-nez v1, :cond_5

    :cond_8
    iput-boolean v4, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsElementFound:Z

    goto :goto_1

    :cond_9
    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    iget-object v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildSequence:[I

    iget v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildDepth:I

    iget v3, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildPosition:I

    aput v3, v1, v2

    iget v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildPosition:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildPosition:I

    invoke-virtual {p0}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->checkMatch()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-boolean v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsElementFound:Z

    if-nez v1, :cond_a

    iput-boolean v5, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fWasOnlyEmptyElementFound:Z

    :goto_2
    iput-boolean v5, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsElementFound:Z

    goto :goto_0

    :cond_a
    iput-boolean v4, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fWasOnlyEmptyElementFound:Z

    goto :goto_2

    :cond_b
    iput-boolean v4, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsElementFound:Z

    iput-boolean v4, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fWasOnlyEmptyElementFound:Z

    goto :goto_0
.end method

.method public parseXPointer(Ljava/lang/String;)V
    .locals 11
    .param p1, "xpointer"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->init()V

    new-instance v2, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;

    iget-object v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v1, v3}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;-><init>(Lmf/org/apache/xerces/xpointer/ElementSchemePointer;Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;)V

    .local v2, "tokens":Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;
    new-instance v0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$1;

    iget-object v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-direct {v0, p0, v1}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$1;-><init>(Lmf/org/apache/xerces/xpointer/ElementSchemePointer;Lmf/org/apache/xerces/util/SymbolTable;)V

    .local v0, "scanner":Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Scanner;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .local v5, "length":I
    iget-object v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object v3, p1

    # invokes: Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Scanner;->scanExpr(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;Ljava/lang/String;II)Z
    invoke-static/range {v0 .. v5}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Scanner;->access$1(Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Scanner;Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;Ljava/lang/String;II)Z

    move-result v7

    .local v7, "success":Z
    if-nez v7, :cond_0

    const-string v1, "InvalidElementSchemeXPointer"

    new-array v3, v10, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {p0, v1, v3}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    # invokes: Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->getTokenCount()I
    invoke-static {v2}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->access$4(Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    new-array v8, v1, [I

    .local v8, "tmpChildSequence":[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    # invokes: Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->hasMore()Z
    invoke-static {v2}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->access$5(Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;)Z

    move-result v1

    if-nez v1, :cond_1

    new-array v1, v6, [I

    iput-object v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fChildSequence:[I

    new-array v1, v6, [I

    iput-object v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fCurrentChildSequence:[I

    iget-object v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fChildSequence:[I

    invoke-static {v8, v4, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_1
    # invokes: Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->nextToken()I
    invoke-static {v2}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->access$6(Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;)I

    move-result v9

    .local v9, "token":I
    packed-switch v9, :pswitch_data_0

    const-string v1, "InvalidElementSchemeXPointer"

    new-array v3, v10, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {p0, v1, v3}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_0
    # invokes: Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->nextToken()I
    invoke-static {v2}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->access$6(Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;)I

    move-result v9

    # invokes: Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->getTokenString(I)Ljava/lang/String;
    invoke-static {v2, v9}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->access$3(Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fShortHandPointerName:Ljava/lang/String;

    new-instance v1, Lmf/org/apache/xerces/xpointer/ShortHandPointer;

    iget-object v3, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-direct {v1, v3}, Lmf/org/apache/xerces/xpointer/ShortHandPointer;-><init>(Lmf/org/apache/xerces/util/SymbolTable;)V

    iput-object v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fShortHandPointer:Lmf/org/apache/xerces/xpointer/ShortHandPointer;

    iget-object v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fShortHandPointer:Lmf/org/apache/xerces/xpointer/ShortHandPointer;

    iget-object v3, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fShortHandPointerName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lmf/org/apache/xerces/xpointer/ShortHandPointer;->setSchemeName(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    # invokes: Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->nextToken()I
    invoke-static {v2}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->access$6(Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;)I

    move-result v1

    aput v1, v8, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected reportError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "arguments"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    new-instance v0, Lmf/org/apache/xerces/xni/XNIException;

    iget-object v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v2, "http://www.w3.org/TR/XPTR"

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lmf/org/apache/xerces/util/MessageFormatter;

    move-result-object v1

    iget-object v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2}, Lmf/org/apache/xerces/util/MessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resolveXPointer(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;I)Z
    .locals 4
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "attributes"    # Lmf/org/apache/xerces/xni/XMLAttributes;
    .param p3, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .param p4, "event"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x0

    .local v0, "isShortHandPointerResolved":Z
    iget-object v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fShortHandPointerName:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fShortHandPointer:Lmf/org/apache/xerces/xpointer/ShortHandPointer;

    invoke-virtual {v1, p1, p2, p3, p4}, Lmf/org/apache/xerces/xpointer/ShortHandPointer;->resolveXPointer(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsResolveElement:Z

    iput-boolean v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsShortHand:Z

    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fChildSequence:[I

    array-length v1, v1

    if-lez v1, :cond_2

    invoke-virtual {p0, p1, p4}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->matchChildSequence(Lmf/org/apache/xerces/xni/QName;I)Z

    move-result v1

    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsFragmentResolved:Z

    :goto_1
    iget-boolean v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsFragmentResolved:Z

    return v1

    :cond_0
    iput-boolean v3, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsResolveElement:Z

    goto :goto_0

    :cond_1
    iput-boolean v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsResolveElement:Z

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    iget-object v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fChildSequence:[I

    array-length v1, v1

    if-gtz v1, :cond_3

    iput-boolean v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsFragmentResolved:Z

    goto :goto_1

    :cond_3
    iput-boolean v3, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fIsFragmentResolved:Z

    goto :goto_1
.end method

.method public setSchemeData(Ljava/lang/String;)V
    .locals 0
    .param p1, "schemeData"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fSchemeData:Ljava/lang/String;

    return-void
.end method

.method public setSchemeName(Ljava/lang/String;)V
    .locals 0
    .param p1, "schemeName"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->fSchemeName:Ljava/lang/String;

    return-void
.end method

.class final Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;
.super Ljava/lang/Object;
.source "XPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xpath/XPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Tokens"
.end annotation


# static fields
.field static final DUMP_TOKENS:Z = false

.field public static final EXPRTOKEN_ATSIGN:I = 0x6

.field public static final EXPRTOKEN_AXISNAME_ANCESTOR:I = 0x21

.field public static final EXPRTOKEN_AXISNAME_ANCESTOR_OR_SELF:I = 0x22

.field public static final EXPRTOKEN_AXISNAME_ATTRIBUTE:I = 0x23

.field public static final EXPRTOKEN_AXISNAME_CHILD:I = 0x24

.field public static final EXPRTOKEN_AXISNAME_DESCENDANT:I = 0x25

.field public static final EXPRTOKEN_AXISNAME_DESCENDANT_OR_SELF:I = 0x26

.field public static final EXPRTOKEN_AXISNAME_FOLLOWING:I = 0x27

.field public static final EXPRTOKEN_AXISNAME_FOLLOWING_SIBLING:I = 0x28

.field public static final EXPRTOKEN_AXISNAME_NAMESPACE:I = 0x29

.field public static final EXPRTOKEN_AXISNAME_PARENT:I = 0x2a

.field public static final EXPRTOKEN_AXISNAME_PRECEDING:I = 0x2b

.field public static final EXPRTOKEN_AXISNAME_PRECEDING_SIBLING:I = 0x2c

.field public static final EXPRTOKEN_AXISNAME_SELF:I = 0x2d

.field public static final EXPRTOKEN_CLOSE_BRACKET:I = 0x3

.field public static final EXPRTOKEN_CLOSE_PAREN:I = 0x1

.field public static final EXPRTOKEN_COMMA:I = 0x7

.field public static final EXPRTOKEN_DOUBLE_COLON:I = 0x8

.field public static final EXPRTOKEN_DOUBLE_PERIOD:I = 0x5

.field public static final EXPRTOKEN_FUNCTION_NAME:I = 0x20

.field public static final EXPRTOKEN_LITERAL:I = 0x2e

.field public static final EXPRTOKEN_NAMETEST_ANY:I = 0x9

.field public static final EXPRTOKEN_NAMETEST_NAMESPACE:I = 0xa

.field public static final EXPRTOKEN_NAMETEST_QNAME:I = 0xb

.field public static final EXPRTOKEN_NODETYPE_COMMENT:I = 0xc

.field public static final EXPRTOKEN_NODETYPE_NODE:I = 0xf

.field public static final EXPRTOKEN_NODETYPE_PI:I = 0xe

.field public static final EXPRTOKEN_NODETYPE_TEXT:I = 0xd

.field public static final EXPRTOKEN_NUMBER:I = 0x2f

.field public static final EXPRTOKEN_OPEN_BRACKET:I = 0x2

.field public static final EXPRTOKEN_OPEN_PAREN:I = 0x0

.field public static final EXPRTOKEN_OPERATOR_AND:I = 0x10

.field public static final EXPRTOKEN_OPERATOR_DIV:I = 0x13

.field public static final EXPRTOKEN_OPERATOR_DOUBLE_SLASH:I = 0x16

.field public static final EXPRTOKEN_OPERATOR_EQUAL:I = 0x1a

.field public static final EXPRTOKEN_OPERATOR_GREATER:I = 0x1e

.field public static final EXPRTOKEN_OPERATOR_GREATER_EQUAL:I = 0x1f

.field public static final EXPRTOKEN_OPERATOR_LESS:I = 0x1c

.field public static final EXPRTOKEN_OPERATOR_LESS_EQUAL:I = 0x1d

.field public static final EXPRTOKEN_OPERATOR_MINUS:I = 0x19

.field public static final EXPRTOKEN_OPERATOR_MOD:I = 0x12

.field public static final EXPRTOKEN_OPERATOR_MULT:I = 0x14

.field public static final EXPRTOKEN_OPERATOR_NOT_EQUAL:I = 0x1b

.field public static final EXPRTOKEN_OPERATOR_OR:I = 0x11

.field public static final EXPRTOKEN_OPERATOR_PLUS:I = 0x18

.field public static final EXPRTOKEN_OPERATOR_SLASH:I = 0x15

.field public static final EXPRTOKEN_OPERATOR_UNION:I = 0x17

.field public static final EXPRTOKEN_PERIOD:I = 0x4

.field public static final EXPRTOKEN_VARIABLE_REFERENCE:I = 0x30

.field private static final INITIAL_TOKEN_COUNT:I = 0x100

.field private static final fgTokenNames:[Ljava/lang/String;


# instance fields
.field private fCurrentTokenIndex:I

.field private fSymbolMapping:Ljava/util/Hashtable;

.field private fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

.field private fTokenCount:I

.field private fTokenNames:Ljava/util/Hashtable;

.field private fTokens:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v0, 0x31

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "EXPRTOKEN_OPEN_PAREN"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "EXPRTOKEN_CLOSE_PAREN"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "EXPRTOKEN_OPEN_BRACKET"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "EXPRTOKEN_CLOSE_BRACKET"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "EXPRTOKEN_PERIOD"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "EXPRTOKEN_DOUBLE_PERIOD"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "EXPRTOKEN_ATSIGN"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "EXPRTOKEN_COMMA"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "EXPRTOKEN_DOUBLE_COLON"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "EXPRTOKEN_NAMETEST_ANY"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "EXPRTOKEN_NAMETEST_NAMESPACE"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "EXPRTOKEN_NAMETEST_QNAME"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "EXPRTOKEN_NODETYPE_COMMENT"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "EXPRTOKEN_NODETYPE_TEXT"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "EXPRTOKEN_NODETYPE_PI"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "EXPRTOKEN_NODETYPE_NODE"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "EXPRTOKEN_OPERATOR_AND"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "EXPRTOKEN_OPERATOR_OR"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "EXPRTOKEN_OPERATOR_MOD"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "EXPRTOKEN_OPERATOR_DIV"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "EXPRTOKEN_OPERATOR_MULT"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "EXPRTOKEN_OPERATOR_SLASH"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "EXPRTOKEN_OPERATOR_DOUBLE_SLASH"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "EXPRTOKEN_OPERATOR_UNION"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "EXPRTOKEN_OPERATOR_PLUS"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "EXPRTOKEN_OPERATOR_MINUS"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "EXPRTOKEN_OPERATOR_EQUAL"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "EXPRTOKEN_OPERATOR_NOT_EQUAL"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "EXPRTOKEN_OPERATOR_LESS"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "EXPRTOKEN_OPERATOR_LESS_EQUAL"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "EXPRTOKEN_OPERATOR_GREATER"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "EXPRTOKEN_OPERATOR_GREATER_EQUAL"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "EXPRTOKEN_FUNCTION_NAME"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "EXPRTOKEN_AXISNAME_ANCESTOR"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "EXPRTOKEN_AXISNAME_ANCESTOR_OR_SELF"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "EXPRTOKEN_AXISNAME_ATTRIBUTE"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "EXPRTOKEN_AXISNAME_CHILD"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "EXPRTOKEN_AXISNAME_DESCENDANT"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "EXPRTOKEN_AXISNAME_DESCENDANT_OR_SELF"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "EXPRTOKEN_AXISNAME_FOLLOWING"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "EXPRTOKEN_AXISNAME_FOLLOWING_SIBLING"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "EXPRTOKEN_AXISNAME_NAMESPACE"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "EXPRTOKEN_AXISNAME_PARENT"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "EXPRTOKEN_AXISNAME_PRECEDING"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "EXPRTOKEN_AXISNAME_PRECEDING_SIBLING"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "EXPRTOKEN_AXISNAME_SELF"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "EXPRTOKEN_LITERAL"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "EXPRTOKEN_NUMBER"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "EXPRTOKEN_VARIABLE_REFERENCE"

    aput-object v2, v0, v1

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fgTokenNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 10
    .param p1, "symbolTable"    # Lmf/org/apache/xerces/util/SymbolTable;

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v2, 0x100

    new-array v2, v2, [I

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokens:[I

    iput v5, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokenCount:I

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fSymbolMapping:Ljava/util/Hashtable;

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    const/16 v2, 0xd

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "ancestor"

    aput-object v2, v1, v5

    const-string v2, "ancestor-or-self"

    aput-object v2, v1, v6

    const-string v2, "attribute"

    aput-object v2, v1, v7

    const-string v2, "child"

    aput-object v2, v1, v8

    const-string v2, "descendant"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "descendant-or-self"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "following"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "following-sibling"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "namespace"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "parent"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "preceding"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "preceding-sibling"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "self"

    aput-object v3, v1, v2

    .local v1, "symbols":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v5}, Ljava/lang/Integer;-><init>(I)V

    const-string v4, "EXPRTOKEN_OPEN_PAREN"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v6}, Ljava/lang/Integer;-><init>(I)V

    const-string v4, "EXPRTOKEN_CLOSE_PAREN"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v7}, Ljava/lang/Integer;-><init>(I)V

    const-string v4, "EXPRTOKEN_OPEN_BRACKET"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v8}, Ljava/lang/Integer;-><init>(I)V

    const-string v4, "EXPRTOKEN_CLOSE_BRACKET"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v9}, Ljava/lang/Integer;-><init>(I)V

    const-string v4, "EXPRTOKEN_PERIOD"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    const-string v4, "EXPRTOKEN_DOUBLE_PERIOD"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    const/4 v4, 0x6

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    const-string v4, "EXPRTOKEN_ATSIGN"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    const/4 v4, 0x7

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    const-string v4, "EXPRTOKEN_COMMA"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x8

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    const-string v4, "EXPRTOKEN_DOUBLE_COLON"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x9

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    const-string v4, "EXPRTOKEN_NAMETEST_ANY"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xa

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    const-string v4, "EXPRTOKEN_NAMETEST_NAMESPACE"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xb

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    const-string v4, "EXPRTOKEN_NAMETEST_QNAME"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xc

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    const-string v4, "EXPRTOKEN_NODETYPE_COMMENT"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xd

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    const-string v4, "EXPRTOKEN_NODETYPE_TEXT"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xe

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    const-string v4, "EXPRTOKEN_NODETYPE_PI"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xf

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    const-string v4, "EXPRTOKEN_NODETYPE_NODE"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    const-string v4, "EXPRTOKEN_OPERATOR_AND"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x11

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    const-string v4, "EXPRTOKEN_OPERATOR_OR"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x12

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    const-string v4, "EXPRTOKEN_OPERATOR_MOD"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x13

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    const-string v4, "EXPRTOKEN_OPERATOR_DIV"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x14

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    const-string v4, "EXPRTOKEN_OPERATOR_MULT"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x15

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    const-string v4, "EXPRTOKEN_OPERATOR_SLASH"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x16

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    const-string v4, "EXPRTOKEN_OPERATOR_DOUBLE_SLASH"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x17

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    const-string v4, "EXPRTOKEN_OPERATOR_UNION"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x18

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    const-string v4, "EXPRTOKEN_OPERATOR_PLUS"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x19

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    const-string v4, "EXPRTOKEN_OPERATOR_MINUS"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x1a

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    const-string v4, "EXPRTOKEN_OPERATOR_EQUAL"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x1b

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    const-string v4, "EXPRTOKEN_OPERATOR_NOT_EQUAL"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x1c

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    const-string v4, "EXPRTOKEN_OPERATOR_LESS"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x1d

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    const-string v4, "EXPRTOKEN_OPERATOR_LESS_EQUAL"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x1e

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    const-string v4, "EXPRTOKEN_OPERATOR_GREATER"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x1f

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    const-string v4, "EXPRTOKEN_OPERATOR_GREATER_EQUAL"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x20

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    const-string v4, "EXPRTOKEN_FUNCTION_NAME"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x21

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    const-string v4, "EXPRTOKEN_AXISNAME_ANCESTOR"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x22

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    const-string v4, "EXPRTOKEN_AXISNAME_ANCESTOR_OR_SELF"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x23

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    const-string v4, "EXPRTOKEN_AXISNAME_ATTRIBUTE"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x24

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    const-string v4, "EXPRTOKEN_AXISNAME_CHILD"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x25

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    const-string v4, "EXPRTOKEN_AXISNAME_DESCENDANT"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x26

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    const-string v4, "EXPRTOKEN_AXISNAME_DESCENDANT_OR_SELF"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x27

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    const-string v4, "EXPRTOKEN_AXISNAME_FOLLOWING"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x28

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    const-string v4, "EXPRTOKEN_AXISNAME_FOLLOWING_SIBLING"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x29

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    const-string v4, "EXPRTOKEN_AXISNAME_NAMESPACE"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x2a

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    const-string v4, "EXPRTOKEN_AXISNAME_PARENT"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x2b

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    const-string v4, "EXPRTOKEN_AXISNAME_PRECEDING"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x2c

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    const-string v4, "EXPRTOKEN_AXISNAME_PRECEDING_SIBLING"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x2d

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    const-string v4, "EXPRTOKEN_AXISNAME_SELF"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x2e

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    const-string v4, "EXPRTOKEN_LITERAL"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x2f

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    const-string v4, "EXPRTOKEN_NUMBER"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x30

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    const-string v4, "EXPRTOKEN_VARIABLE_REFERENCE"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fSymbolMapping:Ljava/util/Hashtable;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public addToken(I)V
    .locals 5
    .param p1, "token"    # I

    .prologue
    const/4 v4, 0x0

    :try_start_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokens:[I

    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokenCount:I

    aput p1, v2, v3
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget v2, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokenCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokenCount:I

    return-void

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokens:[I

    .local v1, "oldList":[I
    iget v2, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokenCount:I

    shl-int/lit8 v2, v2, 0x1

    new-array v2, v2, [I

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokens:[I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokens:[I

    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokenCount:I

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokens:[I

    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokenCount:I

    aput p1, v2, v3

    goto :goto_0
.end method

.method public addToken(Ljava/lang/String;)V
    .locals 2
    .param p1, "tokenStr"    # Ljava/lang/String;

    .prologue
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .local v0, "tokenInt":Ljava/lang/Integer;
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    .end local v0    # "tokenInt":Ljava/lang/Integer;
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .restart local v0    # "tokenInt":Ljava/lang/Integer;
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->addToken(I)V

    return-void
.end method

.method public dumpTokens()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokenCount:I

    if-lt v0, v1, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->println()V

    return-void

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokens:[I

    aget v1, v1, v0

    packed-switch v1, :pswitch_data_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<???/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<OPEN_PAREN/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<CLOSE_PAREN/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<OPEN_BRACKET/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_3
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<CLOSE_BRACKET/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_4
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<PERIOD/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_5
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<DOUBLE_PERIOD/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_6
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<ATSIGN/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_7
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<COMMA/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_8
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<DOUBLE_COLON/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_9
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<NAMETEST_ANY/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_a
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<NAMETEST_NAMESPACE"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " prefix=\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokens:[I

    add-int/lit8 v0, v0, 0x1

    aget v3, v3, v0

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->getTokenString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_b
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<NAMETEST_QNAME"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokens:[I

    add-int/lit8 v0, v0, 0x1

    aget v1, v1, v0

    if-eq v1, v4, :cond_2

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " prefix=\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokens:[I

    aget v3, v3, v0

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->getTokenString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_2
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " localpart=\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokens:[I

    add-int/lit8 v0, v0, 0x1

    aget v3, v3, v0

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->getTokenString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_c
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<NODETYPE_COMMENT/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_d
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<NODETYPE_TEXT/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_e
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<NODETYPE_PI/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_f
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<NODETYPE_NODE/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_10
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<OPERATOR_AND/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_11
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<OPERATOR_OR/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_12
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<OPERATOR_MOD/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_13
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<OPERATOR_DIV/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_14
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<OPERATOR_MULT/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_15
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<OPERATOR_SLASH/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokenCount:I

    if-ge v1, v2, :cond_1

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->println()V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_16
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<OPERATOR_DOUBLE_SLASH/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_17
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<OPERATOR_UNION/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_18
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<OPERATOR_PLUS/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_19
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<OPERATOR_MINUS/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_1a
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<OPERATOR_EQUAL/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_1b
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<OPERATOR_NOT_EQUAL/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_1c
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<OPERATOR_LESS/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_1d
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<OPERATOR_LESS_EQUAL/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_1e
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<OPERATOR_GREATER/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_1f
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<OPERATOR_GREATER_EQUAL/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_20
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<FUNCTION_NAME"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokens:[I

    add-int/lit8 v0, v0, 0x1

    aget v1, v1, v0

    if-eq v1, v4, :cond_3

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " prefix=\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokens:[I

    aget v3, v3, v0

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->getTokenString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_3
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " localpart=\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokens:[I

    add-int/lit8 v0, v0, 0x1

    aget v3, v3, v0

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->getTokenString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_21
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<AXISNAME_ANCESTOR/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_22
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<AXISNAME_ANCESTOR_OR_SELF/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_23
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<AXISNAME_ATTRIBUTE/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_24
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<AXISNAME_CHILD/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_25
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<AXISNAME_DESCENDANT/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_26
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<AXISNAME_DESCENDANT_OR_SELF/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_27
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<AXISNAME_FOLLOWING/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_28
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<AXISNAME_FOLLOWING_SIBLING/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_29
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<AXISNAME_NAMESPACE/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_2a
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<AXISNAME_PARENT/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_2b
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<AXISNAME_PRECEDING/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_2c
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<AXISNAME_PRECEDING_SIBLING/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_2d
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<AXISNAME_SELF/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_2e
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<LITERAL"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " value=\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokens:[I

    add-int/lit8 v0, v0, 0x1

    aget v3, v3, v0

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->getTokenString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_2f
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<NUMBER"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " whole=\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokens:[I

    add-int/lit8 v0, v0, 0x1

    aget v3, v3, v0

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->getTokenString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " part=\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokens:[I

    add-int/lit8 v0, v0, 0x1

    aget v3, v3, v0

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->getTokenString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_30
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "<VARIABLE_REFERENCE"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokens:[I

    add-int/lit8 v0, v0, 0x1

    aget v1, v1, v0

    if-eq v1, v4, :cond_4

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " prefix=\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokens:[I

    aget v3, v3, v0

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->getTokenString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_4
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " localpart=\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokens:[I

    add-int/lit8 v0, v0, 0x1

    aget v3, v3, v0

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->getTokenString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "/>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
    .end packed-switch
.end method

.method public getTokenString(I)Ljava/lang/String;
    .locals 2
    .param p1, "token"    # I

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokenNames:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public hasMore()Z
    .locals 2

    .prologue
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fCurrentTokenIndex:I

    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokenCount:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextToken()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/XPathException;
        }
    .end annotation

    .prologue
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fCurrentTokenIndex:I

    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokenCount:I

    if-ne v0, v1, :cond_0

    new-instance v0, Lmf/org/apache/xerces/impl/xpath/XPathException;

    const-string v1, "c-general-xpath"

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xpath/XPathException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokens:[I

    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fCurrentTokenIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fCurrentTokenIndex:I

    aget v0, v0, v1

    return v0
.end method

.method public nextTokenAsString()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/XPathException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->nextToken()I

    move-result v1

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->getTokenString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_0

    new-instance v1, Lmf/org/apache/xerces/impl/xpath/XPathException;

    const-string v2, "c-general-xpath"

    invoke-direct {v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPathException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-object v0
.end method

.method public peekToken()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/XPathException;
        }
    .end annotation

    .prologue
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fCurrentTokenIndex:I

    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokenCount:I

    if-ne v0, v1, :cond_0

    new-instance v0, Lmf/org/apache/xerces/impl/xpath/XPathException;

    const-string v1, "c-general-xpath"

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xpath/XPathException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fTokens:[I

    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fCurrentTokenIndex:I

    aget v0, v0, v1

    return v0
.end method

.method public rewind()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->fCurrentTokenIndex:I

    return-void
.end method

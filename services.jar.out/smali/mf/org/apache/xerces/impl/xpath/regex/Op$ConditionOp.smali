.class Lmf/org/apache/xerces/impl/xpath/regex/Op$ConditionOp;
.super Lmf/org/apache/xerces/impl/xpath/regex/Op;
.source "Op.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xpath/regex/Op;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConditionOp"
.end annotation


# instance fields
.field final condition:Lmf/org/apache/xerces/impl/xpath/regex/Op;

.field final no:Lmf/org/apache/xerces/impl/xpath/regex/Op;

.field final refNumber:I

.field final yes:Lmf/org/apache/xerces/impl/xpath/regex/Op;


# direct methods
.method constructor <init>(IILmf/org/apache/xerces/impl/xpath/regex/Op;Lmf/org/apache/xerces/impl/xpath/regex/Op;Lmf/org/apache/xerces/impl/xpath/regex/Op;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "refno"    # I
    .param p3, "conditionflow"    # Lmf/org/apache/xerces/impl/xpath/regex/Op;
    .param p4, "yesflow"    # Lmf/org/apache/xerces/impl/xpath/regex/Op;
    .param p5, "noflow"    # Lmf/org/apache/xerces/impl/xpath/regex/Op;

    .prologue
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Op;-><init>(I)V

    iput p2, p0, Lmf/org/apache/xerces/impl/xpath/regex/Op$ConditionOp;->refNumber:I

    iput-object p3, p0, Lmf/org/apache/xerces/impl/xpath/regex/Op$ConditionOp;->condition:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    iput-object p4, p0, Lmf/org/apache/xerces/impl/xpath/regex/Op$ConditionOp;->yes:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    iput-object p5, p0, Lmf/org/apache/xerces/impl/xpath/regex/Op$ConditionOp;->no:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    return-void
.end method

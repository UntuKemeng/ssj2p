.class public Lcom/sec/epdg/EpdgConstants;
.super Ljava/lang/Object;
.source "EpdgConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/EpdgConstants$TriState;
    }
.end annotation


# static fields
.field public static final Gid1Map:Ljava/util/HashMap;
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

.field public static final MccmncMap:Ljava/util/HashMap;
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
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/sec/epdg/EpdgConstants$1;

    invoke-direct {v0}, Lcom/sec/epdg/EpdgConstants$1;-><init>()V

    sput-object v0, Lcom/sec/epdg/EpdgConstants;->MccmncMap:Ljava/util/HashMap;

    .line 130
    new-instance v0, Lcom/sec/epdg/EpdgConstants$2;

    invoke-direct {v0}, Lcom/sec/epdg/EpdgConstants$2;-><init>()V

    sput-object v0, Lcom/sec/epdg/EpdgConstants;->Gid1Map:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

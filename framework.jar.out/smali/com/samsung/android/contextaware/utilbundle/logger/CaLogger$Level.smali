.class public abstract enum Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;
.super Ljava/lang/Enum;
.source "CaLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

.field public static final enum DEBUG:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

.field public static final enum ERROR:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

.field public static final enum EXCEPTION:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

.field public static final enum INFO:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

.field public static final enum TRACE:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

.field public static final enum WARN:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level$1;

    const-string v1, "TRACE"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->TRACE:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level$2;

    const-string v1, "DEBUG"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->DEBUG:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level$3;

    const-string v1, "INFO"

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->INFO:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level$4;

    const-string v1, "WARN"

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->WARN:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level$5;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v7}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->ERROR:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level$6;

    const-string v1, "EXCEPTION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->EXCEPTION:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    sget-object v1, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->TRACE:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->DEBUG:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->INFO:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->WARN:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->ERROR:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->EXCEPTION:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->$VALUES:[Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/samsung/android/contextaware/utilbundle/logger/CaLogger$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$1;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$300(Z)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Z

    .prologue
    invoke-static {p0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->getCallerInfo(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getCallerInfo(Z)Ljava/lang/String;
    .locals 5
    .param p0, "isHyphen"    # Z

    .prologue
    # getter for: Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->isCaller:Z
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->access$600()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ""

    :goto_0
    return-object v3

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .local v1, "stackList":[Ljava/lang/StackTraceElement;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .local v0, "callerInfo":Ljava/lang/StringBuffer;
    array-length v3, v1

    const/4 v4, 0x4

    if-lt v3, v4, :cond_1

    const/4 v3, 0x6

    aget-object v3, v1, v3

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "str":Ljava/lang/String;
    const/16 v3, 0x2e

    const/16 v4, 0x28

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .end local v2    # "str":Ljava/lang/String;
    :cond_1
    if-eqz p0, :cond_2

    const-string v3, " - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;
    .locals 1

    .prologue
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->$VALUES:[Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    invoke-virtual {v0}, [Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    return-object v0
.end method


# virtual methods
.method abstract consoleLogging(Ljava/lang/String;)Ljava/lang/String;
.end method

.method abstract fileLogging(Ljava/lang/String;)V
.end method

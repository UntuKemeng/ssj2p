.class public final Lcom/android/server/am/DynamicHiddenApp$ILS_Q;
.super Ljava/lang/Object;
.source "DynamicHiddenApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/DynamicHiddenApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ILS_Q"
.end annotation


# static fields
.field private static HARD_FLAG:Z

.field private static ILS_DEBUG:Z

.field private static MAX_Q_SIZE:I

.field private static Q_Front:I

.field private static Q_Node:[Ljava/lang/String;

.field private static Q_Rear:I

.field private static Q_Size:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1442
    sput-boolean v2, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->HARD_FLAG:Z

    .line 1445
    const-string/jumbo v0, "ro.config.dha_ils_size"

    const-string v1, "30"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->MAX_Q_SIZE:I

    .line 1446
    sput v2, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->Q_Front:I

    .line 1447
    sput v2, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->Q_Rear:I

    .line 1448
    sput v2, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->Q_Size:I

    .line 1449
    sget v0, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->MAX_Q_SIZE:I

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->Q_Node:[Ljava/lang/String;

    .line 1452
    sput-boolean v2, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->ILS_DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAppsLaunchFreq(Ljava/lang/String;)Z
    .locals 3
    .param p0, "pName"    # Ljava/lang/String;

    .prologue
    .line 1499
    invoke-static {p0}, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->isInsert(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1501
    sget-boolean v0, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->ILS_DEBUG:Z

    if-eqz v0, :cond_0

    .line 1502
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ILS: Launch App: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Flag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->HARD_FLAG:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    :cond_0
    sget-boolean v0, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->HARD_FLAG:Z

    return v0
.end method

.method private static isInsert(Ljava/lang/String;)Z
    .locals 6
    .param p0, "pName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1457
    const-string/jumbo v4, "launcher"

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "googlequicksearchbox"

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "contact"

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move v2, v3

    .line 1494
    :cond_1
    :goto_0
    return v2

    .line 1461
    :cond_2
    const/4 v1, 0x0

    .line 1463
    .local v1, "nullCount":I
    sget v4, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->Q_Size:I

    sget v5, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->MAX_Q_SIZE:I

    if-ge v4, v5, :cond_3

    .line 1464
    sget v4, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->Q_Size:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->Q_Size:I

    .line 1466
    :cond_3
    sget-object v4, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->Q_Node:[Ljava/lang/String;

    sget v5, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->Q_Front:I

    aput-object p0, v4, v5

    .line 1468
    sget v0, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->Q_Rear:I

    .local v0, "i":I
    :cond_4
    :goto_1
    sget v4, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->Q_Front:I

    if-eq v0, v4, :cond_5

    .line 1469
    sget-object v4, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->Q_Node:[Ljava/lang/String;

    sget v5, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->Q_Front:I

    aget-object v4, v4, v5

    sget-object v5, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->Q_Node:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1470
    sget-object v4, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->Q_Node:[Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v5, v4, v0

    .line 1471
    sput-boolean v3, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->HARD_FLAG:Z

    .line 1485
    :cond_5
    sget v4, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->Q_Front:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->Q_Front:I

    sget v5, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->MAX_Q_SIZE:I

    if-ne v4, v5, :cond_6

    .line 1486
    sput v3, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->Q_Front:I

    .line 1488
    :cond_6
    sget v4, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->Q_Size:I

    sget v5, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->MAX_Q_SIZE:I

    if-ne v4, v5, :cond_1

    .line 1489
    sget v4, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->Q_Rear:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->Q_Rear:I

    .line 1490
    sget v4, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->Q_Rear:I

    sget v5, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->MAX_Q_SIZE:I

    if-ne v4, v5, :cond_1

    .line 1491
    sput v3, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->Q_Rear:I

    goto :goto_0

    .line 1474
    :cond_7
    sget-object v4, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->Q_Node:[Ljava/lang/String;

    aget-object v4, v4, v0

    if-nez v4, :cond_9

    .line 1475
    sput-boolean v3, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->HARD_FLAG:Z

    .line 1476
    add-int/lit8 v1, v1, 0x1

    .line 1481
    :cond_8
    :goto_2
    add-int/lit8 v0, v0, 0x1

    sget v4, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->MAX_Q_SIZE:I

    if-ne v0, v4, :cond_4

    .line 1482
    const/4 v0, 0x0

    goto :goto_1

    .line 1478
    :cond_9
    sget v4, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->Q_Size:I

    sget v5, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->MAX_Q_SIZE:I

    if-ne v4, v5, :cond_8

    if-nez v1, :cond_8

    .line 1479
    sput-boolean v2, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->HARD_FLAG:Z

    goto :goto_2
.end method
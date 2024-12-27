.class public Lcom/sec/tima/keystore/util/Utility;
.super Ljava/lang/Object;
.source "Utility.java"


# static fields
.field public static final CHIPNAME:Ljava/lang/String;

.field private static final ECC_SUPPORT_CHIPSETS:[Ljava/lang/String;

.field private static INSTANCE:Lcom/sec/tima/keystore/util/Utility;

.field public static final PRODUCT_NAME:Ljava/lang/String;

.field public static final SDK_VERSION:Ljava/lang/String;


# instance fields
.field private final FIPS_SUPPORT_CHIPSETS:[Ljava/lang/String;

.field private final SDK_21_MODELS:[Ljava/lang/String;

.field private final SDK_22_MODELS:[Ljava/lang/String;

.field private final SDK_23_MODELS:[Ljava/lang/String;

.field private mIsEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/tima/keystore/util/Utility;->PRODUCT_NAME:Ljava/lang/String;

    const-string v0, "ro.build.version.sdk"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/tima/keystore/util/Utility;->SDK_VERSION:Ljava/lang/String;

    const-string v0, "ro.chipname"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/tima/keystore/util/Utility;->CHIPNAME:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/tima/keystore/util/Utility;->INSTANCE:Lcom/sec/tima/keystore/util/Utility;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "MSM8996"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "exynos8890"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/tima/keystore/util/Utility;->ECC_SUPPORT_CHIPSETS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 6

    .prologue
    const/4 v2, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Lcom/sec/tima/keystore/util/Utility;->mIsEnabled:Z

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "ZERO"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/sec/tima/keystore/util/Utility;->SDK_21_MODELS:[Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "ZERO"

    aput-object v1, v0, v3

    const-string v1, "NOBLE"

    aput-object v1, v0, v4

    const-string v1, "ZEN"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/sec/tima/keystore/util/Utility;->SDK_22_MODELS:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ZERO"

    aput-object v1, v0, v3

    const-string v1, "NOBLE"

    aput-object v1, v0, v4

    const-string v1, "ZEN"

    aput-object v1, v0, v5

    const-string v1, "HERO"

    aput-object v1, v0, v2

    const/4 v1, 0x4

    const-string v2, "SC-02H"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "SCV33"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/tima/keystore/util/Utility;->SDK_23_MODELS:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "MSM8996"

    aput-object v1, v0, v3

    const-string v1, "exynos8890"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/sec/tima/keystore/util/Utility;->FIPS_SUPPORT_CHIPSETS:[Ljava/lang/String;

    sget-object v0, Lcom/sec/tima/keystore/util/Utility;->PRODUCT_NAME:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/tima/keystore/util/Utility;->SDK_VERSION:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/tima/keystore/util/Utility;->SDK_VERSION:Ljava/lang/String;

    const-string v1, "21"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/tima/keystore/util/Utility;->SDK_21_MODELS:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/tima/keystore/util/Utility;->checkModels([Ljava/lang/String;)V

    :cond_0
    :goto_0
    sget-object v0, Lcom/sec/tima/keystore/util/Utility;->CHIPNAME:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/tima/keystore/util/Utility;->CHIPNAME:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/tima/keystore/util/Utility;->FIPS_SUPPORT_CHIPSETS:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/sec/tima/keystore/util/Utility;->checkModels(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    sget-object v0, Lcom/sec/tima/keystore/util/Utility;->SDK_VERSION:Ljava/lang/String;

    const-string v1, "22"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/tima/keystore/util/Utility;->SDK_22_MODELS:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/tima/keystore/util/Utility;->checkModels([Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/sec/tima/keystore/util/Utility;->SDK_VERSION:Ljava/lang/String;

    const-string v1, "23"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/tima/keystore/util/Utility;->SDK_23_MODELS:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/tima/keystore/util/Utility;->checkModels([Ljava/lang/String;)V

    goto :goto_0
.end method

.method private checkModels(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .param p1, "chipName"    # Ljava/lang/String;
    .param p2, "modelNames"    # [Ljava/lang/String;

    .prologue
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .local v3, "model":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sec/tima/keystore/util/Utility;->mIsEnabled:Z

    .end local v3    # "model":Ljava/lang/String;
    :cond_0
    return-void

    .restart local v3    # "model":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private checkModels([Ljava/lang/String;)V
    .locals 5
    .param p1, "modelNames"    # [Ljava/lang/String;

    .prologue
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .local v3, "model":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/sec/tima/keystore/util/Utility;->PRODUCT_NAME:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sec/tima/keystore/util/Utility;->mIsEnabled:Z

    .end local v3    # "model":Ljava/lang/String;
    :cond_0
    return-void

    .restart local v3    # "model":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static isECCSupported()Z
    .locals 5

    .prologue
    sget-object v4, Lcom/sec/tima/keystore/util/Utility;->CHIPNAME:Ljava/lang/String;

    if-eqz v4, :cond_1

    sget-object v0, Lcom/sec/tima/keystore/util/Utility;->ECC_SUPPORT_CHIPSETS:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .local v3, "model":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/sec/tima/keystore/util/Utility;->CHIPNAME:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    .end local v3    # "model":Ljava/lang/String;
    :goto_1
    return v4

    .restart local v3    # "model":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3    # "model":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static isFipsTimaEnabled()Z
    .locals 1

    .prologue
    sget-object v0, Lcom/sec/tima/keystore/util/Utility;->INSTANCE:Lcom/sec/tima/keystore/util/Utility;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/tima/keystore/util/Utility;

    invoke-direct {v0}, Lcom/sec/tima/keystore/util/Utility;-><init>()V

    sput-object v0, Lcom/sec/tima/keystore/util/Utility;->INSTANCE:Lcom/sec/tima/keystore/util/Utility;

    sget-object v0, Lcom/sec/tima/keystore/util/Utility;->INSTANCE:Lcom/sec/tima/keystore/util/Utility;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/sec/tima/keystore/util/Utility;->INSTANCE:Lcom/sec/tima/keystore/util/Utility;

    iget-boolean v0, v0, Lcom/sec/tima/keystore/util/Utility;->mIsEnabled:Z

    goto :goto_0
.end method

.class public Landroid/os/STSHelper;
.super Ljava/lang/Object;
.source "STSHelper.java"


# static fields
.field private static final DTS_MAX_VALUE:D = 1.0

.field private static final DTS_MIN_VALUE:D = 0.0

.field private static final DTS_ODTC_NOT_ALLOWED:D = 0.0

.field private static final ODTC_NOT_ALLOWED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "STSHelper"

.field private static final bDTSEnabled:Z = true

.field private static final bODTCEnabled:Z

.field private static mInstance:Landroid/os/STSHelper;


# instance fields
.field mDTSHelper:Landroid/os/DTSHelper;

.field mOdtcHelper:Landroid/os/OdtcHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Landroid/os/STSHelper;->mInstance:Landroid/os/STSHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Landroid/os/STSHelper;
    .locals 2

    .prologue
    const-class v1, Landroid/os/STSHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/os/STSHelper;->mInstance:Landroid/os/STSHelper;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/STSHelper;

    invoke-direct {v0}, Landroid/os/STSHelper;-><init>()V

    sput-object v0, Landroid/os/STSHelper;->mInstance:Landroid/os/STSHelper;

    :cond_0
    sget-object v0, Landroid/os/STSHelper;->mInstance:Landroid/os/STSHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized getSTSOption(Ljava/lang/String;)D
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0x0

    monitor-enter p0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .local v0, "dtsFactor":D
    const/4 v2, 0x0

    .local v2, "odtcOption":I
    :try_start_0
    invoke-static {}, Landroid/os/DTSHelper;->getInstance()Landroid/os/DTSHelper;

    move-result-object v3

    iput-object v3, p0, Landroid/os/STSHelper;->mDTSHelper:Landroid/os/DTSHelper;

    iget-object v3, p0, Landroid/os/STSHelper;->mDTSHelper:Landroid/os/DTSHelper;

    invoke-virtual {v3, p1}, Landroid/os/DTSHelper;->isPackageExist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/os/STSHelper;->mDTSHelper:Landroid/os/DTSHelper;

    invoke-virtual {v3, p1}, Landroid/os/DTSHelper;->getScalingFactor(Ljava/lang/String;)D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    :cond_0
    if-eqz v2, :cond_2

    int-to-double v0, v2

    .end local v0    # "dtsFactor":D
    :cond_1
    :goto_0
    monitor-exit p0

    return-wide v0

    .restart local v0    # "dtsFactor":D
    :cond_2
    cmpl-double v3, v0, v4

    if-lez v3, :cond_3

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpg-double v3, v0, v6

    if-ltz v3, :cond_1

    :cond_3
    move-wide v0, v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.class Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;
.super Ljava/lang/Object;
.source "UnstableApInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/UnstableApInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ApInfo"
.end annotation


# static fields
.field private static final MAX_RESET_HISTORY_DURATION:J = 0x2932e00L


# instance fields
.field public counter:I

.field public isMobileHotspot:Z

.field public level:I

.field public startTime:J

.field public time:J

.field public totalDisabledCounter:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    const/16 v0, -0x64

    iput v0, p0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->level:I

    .line 312
    iput v1, p0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->counter:I

    .line 313
    iput v1, p0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->totalDisabledCounter:I

    .line 314
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->time:J

    .line 315
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->startTime:J

    .line 316
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->isMobileHotspot:Z

    .line 319
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->startTime:J

    .line 320
    return-void
.end method


# virtual methods
.method public resetHistory()V
    .locals 6

    .prologue
    .line 323
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 324
    .local v0, "now":J
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->startTime:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x2932e00

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 325
    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->totalDisabledCounter:I

    .line 326
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->startTime:J

    .line 328
    :cond_0
    return-void
.end method

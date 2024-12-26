.class public Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiScanCountInfo;
.super Ljava/lang/Object;
.source "WifiBigDataLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/WifiBigDataLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WifiScanCountInfo"
.end annotation


# static fields
.field public static mAutoscanCount:I

.field public static mAutoscanInterval1024:I

.field public static mAutoscanInterval128:I

.field public static mAutoscanInterval16:I

.field public static mAutoscanInterval256:I

.field public static mAutoscanInterval32:I

.field public static mAutoscanInterval512:I

.field public static mAutoscanInterval64:I

.field public static mAutoscanInterval8:I

.field public static mNLPScanCount:I

.field public static mScreenOnScanCount:I

.field public static mStartScanCount:I

.field public static mSupplicantScanCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 599
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 600
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiScanCountInfo;->initData()V

    .line 601
    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 3

    .prologue
    .line 620
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 621
    .local v0, "sb":Ljava/lang/StringBuffer;
    sget v1, Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiScanCountInfo;->mStartScanCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 622
    sget v1, Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiScanCountInfo;->mNLPScanCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 623
    sget v1, Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiScanCountInfo;->mStartScanCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 624
    sget v1, Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiScanCountInfo;->mScreenOnScanCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 625
    sget v1, Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiScanCountInfo;->mAutoscanCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 626
    sget v1, Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiScanCountInfo;->mAutoscanInterval8:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 627
    sget v1, Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiScanCountInfo;->mAutoscanInterval16:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 628
    sget v1, Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiScanCountInfo;->mAutoscanInterval32:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 629
    sget v1, Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiScanCountInfo;->mAutoscanInterval64:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 630
    sget v1, Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiScanCountInfo;->mAutoscanInterval128:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 631
    sget v1, Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiScanCountInfo;->mAutoscanInterval256:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 632
    sget v1, Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiScanCountInfo;->mAutoscanInterval512:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 633
    sget v1, Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiScanCountInfo;->mAutoscanInterval1024:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 634
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public initData()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 604
    sput v0, Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiScanCountInfo;->mStartScanCount:I

    .line 605
    sput v0, Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiScanCountInfo;->mNLPScanCount:I

    .line 606
    sput v0, Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiScanCountInfo;->mSupplicantScanCount:I

    .line 607
    sput v0, Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiScanCountInfo;->mScreenOnScanCount:I

    .line 608
    sput v0, Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiScanCountInfo;->mAutoscanCount:I

    .line 609
    sput v0, Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiScanCountInfo;->mAutoscanInterval8:I

    .line 610
    sput v0, Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiScanCountInfo;->mAutoscanInterval16:I

    .line 611
    sput v0, Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiScanCountInfo;->mAutoscanInterval32:I

    .line 612
    sput v0, Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiScanCountInfo;->mAutoscanInterval64:I

    .line 613
    sput v0, Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiScanCountInfo;->mAutoscanInterval128:I

    .line 614
    sput v0, Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiScanCountInfo;->mAutoscanInterval256:I

    .line 615
    sput v0, Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiScanCountInfo;->mAutoscanInterval512:I

    .line 616
    sput v0, Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiScanCountInfo;->mAutoscanInterval1024:I

    .line 617
    return-void
.end method

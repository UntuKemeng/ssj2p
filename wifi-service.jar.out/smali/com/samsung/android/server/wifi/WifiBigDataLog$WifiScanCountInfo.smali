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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiScanCountInfo;->initData()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 3

    .prologue
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .local v0, "sb":Ljava/lang/StringBuffer;
    sget v1, Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiScanCountInfo;->mStartScanCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget v1, Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiScanCountInfo;->mNLPScanCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget v1, Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiScanCountInfo;->mStartScanCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget v1, Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiScanCountInfo;->mScreenOnScanCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget v1, Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiScanCountInfo;->mAutoscanCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget v1, Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiScanCountInfo;->mAutoscanInterval8:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget v1, Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiScanCountInfo;->mAutoscanInterval16:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget v1, Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiScanCountInfo;->mAutoscanInterval32:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget v1, Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiScanCountInfo;->mAutoscanInterval64:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget v1, Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiScanCountInfo;->mAutoscanInterval128:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget v1, Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiScanCountInfo;->mAutoscanInterval256:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget v1, Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiScanCountInfo;->mAutoscanInterval512:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget v1, Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiScanCountInfo;->mAutoscanInterval1024:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public initData()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiScanCountInfo;->mStartScanCount:I

    sput v0, Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiScanCountInfo;->mNLPScanCount:I

    sput v0, Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiScanCountInfo;->mSupplicantScanCount:I

    sput v0, Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiScanCountInfo;->mScreenOnScanCount:I

    sput v0, Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiScanCountInfo;->mAutoscanCount:I

    sput v0, Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiScanCountInfo;->mAutoscanInterval8:I

    sput v0, Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiScanCountInfo;->mAutoscanInterval16:I

    sput v0, Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiScanCountInfo;->mAutoscanInterval32:I

    sput v0, Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiScanCountInfo;->mAutoscanInterval64:I

    sput v0, Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiScanCountInfo;->mAutoscanInterval128:I

    sput v0, Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiScanCountInfo;->mAutoscanInterval256:I

    sput v0, Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiScanCountInfo;->mAutoscanInterval512:I

    sput v0, Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiScanCountInfo;->mAutoscanInterval1024:I

    return-void
.end method

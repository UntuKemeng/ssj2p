.class Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;
.super Ljava/lang/Object;
.source "EpdgImsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/handover/EpdgImsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OmadmEpdgSettings"
.end annotation


# instance fields
.field private mCdmaRssi:I

.field private mLteRsrp1:I

.field private mLteRsrp2:I

.field private mLteRsrp3:I

.field private mTepdg1xTimer:I

.field private mTepdgLteTimer:I

.field private mTepdgWifiTimer:I

.field private mWifiRssiA:I

.field private mWifiRssiB:I

.field final synthetic this$0:Lcom/sec/epdg/handover/EpdgImsSettings;


# direct methods
.method public constructor <init>(Lcom/sec/epdg/handover/EpdgImsSettings;)V
    .locals 1

    .prologue
    const/high16 v0, -0x80000000

    .line 257
    iput-object p1, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->this$0:Lcom/sec/epdg/handover/EpdgImsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    iput v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mWifiRssiA:I

    .line 259
    iput v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mWifiRssiB:I

    .line 260
    iput v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mLteRsrp1:I

    .line 261
    iput v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mLteRsrp2:I

    .line 262
    iput v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mLteRsrp3:I

    .line 263
    iput v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mCdmaRssi:I

    .line 264
    iput v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mTepdgLteTimer:I

    .line 265
    iput v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mTepdg1xTimer:I

    .line 266
    iput v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mTepdgWifiTimer:I

    .line 267
    return-void
.end method


# virtual methods
.method public getCdmaRssi()I
    .locals 1

    .prologue
    .line 356
    iget v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mCdmaRssi:I

    return v0
.end method

.method public getLteRsrp1()I
    .locals 1

    .prologue
    .line 308
    iget v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mLteRsrp1:I

    return v0
.end method

.method public getLteRsrp2()I
    .locals 1

    .prologue
    .line 324
    iget v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mLteRsrp2:I

    return v0
.end method

.method public getLteRsrp3()I
    .locals 1

    .prologue
    .line 340
    iget v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mLteRsrp3:I

    return v0
.end method

.method public getTepdg1xTimer()I
    .locals 1

    .prologue
    .line 388
    iget v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mTepdg1xTimer:I

    return v0
.end method

.method public getTepdgLteTimer()I
    .locals 1

    .prologue
    .line 372
    iget v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mTepdgLteTimer:I

    return v0
.end method

.method public getTepdgWifiTimer()I
    .locals 1

    .prologue
    .line 404
    iget v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mTepdgWifiTimer:I

    return v0
.end method

.method public getWifiRssiA()I
    .locals 1

    .prologue
    .line 270
    iget v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mWifiRssiA:I

    return v0
.end method

.method public getWifiRssiB()I
    .locals 1

    .prologue
    .line 292
    iget v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mWifiRssiB:I

    return v0
.end method

.method public setCdmaRssi(Landroid/util/SparseArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "sp":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v3, 0x89

    .line 360
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 361
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 362
    .local v0, "settingVal":Ljava/lang/String;
    const-string v2, "[EpdgImsSettings]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EPDG_TH1X : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 364
    .local v1, "val":I
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getCdmaRssi()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 365
    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->this$0:Lcom/sec/epdg/handover/EpdgImsSettings;

    # getter for: Lcom/sec/epdg/handover/EpdgImsSettings;->mEpdgSettingsWriter:Lcom/sec/epdg/EpdgSettingsWriter;
    invoke-static {v2}, Lcom/sec/epdg/handover/EpdgImsSettings;->access$000(Lcom/sec/epdg/handover/EpdgImsSettings;)Lcom/sec/epdg/EpdgSettingsWriter;

    move-result-object v2

    const-string v3, "smartwificdmarssi"

    invoke-virtual {v2, v3, v0}, Lcom/sec/epdg/EpdgSettingsWriter;->writeEpdgSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    :cond_0
    iput v1, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mCdmaRssi:I

    .line 369
    .end local v0    # "settingVal":Ljava/lang/String;
    .end local v1    # "val":I
    :cond_1
    return-void
.end method

.method public setLteRsrp1(Landroid/util/SparseArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "sp":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v3, 0x86

    .line 312
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 313
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 314
    .local v0, "settingVal":Ljava/lang/String;
    const-string v2, "[EpdgImsSettings]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EPDG_THLTE1 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 316
    .local v1, "val":I
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp1()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 317
    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->this$0:Lcom/sec/epdg/handover/EpdgImsSettings;

    # getter for: Lcom/sec/epdg/handover/EpdgImsSettings;->mEpdgSettingsWriter:Lcom/sec/epdg/EpdgSettingsWriter;
    invoke-static {v2}, Lcom/sec/epdg/handover/EpdgImsSettings;->access$000(Lcom/sec/epdg/handover/EpdgImsSettings;)Lcom/sec/epdg/EpdgSettingsWriter;

    move-result-object v2

    const-string v3, "smartwifirsrp1"

    invoke-virtual {v2, v3, v0}, Lcom/sec/epdg/EpdgSettingsWriter;->writeEpdgSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    :cond_0
    iput v1, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mLteRsrp1:I

    .line 321
    .end local v0    # "settingVal":Ljava/lang/String;
    .end local v1    # "val":I
    :cond_1
    return-void
.end method

.method public setLteRsrp2(Landroid/util/SparseArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "sp":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v3, 0x87

    .line 328
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 329
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 330
    .local v0, "settingVal":Ljava/lang/String;
    const-string v2, "[EpdgImsSettings]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EPDG_THLTE2 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 332
    .local v1, "val":I
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp2()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 333
    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->this$0:Lcom/sec/epdg/handover/EpdgImsSettings;

    # getter for: Lcom/sec/epdg/handover/EpdgImsSettings;->mEpdgSettingsWriter:Lcom/sec/epdg/EpdgSettingsWriter;
    invoke-static {v2}, Lcom/sec/epdg/handover/EpdgImsSettings;->access$000(Lcom/sec/epdg/handover/EpdgImsSettings;)Lcom/sec/epdg/EpdgSettingsWriter;

    move-result-object v2

    const-string v3, "smartwifirsrp2"

    invoke-virtual {v2, v3, v0}, Lcom/sec/epdg/EpdgSettingsWriter;->writeEpdgSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    :cond_0
    iput v1, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mLteRsrp2:I

    .line 337
    .end local v0    # "settingVal":Ljava/lang/String;
    .end local v1    # "val":I
    :cond_1
    return-void
.end method

.method public setLteRsrp3(Landroid/util/SparseArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "sp":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v3, 0x88

    .line 344
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 345
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 346
    .local v0, "settingVal":Ljava/lang/String;
    const-string v2, "[EpdgImsSettings]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EPDG_THLTE3 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 348
    .local v1, "val":I
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp3()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 349
    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->this$0:Lcom/sec/epdg/handover/EpdgImsSettings;

    # getter for: Lcom/sec/epdg/handover/EpdgImsSettings;->mEpdgSettingsWriter:Lcom/sec/epdg/EpdgSettingsWriter;
    invoke-static {v2}, Lcom/sec/epdg/handover/EpdgImsSettings;->access$000(Lcom/sec/epdg/handover/EpdgImsSettings;)Lcom/sec/epdg/EpdgSettingsWriter;

    move-result-object v2

    const-string v3, "smartwifirsrp3"

    invoke-virtual {v2, v3, v0}, Lcom/sec/epdg/EpdgSettingsWriter;->writeEpdgSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    :cond_0
    iput v1, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mLteRsrp3:I

    .line 353
    .end local v0    # "settingVal":Ljava/lang/String;
    .end local v1    # "val":I
    :cond_1
    return-void
.end method

.method public setTepdg1xTimer(Landroid/util/SparseArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "sp":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v3, 0x8e

    .line 392
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 393
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 394
    .local v0, "settingVal":Ljava/lang/String;
    const-string v2, "[EpdgImsSettings]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "T_EPDG_1X : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 396
    .local v1, "val":I
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getTepdg1xTimer()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 397
    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->this$0:Lcom/sec/epdg/handover/EpdgImsSettings;

    # getter for: Lcom/sec/epdg/handover/EpdgImsSettings;->mEpdgSettingsWriter:Lcom/sec/epdg/EpdgSettingsWriter;
    invoke-static {v2}, Lcom/sec/epdg/handover/EpdgImsSettings;->access$000(Lcom/sec/epdg/handover/EpdgImsSettings;)Lcom/sec/epdg/EpdgSettingsWriter;

    move-result-object v2

    const-string v3, "tepdg1xtimer"

    invoke-virtual {v2, v3, v0}, Lcom/sec/epdg/EpdgSettingsWriter;->writeEpdgSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    :cond_0
    iput v1, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mTepdg1xTimer:I

    .line 401
    .end local v0    # "settingVal":Ljava/lang/String;
    .end local v1    # "val":I
    :cond_1
    return-void
.end method

.method public setTepdgLteTimer(Landroid/util/SparseArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "sp":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v3, 0x8c

    .line 376
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 377
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 378
    .local v0, "settingVal":Ljava/lang/String;
    const-string v2, "[EpdgImsSettings]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "T_EPDG_LTE : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 380
    .local v1, "val":I
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getTepdgLteTimer()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 381
    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->this$0:Lcom/sec/epdg/handover/EpdgImsSettings;

    # getter for: Lcom/sec/epdg/handover/EpdgImsSettings;->mEpdgSettingsWriter:Lcom/sec/epdg/EpdgSettingsWriter;
    invoke-static {v2}, Lcom/sec/epdg/handover/EpdgImsSettings;->access$000(Lcom/sec/epdg/handover/EpdgImsSettings;)Lcom/sec/epdg/EpdgSettingsWriter;

    move-result-object v2

    const-string v3, "tepdgltetimer"

    invoke-virtual {v2, v3, v0}, Lcom/sec/epdg/EpdgSettingsWriter;->writeEpdgSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    :cond_0
    iput v1, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mTepdgLteTimer:I

    .line 385
    .end local v0    # "settingVal":Ljava/lang/String;
    .end local v1    # "val":I
    :cond_1
    return-void
.end method

.method public setTepdgWifiTimer(Landroid/util/SparseArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "sp":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v3, 0x8d

    .line 408
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 409
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 410
    .local v0, "settingVal":Ljava/lang/String;
    const-string v2, "[EpdgImsSettings]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "T_EPDG_WIFI : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 412
    .local v1, "val":I
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getSysSelTimer()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 413
    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->this$0:Lcom/sec/epdg/handover/EpdgImsSettings;

    # getter for: Lcom/sec/epdg/handover/EpdgImsSettings;->mEpdgSettingsWriter:Lcom/sec/epdg/EpdgSettingsWriter;
    invoke-static {v2}, Lcom/sec/epdg/handover/EpdgImsSettings;->access$000(Lcom/sec/epdg/handover/EpdgImsSettings;)Lcom/sec/epdg/EpdgSettingsWriter;

    move-result-object v2

    const-string v3, "sysseltimer"

    invoke-virtual {v2, v3, v0}, Lcom/sec/epdg/EpdgSettingsWriter;->writeEpdgSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    :cond_0
    iput v1, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mTepdgWifiTimer:I

    .line 417
    .end local v0    # "settingVal":Ljava/lang/String;
    .end local v1    # "val":I
    :cond_1
    return-void
.end method

.method public setWifiRssiA(Landroid/util/SparseArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "sp":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v3, 0x8a

    .line 274
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 275
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 276
    .local v0, "settingVal":Ljava/lang/String;
    const-string v2, "[EpdgImsSettings]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EPDG_VOWT_A : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 278
    .local v1, "val":I
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 279
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiRoveInVoice()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 280
    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->this$0:Lcom/sec/epdg/handover/EpdgImsSettings;

    # getter for: Lcom/sec/epdg/handover/EpdgImsSettings;->mEpdgSettingsWriter:Lcom/sec/epdg/EpdgSettingsWriter;
    invoke-static {v2}, Lcom/sec/epdg/handover/EpdgImsSettings;->access$000(Lcom/sec/epdg/handover/EpdgImsSettings;)Lcom/sec/epdg/EpdgSettingsWriter;

    move-result-object v2

    const-string v3, "smartwifirssiroveinvoice"

    invoke-virtual {v2, v3, v0}, Lcom/sec/epdg/EpdgSettingsWriter;->writeEpdgSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    :cond_0
    :goto_0
    iput v1, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mWifiRssiA:I

    .line 289
    .end local v0    # "settingVal":Ljava/lang/String;
    .end local v1    # "val":I
    :cond_1
    return-void

    .line 283
    .restart local v0    # "settingVal":Ljava/lang/String;
    .restart local v1    # "val":I
    :cond_2
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiA()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 284
    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->this$0:Lcom/sec/epdg/handover/EpdgImsSettings;

    # getter for: Lcom/sec/epdg/handover/EpdgImsSettings;->mEpdgSettingsWriter:Lcom/sec/epdg/EpdgSettingsWriter;
    invoke-static {v2}, Lcom/sec/epdg/handover/EpdgImsSettings;->access$000(Lcom/sec/epdg/handover/EpdgImsSettings;)Lcom/sec/epdg/EpdgSettingsWriter;

    move-result-object v2

    const-string v3, "smartwifirssia"

    invoke-virtual {v2, v3, v0}, Lcom/sec/epdg/EpdgSettingsWriter;->writeEpdgSetting(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setWifiRssiB(Landroid/util/SparseArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "sp":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v3, 0x8b

    .line 296
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 297
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 298
    .local v0, "settingVal":Ljava/lang/String;
    const-string v2, "[EpdgImsSettings]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EPDG_VOWT_B : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 300
    .local v1, "val":I
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiB()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 301
    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->this$0:Lcom/sec/epdg/handover/EpdgImsSettings;

    # getter for: Lcom/sec/epdg/handover/EpdgImsSettings;->mEpdgSettingsWriter:Lcom/sec/epdg/EpdgSettingsWriter;
    invoke-static {v2}, Lcom/sec/epdg/handover/EpdgImsSettings;->access$000(Lcom/sec/epdg/handover/EpdgImsSettings;)Lcom/sec/epdg/EpdgSettingsWriter;

    move-result-object v2

    const-string v3, "smartwifirssib"

    invoke-virtual {v2, v3, v0}, Lcom/sec/epdg/EpdgSettingsWriter;->writeEpdgSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    :cond_0
    iput v1, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mWifiRssiB:I

    .line 305
    .end local v0    # "settingVal":Ljava/lang/String;
    .end local v1    # "val":I
    :cond_1
    return-void
.end method

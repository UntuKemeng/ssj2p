.class public Lcom/samsung/android/server/wifi/UnstableApInfo;
.super Ljava/lang/Object;
.source "UnstableApInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;
    }
.end annotation


# static fields
.field private static final MAX_DISCONNECTED_WITH_REASON_ZERO_COUNT:I = 0x3

.field private static final MAX_DISCONNECTED_WITH_REASON_ZERO_TIME:J = 0x493e0L

.field private static final MAX_UNSTABLE_AP_DISABLED_DURATION_FOR_VENDORAP:J = 0x36ee80L

.field private static final MIN_RSSI_LEVEL:I = -0x4b

.field private static final MIN_UNSTABLE_AP_DISABLED_DURATION:J = 0xdbba0L

.field private static final MIN_UNSTABLE_AP_DISABLED_DURATION_FOR_VENDORAP:J = 0x124f80L


# instance fields
.field private final mAllowKeyMgmt:Ljava/util/BitSet;

.field private final mBssids:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsVendorAp:Z

.field private final mSsid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;I)V
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "bssid"    # Ljava/lang/String;
    .param p3, "rssi"    # I

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mBssids:Ljava/util/HashMap;

    .line 44
    if-eqz p2, :cond_0

    .line 45
    new-instance v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;

    invoke-direct {v0}, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;-><init>()V

    .line 46
    .local v0, "info":Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;
    iput p3, v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->level:I

    .line 47
    iget-object v1, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mBssids:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .end local v0    # "info":Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;
    :cond_0
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/UnstableApInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mSsid:Ljava/lang/String;

    .line 50
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    iput-object v1, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mAllowKeyMgmt:Ljava/util/BitSet;

    .line 51
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->isVendorSpecificSsid:Z

    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mIsVendorAp:Z

    .line 52
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/UnstableApInfo;->reset(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method private getMatchingSsidSecureConfig(Landroid/net/wifi/ScanResult;)Z
    .locals 4
    .param p1, "scanResult"    # Landroid/net/wifi/ScanResult;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 166
    iget-object v2, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mSsid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 167
    iget-object v2, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mAllowKeyMgmt:Ljava/util/BitSet;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "FT/PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 185
    :cond_0
    :goto_0
    return v0

    .line 169
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mAllowKeyMgmt:Ljava/util/BitSet;

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 171
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mAllowKeyMgmt:Ljava/util/BitSet;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "FT/EAP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 173
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mAllowKeyMgmt:Ljava/util/BitSet;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "EAP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 175
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mAllowKeyMgmt:Ljava/util/BitSet;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "CCKM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 177
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mAllowKeyMgmt:Ljava/util/BitSet;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "WAPI-PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 179
    :cond_6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mAllowKeyMgmt:Ljava/util/BitSet;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "WAPI-CERT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 181
    :cond_7
    iget-object v2, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mAllowKeyMgmt:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_8
    move v0, v1

    .line 185
    goto :goto_0
.end method

.method private getTimeLimit()J
    .locals 4

    .prologue
    .line 154
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mIsVendorAp:Z

    if-eqz v2, :cond_2

    .line 155
    iget-object v2, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mBssids:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;

    .line 156
    .local v1, "info":Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;
    iget v2, v1, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->totalDisabledCounter:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    .line 157
    const-wide/32 v2, 0x36ee80

    .line 162
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "info":Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;
    :goto_0
    return-wide v2

    .line 160
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    const-wide/32 v2, 0x124f80

    goto :goto_0

    .line 162
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    const-wide/32 v2, 0xdbba0

    goto :goto_0
.end method

.method private static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 189
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 190
    .local v0, "length":I
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 192
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 194
    .end local p0    # "string":Ljava/lang/String;
    :cond_0
    return-object p0
.end method


# virtual methods
.method public addAndCheck(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "bssid"    # Ljava/lang/String;
    .param p2, "rssi"    # I

    .prologue
    .line 198
    if-eqz p1, :cond_0

    .line 199
    const/4 v0, 0x0

    .line 200
    .local v0, "apInfo":Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;
    iget-object v1, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mBssids:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 201
    iget-object v1, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mBssids:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "apInfo":Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;
    check-cast v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;

    .line 202
    .restart local v0    # "apInfo":Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;
    iput p2, v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->level:I

    .line 203
    iget-boolean v1, v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->isMobileHotspot:Z

    if-eqz v1, :cond_1

    .line 204
    const/4 v1, 0x0

    iput v1, v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->counter:I

    .line 215
    .end local v0    # "apInfo":Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/UnstableApInfo;->isUnstableAp()Z

    move-result v1

    return v1

    .line 206
    .restart local v0    # "apInfo":Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;
    :cond_1
    iget v1, v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->counter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->counter:I

    goto :goto_0

    .line 209
    :cond_2
    new-instance v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;

    .end local v0    # "apInfo":Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;-><init>()V

    .line 210
    .restart local v0    # "apInfo":Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;
    iput p2, v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->level:I

    .line 211
    const/4 v1, 0x1

    iput v1, v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->counter:I

    .line 212
    iget-object v1, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mBssids:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public canAddCounter(Ljava/lang/String;)Z
    .locals 6
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 219
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mIsVendorAp:Z

    if-eqz v2, :cond_1

    .line 226
    :cond_0
    :goto_0
    return v1

    .line 220
    :cond_1
    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mBssids:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 221
    iget-object v2, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mBssids:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;

    .line 222
    .local v0, "info":Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->time:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x493e0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 226
    .end local v0    # "info":Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public canEnable()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    .line 96
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/UnstableApInfo;->isRoamAp()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 104
    :cond_0
    :goto_0
    return v2

    .line 99
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mBssids:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;

    .line 100
    .local v0, "apInfo":Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->time:J

    sub-long/2addr v4, v6

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/UnstableApInfo;->getTimeLimit()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gez v3, :cond_2

    .line 101
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public checkRssiAndReenable(Ljava/util/List;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "scanResult":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/ScanDetail;>;"
    const/16 v10, -0x4b

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 108
    if-nez p1, :cond_1

    .line 150
    :cond_0
    :goto_0
    return v6

    .line 111
    :cond_1
    iget-boolean v8, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mIsVendorAp:Z

    if-nez v8, :cond_0

    .line 115
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/ScanDetail;

    .line 116
    .local v3, "item":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual {v3}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v5

    .line 117
    .local v5, "scanItem":Landroid/net/wifi/ScanResult;
    if-eqz v5, :cond_2

    .line 118
    iget-object v1, v5, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 119
    .local v1, "bssid":Ljava/lang/String;
    iget-object v8, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mBssids:Ljava/util/HashMap;

    invoke-virtual {v8, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 120
    iget-object v8, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mBssids:Ljava/util/HashMap;

    invoke-virtual {v8, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;

    .line 122
    .local v0, "apInfo":Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;
    iget-object v8, v5, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    if-eqz v8, :cond_3

    iget-object v8, v5, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v9, "SEC80"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 123
    iput-boolean v7, v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->isMobileHotspot:Z

    .line 124
    iput v6, v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->counter:I

    move v6, v7

    .line 125
    goto :goto_0

    .line 127
    :cond_3
    iput-boolean v6, v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->isMobileHotspot:Z

    .line 130
    iget v4, v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->level:I

    .line 131
    .local v4, "rssi":I
    if-ge v4, v10, :cond_2

    .line 132
    iget v8, v5, Landroid/net/wifi/ScanResult;->level:I

    if-lt v8, v10, :cond_2

    move v6, v7

    .line 133
    goto :goto_0

    .line 138
    .end local v0    # "apInfo":Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;
    .end local v4    # "rssi":I
    :cond_4
    invoke-direct {p0, v5}, Lcom/samsung/android/server/wifi/UnstableApInfo;->getMatchingSsidSecureConfig(Landroid/net/wifi/ScanResult;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 140
    new-instance v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;

    invoke-direct {v0}, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;-><init>()V

    .line 141
    .restart local v0    # "apInfo":Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;
    iget-object v6, v5, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    if-eqz v6, :cond_5

    iget-object v6, v5, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v8, "SEC80"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 142
    iput-boolean v7, v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->isMobileHotspot:Z

    .line 144
    :cond_5
    iget v6, v5, Landroid/net/wifi/ScanResult;->level:I

    iput v6, v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->level:I

    .line 145
    iget-object v6, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mBssids:Ljava/util/HashMap;

    iget-object v8, v5, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v6, v7

    .line 146
    goto :goto_0
.end method

.method public getBlackList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 230
    const/4 v0, 0x0

    .line 231
    .local v0, "blackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mBssids:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_1

    .line 232
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "blackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 233
    .restart local v0    # "blackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mBssids:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 234
    .local v1, "bssid":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mBssids:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;

    .line 235
    .local v3, "info":Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;
    if-eqz v3, :cond_0

    iget v4, v3, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->counter:I

    const/4 v5, 0x3

    if-lt v4, v5, :cond_0

    .line 236
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 240
    .end local v1    # "bssid":Ljava/lang/String;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "info":Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;
    :cond_1
    if-eqz v0, :cond_2

    .line 241
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 242
    .restart local v1    # "bssid":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mBssids:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;

    .line 243
    .restart local v3    # "info":Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;
    iget v4, v3, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->counter:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->counter:I

    goto :goto_1

    .line 246
    .end local v1    # "bssid":Ljava/lang/String;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "info":Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;
    :cond_2
    return-object v0
.end method

.method public isMatched(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v0, 0x0

    .line 56
    if-nez p1, :cond_1

    .line 65
    :cond_0
    :goto_0
    return v0

    .line 59
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mSsid:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mSsid:Ljava/lang/String;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/UnstableApInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mAllowKeyMgmt:Ljava/util/BitSet;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mAllowKeyMgmt:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isRoamAp()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 91
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mIsVendorAp:Z

    if-eqz v1, :cond_1

    .line 92
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mBssids:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isUnstableAp()Z
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 69
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/UnstableApInfo;->isRoamAp()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 87
    :cond_0
    :goto_0
    return v3

    .line 72
    :cond_1
    iget-boolean v5, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mIsVendorAp:Z

    if-eqz v5, :cond_3

    .line 73
    const/4 v1, 0x0

    .line 74
    .local v1, "counter":I
    iget-object v5, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mBssids:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;

    .line 75
    .local v0, "apInfo":Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;
    iget v5, v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->counter:I

    add-int/2addr v1, v5

    .line 76
    goto :goto_1

    .line 77
    .end local v0    # "apInfo":Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;
    :cond_2
    if-lt v1, v6, :cond_0

    move v3, v4

    .line 78
    goto :goto_0

    .line 81
    .end local v1    # "counter":I
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    iget-object v5, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mBssids:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;

    .line 82
    .restart local v0    # "apInfo":Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;
    iget v5, v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->counter:I

    if-lt v5, v6, :cond_4

    move v3, v4

    .line 83
    goto :goto_0
.end method

.method public reset(Ljava/lang/String;)V
    .locals 6
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 257
    if-nez p1, :cond_2

    .line 259
    iget-object v2, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mBssids:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;

    .line 260
    .local v1, "info":Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mIsVendorAp:Z

    if-eqz v2, :cond_0

    .line 261
    iget v2, v1, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->totalDisabledCounter:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->totalDisabledCounter:I

    .line 263
    :cond_0
    iget v2, v1, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->counter:I

    if-lt v2, v5, :cond_1

    .line 264
    iget v2, v1, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->totalDisabledCounter:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->totalDisabledCounter:I

    .line 266
    :cond_1
    iput v4, v1, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->counter:I

    .line 267
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->resetHistory()V

    .line 268
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->time:J

    goto :goto_0

    .line 270
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "info":Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mBssids:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 271
    iget-object v2, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mBssids:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;

    .line 272
    .restart local v1    # "info":Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;
    iget v2, v1, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->counter:I

    if-lt v2, v5, :cond_3

    .line 273
    iget v2, v1, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->totalDisabledCounter:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->totalDisabledCounter:I

    .line 275
    :cond_3
    iput v4, v1, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->counter:I

    .line 276
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->time:J

    .line 278
    .end local v1    # "info":Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;
    :cond_4
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 282
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 284
    .local v3, "sb":Ljava/lang/StringBuffer;
    iget-object v4, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mSsid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 285
    iget-boolean v4, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mIsVendorAp:Z

    if-eqz v4, :cond_0

    .line 286
    const-string v4, "[VendorAp]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 288
    :cond_0
    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 290
    iget-object v4, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mBssids:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 291
    .local v2, "key":Ljava/lang/String;
    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 292
    iget-object v4, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mBssids:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;

    .line 293
    .local v0, "apInfo":Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 294
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 295
    iget v4, v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->counter:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 296
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 297
    iget v4, v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->totalDisabledCounter:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 298
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 299
    iget v4, v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->level:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 300
    iget-boolean v4, v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->isMobileHotspot:Z

    if-eqz v4, :cond_1

    .line 301
    const-string v4, ",SEC80"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 303
    :cond_1
    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 305
    .end local v0    # "apInfo":Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;
    .end local v2    # "key":Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public updateTime(Ljava/lang/String;)V
    .locals 4
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    .line 250
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mBssids:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    iget-object v1, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mBssids:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;

    .line 252
    .local v0, "info":Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->time:J

    .line 254
    .end local v0    # "info":Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;
    :cond_0
    return-void
.end method
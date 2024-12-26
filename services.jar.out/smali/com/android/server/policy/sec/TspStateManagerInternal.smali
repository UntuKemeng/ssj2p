.class public Lcom/android/server/policy/sec/TspStateManagerInternal;
.super Ljava/lang/Object;
.source "TspStateManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/sec/TspStateManagerInternal$TypePolicy;,
        Lcom/android/server/policy/sec/TspStateManagerInternal$SettingObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field public static final FEATURE_ENABLED:Z = false

.field private static final INDEX_3RD_PARTY_DEADZONE:I = 0x5

.field private static final INDEX_3RD_PARTY_EDGEZONE:I = 0x6

.field private static final INDEX_DEADZONE_LAND_X1:I = 0x3

.field private static final INDEX_DEADZONE_PORT_X1:I = 0x0

.field private static final INDEX_DEADZONE_PORT_X2:I = 0x1

.field private static final INDEX_DEADZONE_PORT_Y1:I = 0x2

.field private static final INDEX_EDGE_ZONE:I = 0x4

.field private static final SETTING_TSP_THRESHOLD:Ljava/lang/String; = "setting_tsp_threshold"

.field private static final SET_TUNNING_DATA:Ljava/lang/String; = "set_grip_data,"

.field private static final TAG:Ljava/lang/String; = "TspStateManagerInternal"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCustomDeadzoneEdgeZone:I

.field private mCustomDeadzoneLandX1:I

.field private mCustomDeadzonePortX1:I

.field private mCustomDeadzonePortX2:I

.field private mCustomDeadzonePortY1:I

.field private mDefault3rdPartyDeadzone:I

.field private mDefault3rdPartyEdgeZone:I

.field private mDefaultDeadzoneLandX1:I

.field private mDefaultDeadzonePortX1:I

.field private mDefaultDeadzonePortX2:I

.field private mDefaultDeadzonePortY1:I

.field private mDefaultEdgeZone:I

.field private mHeight:I

.field private mHoleMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mInitHeight:I

.field private mInitWidth:I

.field private mIsEnabledCustomSetting:Z

.field private mLastDeadZoneDirection:I

.field private mLastDeadZoneHole:Ljava/lang/String;

.field private mLastLandCmd:Ljava/lang/String;

.field private mLastPortCmd:Ljava/lang/String;

.field private mPortrait:Z

.field private mReserveLandCmd:Ljava/lang/String;

.field private mReservePortCmd:Ljava/lang/String;

.field private mSettingObserver:Lcom/android/server/policy/sec/TspStateManagerInternal$SettingObserver;

.field private mTypePolicy:Lcom/android/server/policy/sec/TspStateManagerInternal$TypePolicy;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 48
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/server/policy/sec/TspStateManagerInternal;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v5, 0x5a0

    const/16 v4, 0x20

    const/16 v3, 0xa

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mPortrait:Z

    .line 58
    iput-boolean v2, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mIsEnabledCustomSetting:Z

    .line 60
    iput v3, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mDefaultDeadzonePortX1:I

    .line 61
    iput v4, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mDefaultDeadzonePortX2:I

    .line 62
    const/16 v0, 0x300

    iput v0, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mDefaultDeadzonePortY1:I

    .line 63
    iput v4, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mDefaultDeadzoneLandX1:I

    .line 64
    const/16 v0, 0x3c

    iput v0, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mDefaultEdgeZone:I

    .line 65
    iput v3, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mDefault3rdPartyDeadzone:I

    .line 66
    const/16 v0, 0x28

    iput v0, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mDefault3rdPartyEdgeZone:I

    .line 68
    iput v1, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mCustomDeadzonePortX1:I

    .line 69
    iput v1, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mCustomDeadzonePortX2:I

    .line 70
    iput v1, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mCustomDeadzonePortY1:I

    .line 71
    iput v1, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mCustomDeadzoneLandX1:I

    .line 72
    iput v1, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mCustomDeadzoneEdgeZone:I

    .line 91
    iput v2, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mLastDeadZoneDirection:I

    .line 95
    iput v5, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mInitWidth:I

    .line 96
    const/16 v0, 0xa00

    iput v0, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mInitHeight:I

    .line 97
    iput v5, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mWidth:I

    .line 98
    const/16 v0, 0xa00

    iput v0, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mHeight:I

    .line 100
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mHoleMap:Landroid/util/ArrayMap;

    .line 130
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/sec/TspStateManagerInternal;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/sec/TspStateManagerInternal;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/server/policy/sec/TspStateManagerInternal;->updateCustomValue()V

    return-void
.end method

.method private getTspHeightPixel(I)I
    .locals 4
    .param p1, "height"    # I

    .prologue
    .line 385
    iget v1, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mInitHeight:I

    mul-int/2addr v1, p1

    iget v2, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mHeight:I

    div-int v0, v1, v2

    .line 386
    .local v0, "ret":I
    sget-boolean v1, Lcom/android/server/policy/sec/TspStateManagerInternal;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 387
    const-string v1, "TspStateManagerInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getTspHeightPixel height="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_0
    return v0
.end method

.method private getTspWidthPixel(I)I
    .locals 2
    .param p1, "width"    # I

    .prologue
    .line 381
    iget v0, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mInitWidth:I

    mul-int/2addr v0, p1

    iget v1, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mWidth:I

    div-int/2addr v0, v1

    return v0
.end method

.method private initDefaultValue()V
    .locals 5

    .prologue
    .line 145
    iget-object v3, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040755

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "customSetting":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 147
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, "customSettingArray":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v3, v1

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    .line 151
    const/4 v3, 0x0

    :try_start_0
    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mDefaultDeadzonePortX1:I

    .line 152
    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mDefaultDeadzonePortX2:I

    .line 153
    const/4 v3, 0x2

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mDefaultDeadzonePortY1:I

    .line 154
    const/4 v3, 0x3

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mDefaultDeadzoneLandX1:I

    .line 155
    const/4 v3, 0x4

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mDefaultEdgeZone:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .end local v1    # "customSettingArray":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 156
    .restart local v1    # "customSettingArray":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 157
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private makeLandCommand(II)Ljava/lang/String;
    .locals 2
    .param p1, "edgeZone"    # I
    .param p2, "landX1"    # I

    .prologue
    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 347
    .local v0, "landCmdStrBuilder":Ljava/lang/StringBuilder;
    const-string v1, "2,1,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 349
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 350
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 351
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private makePortCommand(IIII)Ljava/lang/String;
    .locals 3
    .param p1, "edgeZone"    # I
    .param p2, "portX1"    # I
    .param p3, "portX2"    # I
    .param p4, "portY1"    # I

    .prologue
    const/16 v2, 0x2c

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 358
    .local v0, "portCmdStrBuilder":Ljava/lang/StringBuilder;
    const-string v1, "1,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 360
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 361
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 362
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 363
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 364
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 365
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 367
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private registerSettingObserver()V
    .locals 5

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mSettingObserver:Lcom/android/server/policy/sec/TspStateManagerInternal$SettingObserver;

    if-eqz v0, :cond_0

    .line 142
    :goto_0
    return-void

    .line 137
    :cond_0
    new-instance v0, Lcom/android/server/policy/sec/TspStateManagerInternal$SettingObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/sec/TspStateManagerInternal$SettingObserver;-><init>(Lcom/android/server/policy/sec/TspStateManagerInternal;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mSettingObserver:Lcom/android/server/policy/sec/TspStateManagerInternal$SettingObserver;

    .line 138
    iget-object v0, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "setting_tsp_threshold"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mSettingObserver:Lcom/android/server/policy/sec/TspStateManagerInternal$SettingObserver;

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_0
.end method

.method private updateCustomValue()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 164
    iget-object v3, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "setting_tsp_threshold"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "customSetting":Ljava/lang/String;
    const-string v3, "TspStateManagerInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateDefaultValue customSetting="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iput-boolean v7, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mIsEnabledCustomSetting:Z

    .line 169
    iput v6, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mCustomDeadzonePortX1:I

    .line 170
    iput v6, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mCustomDeadzonePortX2:I

    .line 171
    iput v6, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mCustomDeadzonePortY1:I

    .line 172
    iput v6, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mCustomDeadzoneLandX1:I

    .line 173
    iput v6, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mCustomDeadzoneEdgeZone:I

    .line 175
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, "customSettingArray":[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 182
    :try_start_0
    array-length v3, v1

    if-le v3, v8, :cond_2

    .line 183
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mIsEnabledCustomSetting:Z

    .line 185
    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mCustomDeadzonePortX1:I

    .line 186
    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mCustomDeadzonePortX2:I

    .line 187
    const/4 v3, 0x2

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mCustomDeadzonePortY1:I

    .line 188
    const/4 v3, 0x3

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mCustomDeadzoneLandX1:I

    .line 189
    const/4 v3, 0x4

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mCustomDeadzoneEdgeZone:I

    .line 192
    :cond_2
    array-length v3, v1

    if-le v3, v9, :cond_3

    .line 193
    const/4 v3, 0x5

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mDefault3rdPartyDeadzone:I

    .line 196
    :cond_3
    array-length v3, v1

    const/4 v4, 0x6

    if-le v3, v4, :cond_0

    .line 197
    const/4 v3, 0x6

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mDefault3rdPartyEdgeZone:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 199
    :catch_0
    move-exception v2

    .line 200
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private updateTspCommand(IIIII)V
    .locals 4
    .param p1, "edgeZone"    # I
    .param p2, "portX1"    # I
    .param p3, "portX2"    # I
    .param p4, "portY1"    # I
    .param p5, "landX1"    # I

    .prologue
    const/4 v3, -0x1

    .line 301
    iget-boolean v2, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mIsEnabledCustomSetting:Z

    if-eqz v2, :cond_4

    .line 302
    iget v2, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mCustomDeadzoneEdgeZone:I

    if-eq v2, v3, :cond_0

    .line 303
    iget p1, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mCustomDeadzoneEdgeZone:I

    .line 306
    :cond_0
    iget v2, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mCustomDeadzonePortX1:I

    if-eq v2, v3, :cond_1

    .line 307
    iget p2, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mCustomDeadzonePortX1:I

    .line 310
    :cond_1
    iget v2, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mCustomDeadzonePortX2:I

    if-eq v2, v3, :cond_2

    .line 311
    iget p3, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mCustomDeadzonePortX2:I

    .line 314
    :cond_2
    iget v2, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mCustomDeadzonePortY1:I

    if-eq v2, v3, :cond_3

    .line 315
    iget p4, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mCustomDeadzonePortY1:I

    .line 318
    :cond_3
    iget v2, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mCustomDeadzoneLandX1:I

    if-eq v2, v3, :cond_4

    .line 319
    iget p5, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mCustomDeadzoneLandX1:I

    .line 324
    :cond_4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/policy/sec/TspStateManagerInternal;->makePortCommand(IIII)Ljava/lang/String;

    move-result-object v1

    .line 326
    .local v1, "portCmd":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mLastPortCmd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 327
    iget-boolean v2, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mPortrait:Z

    if-eqz v2, :cond_5

    .line 328
    invoke-direct {p0, v1}, Lcom/android/server/policy/sec/TspStateManagerInternal;->updateTspState(Ljava/lang/String;)V

    .line 329
    iput-object v1, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mLastPortCmd:Ljava/lang/String;

    .line 331
    :cond_5
    iput-object v1, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mReservePortCmd:Ljava/lang/String;

    .line 335
    :cond_6
    invoke-direct {p0, p1, p5}, Lcom/android/server/policy/sec/TspStateManagerInternal;->makeLandCommand(II)Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, "landCmd":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mLastLandCmd:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 337
    iget-boolean v2, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mPortrait:Z

    if-nez v2, :cond_7

    .line 338
    invoke-direct {p0, v0}, Lcom/android/server/policy/sec/TspStateManagerInternal;->updateTspState(Ljava/lang/String;)V

    .line 339
    iput-object v0, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mLastLandCmd:Ljava/lang/String;

    .line 341
    :cond_7
    iput-object v0, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mReserveLandCmd:Ljava/lang/String;

    .line 343
    :cond_8
    return-void
.end method

.method private updateTspState(Ljava/lang/String;)V
    .locals 9
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 574
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "set_grip_data,"

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 575
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 579
    .local v5, "tspCommand":Ljava/lang/String;
    const-string v6, "TspStateManagerInternal"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "update cmd="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    const/4 v3, 0x0

    .line 583
    .local v3, "fos":Ljava/io/OutputStream;
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v6, "/sys/class/sec/tsp/cmd"

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 584
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 585
    const-string v6, "TspStateManagerInternal"

    const-string v7, "The file is not existed."

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 601
    if-eqz v3, :cond_0

    .line 602
    :try_start_1
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 608
    .end local v2    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 604
    .restart local v2    # "file":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 605
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 588
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v6

    if-nez v6, :cond_2

    .line 589
    const-string v6, "TspStateManagerInternal"

    const-string v7, "The file cannot write."

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 601
    if-eqz v3, :cond_0

    .line 602
    :try_start_3
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 604
    :catch_1
    move-exception v1

    .line 605
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 592
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_4
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 593
    .end local v3    # "fos":Ljava/io/OutputStream;
    .local v4, "fos":Ljava/io/OutputStream;
    :try_start_5
    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/OutputStream;->write([B)V

    .line 594
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 601
    if-eqz v4, :cond_3

    .line 602
    :try_start_6
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :cond_3
    move-object v3, v4

    .line 606
    .end local v4    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    goto :goto_0

    .line 604
    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v4    # "fos":Ljava/io/OutputStream;
    :catch_2
    move-exception v1

    .line 605
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v3, v4

    .line 607
    .end local v4    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    goto :goto_0

    .line 595
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "file":Ljava/io/File;
    :catch_3
    move-exception v1

    .line 596
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 601
    if-eqz v3, :cond_0

    .line 602
    :try_start_8
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_0

    .line 604
    :catch_4
    move-exception v1

    .line 605
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 597
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v1

    .line 598
    .local v1, "e":Ljava/io/IOException;
    :goto_2
    :try_start_9
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 601
    if-eqz v3, :cond_0

    .line 602
    :try_start_a
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_0

    .line 604
    :catch_6
    move-exception v1

    .line 605
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 600
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 601
    :goto_3
    if-eqz v3, :cond_4

    .line 602
    :try_start_b
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    .line 606
    :cond_4
    :goto_4
    throw v6

    .line 604
    :catch_7
    move-exception v1

    .line 605
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 600
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "fos":Ljava/io/OutputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    goto :goto_3

    .line 597
    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v4    # "fos":Ljava/io/OutputStream;
    :catch_8
    move-exception v1

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    goto :goto_2

    .line 595
    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v4    # "fos":Ljava/io/OutputStream;
    :catch_9
    move-exception v1

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    goto :goto_1
.end method


# virtual methods
.method public screenTurnedOn()V
    .locals 2

    .prologue
    .line 477
    iget-object v0, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mTypePolicy:Lcom/android/server/policy/sec/TspStateManagerInternal$TypePolicy;

    if-eqz v0, :cond_1

    .line 490
    :cond_0
    :goto_0
    return-void

    .line 480
    :cond_1
    sget-boolean v0, Lcom/android/server/policy/sec/TspStateManagerInternal;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 481
    const-string v0, "TspStateManagerInternal"

    const-string/jumbo v1, "screenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mPortrait:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mReservePortCmd:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 484
    iget-object v0, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mReservePortCmd:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/policy/sec/TspStateManagerInternal;->updateTspState(Ljava/lang/String;)V

    .line 485
    iget-object v0, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mReservePortCmd:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mLastPortCmd:Ljava/lang/String;

    goto :goto_0

    .line 486
    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mReserveLandCmd:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mReserveLandCmd:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/policy/sec/TspStateManagerInternal;->updateTspState(Ljava/lang/String;)V

    .line 488
    iget-object v0, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mReserveLandCmd:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mLastLandCmd:Ljava/lang/String;

    goto :goto_0
.end method

.method public setDeadzoneHole(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "deadzoneHole"    # Landroid/os/Bundle;

    .prologue
    const/16 v12, 0x2c

    const/4 v11, 0x0

    .line 498
    iget-object v9, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mTypePolicy:Lcom/android/server/policy/sec/TspStateManagerInternal$TypePolicy;

    if-eqz v9, :cond_1

    .line 499
    const-string v9, "TspStateManagerInternal"

    const-string/jumbo v10, "setDeadzoneHole: This is not supported. "

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :cond_0
    :goto_0
    return-void

    .line 503
    :cond_1
    sget-boolean v9, Lcom/android/server/policy/sec/TspStateManagerInternal;->DEBUG:Z

    if-eqz v9, :cond_2

    .line 504
    const-string v9, "TspStateManagerInternal"

    const-string/jumbo v10, "setPortraitDeadzoneHole "

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :cond_2
    if-nez p1, :cond_3

    .line 507
    const-string v9, "TspStateManagerInternal"

    const-string/jumbo v10, "setPortraitDeadzoneHole: hole is null"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 511
    :cond_3
    const-string v9, "dead_zone_process_name"

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 512
    .local v6, "processName":Ljava/lang/String;
    if-nez v6, :cond_4

    .line 513
    const-string v9, "TspStateManagerInternal"

    const-string/jumbo v10, "setPortraitDeadzoneHole: invalid name key"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 517
    :cond_4
    const-string v9, "dead_zone_direction"

    invoke-virtual {p1, v9, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 519
    .local v3, "direction":I
    const-string v9, "dead_zone_port_y1"

    invoke-virtual {p1, v9, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 520
    .local v8, "startY":I
    invoke-direct {p0, v8}, Lcom/android/server/policy/sec/TspStateManagerInternal;->getTspHeightPixel(I)I

    move-result v8

    .line 521
    const-string v9, "dead_zone_port_y2"

    invoke-virtual {p1, v9, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 522
    .local v4, "endY":I
    invoke-direct {p0, v4}, Lcom/android/server/policy/sec/TspStateManagerInternal;->getTspHeightPixel(I)I

    move-result v4

    .line 523
    if-eqz v3, :cond_5

    if-ltz v8, :cond_5

    if-ltz v4, :cond_5

    if-ne v8, v4, :cond_8

    .line 524
    :cond_5
    iget-object v9, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mHoleMap:Landroid/util/ArrayMap;

    invoke-virtual {v9, v6}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 525
    iget-object v9, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mHoleMap:Landroid/util/ArrayMap;

    invoke-virtual {v9, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    :cond_6
    :goto_1
    const v8, 0x7fffffff

    .line 533
    const/4 v4, 0x0

    .line 534
    iget-object v9, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mHoleMap:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 535
    .local v2, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v2, :cond_a

    .line 536
    iget-object v9, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mHoleMap:Landroid/util/ArrayMap;

    iget-object v10, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mHoleMap:Landroid/util/ArrayMap;

    invoke-virtual {v10, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    .line 537
    .local v7, "rect":Landroid/graphics/Rect;
    if-eqz v7, :cond_7

    .line 538
    iget v9, v7, Landroid/graphics/Rect;->top:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 539
    iget v9, v7, Landroid/graphics/Rect;->bottom:I

    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 540
    if-nez v3, :cond_7

    .line 541
    iget v3, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mLastDeadZoneDirection:I

    .line 535
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 528
    .end local v2    # "count":I
    .end local v5    # "i":I
    .end local v7    # "rect":Landroid/graphics/Rect;
    :cond_8
    if-ge v8, v4, :cond_9

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v11, v8, v11, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 529
    .restart local v7    # "rect":Landroid/graphics/Rect;
    :goto_3
    iget-object v9, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mHoleMap:Landroid/util/ArrayMap;

    invoke-virtual {v9, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 528
    .end local v7    # "rect":Landroid/graphics/Rect;
    :cond_9
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v11, v4, v11, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_3

    .line 545
    .restart local v2    # "count":I
    .restart local v5    # "i":I
    :cond_a
    if-nez v4, :cond_b

    .line 546
    const/4 v3, 0x0

    .line 548
    :cond_b
    const v9, 0x7fffffff

    if-ne v8, v9, :cond_c

    .line 549
    move v8, v4

    .line 551
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 552
    .local v1, "cmdBuilder":Ljava/lang/StringBuilder;
    const-string v9, "0,"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 554
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 555
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 556
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 557
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 559
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 560
    .local v0, "cmd":Ljava/lang/String;
    sget-boolean v9, Lcom/android/server/policy/sec/TspStateManagerInternal;->DEBUG:Z

    if-eqz v9, :cond_d

    .line 561
    const-string v9, "TspStateManagerInternal"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setDeadzoneHole: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mLastDeadZoneHole:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " --> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :cond_d
    iget-object v9, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mLastDeadZoneHole:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 567
    iput-object v0, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mLastDeadZoneHole:Ljava/lang/String;

    .line 568
    iput v3, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mLastDeadZoneDirection:I

    .line 569
    iget-object v9, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mLastDeadZoneHole:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/server/policy/sec/TspStateManagerInternal;->updateTspState(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setInitialDisplaySize(IIII)V
    .locals 3
    .param p1, "initWidth"    # I
    .param p2, "initHeight"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 371
    sget-boolean v0, Lcom/android/server/policy/sec/TspStateManagerInternal;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 372
    const-string v0, "TspStateManagerInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setInitialDisplaySize initWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",initHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",w="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :cond_0
    iput p1, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mInitWidth:I

    .line 375
    iput p2, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mInitHeight:I

    .line 376
    iput p3, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mWidth:I

    .line 377
    iput p4, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mHeight:I

    .line 378
    return-void
.end method

.method public setPortrait(Z)V
    .locals 2
    .param p1, "isPortrait"    # Z

    .prologue
    .line 453
    iget-object v0, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mTypePolicy:Lcom/android/server/policy/sec/TspStateManagerInternal$TypePolicy;

    if-eqz v0, :cond_1

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 456
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mPortrait:Z

    if-eq v0, p1, :cond_0

    .line 457
    iput-boolean p1, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mPortrait:Z

    .line 459
    iget-boolean v0, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mPortrait:Z

    if-eqz v0, :cond_3

    .line 460
    iget-object v0, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mReservePortCmd:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mLastPortCmd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 461
    iget-object v0, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mReservePortCmd:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/policy/sec/TspStateManagerInternal;->updateTspState(Ljava/lang/String;)V

    .line 462
    iget-object v0, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mReservePortCmd:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mLastPortCmd:Ljava/lang/String;

    goto :goto_0

    .line 464
    :cond_2
    const-string v0, "2,0"

    invoke-direct {p0, v0}, Lcom/android/server/policy/sec/TspStateManagerInternal;->updateTspState(Ljava/lang/String;)V

    goto :goto_0

    .line 467
    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mReserveLandCmd:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/policy/sec/TspStateManagerInternal;->updateTspState(Ljava/lang/String;)V

    .line 468
    iget-object v0, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mReserveLandCmd:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/policy/sec/TspStateManagerInternal;->mLastLandCmd:Ljava/lang/String;

    goto :goto_0
.end method

.method public updateInputMethodPolicy(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 0
    .param p1, "inputMethodWindow"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 396
    return-void
.end method

.method public updateWindowPolicy(Landroid/view/WindowManagerPolicy$WindowState;Ljava/lang/String;)V
    .locals 0
    .param p1, "focusedWindow"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 213
    return-void
.end method

.class final Lcom/android/server/cover/Feature;
.super Ljava/lang/Object;
.source "Feature.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final FEATURE_COVER_CLEARCOVER:Ljava/lang/String; = "com.sec.feature.cover.clearcover"

.field private static final FEATURE_COVER_DEFAULT_DETACHED_STATE_FLIP:Ljava/lang/String; = "com.sec.feature.cover.default_detach.flip"

.field private static final FEATURE_COVER_NEONCOVER:Ljava/lang/String; = "com.sec.feature.cover.neoncover"

.field private static final FEATURE_COVER_NFC_AUTHENTICATION:Ljava/lang/String; = "com.sec.feature.cover.nfc_authentication"

.field private static final FEATURE_COVER_NFC_LED_COVER:Ljava/lang/String; = "com.sec.feature.cover.nfcledcover"

.field private static final FEATURE_COVER_SMARTCOVER:Ljava/lang/String; = "com.sec.feature.cover.smartcover"

.field private static final FEATURE_COVER_SVIEWCOVER:Ljava/lang/String; = "com.sec.feature.cover.sviewcover"

.field private static final SAFE_DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "CoverManager.Feature"

.field private static sDeviceTypeProperty:Ljava/lang/String;

.field private static sHardwareProperty:Ljava/lang/String;

.field private static sInstance:Lcom/android/server/cover/Feature;

.field private static sIsClearCoverSystemFeatureEnabled:Z

.field private static sIsDeviceSupportDetectCover:Z

.field private static sIsDeviceSupportQueried:Z

.field private static sIsDeviceSupportVerityCover:Z

.field private static sIsNfcAuthSystemFeatureEnabled:Z

.field private static sIsSmartCoverSystemFeatureEnabled:Z

.field private static sIsSupportDefaultDetachCover:Z

.field private static sIsSupportFlipCover:Z

.field private static sIsSupportGraceNfcLedConcept:Z

.field private static sIsSupportLEDCover:Z

.field private static sIsSupportLEDCoverLSI:Z

.field private static sIsSupportLEDCoverQCOM:Z

.field private static sIsSupportNeonCover:Z

.field private static sIsSupportNfcLedCover:Z

.field private static sIsSupportSViewCover:Z

.field private static sIsSupportWindowCover:Z

.field private static sIsSystemFeatureQueried:Z

.field private static sProductDevice:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 40
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-ne v2, v0, :cond_0

    move v0, v1

    :cond_0
    sput-boolean v0, Lcom/android/server/cover/Feature;->SAFE_DEBUG:Z

    .line 42
    sput-object v3, Lcom/android/server/cover/Feature;->sInstance:Lcom/android/server/cover/Feature;

    .line 44
    sput-boolean v1, Lcom/android/server/cover/Feature;->sIsSystemFeatureQueried:Z

    .line 45
    sput-boolean v1, Lcom/android/server/cover/Feature;->sIsSupportWindowCover:Z

    .line 46
    sput-boolean v1, Lcom/android/server/cover/Feature;->sIsSupportFlipCover:Z

    .line 47
    sput-boolean v1, Lcom/android/server/cover/Feature;->sIsSupportSViewCover:Z

    .line 48
    sput-boolean v1, Lcom/android/server/cover/Feature;->sIsSupportLEDCover:Z

    .line 49
    sput-boolean v1, Lcom/android/server/cover/Feature;->sIsSupportLEDCoverQCOM:Z

    .line 50
    sput-boolean v1, Lcom/android/server/cover/Feature;->sIsSupportLEDCoverLSI:Z

    .line 51
    sput-boolean v1, Lcom/android/server/cover/Feature;->sIsSupportNeonCover:Z

    .line 53
    sput-boolean v1, Lcom/android/server/cover/Feature;->sIsDeviceSupportQueried:Z

    .line 54
    sput-boolean v1, Lcom/android/server/cover/Feature;->sIsDeviceSupportVerityCover:Z

    .line 55
    sput-boolean v1, Lcom/android/server/cover/Feature;->sIsDeviceSupportDetectCover:Z

    .line 56
    sput-boolean v1, Lcom/android/server/cover/Feature;->sIsSupportNfcLedCover:Z

    .line 57
    sput-boolean v1, Lcom/android/server/cover/Feature;->sIsSupportDefaultDetachCover:Z

    .line 58
    sput-boolean v1, Lcom/android/server/cover/Feature;->sIsSupportGraceNfcLedConcept:Z

    .line 76
    sput-boolean v1, Lcom/android/server/cover/Feature;->sIsSmartCoverSystemFeatureEnabled:Z

    .line 77
    sput-boolean v1, Lcom/android/server/cover/Feature;->sIsNfcAuthSystemFeatureEnabled:Z

    .line 78
    sput-boolean v1, Lcom/android/server/cover/Feature;->sIsClearCoverSystemFeatureEnabled:Z

    .line 80
    sput-object v3, Lcom/android/server/cover/Feature;->sHardwareProperty:Ljava/lang/String;

    .line 81
    sput-object v3, Lcom/android/server/cover/Feature;->sDeviceTypeProperty:Ljava/lang/String;

    .line 82
    sput-object v3, Lcom/android/server/cover/Feature;->sProductDevice:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-direct {p0}, Lcom/android/server/cover/Feature;->getSystemProperties()V

    .line 93
    invoke-direct {p0, p1}, Lcom/android/server/cover/Feature;->updateSystemFeature(Landroid/content/Context;)V

    .line 94
    invoke-direct {p0}, Lcom/android/server/cover/Feature;->updateDeviceSupportFeature()V

    .line 95
    return-void
.end method

.method static getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    sget-object v0, Lcom/android/server/cover/Feature;->sInstance:Lcom/android/server/cover/Feature;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/android/server/cover/Feature;

    invoke-direct {v0, p0}, Lcom/android/server/cover/Feature;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/cover/Feature;->sInstance:Lcom/android/server/cover/Feature;

    .line 88
    :cond_0
    sget-object v0, Lcom/android/server/cover/Feature;->sInstance:Lcom/android/server/cover/Feature;

    return-object v0
.end method

.method private getSystemProperties()V
    .locals 2

    .prologue
    .line 128
    sget-object v0, Lcom/android/server/cover/Feature;->sHardwareProperty:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 129
    const-string/jumbo v0, "ro.hardware"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/cover/Feature;->sHardwareProperty:Ljava/lang/String;

    .line 131
    :cond_0
    sget-object v0, Lcom/android/server/cover/Feature;->sDeviceTypeProperty:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 132
    const-string/jumbo v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/cover/Feature;->sDeviceTypeProperty:Ljava/lang/String;

    .line 134
    :cond_1
    sget-object v0, Lcom/android/server/cover/Feature;->sProductDevice:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 135
    const-string/jumbo v0, "ro.product.device"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/cover/Feature;->sProductDevice:Ljava/lang/String;

    .line 136
    sget-object v0, Lcom/android/server/cover/Feature;->sProductDevice:Ljava/lang/String;

    const-string/jumbo v1, "gracelte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/server/cover/Feature;->sProductDevice:Ljava/lang/String;

    const-string/jumbo v1, "graceqlte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/server/cover/Feature;->sProductDevice:Ljava/lang/String;

    const-string/jumbo v1, "hero2qgracelte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/server/cover/Feature;->sProductDevice:Ljava/lang/String;

    const-string/jumbo v1, "hero2gracelte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/server/cover/Feature;->sProductDevice:Ljava/lang/String;

    const-string v1, "SCV34"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/server/cover/Feature;->sProductDevice:Ljava/lang/String;

    const-string v1, "SC-01J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 139
    :cond_2
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/cover/Feature;->sIsSupportGraceNfcLedConcept:Z

    .line 142
    :cond_3
    return-void
.end method

.method private updateDeviceSupportFeature()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 114
    sget-boolean v0, Lcom/android/server/cover/Feature;->sIsDeviceSupportQueried:Z

    if-nez v0, :cond_2

    .line 115
    const-string v0, "/sys/devices/w1_bus_master1/w1_master_check_id"

    invoke-static {v0}, Lcom/android/server/cover/CoverManagerUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "/sys/devices/w1_bus_master1/w1_master_check_color"

    invoke-static {v0}, Lcom/android/server/cover/CoverManagerUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/server/cover/Feature;->sIsDeviceSupportVerityCover:Z

    .line 117
    const-string v0, "/sys/bus/w1/devices/w1_bus_master1/w1_master_check_detect"

    invoke-static {v0}, Lcom/android/server/cover/CoverManagerUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/cover/Feature;->sIsDeviceSupportDetectCover:Z

    .line 118
    const-string v0, "/sys/class/sec/expander/expgpio"

    invoke-static {v0}, Lcom/android/server/cover/CoverManagerUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/cover/Feature;->sIsSupportLEDCoverQCOM:Z

    .line 120
    const-string v0, "/sys/class/sec/ledcover/cover_pwr"

    invoke-static {v0}, Lcom/android/server/cover/CoverManagerUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/cover/Feature;->sIsSupportLEDCoverLSI:Z

    .line 122
    sget-boolean v0, Lcom/android/server/cover/Feature;->sIsSupportLEDCoverQCOM:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/cover/Feature;->sIsSupportLEDCoverLSI:Z

    if-eqz v0, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    sput-boolean v2, Lcom/android/server/cover/Feature;->sIsSupportLEDCover:Z

    .line 123
    sput-boolean v1, Lcom/android/server/cover/Feature;->sIsDeviceSupportQueried:Z

    .line 125
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 115
    goto :goto_0
.end method

.method private updateSystemFeature(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 98
    sget-boolean v1, Lcom/android/server/cover/Feature;->sIsSystemFeatureQueried:Z

    if-nez v1, :cond_0

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 100
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "com.sec.feature.cover.flip"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/cover/Feature;->sIsSupportFlipCover:Z

    .line 101
    const-string v1, "com.sec.feature.cover.sview"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/cover/Feature;->sIsSupportWindowCover:Z

    .line 102
    const-string v1, "com.sec.feature.cover.sviewcover"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    sput-boolean v1, Lcom/android/server/cover/Feature;->sIsSupportSViewCover:Z

    .line 103
    const-string v1, "com.sec.feature.cover.smartcover"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/cover/Feature;->sIsSmartCoverSystemFeatureEnabled:Z

    .line 104
    const-string v1, "com.sec.feature.cover.clearcover"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/cover/Feature;->sIsClearCoverSystemFeatureEnabled:Z

    .line 105
    const-string v1, "com.sec.feature.cover.nfc_authentication"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/cover/Feature;->sIsNfcAuthSystemFeatureEnabled:Z

    .line 106
    const-string v1, "com.sec.feature.cover.nfcledcover"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/cover/Feature;->sIsSupportNfcLedCover:Z

    .line 107
    sput-boolean v2, Lcom/android/server/cover/Feature;->sIsSystemFeatureQueried:Z

    .line 108
    const-string v1, "com.sec.feature.cover.default_detach.flip"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/cover/Feature;->sIsSupportDefaultDetachCover:Z

    .line 109
    const-string v1, "com.sec.feature.cover.neoncover"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/cover/Feature;->sIsSupportNeonCover:Z

    .line 111
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    return-void

    .line 102
    .restart local v0    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 230
    const-string v0, " Current Feature state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 231
    const-string v0, "  sIsDeviceSupportVerityCover="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/cover/Feature;->sIsDeviceSupportVerityCover:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 232
    const-string v0, "  sIsDeviceSupportDetectCover="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/cover/Feature;->sIsDeviceSupportDetectCover:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 233
    const-string v0, "  sIsSupportWindowCover="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/cover/Feature;->sIsSupportWindowCover:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 234
    const-string v0, "  sIsSupportFlipCover="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/cover/Feature;->sIsSupportFlipCover:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 235
    const-string v0, "  sIsSupportSViewCover="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/cover/Feature;->sIsSupportSViewCover:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 236
    const-string v0, "  sIsSupportLEDCover="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/cover/Feature;->sIsSupportLEDCover:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 237
    const-string v0, "  sIsSupportLEDCoverQCOM="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/cover/Feature;->sIsSupportLEDCoverQCOM:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 238
    const-string v0, "  sIsSupportLEDCoverLSI="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/cover/Feature;->sIsSupportLEDCoverLSI:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 239
    const-string v0, "  sIsSupportNfcLedCover="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/cover/Feature;->sIsSupportNfcLedCover:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 240
    const-string v0, "  sIsNfcAuthSystemFeatureEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/cover/Feature;->sIsNfcAuthSystemFeatureEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 241
    const-string v0, "  sIsSupportDefaultDetachCover="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/cover/Feature;->sIsSupportDefaultDetachCover:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 242
    const-string v0, "  sIsSupportGraceNfcLedConcept="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/cover/Feature;->sIsSupportGraceNfcLedConcept:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 243
    const-string v0, "  sIsSupportNeonCover="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/cover/Feature;->sIsSupportNeonCover:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 244
    const-string v0, "  "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 245
    return-void
.end method

.method getDefaultAttachedCoverState()Lcom/samsung/android/cover/CoverState;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 221
    new-instance v0, Lcom/samsung/android/cover/CoverState;

    invoke-direct {v0}, Lcom/samsung/android/cover/CoverState;-><init>()V

    .line 222
    .local v0, "defaultState":Lcom/samsung/android/cover/CoverState;
    iput-boolean v2, v0, Lcom/samsung/android/cover/CoverState;->attached:Z

    .line 223
    const/4 v1, 0x0

    iput v1, v0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 224
    iput v2, v0, Lcom/samsung/android/cover/CoverState;->color:I

    .line 225
    iput-boolean v2, v0, Lcom/samsung/android/cover/CoverState;->fakeCover:Z

    .line 226
    return-object v0
.end method

.method isChinaModel()Z
    .locals 2

    .prologue
    .line 205
    const-string v0, "CHINA"

    const-string/jumbo v1, "ro.csc.country_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method isMobileKeyboardFeatureEnabled()Z
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x0

    return v0
.end method

.method isNfcAuthEnabled()Z
    .locals 1

    .prologue
    .line 173
    sget-boolean v0, Lcom/android/server/cover/Feature;->sIsNfcAuthSystemFeatureEnabled:Z

    return v0
.end method

.method isRuggedizedFeatureEnabled()Z
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x0

    return v0
.end method

.method isSupportClearCover()Z
    .locals 1

    .prologue
    .line 169
    sget-boolean v0, Lcom/android/server/cover/Feature;->sIsClearCoverSystemFeatureEnabled:Z

    return v0
.end method

.method isSupportDefaultDetachedCover()Z
    .locals 1

    .prologue
    .line 213
    sget-boolean v0, Lcom/android/server/cover/Feature;->sIsSupportDefaultDetachCover:Z

    return v0
.end method

.method isSupportDetectCover()Z
    .locals 1

    .prologue
    .line 149
    sget-boolean v0, Lcom/android/server/cover/Feature;->sIsDeviceSupportDetectCover:Z

    return v0
.end method

.method isSupportFlipCover()Z
    .locals 1

    .prologue
    .line 153
    sget-boolean v0, Lcom/android/server/cover/Feature;->sIsSupportFlipCover:Z

    return v0
.end method

.method isSupportGraceNfcLedConcept()Z
    .locals 1

    .prologue
    .line 217
    sget-boolean v0, Lcom/android/server/cover/Feature;->sIsSupportGraceNfcLedConcept:Z

    return v0
.end method

.method isSupportLEDCover()Z
    .locals 1

    .prologue
    .line 185
    sget-boolean v0, Lcom/android/server/cover/Feature;->sIsSupportLEDCover:Z

    return v0
.end method

.method isSupportLEDCoverLSI()Z
    .locals 1

    .prologue
    .line 181
    sget-boolean v0, Lcom/android/server/cover/Feature;->sIsSupportLEDCoverLSI:Z

    return v0
.end method

.method isSupportLEDCoverQCOM()Z
    .locals 1

    .prologue
    .line 177
    sget-boolean v0, Lcom/android/server/cover/Feature;->sIsSupportLEDCoverQCOM:Z

    return v0
.end method

.method isSupportNeonCover()Z
    .locals 1

    .prologue
    .line 193
    sget-boolean v0, Lcom/android/server/cover/Feature;->sIsSupportNeonCover:Z

    return v0
.end method

.method isSupportNfcLedCover()Z
    .locals 1

    .prologue
    .line 189
    sget-boolean v0, Lcom/android/server/cover/Feature;->sIsSupportNfcLedCover:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/cover/Feature;->sIsNfcAuthSystemFeatureEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isSupportSViewCover()Z
    .locals 1

    .prologue
    .line 161
    sget-boolean v0, Lcom/android/server/cover/Feature;->sIsSupportSViewCover:Z

    return v0
.end method

.method isSupportSmartCover()Z
    .locals 1

    .prologue
    .line 165
    sget-boolean v0, Lcom/android/server/cover/Feature;->sIsSmartCoverSystemFeatureEnabled:Z

    return v0
.end method

.method isSupportVerifyCover()Z
    .locals 1

    .prologue
    .line 145
    sget-boolean v0, Lcom/android/server/cover/Feature;->sIsDeviceSupportVerityCover:Z

    return v0
.end method

.method isSupportWindowCover()Z
    .locals 1

    .prologue
    .line 157
    sget-boolean v0, Lcom/android/server/cover/Feature;->sIsSupportWindowCover:Z

    return v0
.end method

.method isTablet()Z
    .locals 2

    .prologue
    .line 197
    sget-object v0, Lcom/android/server/cover/Feature;->sDeviceTypeProperty:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/cover/Feature;->sDeviceTypeProperty:Ljava/lang/String;

    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

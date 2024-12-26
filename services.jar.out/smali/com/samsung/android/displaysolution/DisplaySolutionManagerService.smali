.class public Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;
.super Lcom/samsung/android/displaysolution/IDisplaySolutionManager$Stub;
.source "DisplaySolutionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/displaysolution/DisplaySolutionManagerService$ScreenWatchingReceiver;,
        Lcom/samsung/android/displaysolution/DisplaySolutionManagerService$SettingsObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DisplaySolutionManagerService"


# instance fields
.field private final COLOR_BLIND_OFF:Ljava/lang/String;

.field private final COLOR_BLIND_ON:Ljava/lang/String;

.field private final DEBUG:Z

.field private final HDR_EFFECT_OFF:Ljava/lang/String;

.field private final HDR_EFFECT_ON_1:Ljava/lang/String;

.field private final HDR_EFFECT_ON_2:Ljava/lang/String;

.field private final LDU_OFF:Ljava/lang/String;

.field private final LDU_ON_1:Ljava/lang/String;

.field private final LDU_ON_2:Ljava/lang/String;

.field private final LDU_ON_3:Ljava/lang/String;

.field private final LDU_ON_4:Ljava/lang/String;

.field private final LDU_ON_5:Ljava/lang/String;

.field private final REAL_HDR_OFF:Ljava/lang/String;

.field private final REAL_HDR_ON:Ljava/lang/String;

.field private SEC_FEATURE_EXTENDED_BRIGHTNESS:Z

.field private bdlsService:Lcom/samsung/android/displaysolution/BigDataLoggingService;

.field private mColorBlind:Z

.field private final mContext:Landroid/content/Context;

.field private mEmergencyModeEnabled:Z

.field private mHDREffect:Z

.field private mLDU:Z

.field private final mLock:Ljava/lang/Object;

.field private mMSCSEnable:Z

.field private mName:Ljava/lang/String;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPowerSavingModeEnabled:Z

.field private mRealHDR:Z

.field private final mSCafeVersion:Ljava/lang/String;

.field private mScaleFactor:F

.field private final mScreenBrightnessExtendedMaximumConfig:I

.field private mSettingValue:Ljava/lang/String;

.field private mSettingsObserver:Lcom/samsung/android/displaysolution/DisplaySolutionManagerService$SettingsObserver;

.field private mTitle:Ljava/lang/String;

.field private mUltraPowerSavingModeEnabled:Z

.field private mUseBigDataLoggingServiceConfig:Z

.field private mUseMdnieScenarioControlServiceConfig:Z

.field private mVGalleryEnable:Z

.field private mVideoEnable:Z

.field private mscsService:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

.field private settingsValueEM:F

.field private settingsValuePSM:F

.field private settingsValueString:Ljava/lang/String;

.field private settingsValueStringArray:[Ljava/lang/String;

.field private settingsValueUPSM:F

.field private temp_COLOR_BLIND_ON:Ljava/lang/String;

.field private temp_HDR_EFFECT_ON:Ljava/lang/String;

.field private temp_LDU_ON:Ljava/lang/String;

.field private temp_REAL_HDR_ON:Ljava/lang/String;

.field private temp_mName:Ljava/lang/String;

.field private temp_mTitle:Ljava/lang/String;

.field private temt_mScaleFactor:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 122
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/IDisplaySolutionManager$Stub;-><init>()V

    .line 63
    const-string v2, "eng"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->DEBUG:Z

    .line 65
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    .line 70
    iput-object v5, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mscsService:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 71
    iput-object v5, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->bdlsService:Lcom/samsung/android/displaysolution/BigDataLoggingService;

    .line 73
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mUseMdnieScenarioControlServiceConfig:Z

    .line 74
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mUseBigDataLoggingServiceConfig:Z

    .line 82
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mColorBlind:Z

    .line 83
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mRealHDR:Z

    .line 84
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mLDU:Z

    .line 85
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mHDREffect:Z

    .line 86
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mEmergencyModeEnabled:Z

    .line 87
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mPowerSavingModeEnabled:Z

    .line 88
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mUltraPowerSavingModeEnabled:Z

    .line 89
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->SEC_FEATURE_EXTENDED_BRIGHTNESS:Z

    .line 91
    iput v6, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->temt_mScaleFactor:F

    .line 92
    iput v6, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->settingsValueEM:F

    .line 93
    iput v7, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->settingsValuePSM:F

    .line 94
    iput v7, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->settingsValueUPSM:F

    .line 99
    iput-object v5, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->temp_mTitle:Ljava/lang/String;

    .line 100
    iput-object v5, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->temp_mName:Ljava/lang/String;

    .line 106
    const-string v2, "color_blind_on"

    iput-object v2, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->COLOR_BLIND_ON:Ljava/lang/String;

    .line 107
    const-string v2, "color_blind_off"

    iput-object v2, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->COLOR_BLIND_OFF:Ljava/lang/String;

    .line 108
    const-string v2, "real_hdr_on"

    iput-object v2, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->REAL_HDR_ON:Ljava/lang/String;

    .line 109
    const-string v2, "real_hdr_off"

    iput-object v2, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->REAL_HDR_OFF:Ljava/lang/String;

    .line 110
    const-string v2, "ldu_on_1"

    iput-object v2, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->LDU_ON_1:Ljava/lang/String;

    .line 111
    const-string v2, "ldu_on_2"

    iput-object v2, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->LDU_ON_2:Ljava/lang/String;

    .line 112
    const-string v2, "ldu_on_3"

    iput-object v2, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->LDU_ON_3:Ljava/lang/String;

    .line 113
    const-string v2, "ldu_on_4"

    iput-object v2, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->LDU_ON_4:Ljava/lang/String;

    .line 114
    const-string v2, "ldu_on_5"

    iput-object v2, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->LDU_ON_5:Ljava/lang/String;

    .line 115
    const-string v2, "ldu_off"

    iput-object v2, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->LDU_OFF:Ljava/lang/String;

    .line 116
    const-string v2, "hdr_effect_on_1"

    iput-object v2, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->HDR_EFFECT_ON_1:Ljava/lang/String;

    .line 117
    const-string v2, "hdr_effect_on_2"

    iput-object v2, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->HDR_EFFECT_ON_2:Ljava/lang/String;

    .line 118
    const-string v2, "hdr_effect_off"

    iput-object v2, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->HDR_EFFECT_OFF:Ljava/lang/String;

    .line 119
    const-string v2, "ro.build.scafe.version"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mSCafeVersion:Ljava/lang/String;

    .line 123
    iput-object p1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mContext:Landroid/content/Context;

    .line 124
    iget-object v2, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11200e7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mUseMdnieScenarioControlServiceConfig:Z

    .line 125
    iget-object v2, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11200e9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mUseBigDataLoggingServiceConfig:Z

    .line 126
    iget-object v2, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e00c8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mScreenBrightnessExtendedMaximumConfig:I

    .line 127
    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mUseMdnieScenarioControlServiceConfig:Z

    if-eqz v2, :cond_0

    .line 128
    new-instance v2, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-direct {v2, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mscsService:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 130
    :cond_0
    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mUseBigDataLoggingServiceConfig:Z

    if-eqz v2, :cond_1

    .line 131
    new-instance v2, Lcom/samsung/android/displaysolution/BigDataLoggingService;

    invoke-direct {v2, p1}, Lcom/samsung/android/displaysolution/BigDataLoggingService;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->bdlsService:Lcom/samsung/android/displaysolution/BigDataLoggingService;

    .line 133
    :cond_1
    iget v2, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mScreenBrightnessExtendedMaximumConfig:I

    const/16 v3, 0xff

    if-le v2, v3, :cond_2

    .line 134
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->SEC_FEATURE_EXTENDED_BRIGHTNESS:Z

    .line 136
    :cond_2
    new-instance v2, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService$SettingsObserver;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService$SettingsObserver;-><init>(Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mSettingsObserver:Lcom/samsung/android/displaysolution/DisplaySolutionManagerService$SettingsObserver;

    .line 137
    iget-object v2, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 138
    .local v1, "resolver":Landroid/content/ContentResolver;
    iget-object v2, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 140
    const-string v2, "low_power"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mSettingsObserver:Lcom/samsung/android/displaysolution/DisplaySolutionManagerService$SettingsObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 141
    const-string v2, "ultra_powersaving_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mSettingsObserver:Lcom/samsung/android/displaysolution/DisplaySolutionManagerService$SettingsObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 142
    const-string v2, "emergency_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mSettingsObserver:Lcom/samsung/android/displaysolution/DisplaySolutionManagerService$SettingsObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 144
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 145
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService$ScreenWatchingReceiver;

    invoke-direct {v3, p0}, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;)V

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 147
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->setting_is_changed()V

    .line 148
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->setting_is_changed()V

    return-void
.end method

.method private controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "ScaleFactor"    # F
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "what"    # Ljava/lang/String;

    .prologue
    .line 224
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 225
    .local v0, "mToken":Landroid/os/IBinder;
    iput p1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mScaleFactor:F

    .line 226
    iput-object p2, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mTitle:Ljava/lang/String;

    .line 227
    iput-object p3, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mName:Ljava/lang/String;

    .line 228
    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mTitle:Ljava/lang/String;

    const-string v2, "application"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 229
    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mName:Ljava/lang/String;

    const-string v2, "DEFAULT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 230
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mPowerSavingModeEnabled:Z

    if-eqz v1, :cond_3

    .line 231
    iget v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mScaleFactor:F

    iget v2, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->settingsValuePSM:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mScaleFactor:F

    .line 237
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->SEC_FEATURE_EXTENDED_BRIGHTNESS:Z

    if-eqz v1, :cond_1

    .line 238
    const-string v1, "DisplaySolutionManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "where : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " what : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " setScreenBrightnessScaleFactor("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mScaleFactor:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mPowerManager:Landroid/os/PowerManager;

    iget v2, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mScaleFactor:F

    invoke-virtual {v1, v2, v0}, Landroid/os/PowerManager;->setScreenBrightnessScaleFactor(FLandroid/os/IBinder;)V

    .line 254
    :cond_1
    :goto_1
    iget v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mScaleFactor:F

    iput v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->temt_mScaleFactor:F

    .line 255
    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mTitle:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->temp_mTitle:Ljava/lang/String;

    .line 256
    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mName:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->temp_mName:Ljava/lang/String;

    .line 300
    :cond_2
    :goto_2
    return-void

    .line 232
    :cond_3
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mUltraPowerSavingModeEnabled:Z

    if-eqz v1, :cond_4

    .line 233
    iget v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mScaleFactor:F

    iget v2, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->settingsValueUPSM:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mScaleFactor:F

    goto :goto_0

    .line 234
    :cond_4
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mEmergencyModeEnabled:Z

    if-eqz v1, :cond_0

    .line 235
    iget v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mScaleFactor:F

    iget v2, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->settingsValueEM:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mScaleFactor:F

    goto :goto_0

    .line 241
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mName:Ljava/lang/String;

    const-string v2, "DEFAULT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 242
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mPowerSavingModeEnabled:Z

    if-eqz v1, :cond_7

    .line 243
    iget v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mScaleFactor:F

    iget v2, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->settingsValuePSM:F

    neg-float v2, v2

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mScaleFactor:F

    .line 249
    :cond_6
    :goto_3
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->SEC_FEATURE_EXTENDED_BRIGHTNESS:Z

    if-eqz v1, :cond_1

    .line 250
    const-string v1, "DisplaySolutionManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "where : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " what : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " setScreenBrightnessScaleFactor("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mScaleFactor:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mPowerManager:Landroid/os/PowerManager;

    iget v2, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mScaleFactor:F

    invoke-virtual {v1, v2, v0}, Landroid/os/PowerManager;->setScreenBrightnessScaleFactor(FLandroid/os/IBinder;)V

    goto :goto_1

    .line 244
    :cond_7
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mUltraPowerSavingModeEnabled:Z

    if-eqz v1, :cond_8

    .line 245
    iget v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mScaleFactor:F

    iget v2, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->settingsValueUPSM:F

    neg-float v2, v2

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mScaleFactor:F

    goto :goto_3

    .line 246
    :cond_8
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mEmergencyModeEnabled:Z

    if-eqz v1, :cond_6

    .line 247
    iget v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mScaleFactor:F

    iget v2, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->settingsValueEM:F

    neg-float v2, v2

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mScaleFactor:F

    goto :goto_3

    .line 257
    :cond_9
    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mTitle:Ljava/lang/String;

    const-string v2, "settings"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 258
    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mName:Ljava/lang/String;

    const-string v2, "DEFAULT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 259
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mColorBlind:Z

    if-nez v1, :cond_b

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mRealHDR:Z

    if-nez v1, :cond_b

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mLDU:Z

    if-nez v1, :cond_b

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mHDREffect:Z

    if-nez v1, :cond_b

    .line 263
    :goto_4
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->SEC_FEATURE_EXTENDED_BRIGHTNESS:Z

    if-eqz v1, :cond_a

    .line 264
    const-string v1, "DisplaySolutionManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "where : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " what : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " setScreenBrightnessScaleFactor("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mScaleFactor:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mPowerManager:Landroid/os/PowerManager;

    iget v2, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mScaleFactor:F

    invoke-virtual {v1, v2, v0}, Landroid/os/PowerManager;->setScreenBrightnessScaleFactor(FLandroid/os/IBinder;)V

    .line 268
    :cond_a
    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mName:Ljava/lang/String;

    const-string v2, "DEFAULT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 269
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mColorBlind:Z

    if-nez v1, :cond_c

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mRealHDR:Z

    if-nez v1, :cond_c

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mLDU:Z

    if-nez v1, :cond_c

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mHDREffect:Z

    if-nez v1, :cond_c

    .line 270
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->SEC_FEATURE_EXTENDED_BRIGHTNESS:Z

    if-eqz v1, :cond_2

    .line 271
    const-string v1, "DisplaySolutionManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "where : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " what : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " setScreenBrightnessScaleFactor("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mScaleFactor:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mPowerManager:Landroid/os/PowerManager;

    iget v2, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mScaleFactor:F

    invoke-virtual {v1, v2, v0}, Landroid/os/PowerManager;->setScreenBrightnessScaleFactor(FLandroid/os/IBinder;)V

    goto/16 :goto_2

    .line 261
    :cond_b
    iget v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mScaleFactor:F

    iget v2, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->temt_mScaleFactor:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mScaleFactor:F

    goto/16 :goto_4

    .line 275
    :cond_c
    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->temp_mName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->setMultipleScreenBrightness(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 278
    :cond_d
    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mTitle:Ljava/lang/String;

    const-string v2, "settings_preview"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 279
    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mName:Ljava/lang/String;

    const-string v2, "DEFAULT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 280
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mColorBlind:Z

    if-nez v1, :cond_f

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mRealHDR:Z

    if-nez v1, :cond_f

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mLDU:Z

    if-nez v1, :cond_f

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mHDREffect:Z

    if-nez v1, :cond_f

    .line 284
    :goto_5
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->SEC_FEATURE_EXTENDED_BRIGHTNESS:Z

    if-eqz v1, :cond_e

    .line 285
    const-string v1, "DisplaySolutionManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "where : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " what : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " setScreenBrightnessScaleFactor("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mScaleFactor:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mPowerManager:Landroid/os/PowerManager;

    iget v2, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mScaleFactor:F

    invoke-virtual {v1, v2, v0}, Landroid/os/PowerManager;->setScreenBrightnessScaleFactor(FLandroid/os/IBinder;)V

    .line 289
    :cond_e
    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mName:Ljava/lang/String;

    const-string v2, "DEFAULT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 290
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mColorBlind:Z

    if-nez v1, :cond_10

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mRealHDR:Z

    if-nez v1, :cond_10

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mLDU:Z

    if-nez v1, :cond_10

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mHDREffect:Z

    if-nez v1, :cond_10

    .line 291
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->SEC_FEATURE_EXTENDED_BRIGHTNESS:Z

    if-eqz v1, :cond_2

    .line 292
    const-string v1, "DisplaySolutionManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "where : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " what : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " setScreenBrightnessScaleFactor("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mScaleFactor:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mPowerManager:Landroid/os/PowerManager;

    iget v2, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mScaleFactor:F

    invoke-virtual {v1, v2, v0}, Landroid/os/PowerManager;->setScreenBrightnessScaleFactor(FLandroid/os/IBinder;)V

    goto/16 :goto_2

    .line 282
    :cond_f
    iget v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mScaleFactor:F

    iget v2, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->temt_mScaleFactor:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mScaleFactor:F

    goto/16 :goto_5

    .line 296
    :cond_10
    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->temp_mName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->setMultipleScreenBrightness(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private setting_is_changed()V
    .locals 9

    .prologue
    const v8, 0x3f68f5c3    # 0.91f

    const v7, 0x3f5eb852    # 0.87f

    const v6, 0x3f51eb85    # 0.82f

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 169
    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 171
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "low_power"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_4

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mPowerSavingModeEnabled:Z

    .line 172
    const-string v1, "emergency_mode"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_5

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mEmergencyModeEnabled:Z

    .line 173
    const-string v1, "ultra_powersaving_mode"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_6

    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mUltraPowerSavingModeEnabled:Z

    .line 175
    const-string v1, "limit_brightness_state"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->settingsValueString:Ljava/lang/String;

    .line 176
    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->settingsValueString:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 177
    const-string v1, "100, 100"

    iput-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->settingsValueString:Ljava/lang/String;

    .line 179
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->settingsValueString:Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->settingsValueStringArray:[Ljava/lang/String;

    .line 180
    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->settingsValueStringArray:[Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->settingsValueStringArray:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 181
    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->settingsValueStringArray:[Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->settingsValueStringArray:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 182
    const-string v1, "2016B"

    iget-object v4, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mSCafeVersion:Ljava/lang/String;

    const/4 v5, 0x5

    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 183
    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->settingsValueStringArray:[Ljava/lang/String;

    const-string v4, "100"

    aput-object v4, v1, v3

    .line 184
    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->settingsValueStringArray:[Ljava/lang/String;

    const-string v4, "100"

    aput-object v4, v1, v2

    .line 186
    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mPowerSavingModeEnabled:Z

    if-eqz v1, :cond_b

    .line 187
    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->settingsValueStringArray:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x50

    if-ne v1, v2, :cond_7

    .line 188
    iput v6, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->settingsValuePSM:F

    .line 198
    :cond_2
    :goto_3
    iget v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->settingsValuePSM:F

    const-string v2, "settings"

    const-string v3, "PSM"

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    .line 221
    :cond_3
    :goto_4
    return-void

    :cond_4
    move v1, v3

    .line 171
    goto/16 :goto_0

    :cond_5
    move v1, v3

    .line 172
    goto :goto_1

    :cond_6
    move v1, v3

    .line 173
    goto :goto_2

    .line 189
    :cond_7
    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->settingsValueStringArray:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x55

    if-ne v1, v2, :cond_8

    .line 190
    iput v7, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->settingsValuePSM:F

    goto :goto_3

    .line 191
    :cond_8
    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->settingsValueStringArray:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x5a

    if-ne v1, v2, :cond_9

    .line 192
    iput v8, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->settingsValuePSM:F

    goto :goto_3

    .line 193
    :cond_9
    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->settingsValueStringArray:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x5f

    if-ne v1, v2, :cond_a

    .line 194
    const v1, 0x3f733333    # 0.95f

    iput v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->settingsValuePSM:F

    goto :goto_3

    .line 195
    :cond_a
    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->settingsValueStringArray:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_2

    .line 196
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->settingsValuePSM:F

    goto :goto_3

    .line 200
    :cond_b
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mUltraPowerSavingModeEnabled:Z

    if-eqz v1, :cond_11

    .line 201
    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->settingsValueStringArray:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v3, 0x50

    if-ne v1, v3, :cond_d

    .line 202
    iput v6, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->settingsValueUPSM:F

    .line 212
    :cond_c
    :goto_5
    iget v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->settingsValueUPSM:F

    const-string v2, "settings"

    const-string v3, "UPSM"

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 203
    :cond_d
    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->settingsValueStringArray:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v3, 0x55

    if-ne v1, v3, :cond_e

    .line 204
    iput v7, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->settingsValueUPSM:F

    goto :goto_5

    .line 205
    :cond_e
    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->settingsValueStringArray:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v3, 0x5a

    if-ne v1, v3, :cond_f

    .line 206
    iput v8, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->settingsValueUPSM:F

    goto :goto_5

    .line 207
    :cond_f
    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->settingsValueStringArray:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v3, 0x5f

    if-ne v1, v3, :cond_10

    .line 208
    const v1, 0x3f733333    # 0.95f

    iput v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->settingsValueUPSM:F

    goto :goto_5

    .line 209
    :cond_10
    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->settingsValueStringArray:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_c

    .line 210
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->settingsValueUPSM:F

    goto :goto_5

    .line 214
    :cond_11
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mEmergencyModeEnabled:Z

    if-eqz v1, :cond_12

    .line 215
    iput v6, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->settingsValueEM:F

    .line 216
    iget v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->settingsValueEM:F

    const-string v2, "settings"

    const-string v3, "EM"

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 218
    :cond_12
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mPowerSavingModeEnabled:Z

    if-eqz v1, :cond_13

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mUltraPowerSavingModeEnabled:Z

    if-eqz v1, :cond_13

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mEmergencyModeEnabled:Z

    if-eqz v1, :cond_3

    .line 219
    :cond_13
    const/high16 v1, -0x40800000    # -1.0f

    const-string v2, "settings"

    const-string v3, "DEFAULT"

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4
.end method


# virtual methods
.method public getGalleryModeEnable()Z
    .locals 1

    .prologue
    .line 309
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mVGalleryEnable:Z

    return v0
.end method

.method public getMdnieScenarioControlServiceEnable()Z
    .locals 1

    .prologue
    .line 314
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mMSCSEnable:Z

    return v0
.end method

.method public getVideoModeEnable()Z
    .locals 1

    .prologue
    .line 304
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mVideoEnable:Z

    return v0
.end method

.method public setGalleryModeEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 326
    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 327
    :try_start_0
    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mVGalleryEnable:Z

    .line 328
    monitor-exit v1

    .line 329
    return-void

    .line 328
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setMdnieScenarioControlServiceEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 333
    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 334
    :try_start_0
    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mMSCSEnable:Z

    .line 335
    monitor-exit v1

    .line 336
    return-void

    .line 335
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setMultipleScreenBrightness(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 362
    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 363
    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    .line 364
    iget-object v0, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 365
    iget-object v0, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v2, "color_blind_on"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v2, "color_blind_off"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v2, "color_blind_on"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 367
    iget-object v0, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->temp_COLOR_BLIND_ON:Ljava/lang/String;

    .line 368
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mColorBlind:Z

    .line 395
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mColorBlind:Z

    if-eqz v0, :cond_d

    .line 396
    const v0, 0x3fb70a3d    # 1.43f

    const-string v2, "application"

    const-string v3, "ColorBlind"

    invoke-direct {p0, v0, v2, v3}, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    .line 421
    :cond_2
    :goto_1
    monitor-exit v1

    .line 422
    return-void

    .line 369
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v2, "color_blind_off"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 370
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mColorBlind:Z

    goto :goto_0

    .line 421
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 372
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v2, "real_hdr_on"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v2, "real_hdr_off"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 373
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v2, "real_hdr_on"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 374
    iget-object v0, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->temp_REAL_HDR_ON:Ljava/lang/String;

    .line 375
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mRealHDR:Z

    goto :goto_0

    .line 376
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v2, "real_hdr_off"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 377
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mRealHDR:Z

    goto :goto_0

    .line 379
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v2, "ldu_on_1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v2, "ldu_on_2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v2, "ldu_on_3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v2, "ldu_on_4"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v2, "ldu_on_5"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v2, "ldu_off"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 380
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v2, "ldu_off"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 381
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mLDU:Z

    goto/16 :goto_0

    .line 383
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->temp_LDU_ON:Ljava/lang/String;

    .line 384
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mLDU:Z

    goto/16 :goto_0

    .line 386
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v2, "hdr_effect_on_1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v2, "hdr_effect_on_2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v2, "hdr_effect_off"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 387
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v2, "hdr_effect_off"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 388
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mHDREffect:Z

    goto/16 :goto_0

    .line 390
    :cond_c
    iget-object v0, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->temp_HDR_EFFECT_ON:Ljava/lang/String;

    .line 391
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mHDREffect:Z

    goto/16 :goto_0

    .line 397
    :cond_d
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mRealHDR:Z

    if-eqz v0, :cond_e

    .line 398
    const v0, 0x3fb70a3d    # 1.43f

    const-string v2, "application"

    const-string v3, "RealHDR"

    invoke-direct {p0, v0, v2, v3}, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 399
    :cond_e
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mLDU:Z

    if-eqz v0, :cond_13

    .line 400
    iget-object v0, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->temp_LDU_ON:Ljava/lang/String;

    const-string v2, "ldu_on_1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 401
    const v0, 0x3f8e147b    # 1.11f

    const-string v2, "application"

    const-string v3, "LDU_1"

    invoke-direct {p0, v0, v2, v3}, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 402
    :cond_f
    iget-object v0, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->temp_LDU_ON:Ljava/lang/String;

    const-string v2, "ldu_on_2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 403
    const v0, 0x3f947ae1    # 1.16f

    const-string v2, "application"

    const-string v3, "LDU_2"

    invoke-direct {p0, v0, v2, v3}, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 404
    :cond_10
    iget-object v0, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->temp_LDU_ON:Ljava/lang/String;

    const-string v2, "ldu_on_3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 405
    const v0, 0x3fa28f5c    # 1.27f

    const-string v2, "application"

    const-string v3, "LDU_3"

    invoke-direct {p0, v0, v2, v3}, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 406
    :cond_11
    iget-object v0, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->temp_LDU_ON:Ljava/lang/String;

    const-string v2, "ldu_on_4"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 407
    const v0, 0x3fb0a3d7    # 1.38f

    const-string v2, "application"

    const-string v3, "LDU_4"

    invoke-direct {p0, v0, v2, v3}, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 408
    :cond_12
    iget-object v0, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->temp_LDU_ON:Ljava/lang/String;

    const-string v2, "ldu_on_5"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 409
    const v0, 0x3fb70a3d    # 1.43f

    const-string v2, "application"

    const-string v3, "LDU_5"

    invoke-direct {p0, v0, v2, v3}, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 411
    :cond_13
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mHDREffect:Z

    if-eqz v0, :cond_15

    .line 412
    iget-object v0, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->temp_HDR_EFFECT_ON:Ljava/lang/String;

    const-string v2, "hdr_effect_on_1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 413
    const v0, 0x3fb70a3d    # 1.43f

    const-string v2, "application"

    const-string v3, "HDREffect_1"

    invoke-direct {p0, v0, v2, v3}, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 414
    :cond_14
    iget-object v0, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->temp_HDR_EFFECT_ON:Ljava/lang/String;

    const-string v2, "hdr_effect_on_2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 415
    const v0, 0x3fb70a3d    # 1.43f

    const-string v2, "application"

    const-string v3, "HDREffect_2"

    invoke-direct {p0, v0, v2, v3}, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 418
    :cond_15
    const/high16 v0, -0x40800000    # -1.0f

    const-string v2, "application"

    const-string v3, "DEFAULT"

    invoke-direct {p0, v0, v2, v3}, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1
.end method

.method public setMultipleScreenBrightnessForPreview(I)V
    .locals 5
    .param p1, "settingValue"    # I

    .prologue
    .line 340
    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 341
    :try_start_0
    const-string v0, "2016B"

    iget-object v2, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mSCafeVersion:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    .line 343
    const/high16 v0, 0x3f800000    # 1.0f

    const-string v2, "settings_preview"

    const-string v3, "SETTINGVALUE"

    invoke-direct {p0, v0, v2, v3}, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    .line 357
    :cond_0
    :goto_0
    monitor-exit v1

    .line 358
    return-void

    .line 344
    :cond_1
    const/16 v0, 0x5f

    if-ne p1, v0, :cond_2

    .line 345
    const v0, 0x3f733333    # 0.95f

    const-string v2, "settings_preview"

    const-string v3, "SETTINGVALUE"

    invoke-direct {p0, v0, v2, v3}, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 357
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 346
    :cond_2
    const/16 v0, 0x5a

    if-ne p1, v0, :cond_3

    .line 347
    const v0, 0x3f68f5c3    # 0.91f

    :try_start_1
    const-string v2, "settings_preview"

    const-string v3, "SETTINGVALUE"

    invoke-direct {p0, v0, v2, v3}, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 348
    :cond_3
    const/16 v0, 0x55

    if-ne p1, v0, :cond_4

    .line 349
    const v0, 0x3f5eb852    # 0.87f

    const-string v2, "settings_preview"

    const-string v3, "SETTINGVALUE"

    invoke-direct {p0, v0, v2, v3}, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 350
    :cond_4
    const/16 v0, 0x50

    if-ne p1, v0, :cond_5

    .line 351
    const v0, 0x3f51eb85    # 0.82f

    const-string v2, "settings_preview"

    const-string v3, "SETTINGVALUE"

    invoke-direct {p0, v0, v2, v3}, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 352
    :cond_5
    if-nez p1, :cond_0

    .line 353
    const/high16 v0, -0x40800000    # -1.0f

    const-string v2, "settings_preview"

    const-string v3, "DEFAULT"

    invoke-direct {p0, v0, v2, v3}, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    .line 354
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->setting_is_changed()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setVideoModeEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 319
    iget-object v1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 320
    :try_start_0
    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/DisplaySolutionManagerService;->mVideoEnable:Z

    .line 321
    monitor-exit v1

    .line 322
    return-void

    .line 321
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
